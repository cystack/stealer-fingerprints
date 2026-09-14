#!/usr/bin/env python3
"""Validate, ingest, and build the public fingerprint catalog.

This module intentionally uses only the Python standard library.  It treats
candidate input as untrusted and accepts structure-only observations.
"""

from __future__ import annotations

import argparse
import hashlib
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

ROOT = Path(__file__).resolve().parents[1]
FAMILIES = ROOT / "families"
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
    "synthetic_example",
    "status",
    "quality",
    "scope",
    "sharing",
}
SIGNATURE_KEYS = {"panel_brand", "banner_strings", "field_keys", "filenames"}
EXAMPLE_KEYS = {"declaration", "kind", "lines"}
QUALITY_KEYS = {"independent_signal_types", "independent_signal_count", "yara_eligible"}
CANDIDATE_KEYS = {"event_type", "schema_version", "family", "fingerprint"}
CANDIDATE_FAMILY_KEYS = {"id", "name", "classification", "attribution_confidence"}

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
FORBIDDEN_FILE_RE = re.compile(r"(?i)(?:^|[._-])(?:sample|raw|redacted|victim)(?:[._-]|$)")
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
FILENAME_RE = re.compile(r"(?i)^[a-z0-9_ .()\[\]<>-]+\.(?:txt|json|log|ini|csv)$")
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
    r"uid|uplay|uptime|url|user|uuid|version|video|visible|wallet|wallpaper|webcam|"
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
        cleaned = [normalize_text(v) for v in items]
        if key == "filenames":
            cleaned = [_normalize_filename(v) for v in cleaned]
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
    if not result["panel_brand"] and not any(result[k] for k in result if k != "panel_brand"):
        raise CatalogError("weak_fingerprint", "fingerprint has no structural signal")
    _privacy_gate(result)
    return result


def _normalize_filename(value: str) -> str:
    # Windows artifact names are case-insensitive. Other spelling differences
    # remain evidence and are never collapsed into guessed semantic aliases.
    return value.casefold()


def synthetic_example(signature: dict[str, Any]) -> dict[str, Any]:
    lines: list[str] = []
    if signature["panel_brand"]:
        lines.append("[synthetic panel-brand marker]")
    if signature["banner_strings"]:
        lines.append("[synthetic banner marker]")
    for key in signature["field_keys"][:16]:
        suffix = "" if key.endswith((":", "=")) else ":"
        lines.append(f"{key}{suffix} <synthetic-value>")
    for filename in signature["filenames"][:4]:
        lines.append(f"[synthetic filename: {filename}]")
    return {
        "declaration": "SYNTHETIC",
        "kind": "structure_only",
        "lines": lines,
    }


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
        "synthetic_example": synthetic_example(signature),
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
        "synthetic_example": body["synthetic_example"],
    }


def provisional_identity(signature: dict[str, Any]) -> tuple[str, str]:
    suffix = digest(signature, 32)
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


def _privacy_gate(signature: dict[str, Any]) -> None:
    limits = {"panel_brand": 120, "banner_strings": 240, "field_keys": 100, "filenames": 160}
    for field, value in signature.items():
        values: Iterable[str] = (
            [] if value is None else ([value] if isinstance(value, str) else value)
        )
        for item in values:
            if len(item) > limits[field] or "\n" in item or "\r" in item or "\x00" in item:
                raise CatalogError(
                    "privacy_indicator", f"{field} contains an unsafe length or control character"
                )
            patterns = (
                EMAIL_RE,
                URL_RE,
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
                HANDLE_RE,
                INSTRUCTION_RE,
            )
            if any(pattern.search(item) for pattern in patterns):
                raise CatalogError(
                    "privacy_indicator", f"{field} contains a privacy or telemetry indicator"
                )
            if field == "filenames" and GEO_FILENAME_RE.search(item):
                raise CatalogError(
                    "privacy_indicator", "filenames contains an observed geography pattern"
                )
            if field == "filenames" and (
                not FILENAME_RE.fullmatch(item) or "/" in item or "\\" in item or ".." in item
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
    except (OSError, UnicodeError, json.JSONDecodeError) as exc:
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
    for key in ("name", "description"):
        if not isinstance(doc[key], str) or not doc[key].strip():
            raise CatalogError("schema", f"{path.relative_to(ROOT)}.{key} must be non-empty")
    for key in ("aliases", "tracking_labels", "targets"):
        if not isinstance(doc[key], list) or not all(
            isinstance(v, str) and v.strip() for v in doc[key]
        ):
            raise CatalogError("schema", f"{path.relative_to(ROOT)}.{key} must be a string array")
    references = doc["external_references"]
    if not isinstance(references, list) or not all(
        isinstance(ref, dict)
        and set(ref) in ({"url"}, {"url", "title"})
        and isinstance(ref.get("url"), str)
        and ref["url"].startswith("https://")
        and "cystack" not in ref["url"].casefold()
        and ("title" not in ref or isinstance(ref["title"], str))
        for ref in references
    ):
        raise CatalogError("schema", f"{path.relative_to(ROOT)} has invalid external_references")
    if doc["classification"] == "known_family" and not references:
        raise CatalogError(
            "attribution", f"{path.relative_to(ROOT)} requires an external reference"
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


def validate_catalog(check_generated: bool = True) -> dict[str, int]:
    if not FAMILIES.is_dir():
        raise CatalogError("layout", "families directory is missing")
    for path in ROOT.rglob("*"):
        if ".git" in path.relative_to(ROOT).parts:
            continue
        if path.is_file() and FORBIDDEN_FILE_RE.search(path.name):
            raise CatalogError(
                "privacy_indicator",
                f"forbidden evidence-like filename: {path.relative_to(ROOT)}",
            )
    for schema_path in sorted((ROOT / "schemas").glob("*.schema.json")):
        schema = load_json(schema_path)
        if schema.get("$schema") != "https://json-schema.org/draft/2020-12/schema":
            raise CatalogError("schema", f"{schema_path.relative_to(ROOT)} is not Draft 2020-12")
    family_count = fingerprint_count = 0
    seen_ids: set[str] = set()
    seen_signatures: dict[bytes, str] = {}
    for family_path in sorted(FAMILIES.iterdir()):
        if not family_path.is_dir():
            raise CatalogError("layout", f"unexpected file under families: {family_path.name}")
        family_doc = load_json(family_path / "family.json")
        _validate_family(family_doc, family_path / "family.json")
        family_count += 1
        fp_dir = family_path / "fingerprints"
        if fp_dir.exists() and not fp_dir.is_dir():
            raise CatalogError("layout", f"{family_path.name}/fingerprints is not a directory")
        entries = sorted(fp_dir.iterdir()) if fp_dir.is_dir() else []
        files = [path for path in entries if path.is_file() and path.suffix == ".json"]
        if not files and family_doc["classification"] == "provisional_cluster":
            raise CatalogError("layout", f"{family_path.name} has no usable fingerprints")
        if family_doc["classification"] == "provisional_cluster" and len(files) != 1:
            raise CatalogError(
                "layout", f"{family_path.name} must contain exactly one provisional fingerprint"
            )
        unexpected = [p for p in entries if not p.is_file() or p.suffix != ".json"]
        if unexpected:
            raise CatalogError(
                "layout", f"unexpected fingerprint entry: {unexpected[0].relative_to(ROOT)}"
            )
        for path in files:
            doc = load_json(path)
            _validate_fingerprint(doc, path, family_doc["id"])
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
    if check_generated:
        build(check=True)
    return {"families": family_count, "fingerprints": fingerprint_count}


def _load_catalog() -> tuple[list[dict[str, Any]], list[dict[str, Any]]]:
    families: list[dict[str, Any]] = []
    fingerprints: list[dict[str, Any]] = []
    for path in sorted(FAMILIES.glob("*/family.json")):
        family = load_json(path)
        families.append(family)
        fingerprints.extend(
            load_json(p) for p in sorted((path.parent / "fingerprints").glob("*.json"))
        )
    return families, fingerprints


def _readme(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    counts = Counter(fp["family_id"] for fp in fingerprints)
    rows = []
    for family in sorted(
        families, key=lambda item: (item["classification"], item["name"].casefold())
    ):
        rows.append(
            f"| [{family['name']}](families/{family['id']}/family.json) | "
            f"`{family['classification']}` | `{family['attribution_confidence']}` | "
            f"{counts[family['id']]} |"
        )
    return "\n".join(
        [
            "# Stealer Fingerprints",
            "",
            "<!-- Generated by tools/catalog.py; do not edit by hand. -->",
            "",
            "A privacy-preserving, machine-readable catalog of structural fingerprints "
            "for information-stealer log formats. It contains no observed log bodies, "
            "accounts, credentials, host telemetry, or victim identifiers.",
            "",
            "A `known_family` is an externally recognized malware-family attribution. "
            "A `provisional_cluster` is an unattributed structural grouping and must not "
            "be cited as a confirmed malware family.",
            "",
            "Fingerprints are immutable, content-addressed JSON documents validated "
            "against JSON Schema Draft 2020-12. Every embedded example is explicitly "
            "`SYNTHETIC` and structure-only. Generated YARA rules are experimental "
            "classifiers for exported log text, not executable-malware detection rules. "
            "Catalog data is shared as TLP:CLEAR under the repository's Apache-2.0 license.",
            "",
            "A family with `0` fingerprints retains curated attribution metadata, but no "
            "legacy signal was unique and safe enough to publish as a fingerprint.",
            "",
            "## Catalog",
            "",
            "| Family or cluster | Classification | Confidence | Fingerprints |",
            "|---|---|---:|---:|",
            *rows,
            "",
            "## Use and contribution",
            "",
            "Read [DATA_POLICY.md](DATA_POLICY.md) before producing or submitting "
            "candidates. See [CONTRIBUTING.md](CONTRIBUTING.md) for JSONL ingest, "
            "[SECURITY.md](SECURITY.md) for sensitive-data reporting, and "
            "[CITATION.cff](CITATION.cff) for citation metadata.",
            "Before the initial v1 release, complete the mandatory "
            "[history rewrite](HISTORY_REWRITE.md).",
            "",
            "Validate and reproduce generated artifacts with:",
            "",
            "```console",
            "python tools/catalog.py validate",
            "python tools/catalog.py build --check",
            "python -m unittest discover -s tests -v",
            "```",
            "",
        ]
    )


def _catalog_json(families: list[dict[str, Any]], fingerprints: list[dict[str, Any]]) -> str:
    return dump_json(
        {
            "$schema": "../schemas/catalog.schema.json",
            "schema_version": SCHEMA_VERSION,
            "families": families,
            "fingerprints": fingerprints,
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
    return {
        ROOT / "README.md": _readme(families, fingerprints),
        ROOT / "catalog" / "catalog.json": _catalog_json(families, fingerprints),
        ROOT / "rules" / "experimental_log_formats.yar": _yara(families, fingerprints),
    }


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


def _validate_candidate(value: Any) -> tuple[dict[str, Any], dict[str, Any]]:
    _exact_keys(value, CANDIDATE_KEYS, "event")
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
    return family, signature


def ingest(events_path: str) -> dict[str, Any]:
    try:
        validate_catalog()
    except CatalogError as exc:
        raise CatalogOperationalError("catalog_state", str(exc)) from exc
    if events_path == "-":
        lines = sys.stdin.read().splitlines()
    else:
        try:
            lines = Path(events_path).read_text(encoding="utf-8").splitlines()
        except (OSError, UnicodeError) as exc:
            raise CatalogError("input", f"cannot read events: {exc}") from exc
    candidates: list[tuple[dict[str, Any], dict[str, Any]]] = []
    for line_number, line in enumerate(lines, 1):
        if not line.strip():
            continue
        try:
            value = json.loads(line, object_pairs_hook=_json_object_no_duplicates)
            candidates.append(_validate_candidate(value))
        except CatalogError as exc:
            exc.line = line_number
            raise
        except json.JSONDecodeError as exc:
            raise CatalogError("invalid_json", str(exc), line_number) from exc
    if not candidates:
        raise CatalogError("empty_input", "events stream contains no candidates")

    existing_families = {
        doc["id"]: doc for doc in (load_json(p) for p in FAMILIES.glob("*/family.json"))
    }
    planned_families: dict[str, dict[str, Any]] = {}
    planned_fingerprints: dict[str, tuple[Path, dict[str, Any]]] = {}
    signature_owners = {
        canonical_bytes(document["signature"]): document["family_id"]
        for path in FAMILIES.glob("*/fingerprints/*.json")
        if (document := load_json(path))
    }
    ids: list[str] = []
    duplicates = 0
    for family, signature in candidates:
        existing = existing_families.get(family["id"])
        if existing:
            for key in ("name", "classification", "attribution_confidence"):
                if family[key] != existing[key]:
                    raise CatalogError(
                        "family_mismatch", f"candidate {family['id']} does not match catalog {key}"
                    )
        elif family["classification"] == "known_family":
            raise CatalogError(
                "manual_review_required", "new known families require a curated family.json review"
            )
        else:
            planned = planned_families.setdefault(family["id"], family)
            if planned != family:
                raise CatalogError("family_mismatch", f"conflicting metadata for {family['id']}")
        fp = fingerprint_document(family["id"], signature)
        signature_key = canonical_bytes(signature)
        owner = signature_owners.get(signature_key)
        if owner and owner != family["id"]:
            raise CatalogError(
                "ambiguous_signature",
                f"candidate signature is already assigned to {owner}",
            )
        signature_owners[signature_key] = family["id"]
        ids.append(fp["id"])
        destination = FAMILIES / family["id"] / "fingerprints" / f"{fp['id']}.json"
        if destination.exists() or fp["id"] in planned_fingerprints:
            duplicates += 1
        else:
            planned_fingerprints[fp["id"]] = (destination, fp)

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
        path = FAMILIES / family_id / "family.json"
        _atomic_write(path, dump_json(family_doc))
        changed_paths.append(path.relative_to(ROOT).as_posix())
    for path, fp in (planned_fingerprints[key] for key in sorted(planned_fingerprints)):
        _atomic_write(path, dump_json(fp))
        changed_paths.append(path.relative_to(ROOT).as_posix())
    if changed_paths:
        changed_paths.extend(build(check=False))
    return {
        "status": "changed" if changed_paths else "no_change",
        "accepted": len(candidates),
        "added": len(planned_fingerprints),
        "duplicates": duplicates,
        "fingerprint_ids": sorted(set(ids)),
        "changed_paths": sorted(set(changed_paths)),
    }


def _emit_error(status: str, exc: CatalogError) -> None:
    payload = {"status": status, "code": exc.code, "message": str(exc)}
    if status == "rejected":
        payload["line"] = exc.line
    print(json.dumps(payload, ensure_ascii=False, separators=(",", ":")), file=sys.stderr)


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)
    commands.add_parser("validate", help="validate source and generated catalog data")
    build_parser = commands.add_parser("build", help="regenerate deterministic catalog artifacts")
    build_parser.add_argument("--check", action="store_true", help="fail if generated files differ")
    ingest_parser = commands.add_parser(
        "ingest", help="ingest fail-closed structure-only JSONL events"
    )
    ingest_parser.add_argument("--events", required=True, help="UTF-8 JSONL path, or - for stdin")
    args = parser.parse_args(argv)
    try:
        if args.command == "validate":
            result = validate_catalog()
            print(json.dumps({"status": "ok", **result}, separators=(",", ":")))
        elif args.command == "build":
            changed = build(check=args.check)
            print(json.dumps({"status": "ok", "changed_paths": changed}, separators=(",", ":")))
        else:
            print(json.dumps(ingest(args.events), ensure_ascii=False, separators=(",", ":")))
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
