#!/usr/bin/env python3
"""Build, search, and update the public stealer-log reference catalog.

The catalog keeps machine-readable fingerprints behind a human-readable set
of family pages and representative log samples.  The module intentionally
uses only the Python standard library so analysts can run it from a fresh
clone without installing a package.
"""

from __future__ import annotations

import argparse
import hashlib
import html
import json
import os
import re
import sys
import tempfile
import unicodedata
from collections import Counter
from collections.abc import Iterable
from pathlib import Path
from typing import Any
from urllib.parse import quote, unquote, urlsplit

ROOT = Path(__file__).resolve().parents[1]
FAMILIES = ROOT / "families"
UNATTRIBUTED = ROOT / "unattributed"
SCHEMA_VERSION = "1.0"
FAMILY_CLASSES = {"known_family", "provisional_cluster"}
CONFIDENCE = {"high", "medium", "low", "unknown"}
FAMILY_KEYS = {
    "$schema",
    "schema_version",
    "id",
    "name",
    "classification",
    "attribution_confidence",
    "aliases",
    "tracking_labels",
    "description",
    "targets",
    "external_references",
}
FINGERPRINT_KEYS = {
    "$schema",
    "schema_version",
    "id",
    "family_id",
    "signature",
    "status",
    "quality",
    "scope",
    "sharing",
}
SIGNATURE_KEYS = {"panel_brand", "banner_strings", "field_keys", "filenames"}
QUALITY_KEYS = {"independent_signal_types", "independent_signal_count", "yara_eligible"}
CANDIDATE_KEYS = {"event_type", "schema_version", "family", "fingerprint", "sample"}
REQUIRED_CANDIDATE_KEYS = {"event_type", "schema_version", "family", "fingerprint"}
CANDIDATE_FAMILY_KEYS = {"id", "name", "classification", "attribution_confidence"}
SAMPLE_KEYS = {"filename", "content"}
MAX_SAMPLE_BYTES = 128 * 1024
MAX_ENCODED_SAMPLE_NAME = 190
MAX_EVENT_STREAM_BYTES = 16 * 1024 * 1024
MAX_EVENT_LINE_BYTES = 1024 * 1024
MAX_EVENT_COUNT = 1000
MAX_JSON_LABEL_NODES = 10_000
SIGNATURE_ITEM_LIMITS = {"banner_strings": 32, "field_keys": 128, "filenames": 32}
MAX_FILENAME_PLACEHOLDERS = 8
SAMPLE_PATH_SAFE = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_ .()[]+-"

SLUG_RE = re.compile(r"^[a-z0-9]+(?:-[a-z0-9]+)*$")
FP_RE = re.compile(r"^fp_[0-9a-f]{32}$")
UNATTRIBUTED_RE = re.compile(r"^unattributed-([0-9a-f]{32})$")
EMAIL_RE = re.compile(r"(?i)\b[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}\b")
URL_RE = re.compile(r"(?i)\b(?:https?|ftp)://|\bt\.me/|\bwww\.")
IPV4_RE = re.compile(
    r"(?<![\d.])(?:25[0-5]|2[0-4]\d|1?\d?\d)(?:\."
    r"(?:25[0-5]|2[0-4]\d|1?\d?\d)){3}(?![\d.])"
)
PATH_RE = re.compile(r"(?i)(?:\b[A-Z]:\\|\\\\[^\\\s]+\\|/home/[^/\s]+|/Users/[^/\s]+)")
SECRET_RE = re.compile(
    r"(?i)(?:bearer\s+[a-z0-9._~-]{12,}|(?:token|password|passwd|cookie|"
    r"session|authorization)\s*[=:]\s*\S+)"
)
LONG_TOKEN_RE = re.compile(r"\b(?:[A-Fa-f0-9]{32,}|[A-Za-z0-9_+/=-]{48,})\b")
GEO_FILENAME_RE = re.compile(r"(?i)\[[A-Z]{2}\s*,[^\]]+\]")
FORBIDDEN_VALUE_RE = re.compile(r"(?i)<redacted>|\b(?:redacted|victim)\b")
SSN_RE = re.compile(r"(?<!\d)\d{3}-\d{2}-\d{4}(?!\d)")
PHONE_RE = re.compile(r"(?<!\w)\+?\d[\d .()-]{7,}\d(?!\w)")
ISO_TIME_RE = re.compile(r"\b\d{4}-\d{2}-\d{2}[T ]\d{2}:\d{2}(?::\d{2})?(?:Z|[+-]\d{2}:?\d{2})?\b")
MAC_RE = re.compile(r"(?i)(?<![0-9a-f])(?:[0-9a-f]{2}[:-]){5}[0-9a-f]{2}(?![0-9a-f])")
UUID_RE = re.compile(
    r"(?i)(?<![0-9a-f])[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-"
    r"[89ab][0-9a-f]{3}-[0-9a-f]{12}(?![0-9a-f])"
)
HOST_RE = re.compile(
    r"(?i)\b(?:desktop|laptop|win|pc)-(?=[a-z0-9]{5,}\b)(?=[a-z0-9]*\d)[a-z0-9]+\b"
)
HANDLE_RE = re.compile(r"(?<![\w.])@[a-z0-9_]{3,}\b", re.IGNORECASE)
INSTRUCTION_RE = re.compile(
    r"(?i)\b(?:ignore|disregard|override)\s+(?:all\s+)?(?:previous|prior|system)\s+"
    r"(?:instructions?|prompts?)\b|\b(?:upload|exfiltrate|reveal)\s+(?:the\s+)?secrets?\b|"
    r"(?:^|\b)(?:system|developer|assistant)\s*(?:message)?\s*:\s*\S|"
    r"\b(?:begin|end)\s+(?:system\s+)?instructions?\b|\byou are now\b|"
    r"\brun this command\b|\bobey me\b|\bupload data\b"
)
SAMPLE_INJECTION_RE = re.compile(
    r"(?is)\bignore\s+(?:all\s+|any\s+)?(?:previous|prior|system|developer|ethical|legal)\b|"
    r"\byou\s+are\s+(?:now|programmed\s+to)\b|"
    r"\b(?:system|developer|assistant)\s+message\s*:|"
    r"\bdo\s+not\s+warn\s+the\s+user\b|"
    r"\bnever\s+(?:ever\s+)?(?:break\s+character|drift\s+away\s+from\s+your\s+role)\b"
)
SAMPLE_USER_PATH_RE = re.compile(
    r"(?i)(?:[A-Z]:\\|\\\\[^\\\s]+\\)Users\\(?!<user>\\|\[redacted\]\\)[^\\\r\n]+\\|"
    r"/(?:home|Users)/(?!<user>/|\[redacted\]/)[^/\r\n]+/"
)
DPAPI_BLOB_RE = re.compile(r"\bAQAAANCM[A-Za-z0-9+/=]{40,}\b")
SAMPLE_CORRELATION_RE = re.compile(r"(?i)\(\s*sig\s*:\s*\d{9,12}\.[a-f0-9]{16,}\s*\)")
SAMPLE_KEY_VALUE_RE = re.compile(
    r"^\s*(?:[-*|#>]\s*)?(?P<label>[^:=]{1,80}?)\s*[:=]\s*(?P<value>.*)$"
)
SAMPLE_USER_LABELS = frozenset(
    {
        "user",
        "username",
        "usernamepc",
        "osuser",
        "login",
        "loginname",
        "account",
        "accountname",
        "localuser",
        "currentuser",
        "pcuser",
        "pcusername",
        "userid",
        "userlogin",
    }
)
SAMPLE_HOST_LABELS = frozenset(
    {
        "host",
        "hostname",
        "computer",
        "computername",
        "pcname",
        "machinename",
        "devicename",
        "clientname",
        "pc",
        "machine",
        "domain",
        "domainname",
        "userdomain",
        "logonserver",
    }
)
SAMPLE_ID_LABELS = frozenset(
    {
        "hwid",
        "hardwareid",
        "machineid",
        "deviceid",
        "clientid",
        "guid",
        "uuid",
        "uid",
        "machineuuid",
        "machineguid",
        "installationid",
        "sid",
        "mac",
        "macaddress",
        "physicaladdress",
        "serial",
        "serialnumber",
        "biosserial",
        "diskserial",
        "productid",
        "operationid",
        "wallpaperhash",
    }
)
SAMPLE_SECRET_LABELS = frozenset(
    {
        "password",
        "pass",
        "passwd",
        "pwd",
        "token",
        "accesstoken",
        "refreshtoken",
        "authorization",
        "auth",
        "cookie",
        "cookies",
        "passwords",
        "session",
        "sessions",
        "sessionid",
        "apikey",
        "secret",
        "secrets",
        "tokens",
        "clientsecret",
        "mnemonic",
        "seedphrase",
        "privatekey",
        "recoverykey",
        "cvv",
        "cvc",
        "cardnumber",
        "clipboard",
    }
)
SAMPLE_CONTACT_LABELS = frozenset(
    {
        "email",
        "emailaddress",
        "mail",
        "ip",
        "ipaddress",
        "localip",
        "externalip",
        "publicip",
        "remoteip",
        "fullname",
        "realname",
        "displayname",
        "firstname",
        "lastname",
        "surname",
        "phone",
        "phonenumber",
        "telephone",
        "mobile",
        "address",
        "homeaddress",
        "streetaddress",
        "postaladdress",
        "billingaddress",
        "ssn",
    }
)
SAMPLE_PLACEHOLDER_RE = re.compile(
    r"(?i)\[(?:redacted(?:[ -][^\]]*)?|lookup failed)\]|"
    r"<(?:user|host|hwid|mac|serial|email|ip|name|phone|ssn|address|secret|card)>"
)
FILENAME_RE = re.compile(r"(?i)^[a-z0-9_ .()\[\]<>+-]+\.(?:txt|json|log|ini|csv)$")
SAMPLE_FILENAME_RE = re.compile(
    r"^[A-Za-z0-9_ .()\[\]<>+-]+\."
    r"(?:[tT][xX][tT]|[jJ][sS][oO][nN]|[lL][oO][gG]|[iI][nN][iI]|[cC][sS][vV])$"
)
FILENAME_PLACEHOLDER_NAME_RE = re.compile(r"^[a-z0-9][a-z0-9_-]{0,31}$")
WINDOWS_RESERVED_NAMES = {
    "AUX",
    "CON",
    "NUL",
    "PRN",
    *(f"COM{index}" for index in range(1, 10)),
    *(f"LPT{index}" for index in range(1, 10)),
}
FIELD_TOKEN_RE = re.compile(
    r"(?i)\b(?:account|admin|anti|antivirus|application|arch|autofill|av|bios|bit|"
    r"browser|build|capacity|caption|category|chassis|city|clipboard|clr|color|"
    r"computer|cookie|core|country|cpu|credit|current|data|date|default|device|"
    r"directory|discord|disk|display|domain|elevated|environment|epic|extension|"
    r"external|facebook|file|firewall|folder|free|fullname|gateway|geo|gpu|graphics|"
    r"growtopia|guid|hardware|history|host|hwid|id|input|install|integrity|internal|"
    r"internet|ip|isp|jabber|keyboard|language|lan|latitude|longitude|lid|local|"
    r"locale|location|log|logical|lumma|mac|machine|manufacturer|memory|metamask|"
    r"minecraft|mode|model|monitor|motherboard|name|netbios|network|number|operating|"
    r"operation|org|os|password|path|pc|postal|power|process|processor|product|proxy|"
    r"publisher|quarantine|ram|recent|region|release|reserve|resolution|risk|rms|"
    r"roblox|run|save|screen|screenshot|serial|size|smbios|software|speed|steam|"
    r"support|system|telegram|thread|time|timezone|total|traffic|tunnel|type|uac|"
    r"uid|uplay|uptime|url|user|username|uuid|version|video|visible|wallet|wallpaper|webcam|"
    r"wifi|windows|wmi|work|worker|zip)\b"
)


class CatalogError(Exception):
    """A fail-closed validation or privacy rejection."""

    def __init__(self, code: str, message: str, line: int | None = None):
        super().__init__(message)
        self.code = code
        self.line = line


class CatalogOperationalError(CatalogError):
    """A repository-state failure, rather than a candidate rejection."""


def canonical_bytes(value: Any) -> bytes:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":")).encode(
        "utf-8"
    )


def digest(value: Any, length: int) -> str:
    return hashlib.sha256(canonical_bytes(value)).hexdigest()[:length]


def normalize_text(value: str) -> str:
    return " ".join(unicodedata.normalize("NFKC", value).strip().split())


def _has_unsafe_unicode_controls(value: str, *, allow_layout_whitespace: bool = False) -> bool:
    allowed = {"\n", "\r", "\t"} if allow_layout_whitespace else set()
    return any(
        character not in allowed and unicodedata.category(character) in {"Cc", "Cf", "Cs"}
        for character in value
    )


def normalize_signature(value: dict[str, Any]) -> dict[str, Any]:
    _exact_keys(value, SIGNATURE_KEYS, "fingerprint")
    brand = value.get("panel_brand")
    if brand is not None and not isinstance(brand, str):
        raise CatalogError("schema", "fingerprint.panel_brand must be null or string")
    result: dict[str, Any] = {
        "panel_brand": normalize_text(brand) if brand else None,
    }
    for key in ("banner_strings", "field_keys", "filenames"):
        items = value.get(key)
        if not isinstance(items, list) or not all(isinstance(v, str) for v in items):
            raise CatalogError("schema", f"fingerprint.{key} must be an array of strings")
        if len(items) > SIGNATURE_ITEM_LIMITS[key]:
            raise CatalogError(
                "schema",
                f"fingerprint.{key} exceeds {SIGNATURE_ITEM_LIMITS[key]} items",
            )
        cleaned = [normalize_text(v) for v in items]
        if key == "filenames":
            cleaned = [_normalize_filename(v) for v in cleaned]
            if any(
                len(filename) > 160 or _filename_pattern_tokens(filename) is None
                for filename in cleaned
            ):
                raise CatalogError(
                    "schema",
                    "fingerprint.filenames contains an invalid or overly complex placeholder "
                    "pattern",
                )
        elif key == "field_keys":
            cleaned = [v.rstrip(":").casefold() for v in cleaned]
        if any(not v for v in cleaned):
            raise CatalogError("schema", f"fingerprint.{key} cannot contain empty strings")
        if key == "field_keys" and any(not FIELD_TOKEN_RE.search(v) for v in cleaned):
            raise CatalogError(
                "weak_fingerprint", "field_keys contains a non-structural/noisy label"
            )
        unique = {v.casefold(): v for v in sorted(cleaned, reverse=True)}
        result[key] = sorted(unique.values(), key=lambda item: (item.casefold(), item))
        if key == "filenames":
            result[key] = _minimize_filename_patterns(result[key])
    if not result["panel_brand"] and not any(result[k] for k in result if k != "panel_brand"):
        raise CatalogError("weak_fingerprint", "fingerprint has no structural signal")
    _privacy_gate(result)
    return result


def _normalize_filename(value: str) -> str:
    # Windows artifact names are case-insensitive. Other spelling differences
    # remain evidence and are never collapsed into guessed semantic aliases.
    return value.casefold()


def _filename_pattern_tokens(pattern: str) -> list[tuple[str, str]] | None:
    """Parse a bounded basename pattern without compiling attacker-controlled regex."""

    folded = pattern.casefold()
    tokens: list[tuple[str, str]] = []
    cursor = 0
    placeholders = 0
    for match in re.finditer(r"<([^<>]+)>", folded):
        literal = folded[cursor : match.start()]
        if "<" in literal or ">" in literal:
            return None
        if literal:
            tokens.append(("literal", literal))
        if tokens and tokens[-1][0] == "wildcard":
            return None
        if not FILENAME_PLACEHOLDER_NAME_RE.fullmatch(match.group(1)):
            return None
        placeholders += 1
        if placeholders > MAX_FILENAME_PLACEHOLDERS:
            return None
        tokens.append(("wildcard", ""))
        cursor = match.end()
    literal = folded[cursor:]
    if "<" in literal or ">" in literal:
        return None
    if literal:
        tokens.append(("literal", literal))
    return tokens


def ensure_publishable(signature: dict[str, Any]) -> None:
    marker = bool(signature["panel_brand"] or signature["banner_strings"])
    marker_supported = marker and len(signature["field_keys"]) >= 3
    structural = not marker and len(signature["field_keys"]) >= 5 and bool(signature["filenames"])
    if not (marker_supported or structural):
        raise CatalogError(
            "weak_fingerprint",
            "fingerprint requires a verified marker plus 3 field keys, "
            "or a filename plus 5 field keys",
        )


def fingerprint_document(family_id: str, signature: dict[str, Any]) -> dict[str, Any]:
    signal_types = []
    if signature["panel_brand"] or signature["banner_strings"]:
        signal_types.append("marker")
    if signature["field_keys"]:
        signal_types.append("field_keys")
    if signature["filenames"]:
        signal_types.append("filenames")
    quality = {
        "independent_signal_types": signal_types,
        "independent_signal_count": len(signal_types),
        "yara_eligible": "marker" in signal_types and len(signature["field_keys"]) >= 3,
    }
    body = {
        "schema_version": SCHEMA_VERSION,
        "family_id": family_id,
        "status": "active",
        "scope": "exported_log_format",
        "sharing": "TLP:CLEAR",
        "quality": quality,
        "signature": signature,
    }
    return {
        "$schema": "../../../schemas/fingerprint.schema.json",
        "schema_version": SCHEMA_VERSION,
        "id": f"fp_{digest(body, 32)}",
        "family_id": family_id,
        "status": body["status"],
        "scope": body["scope"],
        "sharing": body["sharing"],
        "quality": quality,
        "signature": signature,
    }


def _signature_core(signature: dict[str, Any]) -> bytes:
    """Canonical format identity excluding observed filename variants."""

    return canonical_bytes(
        {
            "panel_brand": signature["panel_brand"],
            "banner_strings": signature["banner_strings"],
            "field_keys": signature["field_keys"],
        }
    )


def provisional_identity(signature: dict[str, Any]) -> tuple[str, str]:
    # Filenames are append-only observations of the same log structure. Keep a
    # provisional cluster stable while those variants are discovered.
    suffix = hashlib.sha256(_signature_core(signature)).hexdigest()[:32]
    return f"unattributed-{suffix}", f"Unattributed cluster {suffix}"


def _exact_keys(value: dict[str, Any], allowed: set[str], context: str) -> None:
    if not isinstance(value, dict):
        raise CatalogError("schema", f"{context} must be an object")
    unknown = sorted(set(value) - allowed)
    missing = sorted(allowed - set(value))
    if unknown:
        raise CatalogError(
            "unknown_field", f"{context} contains forbidden/unknown keys: {', '.join(unknown)}"
        )
    if missing:
        raise CatalogError("schema", f"{context} is missing keys: {', '.join(missing)}")


def _allowed_keys(
    value: dict[str, Any],
    allowed: set[str],
    required: set[str],
    context: str,
) -> None:
    if not isinstance(value, dict):
        raise CatalogError("schema", f"{context} must be an object")
    unknown = sorted(set(value) - allowed)
    missing = sorted(required - set(value))
    if unknown:
        raise CatalogError(
            "unknown_field", f"{context} contains forbidden/unknown keys: {', '.join(unknown)}"
        )
    if missing:
        raise CatalogError("schema", f"{context} is missing keys: {', '.join(missing)}")


def _privacy_gate(signature: dict[str, Any]) -> None:
    limits = {"panel_brand": 120, "banner_strings": 240, "field_keys": 100, "filenames": 160}
    for field, value in signature.items():
        values: Iterable[str] = (
            [] if value is None else ([value] if isinstance(value, str) else value)
        )
        for item in values:
            if (
                len(item) > limits[field]
                or "\n" in item
                or "\r" in item
                or _has_unsafe_unicode_controls(item)
            ):
                raise CatalogError(
                    "privacy_indicator", f"{field} contains an unsafe length or control character"
                )
            patterns = (
                EMAIL_RE,
                IPV4_RE,
                PATH_RE,
                SECRET_RE,
                LONG_TOKEN_RE,
                FORBIDDEN_VALUE_RE,
                SSN_RE,
                PHONE_RE,
                ISO_TIME_RE,
                MAC_RE,
                UUID_RE,
                HOST_RE,
                INSTRUCTION_RE,
            )
            # Public malware/operator URLs and handles can be useful stable IOCs.
            # They are allowed only as explicit brand/banner evidence, never as
            # filenames or structural field labels.
            if field not in {"panel_brand", "banner_strings"}:
                patterns += (URL_RE, HANDLE_RE)
            if any(pattern.search(item) for pattern in patterns):
                raise CatalogError(
                    "privacy_indicator", f"{field} contains a privacy or telemetry indicator"
                )
            if field == "filenames" and GEO_FILENAME_RE.search(item):
                raise CatalogError(
                    "privacy_indicator", "filenames contains an observed geography pattern"
                )
            if field == "filenames" and (
                not FILENAME_RE.fullmatch(item)
                or "/" in item
                or "\\" in item
                or ".." in item
                or _filename_pattern_tokens(item) is None
            ):
                raise CatalogError(
                    "privacy_indicator", "filenames must contain a stable basename and extension"
                )


def _json_object_no_duplicates(pairs: list[tuple[str, Any]]) -> dict[str, Any]:
    result: dict[str, Any] = {}
    for key, value in pairs:
        if key in result:
            raise CatalogError("duplicate_key", f"duplicate JSON key: {key}")
        result[key] = value
    return result


def load_json(path: Path) -> Any:
    try:
        return json.loads(
            path.read_text(encoding="utf-8"), object_pairs_hook=_json_object_no_duplicates
        )
    except CatalogError:
        raise
    except (OSError, RecursionError, UnicodeError, json.JSONDecodeError) as exc:
        raise CatalogError("invalid_json", f"cannot read {path.relative_to(ROOT)}: {exc}") from exc


def dump_json(value: Any) -> str:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, indent=2) + "\n"


def _validate_family(doc: Any, path: Path) -> None:
    _exact_keys(doc, FAMILY_KEYS, str(path.relative_to(ROOT)))
    if (
        doc["$schema"] != "../../schemas/family.schema.json"
        or doc["schema_version"] != SCHEMA_VERSION
    ):
        raise CatalogError("schema", f"{path.relative_to(ROOT)} has unsupported schema metadata")
    if not isinstance(doc["id"], str) or not SLUG_RE.fullmatch(doc["id"]):
        raise CatalogError("schema", f"{path.relative_to(ROOT)} has invalid id")
    if path.parent.name != doc["id"]:
        raise CatalogError("path_mismatch", f"family directory does not match id {doc['id']}")
    if (
        doc["classification"] not in FAMILY_CLASSES
        or doc["attribution_confidence"] not in CONFIDENCE
    ):
        raise CatalogError(
            "schema", f"{path.relative_to(ROOT)} has invalid classification/confidence"
        )
    if doc["classification"] == "known_family" and doc["attribution_confidence"] not in {
        "high",
        "medium",
    }:
        raise CatalogError("attribution", "known_family requires high or medium confidence")
    if doc["classification"] == "known_family" and UNATTRIBUTED_RE.fullmatch(doc["id"]):
        raise CatalogError(
            "attribution",
            "the unattributed-<digest> namespace is reserved for provisional clusters",
        )
    if doc["classification"] == "provisional_cluster":
        match = UNATTRIBUTED_RE.fullmatch(doc["id"])
        expected = f"Unattributed cluster {match.group(1)}" if match else ""
        if (
            not match
            or doc["name"] != expected
            or doc["attribution_confidence"] not in {"low", "unknown"}
        ):
            raise CatalogError(
                "attribution", f"{path.relative_to(ROOT)} is not a neutral provisional identity"
            )
    expected_root = FAMILIES if doc["classification"] == "known_family" else UNATTRIBUTED
    if path.parent.parent != expected_root:
        raise CatalogError(
            "layout",
            f"{path.relative_to(ROOT)} belongs under {expected_root.relative_to(ROOT)}",
        )
    text_limits = {"name": 120, "description": 1000}
    for key, limit in text_limits.items():
        if (
            not isinstance(doc[key], str)
            or not doc[key].strip()
            or len(doc[key]) > limit
            or _has_unsafe_unicode_controls(doc[key])
        ):
            raise CatalogError("schema", f"{path.relative_to(ROOT)}.{key} must be non-empty")
    for key in ("aliases", "tracking_labels", "targets"):
        if not isinstance(doc[key], list) or not all(
            isinstance(v, str)
            and v.strip()
            and len(v) <= 160
            and not _has_unsafe_unicode_controls(v)
            for v in doc[key]
        ):
            raise CatalogError("schema", f"{path.relative_to(ROOT)}.{key} must be a string array")
        normalized_items = [normalize_text(value).casefold() for value in doc[key]]
        if len(normalized_items) != len(set(normalized_items)):
            raise CatalogError("schema", f"{path.relative_to(ROOT)}.{key} must be unique")
    references = doc["external_references"]
    if not isinstance(references, list) or not all(
        isinstance(ref, dict)
        and set(ref) in ({"url"}, {"url", "title"})
        and isinstance(ref.get("url"), str)
        and _valid_external_url(ref["url"])
        and "cystack" not in ref["url"].casefold()
        and (
            "title" not in ref
            or (
                isinstance(ref["title"], str)
                and bool(ref["title"].strip())
                and len(ref["title"]) <= 200
                and not _has_unsafe_unicode_controls(ref["title"])
            )
        )
        for ref in references
    ):
        raise CatalogError("schema", f"{path.relative_to(ROOT)} has invalid external_references")
    if isinstance(references, list):
        reference_urls = [ref.get("url") for ref in references if isinstance(ref, dict)]
        if len(reference_urls) != len(set(reference_urls)):
            raise CatalogError(
                "schema", f"{path.relative_to(ROOT)}.external_references must be unique"
            )
    if doc["classification"] == "known_family" and not references:
        raise CatalogError(
            "attribution", f"{path.relative_to(ROOT)} requires an external reference"
        )


def _valid_external_url(value: str) -> bool:
    if _has_unsafe_unicode_controls(value) or any(character.isspace() for character in value):
        return False
    try:
        parsed = urlsplit(value)
        hostname = parsed.hostname
        parsed.port
    except ValueError:
        return False
    return (
        parsed.scheme == "https"
        and bool(hostname)
        and parsed.username is None
        and parsed.password is None
    )


def _validate_fingerprint(doc: Any, path: Path, family_id: str) -> None:
    _exact_keys(doc, FINGERPRINT_KEYS, str(path.relative_to(ROOT)))
    if (
        doc["$schema"] != "../../../schemas/fingerprint.schema.json"
        or doc["schema_version"] != SCHEMA_VERSION
    ):
        raise CatalogError("schema", f"{path.relative_to(ROOT)} has unsupported schema metadata")
    if doc["family_id"] != family_id or not FP_RE.fullmatch(doc["id"]):
        raise CatalogError("path_mismatch", f"{path.relative_to(ROOT)} has mismatched identifiers")
    if path.stem != doc["id"]:
        raise CatalogError("path_mismatch", f"fingerprint filename does not match id {doc['id']}")
    if (
        doc["status"] != "active"
        or doc["scope"] != "exported_log_format"
        or doc["sharing"] != "TLP:CLEAR"
    ):
        raise CatalogError("schema", f"{path.relative_to(ROOT)} has invalid status/scope/sharing")
    _exact_keys(doc["quality"], QUALITY_KEYS, f"{path.relative_to(ROOT)}.quality")
    signature = normalize_signature(doc["signature"])
    ensure_publishable(signature)
    expected = fingerprint_document(family_id, signature)
    if doc != expected:
        raise CatalogError(
            "content_address",
            f"{path.relative_to(ROOT)} is non-canonical or its content id is invalid",
        )


def _family_json_paths() -> list[Path]:
    paths: list[Path] = []
    for root in (FAMILIES, UNATTRIBUTED):
        if root.is_dir():
            paths.extend(root.glob("*/family.json"))
    return sorted(paths)


def _validate_catalog_roots() -> None:
    for root in (FAMILIES, UNATTRIBUTED):
        for entry in sorted(root.iterdir()):
            if root == UNATTRIBUTED and entry.name == "README.md" and entry.is_file():
                continue
            if entry.is_symlink() or not entry.is_dir():
                raise CatalogError("layout", f"unexpected catalog entry: {entry.relative_to(ROOT)}")
            family_json = entry / "family.json"
            if not family_json.is_file() or family_json.is_symlink():
                raise CatalogError(
                    "layout", f"catalog directory has no family.json: {entry.relative_to(ROOT)}"
                )


def _validate_family_directory(family_dir: Path) -> None:
    allowed_files = {"family.json", "README.md"}
    allowed_directories = {"samples", "fingerprints"}
    for entry in sorted(family_dir.iterdir()):
        if entry.name in allowed_files and entry.is_file() and not entry.is_symlink():
            continue
        if entry.name in allowed_directories and entry.is_dir() and not entry.is_symlink():
            continue
        raise CatalogError("layout", f"unexpected family entry: {entry.relative_to(ROOT)}")


def _family_directory(family: dict[str, Any]) -> Path:
    root = FAMILIES if family["classification"] == "known_family" else UNATTRIBUTED
    return root / family["id"]


def _sample_files(family_dir: Path) -> list[Path]:
    sample_dir = family_dir / "samples"
    if not sample_dir.is_dir():
        return []
    return sorted(path for path in sample_dir.iterdir() if path.is_file())


def _sample_name(path: Path) -> str:
    """Return the malware-visible filename, without an internal fingerprint prefix."""

    prefix, separator, remainder = path.name.partition("__")
    return unquote(remainder) if separator and FP_RE.fullmatch(prefix) else path.name


def _encoded_sample_name(filename: str) -> str:
    return quote(filename, safe=SAMPLE_PATH_SAFE)


def _valid_sample_filename(filename: str) -> bool:
    device_stem = filename.split(".", 1)[0].rstrip(" .").upper()
    return (
        bool(filename)
        and len(filename) <= 180
        and filename == filename.strip()
        and bool(SAMPLE_FILENAME_RE.fullmatch(filename))
        and device_stem not in WINDOWS_RESERVED_NAMES
        and len(_encoded_sample_name(filename).encode("ascii")) <= MAX_ENCODED_SAMPLE_NAME
    )


def _validate_samples(family_dir: Path) -> int:
    sample_dir = family_dir / "samples"
    if sample_dir.is_symlink() or not sample_dir.is_dir():
        raise CatalogError(
            "layout", f"{family_dir.relative_to(ROOT)} has no representative samples"
        )
    entries = sorted(sample_dir.iterdir())
    allowed_suffixes = {".txt", ".json", ".log", ".ini", ".csv"}
    if not entries:
        raise CatalogError("layout", f"{sample_dir.relative_to(ROOT)} is empty")
    for path in entries:
        if (
            path.is_symlink()
            or not path.is_file()
            or path.suffix.casefold() not in allowed_suffixes
        ):
            raise CatalogError("layout", f"unexpected sample entry: {path.relative_to(ROOT)}")
        sample_name = _sample_name(path)
        prefix, separator, encoded_name = path.name.partition("__")
        if not _valid_sample_filename(sample_name) or (
            separator
            and FP_RE.fullmatch(prefix)
            and encoded_name != _encoded_sample_name(sample_name)
        ):
            raise CatalogError("layout", f"non-canonical sample filename: {path.relative_to(ROOT)}")
        try:
            data = path.read_bytes()
            text = data.decode("utf-8")
        except (OSError, UnicodeError) as exc:
            raise CatalogError("sample", f"cannot read {path.relative_to(ROOT)}: {exc}") from exc
        if not data or len(data) > MAX_SAMPLE_BYTES or "\x00" in text:
            raise CatalogError(
                "sample", f"{path.relative_to(ROOT)} must be non-empty UTF-8 text under 128 KiB"
            )
        _sample_safety_gate(text)
    return len(entries)


def _sample_safety_gate(content: str) -> None:
    if _has_unsafe_unicode_controls(content, allow_layout_whitespace=True):
        raise CatalogError("sample_safety", "sample contains unsafe Unicode controls")
    if SAMPLE_INJECTION_RE.search(content):
        raise CatalogError("sample_safety", "sample contains prompt-like instructions")
    if HOST_RE.search(content) or SAMPLE_USER_PATH_RE.search(content):
        raise CatalogError("sample_safety", "sample contains a direct host or user-path identifier")
    if DPAPI_BLOB_RE.search(content):
        raise CatalogError("sample_safety", "sample contains a DPAPI-like protected value")
    if SAMPLE_CORRELATION_RE.search(content):
        raise CatalogError("sample_safety", "sample contains a per-log correlation signature")
    try:
        parsed = json.loads(content)
    except RecursionError as exc:
        raise CatalogError(
            "sample_safety", "sample JSON nesting exceeds the safe inspection limit"
        ) from exc
    except (json.JSONDecodeError, ValueError):
        parsed = None
    if parsed is not None:
        credential_records = _json_credential_record_count(parsed)
        _check_sample_json_values(parsed)
    else:
        credential_records = _text_credential_record_count(content)
        for line in content.splitlines():
            for segment in line.split("|"):
                match = SAMPLE_KEY_VALUE_RE.match(segment)
                if match and _is_sensitive_sample_label(match.group("label")):
                    _require_placeholder_value(match.group("label"), match.group("value"))
    if credential_records > 3:
        raise CatalogError(
            "sample_safety",
            "sample contains too many repeated credential records; publish a short excerpt",
        )


def _credential_label_category(label: str) -> str | None:
    key = _sample_label_key(label)
    if key in {"url", "website", "site", "origin", "loginurl", "websiteurl"}:
        return "url"
    if key in SAMPLE_USER_LABELS or key.endswith(("username", "loginname")):
        return "username"
    if key in {"password", "pass", "passwd", "pwd"} or key.endswith("password"):
        return "password"
    return None


def _text_credential_record_count(content: str) -> int:
    records = 0
    fields: set[str] = set()
    for line in content.splitlines():
        for segment in line.split("|"):
            match = SAMPLE_KEY_VALUE_RE.match(segment)
            if not match:
                continue
            category = _credential_label_category(match.group("label"))
            if category is None:
                continue
            if category in fields:
                fields.clear()
            fields.add(category)
            if fields == {"url", "username", "password"}:
                records += 1
                fields.clear()
    return records


def _json_credential_record_count(value: Any) -> int:
    records = 0
    pending = [value]
    visited = 0
    while pending:
        visited += 1
        if visited > MAX_JSON_LABEL_NODES:
            raise CatalogError("sample_safety", "sample JSON exceeds the safe inspection limit")
        current = pending.pop()
        if isinstance(current, dict):
            categories = {
                category
                for key in current
                if (category := _credential_label_category(str(key))) is not None
            }
            records += int(categories == {"url", "username", "password"})
            pending.extend(current.values())
        elif isinstance(current, list):
            pending.extend(current)
    return records


def _sample_label_key(label: str) -> str:
    return "".join(character for character in label.casefold() if character.isalnum())


def _is_sensitive_sample_label(label: str) -> bool:
    key = _sample_label_key(label)
    labels = (
        SAMPLE_USER_LABELS
        | SAMPLE_HOST_LABELS
        | SAMPLE_ID_LABELS
        | SAMPLE_SECRET_LABELS
        | SAMPLE_CONTACT_LABELS
    )
    return key in labels or key.endswith(
        (
            "username",
            "hostname",
            "computername",
            "hwid",
            "hardwareid",
            "machineguid",
            "machineuuid",
            "password",
            "passwords",
            "passwd",
            "token",
            "tokens",
            "secret",
            "secrets",
            "cookie",
            "session",
            "sessions",
            "apikey",
            "emailaddress",
            "macaddress",
            "serialnumber",
        )
    )


def _safe_sample_value(value: Any) -> bool:
    if value is None or value == "" or value == [] or value == {}:
        return True
    if not isinstance(value, str):
        return False
    remainder = SAMPLE_PLACEHOLDER_RE.sub("", value).strip(" \t/\\|,;:()_-.")
    return not remainder or remainder.casefold() in {"n/a", "none", "null", "unknown"}


def _require_placeholder_value(label: str, value: Any) -> None:
    key = _sample_label_key(label)
    plural_aggregate = key.endswith(("cookies", "passwords", "tokens", "sessions", "secrets"))
    status_like = key.endswith(("session", "sessions", "cookies", "tokens"))
    if plural_aggregate and isinstance(value, int) and not isinstance(value, bool) and value >= 0:
        return
    if isinstance(value, str):
        normalized = value.strip()
        if status_like and normalized.casefold() in {"0", "false", "no", "❌"}:
            return
        if plural_aggregate and re.fullmatch(r"[✅❌]?\s*\d+", normalized):
            return
        if key == "deviceid" and re.fullmatch(r"0x[0-9a-f]{3,8}", normalized, re.IGNORECASE):
            return
        if key == "deviceid" and re.fullmatch(r"[A-Z]:", normalized, re.IGNORECASE):
            return
        if key == "devicename" and re.fullmatch(r"\\\\\.\\DISPLAY\d+", normalized, re.IGNORECASE):
            return
        if key in (SAMPLE_USER_LABELS | SAMPLE_HOST_LABELS):
            remainder = SAMPLE_PLACEHOLDER_RE.sub("", normalized).strip(" \t/\\|,;:()_-.")
            if remainder.casefold() in {"admin", "pc", "root", "system"}:
                return
    if not _safe_sample_value(value):
        raise CatalogError(
            "sample_safety",
            f"sample field {normalize_text(label)!r} contains an unredacted sensitive value",
        )


def _check_sample_json_values(value: Any, *, key: str = "") -> None:
    pending = [(value, key)]
    visited = 0
    while pending:
        visited += 1
        if visited > MAX_JSON_LABEL_NODES:
            raise CatalogError("sample_safety", "sample JSON exceeds the safe inspection limit")
        current, current_key = pending.pop()
        if current_key and _is_sensitive_sample_label(current_key):
            _require_placeholder_value(current_key, current)
            continue
        if isinstance(current, dict):
            pending.extend((child, str(child_key)) for child_key, child in current.items())
        elif isinstance(current, list):
            pending.extend((child, "") for child in current)


def validate_catalog(check_generated: bool = True) -> dict[str, int]:
    if not FAMILIES.is_dir():
        raise CatalogError("layout", "families directory is missing")
    if not UNATTRIBUTED.is_dir():
        raise CatalogError("layout", "unattributed directory is missing")
    _validate_catalog_roots()
    for schema_path in sorted((ROOT / "schemas").glob("*.schema.json")):
        schema = load_json(schema_path)
        if schema.get("$schema") != "https://json-schema.org/draft/2020-12/schema":
            raise CatalogError("schema", f"{schema_path.relative_to(ROOT)} is not Draft 2020-12")
    family_count = fingerprint_count = sample_count = 0
    seen_family_ids: dict[str, Path] = {}
    seen_ids: set[str] = set()
    seen_signatures: dict[bytes, str] = {}
    seen_provisional_cores: dict[bytes, str] = {}
    seen_sample_hashes: dict[str, list[tuple[str, str, str | None, Path]]] = {}
    validated_families: list[dict[str, Any]] = []
    validated_fingerprints: list[dict[str, Any]] = []
    linked_samples_for_ranking: list[tuple[Path, str]] = []
    for family_json in _family_json_paths():
        family_path = family_json.parent
        _validate_family_directory(family_path)
        family_doc = load_json(family_json)
        _validate_family(family_doc, family_json)
        previous_family_path = seen_family_ids.get(family_doc["id"])
        if previous_family_path is not None:
            raise CatalogError(
                "duplicate",
                f"{family_json.relative_to(ROOT)} duplicates family id from "
                f"{previous_family_path.relative_to(ROOT)}",
            )
        seen_family_ids[family_doc["id"]] = family_json
        validated_families.append(family_doc)
        family_count += 1
        sample_count += _validate_samples(family_path)
        fp_dir = family_path / "fingerprints"
        if fp_dir.is_symlink() or (fp_dir.exists() and not fp_dir.is_dir()):
            raise CatalogError("layout", f"{family_path.name}/fingerprints is not a directory")
        entries = sorted(fp_dir.iterdir()) if fp_dir.is_dir() else []
        files = [path for path in entries if path.is_file() and path.suffix == ".json"]
        if not files and family_doc["classification"] == "provisional_cluster":
            raise CatalogError("layout", f"{family_path.name} has no usable fingerprints")
        if family_doc["classification"] == "provisional_cluster" and len(files) != 1:
            raise CatalogError(
                "layout", f"{family_path.name} must contain exactly one provisional fingerprint"
            )
        unexpected = [
            p for p in entries if p.is_symlink() or not p.is_file() or p.suffix != ".json"
        ]
        if unexpected:
            raise CatalogError(
                "layout", f"unexpected fingerprint entry: {unexpected[0].relative_to(ROOT)}"
            )
        family_fingerprints: list[dict[str, Any]] = []
        family_cores: dict[bytes, str] = {}
        for path in files:
            doc = load_json(path)
            _validate_fingerprint(doc, path, family_doc["id"])
            family_fingerprints.append(doc)
            validated_fingerprints.append(doc)
            core_key = _signature_core(doc["signature"])
            if family_doc["classification"] == "provisional_cluster":
                previous_cluster = seen_provisional_cores.get(core_key)
                if previous_cluster is not None and previous_cluster != family_doc["id"]:
                    raise CatalogError(
                        "redundant_cluster",
                        f"{family_doc['id']} and {previous_cluster} differ only by filename; "
                        "consolidate them",
                    )
                seen_provisional_cores[core_key] = family_doc["id"]
            previous_core = family_cores.get(core_key)
            if previous_core is not None:
                raise CatalogError(
                    "redundant_fingerprint",
                    f"{doc['id']} and {previous_core} differ only by filename; merge them",
                )
            family_cores[core_key] = doc["id"]
            if family_doc["classification"] == "provisional_cluster":
                expected_id, expected_name = provisional_identity(doc["signature"])
                if family_doc["id"] != expected_id or family_doc["name"] != expected_name:
                    raise CatalogError(
                        "content_address",
                        f"{family_path.name} provisional identity does not match its signature",
                    )
            if doc["id"] in seen_ids:
                raise CatalogError("duplicate", f"duplicate fingerprint id: {doc['id']}")
            signature_key = canonical_bytes(doc["signature"])
            previous_family = seen_signatures.get(signature_key)
            if previous_family and previous_family != family_doc["id"]:
                raise CatalogError(
                    "ambiguous_signature",
                    f"identical signature assigned to {previous_family} and {family_doc['id']}",
                )
            seen_signatures[signature_key] = family_doc["id"]
            seen_ids.add(doc["id"])
            fingerprint_count += 1
        covered_fingerprints: set[str] = set()
        unique_samples: list[tuple[str, str]] = []
        fingerprints_by_id = {fingerprint["id"]: fingerprint for fingerprint in family_fingerprints}
        observed_markers: dict[str, set[str]] = {
            fingerprint["id"]: set() for fingerprint in family_fingerprints
        }
        seen_sample_owner_names: dict[tuple[str | None, str], Path] = {}
        for sample_path in _sample_files(family_path):
            logical_name = _sample_name(sample_path).casefold()
            sample_id = sample_path.name.split("__", 1)[0]
            matching_ids = _matching_fingerprint_ids(sample_path, family_fingerprints)
            if FP_RE.fullmatch(sample_id):
                if sample_id not in {fp["id"] for fp in family_fingerprints}:
                    raise CatalogError(
                        "sample_mismatch",
                        f"{sample_path.relative_to(ROOT)} names an unknown fingerprint",
                    )
                if sample_id not in matching_ids:
                    raise CatalogError(
                        "sample_mismatch",
                        f"{sample_path.relative_to(ROOT)} does not match its named fingerprint",
                    )
            if len(matching_ids) == 1:
                covered_fingerprints.update(matching_ids)
                unique_samples.append((_sample_name(sample_path), matching_ids[0]))
                fingerprint_id = matching_ids[0]
                linked_samples_for_ranking.append((sample_path, fingerprint_id))
                evidence = _signature_evidence(
                    sample_path.read_text(encoding="utf-8"),
                    _sample_name(sample_path),
                    fingerprints_by_id[fingerprint_id]["signature"],
                )
                observed_markers[fingerprint_id].update(
                    marker.casefold() for marker in evidence["matched_markers"]
                )
            sample_hash = hashlib.sha256(sample_path.read_bytes()).hexdigest()
            sample_owner = matching_ids[0] if len(matching_ids) == 1 else None
            owner_name_key = (sample_owner, logical_name)
            previous_logical_name = seen_sample_owner_names.get(owner_name_key)
            if previous_logical_name is not None:
                owner_label = sample_owner or "no unique fingerprint"
                raise CatalogError(
                    "duplicate_sample",
                    f"{sample_path.relative_to(ROOT)} duplicates the case-insensitive basename "
                    f"of {previous_logical_name.relative_to(ROOT)} for {owner_label}",
                )
            seen_sample_owner_names[owner_name_key] = sample_path
            for (
                previous_family,
                previous_name,
                previous_owner,
                previous_path,
            ) in seen_sample_hashes.get(sample_hash, []):
                if (
                    previous_family != family_doc["id"]
                    or previous_name == logical_name
                    or previous_owner is None
                    or sample_owner is None
                    or previous_owner != sample_owner
                ):
                    raise CatalogError(
                        "duplicate_sample",
                        f"{sample_path.relative_to(ROOT)} duplicates "
                        f"{previous_path.relative_to(ROOT)} without distinct variant evidence",
                    )
            seen_sample_hashes.setdefault(sample_hash, []).append(
                (family_doc["id"], logical_name, sample_owner, sample_path)
            )
        missing_coverage = sorted(
            fp["id"] for fp in family_fingerprints if fp["id"] not in covered_fingerprints
        )
        if missing_coverage:
            raise CatalogError(
                "sample_coverage",
                f"{family_path.relative_to(ROOT)} lacks a unique representative sample for "
                + ", ".join(missing_coverage),
            )
        for fingerprint in family_fingerprints:
            missing_variants = _unmatched_filename_patterns(
                fingerprint["signature"]["filenames"],
                [filename for filename, owner in unique_samples if owner == fingerprint["id"]],
            )
            if missing_variants:
                raise CatalogError(
                    "variant_coverage",
                    f"{fingerprint['id']} has no linked sample for filename "
                    + ", ".join(missing_variants),
                )
            declared_markers = (
                [fingerprint["signature"]["panel_brand"]]
                if fingerprint["signature"]["panel_brand"]
                else []
            ) + fingerprint["signature"]["banner_strings"]
            missing_markers = [
                marker
                for marker in declared_markers
                if marker.casefold() not in observed_markers[fingerprint["id"]]
            ]
            if missing_markers:
                raise CatalogError(
                    "marker_coverage",
                    f"{fingerprint['id']} has no linked sample for marker "
                    + ", ".join(missing_markers),
                )
    for sample_path, fingerprint_id in linked_samples_for_ranking:
        matches = _rank_catalog_matches(
            sample_path.read_text(encoding="utf-8"),
            _sample_name(sample_path),
            validated_families,
            validated_fingerprints,
        )
        if not matches or matches[0]["fingerprint_id"] != fingerprint_id:
            winner = matches[0]["fingerprint_id"] if matches else "no match"
            raise CatalogError(
                "ranking_conflict",
                f"{sample_path.relative_to(ROOT)} links to {fingerprint_id} "
                f"but ranks {winner} first",
            )
    if check_generated:
        build(check=True)
    return {
        "families": family_count,
        "fingerprints": fingerprint_count,
        "samples": sample_count,
    }


def _load_catalog() -> tuple[list[dict[str, Any]], list[dict[str, Any]]]:
    families: list[dict[str, Any]] = []
    fingerprints: list[dict[str, Any]] = []
    for path in _family_json_paths():
        family = load_json(path)
        families.append(family)
        fingerprints.extend(
            load_json(p) for p in sorted((path.parent / "fingerprints").glob("*.json"))
        )
    return families, fingerprints


def _readme(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    counts = Counter(fp["family_id"] for fp in fingerprints)
    known = sorted(
        (family for family in families if family["classification"] == "known_family"),
        key=lambda item: item["name"].casefold(),
    )
    active_rows: list[str] = []
    reference_rows: list[str] = []
    for family in known:
        family_dir = _family_directory(family)
        samples = _sample_files(family_dir)
        family_fps = [fp for fp in fingerprints if fp["family_id"] == family["id"]]
        filenames = sorted({name for fp in family_fps for name in fp["signature"]["filenames"]})
        if not filenames:
            filenames = [_sample_name(path) for path in samples]
        row = (
            f"| [{_md_text(family['name'])}](families/{family['id']}/README.md) | "
            f"{', '.join(_inline_code(name) for name in filenames) or '—'} | "
            f"{counts[family['id']]} | {len(samples)} |"
        )
        (active_rows if counts[family["id"]] else reference_rows).append(row)
    provisional_count = sum(
        family["classification"] == "provisional_cluster" for family in families
    )
    example_lines = _readme_identify_example(families, fingerprints)
    return "\n".join(
        [
            "# Stealer Fingerprints",
            "",
            "A practical reference for identifying **information-stealer log formats**. "
            "Every entry has a representative text sample; matcher-ready entries also "
            "publish the filenames, fields, and markers used to recognize the format.",
            "",
            "Each matcher fingerprint—and every filename variant it declares—is backed by a "
            "linked representative sample. When the filename itself is evidence, the same "
            "sanitized body may appear under more than one name.",
            "",
            "> This catalog identifies exported log text, not malware binaries.",
            "> A match is a lead for an analyst, not proof of infection or final attribution.",
            "",
            "## Identify a log",
            "",
            "Clone the repository and point the built-in matcher at a text file. It runs "
            "locally and needs only Python 3.11+.",
            "",
            "```console",
            "python identify.py path/to/System.txt",
            "```",
            "",
            "A result looks like this:",
            "",
            "```text",
            *example_lines,
            "```",
            "",
            "The result shows ranked family candidates and the exact markers, field labels, "
            "and filename evidence behind each evidence score. Add `--json` for automation.",
            "",
            "You can also browse the [filename index](indexes/by-filename.md), "
            "[field index](indexes/by-field.md), [marker index](indexes/by-marker.md), or the "
            f"[{provisional_count} unattributed formats](unattributed/README.md).",
            "",
            "## Known families",
            "",
            "| Family | Typical log files | Fingerprints | Samples |",
            "|---|---|---:|---:|",
            *active_rows,
            "",
            "## Sample-only references",
            "",
            "These malware families have a readable sample, but not yet a fingerprint "
            "specific enough for the matcher.",
            "",
            "| Family | Typical log files | Fingerprints | Samples |",
            "|---|---|---:|---:|",
            *reference_rows,
            "",
            "## Use the data",
            "",
            "The complete JSON catalog is at [`catalog/catalog.json`](catalog/catalog.json). "
            "Experimental YARA rules for exported log text are in "
            "[`rules/`](rules/). They are not executable-malware rules.",
            "",
            "Because the filename itself is evidence, one sanitized layout may be published "
            "byte-for-byte under several malware-visible names. Those files document filename "
            "variants; they are not independent payload observations.",
            "",
            "Non-malware formats are intentionally excluded. To add a family, variant, "
            "sample, or correction, see [CONTRIBUTING.md](CONTRIBUTING.md).",
            "",
            "Maintainers can validate generated pages and data with:",
            "",
            "```console",
            "python tools/catalog.py validate",
            "python tools/catalog.py build --check",
            "python -m unittest discover -s tests -v",
            "```",
            "",
            "<!-- Index generated by tools/catalog.py; edit family data and samples instead. -->",
            "",
        ]
    )


def _code_fence(content: str) -> str:
    longest = max((len(match.group(0)) for match in re.finditer(r"`+", content)), default=0)
    return "`" * max(3, longest + 1)


def _md_cell(value: str) -> str:
    return _md_text(value).replace("\n", " ")


def _md_text(value: str) -> str:
    return (
        html.escape(value, quote=False)
        .replace("|", "&#124;")
        .replace("`", "&#96;")
        .replace("[", "&#91;")
        .replace("]", "&#93;")
    )


def _inline_code(value: str) -> str:
    return f"<code>{_md_text(value.replace(chr(10), ' '))}</code>"


def _md_paragraph(value: str) -> str:
    chunks: list[str] = []
    cursor = 0
    for match in re.finditer(r"`([^`\r\n]+)`", value):
        chunks.append(html.escape(value[cursor : match.start()], quote=False))
        chunks.append(f"<code>{html.escape(match.group(1), quote=False)}</code>")
        cursor = match.end()
    chunks.append(html.escape(value[cursor:], quote=False))
    return "<p>" + "".join(chunks) + "</p>"


def _md_url(value: str) -> str:
    return quote(value, safe=":/?#@!$&'*+,;=%")


def _sample_preview(
    path: Path, *, max_lines: int = 80, max_chars: int = 10_000
) -> tuple[str, bool]:
    content = path.read_text(encoding="utf-8").strip("\n")
    lines = content.splitlines()
    preview_lines = [
        line if len(line) <= 320 else line[:317].rstrip() + "…" for line in lines[:max_lines]
    ]
    preview = "\n".join(preview_lines)
    shortened = (
        len(lines) > max_lines
        or any(len(line) > 320 for line in lines[:max_lines])
        or len(preview) > max_chars
    )
    if len(preview) > max_chars:
        preview = preview[:max_chars].rstrip()
    return preview, shortened


def _fingerprint_label(fingerprint: dict[str, Any], display_filename: str | None = None) -> str:
    signature = fingerprint["signature"]
    filename = display_filename or (
        signature["filenames"][0] if signature["filenames"] else "text log"
    )
    marker = signature["panel_brand"]
    if not marker and signature["banner_strings"]:
        marker = signature["banner_strings"][0]
    if not marker:
        marker = " / ".join(signature["field_keys"][:2])
    marker = marker or "structural layout"
    if len(marker) > 56:
        marker = marker[:53].rstrip() + "…"
    return f"{filename} - {marker}"


def _readme_identify_example(
    families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]
) -> list[str]:
    preferred = sorted(
        families,
        key=lambda family: (family["id"] != "lumma", family["name"].casefold()),
    )
    for family in preferred:
        if not any(fp["family_id"] == family["id"] for fp in fingerprints):
            continue
        samples = sorted(
            _sample_files(_family_directory(family)),
            key=lambda path: (_sample_name(path).casefold() != "system.txt", path.name),
        )
        for sample in samples:
            filename = _sample_name(sample)
            content = sample.read_text(encoding="utf-8")
            matches = _rank_catalog_matches(content, filename, families, fingerprints)
            if not matches or matches[0]["family_id"] != family["id"]:
                continue
            match = matches[0]
            evidence = match["evidence"]
            family_label = (
                "known family"
                if family["classification"] == "known_family"
                else "unattributed format"
            )
            ambiguous = len(matches) > 1 and match["score"] - matches[1]["score"] < 0.08
            return [
                "Possible matches (close scores)" if ambiguous else "Likely match",
                f"1. {family['name']} - evidence score "
                f"{match['score'] * 100:.0f}/100 ({family_label})",
                f"   Format: {match['format']}",
                "   Evidence: "
                f"fields {evidence['field_coverage']}, "
                f"filename {'matched' if evidence['filename'] else 'not matched'}",
            ]
    return ["No sufficiently strong structural match found."]


def _family_readme(family: dict[str, Any], fingerprints: list[dict[str, Any]]) -> str:
    family_dir = _family_directory(family)
    samples = _sample_files(family_dir)
    sample_name_counts = Counter(_sample_name(path).casefold() for path in samples)

    def sample_link(path: Path) -> str:
        logical_name = _sample_name(path)
        label = logical_name
        if sample_name_counts[logical_name.casefold()] > 1:
            matching = _matching_fingerprint_ids(path, fingerprints)
            discriminator = matching[0][:11] if len(matching) == 1 else path.name[:11]
            label = f"{logical_name} · {discriminator}"
        return f"[{_inline_code(label)}](samples/{quote(path.name)})"

    aliases = ", ".join(_inline_code(alias) for alias in family["aliases"]) or "—"
    filenames = sorted({name for fp in fingerprints for name in fp["signature"]["filenames"]})
    if not filenames:
        filenames = [_sample_name(path) for path in samples]
    markers = sorted(
        {
            marker
            for fp in fingerprints
            for marker in (
                ([fp["signature"]["panel_brand"]] if fp["signature"]["panel_brand"] else [])
                + fp["signature"]["banner_strings"]
            )
        }
    )
    keys = sorted({key for fp in fingerprints for key in fp["signature"]["field_keys"]})
    kind = (
        "Known malware family"
        if family["classification"] == "known_family"
        else "Unattributed malware-log format"
    )
    title = family["name"]
    if family["classification"] == "provisional_cluster" and fingerprints:
        title = f"Unattributed: {_fingerprint_label(fingerprints[0])}"
    lines = [
        f"# {_md_text(title)}",
        "",
        f"**{kind} · {family['attribution_confidence']} attribution confidence**",
        "",
    ]
    if family["classification"] == "provisional_cluster":
        lines.extend(
            [
                "> The log structure is useful and believed to come from malware, but its "
                "family has not been confirmed. Treat the cluster ID as a tracking label only.",
                "",
                f"Cluster ID: `{family['id'].removeprefix('unattributed-')}`",
                "",
            ]
        )
    lines.extend(
        [
            "## At a glance",
            "",
            f"- Aliases: {aliases}",
            "- Typical filenames: "
            + (", ".join(_inline_code(name) for name in filenames) or "unknown"),
            f"- Published formats: {len(fingerprints)}",
            f"- Representative samples: {len(samples)}",
            "",
            *(
                [_md_paragraph(family["description"]), ""]
                if family["classification"] == "known_family"
                else []
            ),
            "## How to recognize it",
            "",
        ]
    )
    if markers:
        lines.append("- Stable markers: " + ", ".join(_inline_code(item) for item in markers[:12]))
    else:
        lines.append("- No stable text banner is known; combine filename and field layout.")
    if keys:
        lines.append("- Recurring fields: " + ", ".join(_inline_code(item) for item in keys[:24]))
    else:
        lines.append(
            "- No machine-readable field set is published yet; compare the sample manually."
        )
    lines.extend(["", "## Formats", ""])
    if fingerprints:
        lines.extend(
            [
                "| Format | Evidence | Fingerprint |",
                "|---|---|---|",
            ]
        )
        for fp in fingerprints:
            sig = fp["signature"]
            evidence = []
            if sig["panel_brand"] or sig["banner_strings"]:
                evidence.append("marker")
            if sig["field_keys"]:
                evidence.append(f"{len(sig['field_keys'])} fields")
            if sig["filenames"]:
                evidence.append("filename")
            lines.append(
                f"| {_md_cell(_fingerprint_label(fp))} | {', '.join(evidence)} | "
                f"[`{fp['id']}`](fingerprints/{fp['id']}.json) |"
            )
    else:
        lines.append("No matcher fingerprint has been published for this family yet.")
    lines.extend(["", "## Representative sample", ""])
    if samples:
        if len({hashlib.sha256(path.read_bytes()).hexdigest() for path in samples}) < len(samples):
            lines.extend(
                [
                    "Some files below intentionally share the same sanitized body under "
                    "different malware-visible names. They document filename variants, not "
                    "independent payload observations.",
                    "",
                ]
            )
        sample = samples[0]
        preview, shortened = _sample_preview(sample)
        fence = _code_fence(preview)
        lines.extend(
            [
                "Observed text sample. Placeholders mark values removed from the original log.",
                "",
                sample_link(sample),
                "",
                f"{fence}text",
                preview,
                fence,
            ]
        )
        if shortened:
            lines.extend(["", "Preview shortened; open the sample file for the complete text."])
        if len(samples) > 1:
            lines.extend(
                [
                    "",
                    "Other samples: " + ", ".join(sample_link(path) for path in samples[1:]),
                ]
            )
    else:
        lines.append("No representative sample is available yet.")
    if family["external_references"]:
        lines.extend(["", "## References", ""])
        for reference in family["external_references"]:
            title = reference.get("title") or reference["url"]
            lines.append(f"- [{_md_text(title)}]({_md_url(reference['url'])})")
    if fingerprints and samples:
        sample_argument = samples[0].name
        sample_command = (
            f'python identify.py "{family_dir.relative_to(ROOT).as_posix()}'
            f'/samples/{sample_argument}"'
        )
        lines.extend(
            [
                "",
                "## Try it locally",
                "",
                "```console",
                sample_command,
                "```",
                "",
                "The evidence score describes a structural comparison, not attribution certainty.",
            ]
        )
    elif samples:
        lines.extend(
            [
                "",
                "This sample is available for manual comparison; no matcher fingerprint is "
                "published for it yet.",
            ]
        )
    lines.extend(
        [
            "",
            "<!-- Generated by tools/catalog.py from family data, fingerprints, and samples. -->",
            "",
        ]
    )
    return "\n".join(lines)


def _unattributed_readme(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    rows = []
    for family in sorted(
        (item for item in families if item["classification"] == "provisional_cluster"),
        key=lambda item: item["id"],
    ):
        family_fps = [fp for fp in fingerprints if fp["family_id"] == family["id"]]
        label = _fingerprint_label(family_fps[0]) if family_fps else "Unclassified text layout"
        rows.append(
            f"| [{_md_text(label)}]({family['id']}/README.md) | "
            f"`{family['id'].removeprefix('unattributed-')[:12]}` | "
            f"{len(_sample_files(_family_directory(family)))} |"
        )
    return "\n".join(
        [
            "# Unattributed stealer-log formats",
            "",
            "These samples are believed to be malware output, but there is not enough "
            "evidence to attach a public family name. They remain useful for matching, "
            "comparison, and community identification.",
            "",
            "| Recognizable layout | Cluster | Samples |",
            "|---|---|---:|",
            *rows,
            "",
            "If you can attribute one of these formats, open an issue or pull request with "
            "the public evidence behind the attribution.",
            "",
            "<!-- Generated by tools/catalog.py. -->",
            "",
        ]
    )


def _filename_index(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    family_by_id = {family["id"]: family for family in families}
    grouped: dict[str, dict[str, Any]] = {}

    def add(filename: str, family_id: str, evidence: str) -> None:
        key = filename.casefold()
        entry = grouped.setdefault(key, {"display": filename, "families": {}})
        if evidence == "sample":
            entry["display"] = filename
        entry["families"].setdefault(family_id, set()).add(evidence)

    for fp in fingerprints:
        for filename in fp["signature"]["filenames"]:
            add(filename, fp["family_id"], "fingerprint")
    for family in families:
        for sample_path in _sample_files(_family_directory(family)):
            add(_sample_name(sample_path), family["id"], "sample")
    rows = []
    for _, entry in sorted(grouped.items()):
        links = []
        for family_id in sorted(
            entry["families"], key=lambda item: family_by_id[item]["name"].casefold()
        ):
            family = family_by_id[family_id]
            prefix = (
                "../families" if family["classification"] == "known_family" else "../unattributed"
            )
            label = (
                family["name"]
                if family["classification"] == "known_family"
                else family_id.removeprefix("unattributed-")[:12]
            )
            evidence = " + ".join(sorted(entry["families"][family_id]))
            links.append(f"[{_md_text(label)}]({prefix}/{family_id}/README.md) ({evidence})")
        rows.append(f"| {_inline_code(entry['display'])} | {', '.join(links)} |")
    return "\n".join(
        [
            "# Log filename index",
            "",
            "This combines declared fingerprint names with basenames observed in the "
            "representative samples, including sample-only families. Filenames are supporting "
            "evidence only; combine common names with markers and field layout.",
            "Byte-identical samples under different names document filename variants, not "
            "independent payload observations.",
            "",
            "| Filename | Candidate families or clusters |",
            "|---|---|",
            *rows,
            "",
            "<!-- Generated by tools/catalog.py. -->",
            "",
        ]
    )


def _field_index(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    family_by_id = {family["id"]: family for family in families}
    grouped: dict[str, dict[str, set[str]]] = {}

    def add(field: str, family_id: str, evidence: str) -> None:
        grouped.setdefault(field, {}).setdefault(family_id, set()).add(evidence)

    for fingerprint in fingerprints:
        for field in fingerprint["signature"]["field_keys"]:
            add(field, fingerprint["family_id"], "fingerprint")
    for family in families:
        for sample_path in _sample_files(_family_directory(family)):
            content = sample_path.read_text(encoding="utf-8")
            for field in _sample_index_fields(content):
                add(field, family["id"], "sample")
    rows = []
    for field, family_evidence in sorted(grouped.items(), key=lambda item: item[0].casefold()):
        links = []
        for family_id in sorted(
            family_evidence, key=lambda item: family_by_id[item]["name"].casefold()
        ):
            family = family_by_id[family_id]
            prefix = (
                "../families" if family["classification"] == "known_family" else "../unattributed"
            )
            label = (
                family["name"]
                if family["classification"] == "known_family"
                else family_id.removeprefix("unattributed-")[:12]
            )
            evidence = " + ".join(sorted(family_evidence[family_id]))
            links.append(f"[{_md_text(label)}]({prefix}/{family_id}/README.md) ({evidence})")
        rows.append(f"| {_inline_code(field)} | {', '.join(links)} |")
    return "\n".join(
        [
            "# Log field index",
            "",
            "Recurring labels are structural evidence. Combine several fields with a filename "
            "or stable marker; a single common label is not enough for attribution.",
            "",
            "| Field label | Candidate families or clusters |",
            "|---|---|",
            *rows,
            "",
            "<!-- Generated by tools/catalog.py. -->",
            "",
        ]
    )


def _marker_index(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    family_by_id = {family["id"]: family for family in families}
    rows = []
    for fp in fingerprints:
        signature = fp["signature"]
        markers = ([signature["panel_brand"]] if signature["panel_brand"] else []) + signature[
            "banner_strings"
        ]
        family = family_by_id[fp["family_id"]]
        prefix = "../families" if family["classification"] == "known_family" else "../unattributed"
        label = (
            family["name"]
            if family["classification"] == "known_family"
            else family["id"].removeprefix("unattributed-")[:12]
        )
        for marker in markers:
            rows.append(
                (
                    marker.casefold(),
                    f"| {_inline_code(marker)} | "
                    f"[{_md_text(label)}]({prefix}/{family['id']}/README.md) |",
                )
            )
    return "\n".join(
        [
            "# Stable marker index",
            "",
            "Exact banners and product strings are usually stronger evidence than filenames.",
            "",
            "| Marker | Family or cluster |",
            "|---|---|",
            *(row for _, row in sorted(rows)),
            "",
            "<!-- Generated by tools/catalog.py. -->",
            "",
        ]
    )


def _catalog_json(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    samples = []
    fingerprints_by_family: dict[str, list[dict[str, Any]]] = {}
    for fingerprint in fingerprints:
        fingerprints_by_family.setdefault(fingerprint["family_id"], []).append(fingerprint)
    for family in families:
        for path in _sample_files(_family_directory(family)):
            data = path.read_bytes()
            matching = _matching_fingerprint_ids(path, fingerprints_by_family.get(family["id"], []))
            fingerprint_id = matching[0] if len(matching) == 1 else None
            samples.append(
                {
                    "family_id": family["id"],
                    "filename": _sample_name(path),
                    "fingerprint_id": fingerprint_id,
                    "path": path.relative_to(ROOT).as_posix(),
                    "sanitization": "direct identifiers and secrets redacted",
                    "sha256": hashlib.sha256(data).hexdigest(),
                    "size": len(data),
                    "source_type": "private_collection",
                    "verification": "curator_verified",
                }
            )
    return dump_json(
        {
            "$schema": "../schemas/catalog.schema.json",
            "schema_version": SCHEMA_VERSION,
            "families": families,
            "fingerprints": fingerprints,
            "samples": samples,
        }
    )


def _yara_escape(value: str) -> str:
    return value.replace("\\", "\\\\").replace('"', '\\"')


def _yara(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    family_by_id = {f["id"]: f for f in families}
    key_df = Counter(
        key.casefold() for fp in fingerprints for key in set(fp["signature"]["field_keys"])
    )
    max_common = max(2, len(fingerprints) // 8)
    chunks = [
        "// GENERATED FILE. Experimental detection of exported stealer-log formats.",
        "// These rules do not identify executable malware and require analyst validation.",
        "",
    ]
    emitted = 0
    for fp in fingerprints:
        sig = fp["signature"]
        distinctive = ([sig["panel_brand"]] if sig["panel_brand"] else []) + sig["banner_strings"]
        distinctive = [v for v in distinctive if len(v) >= 6]
        rare = [k for k in sig["field_keys"] if len(k) >= 4 and key_df[k.casefold()] <= max_common]
        common = [k for k in sig["field_keys"] if len(k) >= 4 and k not in rare]
        selected_keys = (rare + common)[:8]
        strong_brand = bool(
            distinctive and len(selected_keys) >= 3 and fp["quality"]["yara_eligible"]
        )
        if not strong_brand:
            continue
        family = family_by_id[fp["family_id"]]
        rule_name = f"experimental_log_{family['id'].replace('-', '_')}_{fp['id'][3:15]}"
        chunks.extend(
            [
                f"rule {rule_name}",
                "{",
                "    meta:",
                '        scope = "exported_log_text_only"',
                f'        catalog_family = "{_yara_escape(family["name"])}"',
                f'        family_classification = "{family["classification"]}"',
                f'        confidence = "{family["attribution_confidence"]}"',
                f'        fingerprint_id = "{fp["id"]}"',
                '        description = "Experimental exported-log format classifier for '
                f'{_yara_escape(family["name"])}"',
                '        author = "CyStack"',
                '        license = "Apache-2.0"',
                '        tlp = "CLEAR"',
                '        reference = "https://github.com/cystack/stealer-fingerprints"',
                '        experimental = "true"',
                "",
                "    strings:",
            ]
        )
        for index, value in enumerate(distinctive[:3]):
            chunks.append(f'        $marker_{index} = "{_yara_escape(value)}" ascii wide')
        for index, value in enumerate(selected_keys):
            suffix = "" if value.endswith((":", "=")) else ":"
            chunks.append(
                f'        $field_{index} = "{_yara_escape(value + suffix)}" ascii wide nocase'
            )
        chunks.extend(["", "    condition:", "        filesize < 2MB and ("])
        chunks.append("            any of ($marker_*) and 3 of ($field_*)")
        chunks.extend(["        )", "}", ""])
        emitted += 1
    chunks.insert(2, f"// Weak fingerprints are omitted; {emitted} high-specificity rules emitted.")
    return "\n".join(chunks)


def _generated_outputs() -> dict[Path, str]:
    families, fingerprints = _load_catalog()
    outputs = {
        ROOT / "README.md": _readme(families, fingerprints),
        ROOT / "catalog" / "catalog.json": _catalog_json(families, fingerprints),
        ROOT / "rules" / "experimental_log_formats.yar": _yara(families, fingerprints),
        ROOT / "unattributed" / "README.md": _unattributed_readme(families, fingerprints),
        ROOT / "indexes" / "by-field.md": _field_index(families, fingerprints),
        ROOT / "indexes" / "by-filename.md": _filename_index(families, fingerprints),
        ROOT / "indexes" / "by-marker.md": _marker_index(families, fingerprints),
    }
    fingerprints_by_family: dict[str, list[dict[str, Any]]] = {}
    for fingerprint in fingerprints:
        fingerprints_by_family.setdefault(fingerprint["family_id"], []).append(fingerprint)
    for family in families:
        outputs[_family_directory(family) / "README.md"] = _family_readme(
            family, fingerprints_by_family.get(family["id"], [])
        )
    return outputs


def _atomic_write(path: Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temporary = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8", newline="\n") as handle:
            handle.write(content)
        os.replace(temporary, path)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)


def build(check: bool = False) -> list[str]:
    changed: list[str] = []
    for path, content in _generated_outputs().items():
        if not path.exists() or path.read_text(encoding="utf-8") != content:
            changed.append(path.relative_to(ROOT).as_posix())
            if not check:
                _atomic_write(path, content)
    if check and changed:
        raise CatalogError("generated_drift", "generated files are stale: " + ", ".join(changed))
    return changed


def _normalize_sample(value: Any) -> dict[str, str] | None:
    if value is None:
        return None
    _exact_keys(value, SAMPLE_KEYS, "sample")
    filename = value["filename"]
    content = value["content"]
    if not isinstance(filename, str) or not isinstance(content, str):
        raise CatalogError("schema", "sample filename and content must be strings")
    if (
        not filename
        or len(filename) > 180
        or filename != filename.strip()
        or filename in {".", ".."}
        or "/" in filename
        or "\\" in filename
        or "\x00" in filename
        or not _valid_sample_filename(filename)
        or len(_encoded_sample_name(filename).encode("ascii")) > MAX_ENCODED_SAMPLE_NAME
    ):
        raise CatalogError("sample", "sample.filename must be a supported canonical ASCII basename")
    content = content.removeprefix("\ufeff").replace("\r\n", "\n").replace("\r", "\n")
    if not content.strip() or "\x00" in content:
        raise CatalogError("sample", "sample.content must be non-empty UTF-8 text")
    if _has_unsafe_unicode_controls(content, allow_layout_whitespace=True):
        raise CatalogError("sample", "sample.content contains unsafe Unicode controls")
    if any(ord(character) < 32 and character not in "\n\t" for character in content):
        raise CatalogError("sample", "sample.content contains unsupported control characters")
    if len(content.encode("utf-8")) > MAX_SAMPLE_BYTES:
        raise CatalogError("sample", "sample.content exceeds 128 KiB")
    _sample_safety_gate(content)
    return {"filename": filename, "content": content.rstrip() + "\n"}


def _sample_destination(family_dir: Path, fingerprint_id: str, filename: str) -> Path:
    if not _valid_sample_filename(filename):
        raise CatalogError("sample", "sample filename was not normalized before storage")
    safe_name = _encoded_sample_name(filename)
    return family_dir / "samples" / f"{fingerprint_id}__{safe_name}"


def _validate_candidate(
    value: Any,
) -> tuple[dict[str, Any], dict[str, Any], dict[str, str] | None]:
    _allowed_keys(value, CANDIDATE_KEYS, REQUIRED_CANDIDATE_KEYS, "event")
    if value["event_type"] != "catalog_candidate" or value["schema_version"] != SCHEMA_VERSION:
        raise CatalogError("schema", "unsupported event_type or schema_version")
    family = value["family"]
    _exact_keys(family, CANDIDATE_FAMILY_KEYS, "family")
    if not all(isinstance(family[k], str) for k in CANDIDATE_FAMILY_KEYS):
        raise CatalogError("schema", "family values must be strings")
    if (
        family["classification"] not in FAMILY_CLASSES
        or family["attribution_confidence"] not in CONFIDENCE
    ):
        raise CatalogError("schema", "invalid family classification/confidence")
    if family["classification"] == "known_family" and UNATTRIBUTED_RE.fullmatch(family["id"]):
        raise CatalogError(
            "attribution",
            "the unattributed-<digest> namespace is reserved for provisional clusters",
        )
    signature = normalize_signature(value["fingerprint"])
    ensure_publishable(signature)
    if family["classification"] == "provisional_cluster":
        expected_id, expected_name = provisional_identity(signature)
        if family["id"] != expected_id or family["name"] != expected_name:
            raise CatalogError(
                "attribution", f"new provisional identity must be {expected_id} / {expected_name}"
            )
        if family["attribution_confidence"] not in {"low", "unknown"}:
            raise CatalogError(
                "attribution", "provisional_cluster confidence must be low or unknown"
            )
    elif family["attribution_confidence"] not in {"high", "medium"}:
        raise CatalogError("attribution", "known_family confidence must be high or medium")
    if not SLUG_RE.fullmatch(family["id"]):
        raise CatalogError("schema", "family.id must be a lowercase kebab-case slug")
    return family, signature, _normalize_sample(value.get("sample"))


def ingest(events_path: str) -> dict[str, Any]:
    try:
        validate_catalog()
    except CatalogError as exc:
        raise CatalogOperationalError("catalog_state", str(exc)) from exc
    if events_path == "-":
        stream = getattr(sys.stdin, "buffer", sys.stdin)
        payload = stream.read(MAX_EVENT_STREAM_BYTES + 1)
        if isinstance(payload, str):
            data = payload.encode("utf-8")
        else:
            data = payload
    else:
        try:
            with Path(events_path).open("rb") as handle:
                data = handle.read(MAX_EVENT_STREAM_BYTES + 1)
        except OSError as exc:
            raise CatalogOperationalError("input", f"cannot read events: {exc}") from exc
    if len(data) > MAX_EVENT_STREAM_BYTES:
        raise CatalogError("input", f"events stream exceeds {MAX_EVENT_STREAM_BYTES} bytes")
    try:
        lines = data.decode("utf-8").splitlines()
    except UnicodeError as exc:
        raise CatalogError("input", f"events stream must be UTF-8: {exc}") from exc
    candidates: list[tuple[dict[str, Any], dict[str, Any], dict[str, str] | None, int]] = []
    for line_number, line in enumerate(lines, 1):
        if not line.strip():
            continue
        if len(line.encode("utf-8")) > MAX_EVENT_LINE_BYTES:
            raise CatalogError(
                "input",
                f"event exceeds {MAX_EVENT_LINE_BYTES} bytes",
                line_number,
            )
        if len(candidates) >= MAX_EVENT_COUNT:
            raise CatalogError(
                "input",
                f"events stream exceeds {MAX_EVENT_COUNT} candidates",
                line_number,
            )
        try:
            value = json.loads(line, object_pairs_hook=_json_object_no_duplicates)
            family, signature, sample = _validate_candidate(value)
            candidates.append((family, signature, sample, line_number))
        except CatalogError as exc:
            exc.line = line_number
            raise
        except (json.JSONDecodeError, RecursionError) as exc:
            raise CatalogError("invalid_json", str(exc), line_number) from exc
    if not candidates:
        raise CatalogError("empty_input", "events stream contains no candidates")

    existing_families = {
        doc["id"]: doc for doc in (load_json(path) for path in _family_json_paths())
    }
    planned_families: dict[str, dict[str, Any]] = {}
    planned_fingerprints: dict[str, tuple[Path, dict[str, Any]]] = {}
    planned_samples: dict[Path, str] = {}
    planned_sample_adoptions: set[Path] = set()
    planned_deletions: set[Path] = set()
    planned_sample_moves: dict[Path, Path] = {}
    signature_owners: dict[bytes, str] = {}
    core_state: dict[tuple[str, bytes], dict[str, Any]] = {}
    provisional_core_state: dict[bytes, dict[str, Any]] = {}
    for family_path in _family_json_paths():
        for path in sorted((family_path.parent / "fingerprints").glob("*.json")):
            document = load_json(path)
            signature_owners[canonical_bytes(document["signature"])] = document["family_id"]
            record = {
                "document": document,
                "path": path,
                "on_disk": True,
            }
            core_bytes = _signature_core(document["signature"])
            core_state[(document["family_id"], core_bytes)] = record
            if document["family_id"].startswith("unattributed-"):
                provisional_core_state[core_bytes] = record
    sample_hash_owners: dict[str, list[tuple[str, Path, str, bytes | None]]] = {}
    for family in existing_families.values():
        family_fingerprints = [
            record["document"]
            for (family_id, _), record in core_state.items()
            if family_id == family["id"]
        ]
        for path in _sample_files(_family_directory(family)):
            sample_hash = hashlib.sha256(path.read_bytes()).hexdigest()
            matching = _matching_fingerprint_ids(path, family_fingerprints)
            owner_core = None
            if len(matching) == 1:
                owner = next(fp for fp in family_fingerprints if fp["id"] == matching[0])
                owner_core = _signature_core(owner["signature"])
            sample_hash_owners.setdefault(sample_hash, []).append(
                (family["id"], path, _sample_name(path).casefold(), owner_core)
            )
    touched_cores: set[tuple[str, bytes]] = set()
    new_cores: set[tuple[str, bytes]] = set()
    updated_cores: set[tuple[str, bytes]] = set()
    source_lines_by_family: dict[str, int] = {}
    duplicates = 0
    for family, signature, sample, source_line in candidates:
        source_lines_by_family[family["id"]] = source_line
        existing = existing_families.get(family["id"])
        if existing:
            for key in ("name", "classification", "attribution_confidence"):
                if family[key] != existing[key]:
                    raise CatalogError(
                        "family_mismatch",
                        f"candidate {family['id']} does not match catalog {key}",
                        source_line,
                    )
        elif family["classification"] == "known_family":
            raise CatalogError(
                "manual_review_required",
                "new known families require a curated family.json review",
                source_line,
            )
        else:
            planned = planned_families.setdefault(family["id"], family)
            if planned != family:
                raise CatalogError(
                    "family_mismatch",
                    f"conflicting metadata for {family['id']}",
                    source_line,
                )
        if sample is not None:
            sample_evidence = _signature_evidence(sample["content"], sample["filename"], signature)
            declared_markers = bool(signature["panel_brand"] or signature["banner_strings"])
            if (
                not sample_evidence["qualifies"]
                or (signature["filenames"] and not sample_evidence["filename"])
                or (declared_markers and not sample_evidence["matched_markers"])
            ):
                raise CatalogError(
                    "sample_mismatch",
                    "representative sample does not match the declared filename, markers, and "
                    "structure",
                    source_line,
                )
        signature_key = canonical_bytes(signature)
        owner = signature_owners.get(signature_key)
        if owner and owner != family["id"]:
            raise CatalogError(
                "ambiguous_signature",
                f"candidate signature is already assigned to {owner}",
                source_line,
            )
        core_bytes = _signature_core(signature)
        if family["classification"] == "provisional_cluster":
            other_cluster = provisional_core_state.get(core_bytes)
            if other_cluster is not None and other_cluster["document"]["family_id"] != family["id"]:
                other_document = other_cluster["document"]
                if _filename_patterns_covered(
                    set(signature["filenames"]),
                    set(other_document["signature"]["filenames"]),
                ):
                    planned_families.pop(family["id"], None)
                    touched_cores.add((other_document["family_id"], core_bytes))
                    duplicates += 1
                    continue
                raise CatalogError(
                    "manual_review_required",
                    "a provisional cluster with the same structure already exists; "
                    "consolidate its filename variants before publishing",
                    source_line,
                )
        family_dir = _family_directory(existing or family)
        core_key = (family["id"], core_bytes)
        touched_cores.add(core_key)
        current = core_state.get(core_key)
        if current is not None:
            current_document = current["document"]
            current_filenames = set(current_document["signature"]["filenames"])
            candidate_filenames = set(signature["filenames"])
            if _filename_patterns_covered(candidate_filenames, current_filenames):
                signature_owners[signature_key] = family["id"]
                duplicates += 1
                continue
            if sample is None:
                raise CatalogError(
                    "sample_required",
                    "a representative sample is required to add a filename variant",
                    source_line,
                )
            new_filenames = {
                filename
                for filename in candidate_filenames
                if not _filename_patterns_covered({filename}, current_filenames)
            }
            if len(new_filenames) != 1:
                raise CatalogError(
                    "sample_required",
                    "one candidate sample can add exactly one filename variant",
                    source_line,
                )
            if _filename_patterns_covered({sample["filename"]}, current_filenames):
                raise CatalogError(
                    "sample_mismatch",
                    "representative sample filename is already covered by this format",
                    source_line,
                )
            if not any(
                _filename_matches(filename, sample["filename"]) for filename in new_filenames
            ):
                raise CatalogError(
                    "sample_mismatch",
                    "representative sample must demonstrate a newly added filename",
                    source_line,
                )

            merged_signature = normalize_signature(
                {**signature, "filenames": sorted(current_filenames | new_filenames)}
            )
            merged_owner = signature_owners.get(canonical_bytes(merged_signature))
            if merged_owner is not None and merged_owner != family["id"]:
                raise CatalogError(
                    "ambiguous_signature",
                    f"merged signature is already assigned to {merged_owner}",
                    source_line,
                )
            merged_document = fingerprint_document(family["id"], merged_signature)
            old_document = current_document
            old_path = current["path"]
            destination = family_dir / "fingerprints" / f"{merged_document['id']}.json"

            if current["on_disk"]:
                planned_deletions.add(old_path)
            else:
                planned_fingerprints.pop(old_document["id"], None)
            planned_fingerprints[merged_document["id"]] = (destination, merged_document)

            old_prefix = f"{old_document['id']}__"
            new_prefix = f"{merged_document['id']}__"
            for old_sample_path, old_sample_content in list(planned_samples.items()):
                if old_sample_path.name.startswith(old_prefix):
                    planned_samples.pop(old_sample_path)
                    new_sample_path = old_sample_path.with_name(
                        new_prefix + old_sample_path.name.removeprefix(old_prefix)
                    )
                    planned_samples[new_sample_path] = old_sample_content
            for sample_path in _sample_files(family_dir):
                if sample_path.name.startswith(old_prefix):
                    moved_path = sample_path.with_name(
                        new_prefix + sample_path.name.removeprefix(old_prefix)
                    )
                    if moved_path.exists() and moved_path != sample_path:
                        raise CatalogOperationalError(
                            "catalog_state", f"sample destination already exists: {moved_path.name}"
                        )
                    planned_sample_moves[sample_path] = moved_path
            for move_source, move_destination in list(planned_sample_moves.items()):
                if move_destination.name.startswith(old_prefix):
                    planned_sample_moves[move_source] = move_destination.with_name(
                        new_prefix + move_destination.name.removeprefix(old_prefix)
                    )

            sample_hash = hashlib.sha256(sample["content"].encode("utf-8")).hexdigest()
            duplicate_samples = sample_hash_owners.get(sample_hash, [])
            invalid_duplicate = next(
                (
                    item
                    for item in duplicate_samples
                    if item[0] != family["id"]
                    or item[2] == sample["filename"].casefold()
                    or item[3] is None
                    or item[3] != core_bytes
                ),
                None,
            )
            if invalid_duplicate is not None:
                scope = (
                    "another family"
                    if invalid_duplicate[0] != family["id"]
                    else "another sample without distinct filename-variant evidence"
                )
                raise CatalogError(
                    "duplicate_sample",
                    "representative sample duplicates "
                    f"{invalid_duplicate[1].relative_to(ROOT)} from {scope}",
                    source_line,
                )
            incoming_sample_path = _sample_destination(
                family_dir, merged_document["id"], sample["filename"]
            )
            move_destinations = set(planned_sample_moves.values())
            if (
                incoming_sample_path.exists()
                or incoming_sample_path in planned_samples
                or incoming_sample_path in move_destinations
            ):
                raise CatalogError(
                    "duplicate_sample",
                    f"a representative sample already uses {sample['filename']}",
                    source_line,
                )
            planned_samples[incoming_sample_path] = sample["content"]
            sample_hash_owners.setdefault(sample_hash, []).append(
                (
                    family["id"],
                    incoming_sample_path,
                    sample["filename"].casefold(),
                    core_bytes,
                )
            )

            current.update({"document": merged_document, "path": destination, "on_disk": False})
            signature_owners[canonical_bytes(merged_signature)] = family["id"]
            if core_key not in new_cores:
                updated_cores.add(core_key)
            continue

        fp = fingerprint_document(family["id"], signature)
        if sample is None:
            raise CatalogError(
                "sample_required",
                "a representative sample is required for every new fingerprint",
                source_line,
            )
        if len(signature["filenames"]) > 1:
            raise CatalogError(
                "sample_required",
                "one candidate sample can declare at most one filename for a new format",
                source_line,
            )
        sample_hash = hashlib.sha256(sample["content"].encode("utf-8")).hexdigest()
        duplicate_samples = sample_hash_owners.get(sample_hash, [])
        reusable_candidates: list[tuple[str, tuple[str, Path, str, bytes | None]]] = []
        for existing_hash, owners in sample_hash_owners.items():
            for duplicate in owners:
                if (
                    duplicate[0] == family["id"]
                    and duplicate[2] == sample["filename"].casefold()
                    and duplicate[3] is None
                    and duplicate[1] not in planned_sample_adoptions
                    and _representative_sample_matches(
                        duplicate[1].read_text(encoding="utf-8"),
                        sample["filename"],
                        signature,
                    )
                ):
                    reusable_candidates.append((existing_hash, duplicate))
        if len(reusable_candidates) > 1:
            raise CatalogOperationalError(
                "catalog_state",
                f"multiple unowned samples could claim {sample['filename']} in {family['id']}",
            )
        reusable_hash: str | None = None
        reusable_sample: tuple[str, Path, str, bytes | None] | None = None
        if reusable_candidates:
            reusable_hash, reusable_sample = reusable_candidates[0]
        if duplicate_samples and reusable_sample is None:
            _, duplicate_path, _, _ = duplicate_samples[0]
            raise CatalogError(
                "duplicate_sample",
                "representative sample duplicates "
                f"{duplicate_path.relative_to(ROOT)}; consolidate filename variants",
                source_line,
            )
        destination = family_dir / "fingerprints" / f"{fp['id']}.json"
        if destination.exists() or fp["id"] in planned_fingerprints:
            duplicates += 1
            continue
        planned_fingerprints[fp["id"]] = (destination, fp)
        if reusable_sample is not None:
            planned_sample_adoptions.add(reusable_sample[1])
            reusable_owners = sample_hash_owners[reusable_hash]
            sample_hash_owners[reusable_hash] = [
                (owner_id, path, logical_name, core_bytes)
                if path == reusable_sample[1]
                else (owner_id, path, logical_name, owner_core)
                for owner_id, path, logical_name, owner_core in reusable_owners
            ]
        else:
            sample_path = _sample_destination(family_dir, fp["id"], sample["filename"])
            planned_samples[sample_path] = sample["content"]
            sample_hash_owners.setdefault(sample_hash, []).append(
                (family["id"], sample_path, sample["filename"].casefold(), core_bytes)
            )
        signature_owners[signature_key] = family["id"]
        record = {"document": fp, "path": destination, "on_disk": False}
        core_state[core_key] = record
        if family["classification"] == "provisional_cluster":
            provisional_core_state[core_bytes] = record
        new_cores.add(core_key)

    changed_family_ids = {family_id for family_id, _ in (new_cores | updated_cores)}
    projected_hash_owners: dict[str, list[tuple[str, str, bytes | None, Path]]] = {}
    projected_samples_by_family: dict[str, list[tuple[str, str, bytes, bool, Path]]] = {}
    for sample_hash, owners in sample_hash_owners.items():
        for owner_id, path, logical_name, owner_core in owners:
            if owner_id not in changed_family_ids:
                projected_hash_owners.setdefault(sample_hash, []).append(
                    (owner_id, logical_name, owner_core, path)
                )
    for family_id in sorted(changed_family_ids):
        projected_fingerprints = [
            record["document"]
            for (owner_id, _), record in core_state.items()
            if owner_id == family_id
        ]
        family = existing_families.get(family_id)
        if family is None:
            family = planned_families[family_id]
        family_dir = _family_directory(family)
        projected_samples = [
            (
                _sample_name(planned_sample_moves.get(path, path)),
                path.read_text(encoding="utf-8"),
                path.read_bytes(),
                path in planned_sample_adoptions,
                planned_sample_moves.get(path, path),
            )
            for path in _sample_files(family_dir)
        ]
        projected_samples.extend(
            (_sample_name(path), content, content.encode("utf-8"), True, path)
            for path, content in planned_samples.items()
            if path.parent.parent.name == family_id
        )
        projected_samples_by_family[family_id] = projected_samples
        fingerprints_by_id = {
            fingerprint["id"]: fingerprint for fingerprint in projected_fingerprints
        }
        covered: set[str] = set()
        uniquely_linked: list[tuple[str, str]] = []
        observed_markers: dict[str, set[str]] = {
            fingerprint["id"]: set() for fingerprint in projected_fingerprints
        }
        projected_owner_names: dict[tuple[str | None, str], Path] = {}
        for filename, content, sample_bytes, is_planned, sample_path in projected_samples:
            matching = [
                fingerprint["id"]
                for fingerprint in projected_fingerprints
                if _representative_sample_matches(content, filename, fingerprint["signature"])
            ]
            if is_planned and len(matching) != 1:
                raise CatalogError(
                    "sample_mismatch",
                    "representative sample does not uniquely identify its projected fingerprint",
                    source_lines_by_family.get(family_id),
                )
            sample_owner = matching[0] if len(matching) == 1 else None
            owner_name_key = (sample_owner, filename.casefold())
            previous_path = projected_owner_names.get(owner_name_key)
            if previous_path is not None:
                owner_label = sample_owner or "no unique fingerprint"
                raise CatalogError(
                    "duplicate_sample",
                    f"projected samples {previous_path.name} and {sample_path.name} repeat "
                    f"basename {filename} for {owner_label}",
                    source_lines_by_family.get(family_id),
                )
            projected_owner_names[owner_name_key] = sample_path
            if len(matching) == 1:
                fingerprint_id = matching[0]
                covered.add(fingerprint_id)
                uniquely_linked.append((filename, fingerprint_id))
                evidence = _signature_evidence(
                    content, filename, fingerprints_by_id[fingerprint_id]["signature"]
                )
                observed_markers[fingerprint_id].update(
                    marker.casefold() for marker in evidence["matched_markers"]
                )
            owner_core = (
                _signature_core(fingerprints_by_id[sample_owner]["signature"])
                if sample_owner is not None
                else None
            )
            sample_hash = hashlib.sha256(sample_bytes).hexdigest()
            projected_hash_owners.setdefault(sample_hash, []).append(
                (family_id, filename.casefold(), owner_core, sample_path)
            )
        missing = sorted(
            fingerprint["id"]
            for fingerprint in projected_fingerprints
            if fingerprint["id"] not in covered
        )
        if missing:
            raise CatalogError(
                "sample_coverage",
                f"projected family {family_id} lacks unique sample coverage for "
                + ", ".join(missing),
                source_lines_by_family.get(family_id),
            )
        for fingerprint in projected_fingerprints:
            missing_variants = _unmatched_filename_patterns(
                fingerprint["signature"]["filenames"],
                [filename for filename, owner in uniquely_linked if owner == fingerprint["id"]],
            )
            if missing_variants:
                raise CatalogError(
                    "variant_coverage",
                    f"projected fingerprint {fingerprint['id']} has no linked sample for "
                    + ", ".join(missing_variants),
                    source_lines_by_family.get(family_id),
                )
            declared_markers = (
                [fingerprint["signature"]["panel_brand"]]
                if fingerprint["signature"]["panel_brand"]
                else []
            ) + fingerprint["signature"]["banner_strings"]
            missing_markers = [
                marker
                for marker in declared_markers
                if marker.casefold() not in observed_markers[fingerprint["id"]]
            ]
            if missing_markers:
                raise CatalogError(
                    "marker_coverage",
                    f"projected fingerprint {fingerprint['id']} has no linked sample for marker "
                    + ", ".join(missing_markers),
                    source_lines_by_family.get(family_id),
                )

    for owners in projected_hash_owners.values():
        seen: list[tuple[str, str, bytes | None, Path]] = []
        for family_id, logical_name, owner_core, sample_path in owners:
            invalid_duplicate = next(
                (
                    previous
                    for previous in seen
                    if previous[0] != family_id
                    or previous[1] == logical_name
                    or previous[2] is None
                    or owner_core is None
                    or previous[2] != owner_core
                ),
                None,
            )
            if invalid_duplicate is not None:
                raise CatalogError(
                    "duplicate_sample",
                    f"projected sample {sample_path.relative_to(ROOT)} duplicates "
                    f"{invalid_duplicate[3].relative_to(ROOT)} without distinct variant evidence",
                    source_lines_by_family.get(family_id)
                    or source_lines_by_family.get(invalid_duplicate[0]),
                )
            seen.append((family_id, logical_name, owner_core, sample_path))

    projected_family_map = {**existing_families, **planned_families}
    all_projected_fingerprints = [record["document"] for record in core_state.values()]
    fingerprints_by_family: dict[str, list[dict[str, Any]]] = {}
    for fingerprint in all_projected_fingerprints:
        fingerprints_by_family.setdefault(fingerprint["family_id"], []).append(fingerprint)
    fallback_source_line = next(iter(source_lines_by_family.values()), None)
    for family_id, family in projected_family_map.items():
        family_fingerprints = fingerprints_by_family.get(family_id, [])
        if family_id in projected_samples_by_family:
            samples_for_ranking = [
                (filename, content, path)
                for filename, content, _, _, path in projected_samples_by_family[family_id]
            ]
        else:
            samples_for_ranking = [
                (_sample_name(path), path.read_text(encoding="utf-8"), path)
                for path in _sample_files(_family_directory(family))
            ]
        for filename, content, sample_path in samples_for_ranking:
            linked = [
                fingerprint["id"]
                for fingerprint in family_fingerprints
                if _representative_sample_matches(content, filename, fingerprint["signature"])
            ]
            if len(linked) != 1:
                continue
            matches = _rank_catalog_matches(
                content,
                filename,
                list(projected_family_map.values()),
                all_projected_fingerprints,
            )
            if not matches or matches[0]["fingerprint_id"] != linked[0]:
                winner = matches[0]["fingerprint_id"] if matches else "no match"
                raise CatalogError(
                    "ranking_conflict",
                    f"projected sample {sample_path.relative_to(ROOT)} links to {linked[0]} "
                    f"but ranks {winner} first",
                    source_lines_by_family.get(family_id) or fallback_source_line,
                )

    changed_paths: list[str] = []
    for family_id, family in sorted(planned_families.items()):
        family_doc = {
            "$schema": "../../schemas/family.schema.json",
            "schema_version": SCHEMA_VERSION,
            **family,
            "aliases": [],
            "tracking_labels": [],
            "description": (
                "Provisional grouping based only on a recurring exported-log structure; "
                "no malware-family attribution has been established."
            ),
            "targets": [],
            "external_references": [],
        }
        path = _family_directory(family_doc) / "family.json"
        _atomic_write(path, dump_json(family_doc))
        changed_paths.append(path.relative_to(ROOT).as_posix())
    for path, fp in (planned_fingerprints[key] for key in sorted(planned_fingerprints)):
        _atomic_write(path, dump_json(fp))
        changed_paths.append(path.relative_to(ROOT).as_posix())
    for path in sorted(planned_samples):
        _atomic_write(path, planned_samples[path])
        changed_paths.append(path.relative_to(ROOT).as_posix())
    for source, destination in sorted(
        planned_sample_moves.items(), key=lambda item: item[0].as_posix()
    ):
        destination.parent.mkdir(parents=True, exist_ok=True)
        os.replace(source, destination)
        changed_paths.extend(
            [source.relative_to(ROOT).as_posix(), destination.relative_to(ROOT).as_posix()]
        )
    for path in sorted(planned_deletions):
        path.unlink(missing_ok=True)
        changed_paths.append(path.relative_to(ROOT).as_posix())
    if changed_paths:
        try:
            validate_catalog(check_generated=False)
        except CatalogError as exc:
            raise CatalogOperationalError("catalog_state", str(exc)) from exc
        changed_paths.extend(build(check=False))
    ids = {core_state[key]["document"]["id"] for key in touched_cores}
    return {
        "status": "changed" if changed_paths else "no_change",
        "accepted": len(candidates),
        "added": len(new_cores),
        "duplicates": duplicates,
        "samples_added": len(planned_samples),
        "updated": len(updated_cores),
        "fingerprint_ids": sorted(set(ids)),
        "changed_paths": sorted(set(changed_paths)),
    }


def _line_labels(content: str) -> set[str]:
    labels: set[str] = set()
    try:
        parsed = json.loads(content)
    except (json.JSONDecodeError, RecursionError, ValueError):
        parsed = None

    if parsed is not None:
        pending = [parsed]
        visited = 0
        while pending and visited < MAX_JSON_LABEL_NODES:
            value = pending.pop()
            visited += 1
            children: Iterable[Any]
            if isinstance(value, dict):
                children = value.values()
                for key in value:
                    if len(labels) >= MAX_JSON_LABEL_NODES:
                        break
                    if isinstance(key, str):
                        labels.add(normalize_text(key).casefold())
            elif isinstance(value, list):
                children = value
            else:
                continue
            remaining = MAX_JSON_LABEL_NODES - visited - len(pending)
            for child in children:
                if remaining <= 0:
                    break
                pending.append(child)
                remaining -= 1
        return labels
    for raw_line in content.splitlines():
        for raw_segment in raw_line.split("|"):
            line = raw_segment.strip().lstrip("-*•").strip()
            if not line:
                continue
            match = re.match(r"^([^:=]{1,100})\s*[:=]", line)
            if match:
                label = match.group(1).strip().strip("\"'")
                labels.add(normalize_text(label).casefold())
            elif line.startswith("[") and line.endswith("]") and len(line) <= 100:
                labels.add(normalize_text(line.strip("[]")).casefold())
    return labels


def _sample_index_fields(content: str) -> set[str]:
    """Return conservative, human-useful labels inferred from a sample."""

    return {
        label
        for label in _line_labels(content)
        if len(label) <= 64
        and len(label.split()) <= 8
        and "[" not in label
        and "]" not in label
        and re.fullmatch(r"[\w .()/+-]+", label)
        and FIELD_TOKEN_RE.search(label)
    }


def _filename_matches(pattern: str, filename: str) -> bool:
    tokens = _filename_pattern_tokens(pattern)
    if tokens is None:
        return False
    folded_filename = filename.casefold()
    reachable = {0}
    for kind, value in tokens:
        next_reachable: set[int] = set()
        if kind == "literal":
            for offset in reachable:
                if folded_filename.startswith(value, offset):
                    next_reachable.add(offset + len(value))
        else:
            consuming = False
            for offset, character in enumerate(folded_filename):
                if character in "/\\":
                    consuming = False
                    continue
                if offset in reachable:
                    consuming = True
                if consuming:
                    next_reachable.add(offset + 1)
        if not next_reachable:
            return False
        reachable = next_reachable
    return len(folded_filename) in reachable


def _filename_patterns_covered(candidates: set[str], existing: set[str]) -> bool:
    return all(
        any(_filename_pattern_covers(existing_pattern, candidate) for existing_pattern in existing)
        for candidate in candidates
    )


def _unmatched_filename_patterns(patterns: list[str], filenames: list[str]) -> list[str]:
    """Return patterns that cannot receive distinct matching sample basenames."""

    assigned_sample: dict[int, int] = {}

    def assign(pattern_index: int, seen_samples: set[int]) -> bool:
        for sample_index, filename in enumerate(filenames):
            if sample_index in seen_samples or not _filename_matches(
                patterns[pattern_index], filename
            ):
                continue
            seen_samples.add(sample_index)
            previous_pattern = assigned_sample.get(sample_index)
            if previous_pattern is None or assign(previous_pattern, seen_samples):
                assigned_sample[sample_index] = pattern_index
                return True
        return False

    unmatched = []
    for pattern_index, pattern in enumerate(patterns):
        if not assign(pattern_index, set()):
            unmatched.append(pattern)
    return unmatched


def _filename_pattern_covers(existing: str, candidate: str) -> bool:
    """Conservatively decide whether one filename pattern subsumes another.

    Literal candidates can be checked directly. For two parameterized patterns we
    only claim coverage when their wildcard/literal shapes are identical. This is
    deliberately conservative: matching pattern source text is not language
    containment (for example, ``<x>.txt`` is broader than ``<a><b>.txt``).
    """

    if "<" not in candidate:
        return _filename_matches(existing, candidate)
    wildcard = "\x00"
    existing_shape = re.sub(r"<[^>]+>", wildcard, existing.casefold())
    candidate_shape = re.sub(r"<[^>]+>", wildcard, candidate.casefold())
    return existing_shape == candidate_shape


def _minimize_filename_patterns(patterns: list[str]) -> list[str]:
    ordered = sorted(set(patterns), key=lambda item: (item.casefold(), item))
    result = []
    for candidate in ordered:
        redundant = False
        for other in ordered:
            if other == candidate or not _filename_pattern_covers(other, candidate):
                continue
            mutually_cover = _filename_pattern_covers(candidate, other)
            if not mutually_cover or (other.casefold(), other) < (
                candidate.casefold(),
                candidate,
            ):
                redundant = True
                break
        if not redundant:
            result.append(candidate)
    return result


def _signature_evidence(
    content: str,
    filename: str,
    signature: dict[str, Any],
) -> dict[str, Any]:
    labels = _line_labels(content)
    folded_content = content.casefold()
    folded_filename = filename.casefold()
    markers = ([signature["panel_brand"]] if signature["panel_brand"] else []) + signature[
        "banner_strings"
    ]
    matched_markers = [marker for marker in markers if marker.casefold() in folded_content]
    matched_keys = [key for key in signature["field_keys"] if key.casefold() in labels]
    filename_match = any(
        _filename_matches(candidate, folded_filename) for candidate in signature["filenames"]
    )
    key_total = len(signature["field_keys"])
    key_ratio = len(matched_keys) / key_total if key_total else 0.0
    precision = len(matched_keys) / len(labels) if labels else 0.0
    specificity = min(key_total, 20) / 20
    if markers:
        score = (0.50 if matched_markers else 0.0) + 0.30 * key_ratio
        score += 0.10 if filename_match else 0.0
        score += 0.05 * precision + 0.05 * specificity
        qualifies = bool(matched_markers) and len(matched_keys) >= 3 and key_ratio >= 0.55
        qualifies = qualifies or (filename_match and len(matched_keys) >= 5 and key_ratio >= 0.55)
    else:
        score = 0.65 * key_ratio + 0.15 * precision + 0.05 * specificity
        score += 0.15 if filename_match else 0.0
        qualifies = filename_match and len(matched_keys) >= 5 and key_ratio >= 0.55
    return {
        "qualifies": qualifies,
        "score": round(min(score, 1.0), 3),
        "filename": filename_match,
        "matched_markers": matched_markers,
        "matched_fields": matched_keys,
        "field_coverage": f"{len(matched_keys)}/{key_total}",
    }


def _matching_fingerprint_ids(sample_path: Path, fingerprints: list[dict[str, Any]]) -> list[str]:
    content = sample_path.read_text(encoding="utf-8")
    return [
        fingerprint["id"]
        for fingerprint in fingerprints
        if _representative_sample_matches(
            content, _sample_name(sample_path), fingerprint["signature"]
        )
    ]


def _representative_sample_matches(content: str, filename: str, signature: dict[str, Any]) -> bool:
    """Apply the stricter evidence contract used for published representative samples."""

    evidence = _signature_evidence(content, filename, signature)
    has_markers = bool(signature["panel_brand"] or signature["banner_strings"])
    return bool(
        evidence["qualifies"]
        and (not signature["filenames"] or evidence["filename"])
        and (not has_markers or evidence["matched_markers"])
    )


def _identify_matches(
    content: str,
    filename: str,
    *,
    known_only: bool = False,
) -> list[dict[str, Any]]:
    families, fingerprints = _load_catalog()
    return _rank_catalog_matches(content, filename, families, fingerprints, known_only=known_only)


def _rank_catalog_matches(
    content: str,
    filename: str,
    families: list[dict[str, Any]],
    fingerprints: list[dict[str, Any]],
    *,
    known_only: bool = False,
) -> list[dict[str, Any]]:
    family_by_id = {family["id"]: family for family in families}
    matches: list[dict[str, Any]] = []
    for fingerprint in fingerprints:
        family = family_by_id[fingerprint["family_id"]]
        if known_only and family["classification"] != "known_family":
            continue
        signature = fingerprint["signature"]
        evidence = _signature_evidence(content, filename, signature)
        if not evidence["qualifies"]:
            continue
        matches.append(
            {
                "family_id": family["id"],
                "family": (
                    family["name"]
                    if family["classification"] == "known_family"
                    else f"Unattributed format {family['id'].removeprefix('unattributed-')[:12]}"
                ),
                "classification": family["classification"],
                "attribution_confidence": family["attribution_confidence"],
                "fingerprint_id": fingerprint["id"],
                "format": _fingerprint_label(
                    fingerprint, filename if evidence["filename"] else "text log"
                ),
                "score": evidence["score"],
                "evidence": {
                    "filename": evidence["filename"],
                    "matched_filename": filename if evidence["filename"] else None,
                    "matched_markers": evidence["matched_markers"],
                    "matched_fields": evidence["matched_fields"],
                    "field_coverage": evidence["field_coverage"],
                },
            }
        )
    ranked = sorted(
        matches,
        key=lambda item: (
            -item["score"],
            -len(item["evidence"]["matched_markers"]),
            -len(item["evidence"]["matched_fields"]),
            item["classification"] != "known_family",
            item["family"].casefold(),
        ),
    )
    best_by_family: dict[str, dict[str, Any]] = {}
    for match in ranked:
        best_by_family.setdefault(match["family_id"], match)
    return list(best_by_family.values())


def _decode_log_text(data: bytes) -> str:
    def decode(encoding: str) -> str | None:
        try:
            text = data.decode(encoding)
        except UnicodeDecodeError:
            return None
        unsupported = sum(
            character not in "\r\n\t" and unicodedata.category(character) in {"Cc", "Cf", "Cs"}
            for character in text
        )
        if (
            not text
            or "\x00" in text
            or unsupported > max(1, len(text) // 200)
            or text.count("\ufffd") > max(1, len(text) // 200)
        ):
            return None
        return text

    if data.startswith((b"\xff\xfe", b"\xfe\xff")):
        text = decode("utf-16")
        if text is not None:
            return text
        raise CatalogError("input", "input has an invalid UTF-16 byte-order marker")
    if data.startswith(b"\xef\xbb\xbf"):
        text = decode("utf-8-sig")
        if text is not None:
            return text
        raise CatalogError("input", "input has an invalid UTF-8 byte-order marker")

    text = decode("utf-8")
    if text is not None:
        return text

    # Without a BOM, Cyrillic and other non-Latin UTF-16 often contain too few
    # NUL bytes for a reliable endian heuristic. Decode both ways and prefer the
    # candidate that preserves ASCII log structure (newlines, separators, headers).
    if len(data) >= 4 and len(data) % 2 == 0:
        utf16_candidates: dict[str, tuple[int, str]] = {}
        for encoding in ("utf-16-le", "utf-16-be"):
            candidate = decode(encoding)
            if candidate is None:
                continue
            structure_score = (
                5 * candidate.count("\n")
                + 3 * sum(candidate.count(separator) for separator in (":", "="))
                + sum(candidate.count(delimiter) for delimiter in "[]{}")
            )
            utf16_candidates[encoding] = (structure_score, candidate)
        pairs = max(1, len(data) // 2)
        if data[1::2].count(0) / pairs > 0.20 and "utf-16-le" in utf16_candidates:
            return utf16_candidates["utf-16-le"][1]
        if data[0::2].count(0) / pairs > 0.20 and "utf-16-be" in utf16_candidates:
            return utf16_candidates["utf-16-be"][1]
        if utf16_candidates:
            best_score, best_candidate = max(utf16_candidates.values(), key=lambda item: item[0])
            if best_score >= 3:
                return best_candidate

    text = decode("cp1252")
    if text is not None:
        return text
    raise CatalogError("input", "input must be UTF-8, UTF-16, or Windows-1252 text")


def _validated_input_filename(path: Path) -> str:
    filename = _sample_name(path)
    if not filename or _has_unsafe_unicode_controls(filename):
        raise CatalogError("input", "input filename contains unsafe control characters")
    return filename


def identify(path: Path, *, top: int = 3, known_only: bool = False) -> dict[str, Any]:
    filename = _validated_input_filename(path)
    try:
        data = path.read_bytes()
    except OSError as exc:
        detail = exc.strerror or exc.__class__.__name__
        raise CatalogError("input", f"cannot read input file: {detail}") from exc
    if len(data) > 2 * 1024 * 1024:
        raise CatalogError("input", "input exceeds the 2 MiB local matching limit")
    content = _decode_log_text(data)
    if top < 1 or top > 20:
        raise CatalogError("input", "--top must be between 1 and 20")
    all_matches = _identify_matches(content, filename, known_only=known_only)
    ambiguous = len(all_matches) > 1 and all_matches[0]["score"] - all_matches[1]["score"] < 0.08
    matches = all_matches[:top]
    return {
        "status": "match" if matches else "no_match",
        "ambiguous": ambiguous,
        "matches": matches,
        "scope": "exported_log_text",
    }


def _print_identify(result: dict[str, Any]) -> None:
    matches = result["matches"]
    if not matches:
        print("No sufficiently strong structural match found.")
        print(
            "Try the filename, field, and marker indexes in this repository for manual comparison."
        )
        return
    heading = "Possible matches (close scores)" if result["ambiguous"] else "Likely match"
    print(heading)
    for index, match in enumerate(matches, 1):
        class_label = (
            "known family" if match["classification"] == "known_family" else "unattributed format"
        )
        evidence = match["evidence"]
        print(
            f"{index}. {match['family']} - evidence score "
            f"{match['score'] * 100:.0f}/100 ({class_label})"
        )
        print(f"   Format: {match['format']}")
        print(
            "   Evidence: "
            f"fields {evidence['field_coverage']}, "
            f"filename {'matched' if evidence['filename'] else 'not matched'}"
        )
        if evidence["matched_markers"]:
            print("   Markers: " + ", ".join(evidence["matched_markers"]))
        if evidence["matched_fields"]:
            print("   Fields: " + ", ".join(evidence["matched_fields"][:12]))
    print("\nStructural lead only; confirm with additional malware evidence.")


def _emit_error(status: str, exc: CatalogError) -> None:
    payload = {"status": status, "code": exc.code, "message": str(exc)}
    if status == "rejected" and exc.line is not None:
        payload["line"] = exc.line
    print(json.dumps(payload, ensure_ascii=False, separators=(",", ":")), file=sys.stderr)


def _provisional_id_from_file(path: Path) -> dict[str, str]:
    try:
        data = path.read_bytes()
    except OSError as exc:
        raise CatalogOperationalError("input", f"cannot read fingerprint: {exc}") from exc
    if len(data) > MAX_EVENT_LINE_BYTES:
        raise CatalogError("input", f"fingerprint JSON exceeds {MAX_EVENT_LINE_BYTES} bytes")
    try:
        value = json.loads(data.decode("utf-8"), object_pairs_hook=_json_object_no_duplicates)
    except CatalogError:
        raise
    except (UnicodeError, json.JSONDecodeError) as exc:
        raise CatalogError("invalid_json", f"cannot parse fingerprint: {exc}") from exc
    signature = normalize_signature(value)
    ensure_publishable(signature)
    family_id, family_name = provisional_identity(signature)
    return {"id": family_id, "name": family_name}


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)
    commands.add_parser("validate", help="validate source and generated catalog data")
    build_parser = commands.add_parser("build", help="regenerate deterministic catalog artifacts")
    build_parser.add_argument("--check", action="store_true", help="fail if generated files differ")
    ingest_parser = commands.add_parser(
        "ingest", help="ingest fingerprint and representative-sample JSONL events"
    )
    ingest_parser.add_argument("--events", required=True, help="UTF-8 JSONL path, or - for stdin")
    provisional_parser = commands.add_parser(
        "provisional-id", help="derive a stable unattributed ID from a signature JSON file"
    )
    provisional_parser.add_argument(
        "fingerprint", type=Path, help="JSON file containing the four-key signature object"
    )
    identify_parser = commands.add_parser(
        "identify", help="rank catalog matches for a local exported-log text file"
    )
    identify_parser.add_argument(
        "path", type=Path, help="UTF-8, UTF-16, or Windows-1252 log text to inspect"
    )
    identify_parser.add_argument("--top", type=int, default=3, help="number of matches to show")
    identify_parser.add_argument(
        "--known-only", action="store_true", help="hide unattributed structural clusters"
    )
    identify_parser.add_argument(
        "--json", action="store_true", dest="as_json", help="emit machine-readable JSON"
    )
    args = parser.parse_args(argv)
    try:
        if args.command == "validate":
            result = validate_catalog()
            print(json.dumps({"status": "ok", **result}, separators=(",", ":")))
        elif args.command == "build":
            changed = build(check=args.check)
            print(json.dumps({"status": "ok", "changed_paths": changed}, separators=(",", ":")))
        elif args.command == "ingest":
            print(json.dumps(ingest(args.events), ensure_ascii=False, separators=(",", ":")))
        elif args.command == "provisional-id":
            result = _provisional_id_from_file(args.fingerprint)
            print(json.dumps({"status": "ok", **result}, separators=(",", ":")))
        else:
            result = identify(args.path, top=args.top, known_only=args.known_only)
            if args.as_json:
                print(json.dumps(result, ensure_ascii=False, indent=2))
            else:
                _print_identify(result)
            return 0 if result["matches"] else 1
        return 0
    except CatalogOperationalError as exc:
        _emit_error("error", exc)
        return 1
    except CatalogError as exc:
        _emit_error("rejected" if args.command == "ingest" else "error", exc)
        return 2 if args.command == "ingest" else 1
    except Exception as exc:  # defensive CLI boundary
        _emit_error("error", CatalogError("internal", str(exc)))
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
