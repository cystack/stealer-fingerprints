#!/usr/bin/env python3
"""Small, dependency-free catalog helper for stealer-fingerprints.

The public data model is deliberately simple: one ``family.json`` per family,
with its observed variants and one CyStack research sample for every variant.
This module validates that source data, renders the human-facing README files,
and accepts one deterministic research candidate at a time.
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
from pathlib import Path, PurePosixPath
from typing import Any
from urllib.parse import quote, urlsplit

ROOT = Path(__file__).resolve().parents[1]
FAMILY_CLASSES = {
    "known_family",
    "observed_self_label",
    "cystack_named",
    "family_variant",
    "aggregator",
}
CONFIDENCE = {"high", "medium", "low", "unknown"}
TELEGRAM_HOSTS = {"t.me", "telegram.me", "www.t.me", "www.telegram.me"}
FAMILY_CORE = {
    "id",
    "name",
    "classification",
    "attribution_confidence",
    "description",
    "aliases",
    "typical_targets",
    "detection_notes",
    "attack_techniques",
    "localizations",
    "related_families",
    "sources",
    "variants",
}
VARIANT_CORE = {
    "id",
    "format_id",
    "filenames",
    "panel_brand",
    "distribution_channel",
    "attribution_confidence",
    "markers",
    "fields",
    "sample",
}
SAMPLE_CORE = {"path", "sha256", "source", "sanitized"}
FAMILY_OPTIONAL = {
    "canonical_family",
    "contains_families",
    "observed_channels",
    "related_external",
}
LOCALIZED_FAMILY_FIELDS = {
    "description",
    "typical_targets",
    "detection_notes",
    "attack_techniques",
}
VARIANT_OPTIONAL = {"layout_id", "observations", "sources"}
SLUG_RE = re.compile(r"^[a-z0-9]+(?:[._-][a-z0-9]+)*$")
VARIANT_ID_RE = re.compile(r"^v_[0-9a-f]{32}$")
SHA256_RE = re.compile(r"^[0-9a-f]{64}$")
TECHNIQUE_RE = re.compile(r"^T\d{4}(?:\.\d{3})?$")
LANGUAGE_TAG_RE = re.compile(r"^[A-Za-z]{2,8}(?:-[A-Za-z0-9]{1,8})*$")
FIELD_LINE_RE = re.compile(
    r'^[ \t]*(?:[-*\u2022|>][ \t]*)?["\']?'
    r'(?P<label>[^:=\r\n]{1,100}?)["\']?[ \t]*'
    r'(?P<separator>[:=])(?P<value>.*)$'
)
JSON_FIELD_RE = re.compile(r'"([^"\\]{1,100})"\s*:')
REVIEWED_VI_ATTACK_NAMES = {
    "T1005": "Dữ liệu từ hệ thống cục bộ",
    "T1016": "Dò tìm cấu hình mạng hệ thống",
    "T1027": "Tệp hoặc thông tin bị làm rối",
    "T1033": "Xác định chủ sở hữu/người dùng hệ thống",
    "T1036": "Ngụy trang",
    "T1041": "Đưa dữ liệu ra ngoài qua kênh C2",
    "T1055.012": "Process Hollowing (thay thế mã trong tiến trình)",
    "T1056.001": "Ghi lại phím bấm",
    "T1056.002": "Thu thập dữ liệu nhập qua GUI",
    "T1057": "Dò tìm tiến trình",
    "T1059": "Trình thông dịch lệnh và tập lệnh",
    "T1059.001": "PowerShell",
    "T1059.002": "AppleScript",
    "T1059.004": "Unix shell",
    "T1059.006": "Python",
    "T1071.001": "Giao thức tầng ứng dụng: giao thức web",
    "T1082": "Dò tìm thông tin hệ thống",
    "T1083": "Dò tìm tệp và thư mục",
    "T1102": "Dịch vụ web",
    "T1105": "Chuyển công cụ vào hệ thống",
    "T1113": "Chụp màn hình",
    "T1115": "Dữ liệu bảng tạm",
    "T1119": "Thu thập tự động",
    "T1124": "Xác định thời gian hệ thống",
    "T1125": "Ghi hình",
    "T1204.002": "Người dùng thực thi: tệp độc hại",
    "T1213": "Dữ liệu từ kho thông tin",
    "T1217": "Dò tìm thông tin trình duyệt",
    "T1218": "Thực thi gián tiếp qua tệp nhị phân hệ thống",
    "T1219": "Phần mềm truy cập từ xa",
    "T1497": "Né tránh môi trường ảo hóa/sandbox",
    "T1497.001": "Kiểm tra hệ thống",
    "T1497.003": "Né tránh dựa trên thời gian",
    "T1518": "Dò tìm phần mềm",
    "T1518.001": "Dò tìm phần mềm bảo mật",
    "T1528": "Đánh cắp token truy cập ứng dụng",
    "T1539": "Đánh cắp cookie phiên web",
    "T1550.001": "Sử dụng dữ liệu xác thực thay thế: token truy cập ứng dụng",
    "T1550.004": "Sử dụng dữ liệu xác thực thay thế: cookie phiên web",
    "T1552": "Thông tin xác thực không được bảo vệ",
    "T1552.001": "Thông tin xác thực trong tệp",
    "T1552.004": "Khóa riêng",
    "T1555": "Thông tin xác thực từ kho mật khẩu",
    "T1555.001": "Keychain",
    "T1555.003": "Thông tin xác thực từ trình duyệt web",
    "T1567": "Đưa dữ liệu ra ngoài qua dịch vụ web",
    "T1592": "Thu thập thông tin máy nạn nhân",
    "T1592.002": "Thu thập thông tin máy nạn nhân: phần mềm",
    "T1608": "Chuẩn bị năng lực tấn công",
    "T1614": "Xác định vị trí hệ thống",
    "T1614.001": "Xác định ngôn ngữ hệ thống",
    "T1622": "Né tránh trình gỡ lỗi",
}
UNATTRIBUTED_HASH_RE = re.compile(r"(?i)^unattributed(?:[-_ ]cluster)?[-_ ]?[0-9a-f]{8,}$")
PORTABLE_SAMPLE_PART_RE = re.compile(r"^[A-Za-z0-9._%+ ()\[\]-]+$")
FILENAME_PLACEHOLDER_RE = re.compile(r"<[A-Za-z0-9][A-Za-z0-9_-]{0,31}>")
MAX_JSON_BYTES = 4 * 1024 * 1024
MAX_SAMPLE_BYTES = 2 * 1024 * 1024
WINDOWS_RESERVED = {
    "CON",
    "PRN",
    "AUX",
    "NUL",
    *(f"COM{i}" for i in range(1, 10)),
    *(f"LPT{i}" for i in range(1, 10)),
}


class CatalogError(Exception):
    """A catalog input or repository invariant failed."""

    def __init__(self, code: str, message: str):
        super().__init__(message)
        self.code = code


def _json_object(pairs: list[tuple[str, Any]]) -> dict[str, Any]:
    result: dict[str, Any] = {}
    for key, value in pairs:
        if key in result:
            raise CatalogError("duplicate_key", f"duplicate JSON key: {key}")
        result[key] = value
    return result


def _load_json(path: Path) -> Any:
    try:
        data = path.read_bytes()
    except OSError as exc:
        raise CatalogError("io", f"cannot read {path}: {exc}") from exc
    if len(data) > MAX_JSON_BYTES:
        raise CatalogError("invalid_json", f"{path} exceeds {MAX_JSON_BYTES} bytes")
    try:
        return json.loads(data.decode("utf-8"), object_pairs_hook=_json_object)
    except CatalogError:
        raise
    except (UnicodeError, json.JSONDecodeError) as exc:
        raise CatalogError("invalid_json", f"cannot parse {path}: {exc}") from exc


def _json_bytes(value: Any) -> bytes:
    return (json.dumps(value, ensure_ascii=False, indent=2) + "\n").encode("utf-8")


def _atomic_write(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    handle, temporary = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
    try:
        with os.fdopen(handle, "wb") as stream:
            stream.write(data)
            stream.flush()
            os.fsync(stream.fileno())
        os.replace(temporary, path)
    except BaseException:
        try:
            os.unlink(temporary)
        except OSError:
            pass
        raise


def _text(value: Any, context: str, *, nullable: bool = False) -> str | None:
    if value is None and nullable:
        return None
    if not isinstance(value, str):
        expected = "null or string" if nullable else "string"
        raise CatalogError("shape", f"{context} must be a {expected}")
    if not value.strip() or "\x00" in value:
        raise CatalogError("shape", f"{context} must not be empty or contain NUL")
    if any(unicodedata.category(character) in {"Cs", "Co"} for character in value):
        raise CatalogError("shape", f"{context} contains unsupported Unicode characters")
    return value.strip()


def _canonical_text(value: Any, context: str, *, nullable: bool = False) -> str | None:
    cleaned = _text(value, context, nullable=nullable)
    if cleaned != value:
        raise CatalogError("canonical", f"{context} contains surrounding whitespace")
    return cleaned


def _string_list(
    value: Any, context: str, *, sort: bool = False, canonical: bool = True
) -> list[str]:
    if not isinstance(value, list):
        raise CatalogError("shape", f"{context} must be an array")
    cleaned = [_text(item, f"{context}[]") for item in value]
    folded = [item.casefold() for item in cleaned]
    if len(folded) != len(set(folded)):
        raise CatalogError("duplicate", f"{context} contains duplicates")
    if sort:
        cleaned.sort(key=lambda item: (item.casefold(), item))
    if canonical and cleaned != value:
        reason = "must be sorted canonically" if sort else "contains surrounding whitespace"
        raise CatalogError("canonical", f"{context} {reason}")
    return cleaned


def _url_list(value: Any, context: str) -> list[str]:
    """Validate a canonical list of absolute public HTTP(S) URLs."""

    urls = _string_list(value, context)
    for index, url in enumerate(urls):
        try:
            parsed = urlsplit(url)
            parsed.port
            valid = (
                parsed.scheme in {"http", "https"}
                and parsed.hostname is not None
                and parsed.username is None
                and parsed.password is None
                and not any(character.isspace() for character in url)
                and not any(character in url for character in "\\<>")
            )
        except ValueError:
            valid = False
        if not valid:
            raise CatalogError(
                "shape", f"{context}[{index}] must be an absolute public HTTP(S) URL"
            )
    identities = [_url_identity(url) for url in urls]
    if len(identities) != len(set(identities)):
        raise CatalogError("duplicate", f"{context} contains equivalent URLs")
    return urls


def _url_identity(url: str) -> tuple[str, str, int | None, str, str]:
    """Return a stable identity for an already validated URL."""

    parsed = urlsplit(url)
    hostname = parsed.hostname.casefold()
    port = parsed.port
    if (parsed.scheme == "http" and port == 80) or (parsed.scheme == "https" and port == 443):
        port = None
    path = parsed.path.rstrip("/") or "/"
    if hostname in TELEGRAM_HOSTS:
        path = path.casefold()
    return parsed.scheme.casefold(), hostname, port, path, parsed.query


def _identity_text(value: str | None) -> str:
    return " ".join(unicodedata.normalize("NFKC", value or "").casefold().split())


def _variant_identity(value: dict[str, Any]) -> tuple[str, str, str]:
    """Return the public structural identity independent of its opaque stable ID."""

    return (
        value["format_id"],
        _identity_text(value.get("panel_brand")),
        _identity_text(value.get("layout_id")),
    )


def _family_slug(name: str) -> str:
    value = unicodedata.normalize("NFKC", name)
    value = re.sub(r"(.)([A-Z][a-z]+)", r"\1-\2", value)
    value = re.sub(r"([a-z0-9])([A-Z])", r"\1-\2", value)
    value = value.casefold().replace("&", " and ")
    return re.sub(r"[^a-z0-9]+", "-", value).strip("-")


def _reference_key(value: str) -> str:
    normalized = unicodedata.normalize("NFKC", value).casefold()
    return "".join(character for character in normalized if character.isalnum())


def _has_benign_identity(*values: str) -> bool:
    for value in values:
        compact = re.sub(r"[^a-z0-9]+", "", value.casefold())
        if any(marker in compact for marker in ("benign", "notmalware", "nonmalware")):
            return True
    return False


def _validate_filename_pattern(filename: str, context: str) -> None:
    if len(filename) > 240 or any(character in filename for character in "\x00/\\"):
        raise CatalogError("shape", f"{context} is not a safe basename pattern")
    placeholders = FILENAME_PLACEHOLDER_RE.findall(filename)
    literal = FILENAME_PLACEHOLDER_RE.sub("", filename)
    if "<" in literal or ">" in literal or len(placeholders) > 8 or "><" in filename:
        raise CatalogError("shape", f"{context} has invalid or excessive placeholders")


def _safe_relative_sample(value: Any, context: str) -> PurePosixPath:
    path_text = _canonical_text(value, context)
    if "\\" in path_text or len(path_text) > 300:
        raise CatalogError("unsafe_path", f"{context} is not a safe POSIX relative path")
    path = PurePosixPath(path_text)
    if path.is_absolute() or not path.parts or path.parts[0] != "samples":
        raise CatalogError("unsafe_path", f"{context} must be below samples/")
    if len(path.parts) != 3 or any(part in {"", ".", ".."} for part in path.parts):
        raise CatalogError("unsafe_path", f"{context} must be samples/<variant-id>/<filename>")
    for part in path.parts:
        if part[-1:] in {" ", "."} or part.split(".", 1)[0].upper() in WINDOWS_RESERVED:
            raise CatalogError("unsafe_path", f"{context} is not portable across platforms")
        if not PORTABLE_SAMPLE_PART_RE.fullmatch(part):
            raise CatalogError(
                "unsafe_path", f"{context} contains characters unsafe on common filesystems"
            )
    return path


def _safe_existing_file(family_dir: Path, relative: PurePosixPath) -> Path:
    current = family_dir
    if family_dir.is_symlink():
        raise CatalogError("unsafe_path", f"family directory is a symlink: {family_dir}")
    for part in relative.parts:
        current = current / part
        if current.is_symlink():
            raise CatalogError("unsafe_path", f"sample path contains a symlink: {current}")
    try:
        resolved_family = family_dir.resolve(strict=True)
        resolved_file = current.resolve(strict=True)
        resolved_file.relative_to(resolved_family)
    except (OSError, ValueError) as exc:
        raise CatalogError(
            "unsafe_path", f"sample is missing or outside its family: {relative}"
        ) from exc
    if not resolved_file.is_file():
        raise CatalogError("sample", f"sample is not a regular file: {relative}")
    return resolved_file


def _validate_attack_techniques(value: Any, context: str) -> list[tuple[str, str]]:
    if not isinstance(value, list):
        raise CatalogError("shape", f"{context} must be an array")
    seen: set[str] = set()
    result: list[tuple[str, str]] = []
    for index, technique in enumerate(value):
        item = f"{context}[{index}]"
        if not isinstance(technique, dict):
            raise CatalogError("shape", f"{item} must be an object")
        if set(technique) != {"id", "name"}:
            raise CatalogError("shape", f"{item} must contain only id and name")
        technique_id = _canonical_text(technique.get("id"), f"{item}.id")
        technique_name = _canonical_text(technique.get("name"), f"{item}.name")
        if not TECHNIQUE_RE.fullmatch(technique_id):
            raise CatalogError("shape", f"{item}.id is not a MITRE ATT&CK technique ID")
        if technique_id in seen:
            raise CatalogError("duplicate", f"{context} repeats {technique_id}")
        seen.add(technique_id)
        result.append((technique_id, technique_name))
    return result


_INLINE_CODE_RE = re.compile(
    r"(?<!`)(?P<fence>``|`)(?P<literal>[^`]+)(?P=fence)(?!`)",
    re.DOTALL,
)


def _inline_code_spans(value: str) -> tuple[str, ...]:
    """Return normalized single/double-backtick literals translations must preserve."""

    return tuple(
        " ".join(match.group("literal").split())
        for match in _INLINE_CODE_RE.finditer(value)
    )


def _validate_inline_code_layout(value: str, context: str) -> None:
    """Reject source-formatting wraps inside Markdown inline-code literals."""

    if any("\n" in match.group("literal") for match in _INLINE_CODE_RE.finditer(value)):
        raise CatalogError(
            "shape", f"{context} contains a multiline inline-code literal"
        )


def _validate_localizations(
    value: Any,
    context: str,
    *,
    description: str,
    typical_targets: list[str],
    detection_notes: str,
    attack_techniques: list[tuple[str, str]],
) -> dict[str, list[tuple[str, str]]]:
    """Validate complete language overlays without changing canonical English."""

    if not isinstance(value, dict):
        raise CatalogError("shape", f"{context} must be an object")
    if "vi" not in value:
        raise CatalogError("shape", f"{context} must contain the Vietnamese locale vi")

    folded_locales: set[str] = set()
    localized_techniques: dict[str, list[tuple[str, str]]] = {}
    for locale, localized in value.items():
        if not isinstance(locale, str) or not LANGUAGE_TAG_RE.fullmatch(locale):
            raise CatalogError(
                "shape", f"{context} contains an invalid BCP 47 language tag"
            )
        folded = locale.casefold()
        if folded == "en":
            raise CatalogError(
                "shape", f"{context} must not duplicate canonical English"
            )
        if folded in folded_locales:
            raise CatalogError(
                "duplicate", f"{context} contains equivalent language tags"
            )
        folded_locales.add(folded)
        if not isinstance(localized, dict):
            raise CatalogError("shape", f"{context}.{locale} must be an object")
        missing = LOCALIZED_FAMILY_FIELDS - localized.keys()
        unknown = set(localized) - LOCALIZED_FAMILY_FIELDS
        if missing or unknown:
            details = []
            if missing:
                details.append("missing: " + ", ".join(sorted(missing)))
            if unknown:
                details.append("unknown fields: " + ", ".join(sorted(unknown)))
            raise CatalogError(
                "shape", f"{context}.{locale} has " + "; ".join(details)
            )

        localized_description = _text(
            localized["description"], f"{context}.{locale}.description"
        )
        localized_targets = _string_list(
            localized["typical_targets"],
            f"{context}.{locale}.typical_targets",
        )
        localized_detection = _text(
            localized["detection_notes"],
            f"{context}.{locale}.detection_notes",
        )
        techniques = _validate_attack_techniques(
            localized["attack_techniques"],
            f"{context}.{locale}.attack_techniques",
        )

        if len(localized_targets) != len(typical_targets):
            raise CatalogError(
                "localization",
                f"{context}.{locale}.typical_targets must align one-to-one "
                "with canonical English",
            )
        canonical_ids = [technique_id for technique_id, _ in attack_techniques]
        localized_ids = [technique_id for technique_id, _ in techniques]
        if localized_ids != canonical_ids:
            raise CatalogError(
                "localization",
                f"{context}.{locale}.attack_techniques must preserve canonical "
                "English IDs and order",
            )
        if folded == "vi":
            for technique_id, technique_name in techniques:
                reviewed_name = REVIEWED_VI_ATTACK_NAMES.get(technique_id)
                if reviewed_name is None:
                    raise CatalogError(
                        "localization",
                        f"{context}.{locale}.attack_techniques has no reviewed "
                        f"Vietnamese name for {technique_id}",
                    )
                if technique_name != reviewed_name:
                    raise CatalogError(
                        "localization",
                        f"{context}.{locale}.attack_techniques names {technique_id} "
                        f"as {technique_name!r}; reviewed catalog terminology is "
                        f"{reviewed_name!r}",
                    )

        paired_text = [
            ("description", description, localized_description),
            ("detection_notes", detection_notes, localized_detection),
            *(
                (f"typical_targets[{index}]", source, translated)
                for index, (source, translated) in enumerate(
                    zip(typical_targets, localized_targets, strict=True)
                )
            ),
        ]
        for field, source, translated in paired_text:
            _validate_inline_code_layout(translated, f"{context}.{locale}.{field}")
            if Counter(_inline_code_spans(source)) != Counter(
                _inline_code_spans(translated)
            ):
                raise CatalogError(
                    "localization",
                    f"{context}.{locale}.{field} must preserve inline-code literals",
                )
        localized_techniques[locale] = techniques
    return localized_techniques


def _validate_sample(
    value: Any,
    context: str,
    family_dir: Path,
    variant_id: str,
) -> tuple[str, int, str]:
    if not isinstance(value, dict) or not SAMPLE_CORE <= value.keys():
        raise CatalogError(
            "shape", f"{context} must contain path, sha256, source, and sanitized"
        )
    unknown = set(value) - SAMPLE_CORE
    if unknown:
        raise CatalogError("shape", f"{context} has unknown fields: {', '.join(sorted(unknown))}")
    relative = _safe_relative_sample(value["path"], f"{context}.path")
    if relative.parts[1] != variant_id:
        raise CatalogError("unsafe_path", f"{context}.path must use its variant id directory")
    expected_hash = _canonical_text(value["sha256"], f"{context}.sha256")
    if not SHA256_RE.fullmatch(expected_hash):
        raise CatalogError("shape", f"{context}.sha256 must be lowercase SHA-256")
    source = _canonical_text(value["source"], f"{context}.source")
    if source != "cystack_collection":
        raise CatalogError("provenance", f"{context}.source must be cystack_collection")
    if value["sanitized"] is not True:
        raise CatalogError("shape", f"{context}.sanitized must be true")
    sample_path = _safe_existing_file(family_dir, relative)
    size = sample_path.stat().st_size
    if size < 1 or size > MAX_SAMPLE_BYTES:
        raise CatalogError("sample", f"sample size must be between 1 and {MAX_SAMPLE_BYTES} bytes")
    sample_bytes = sample_path.read_bytes()
    actual_hash = hashlib.sha256(sample_bytes).hexdigest()
    if actual_hash != expected_hash:
        raise CatalogError("sample_hash", f"SHA-256 mismatch for {relative.as_posix()}")
    try:
        content = sample_bytes.decode("utf-8")
    except UnicodeDecodeError as exc:
        raise CatalogError(
            "sample", f"{relative.as_posix()} must be UTF-8 text"
        ) from exc
    if "\x00" in content or any(
        unicodedata.category(character) == "Cc" and character not in "\t\n\r"
        for character in content
    ):
        raise CatalogError(
            "sample", f"{relative.as_posix()} contains binary/control data"
        )
    return relative.as_posix(), size, content


def _validate_sample_evidence(
    markers: list[str],
    fields: list[str],
    content: str,
    context: str,
    *,
    code: str = "evidence",
) -> None:
    if not markers and not fields:
        raise CatalogError(code, f"{context} requires at least one marker or field label")
    normalized_content = _normal(content)
    missing_markers = [
        marker for marker in markers if _normal(marker) not in normalized_content
    ]
    labels = _field_labels(content)
    missing_fields = [
        field for field in fields if _normal(field).rstrip(":=") not in labels
    ]
    if missing_markers or missing_fields:
        details = []
        if missing_markers:
            details.append("missing markers " + ", ".join(repr(item) for item in missing_markers))
        if missing_fields:
            details.append(
                "missing field labels " + ", ".join(repr(item) for item in missing_fields)
            )
        raise CatalogError(
            code,
            f"{context} does not contain its declared evidence: {'; '.join(details)}",
        )


def _validate_variant(
    value: Any,
    context: str,
    family_dir: Path,
) -> tuple[str, str, int, int]:
    if not isinstance(value, dict) or not VARIANT_CORE <= value.keys():
        missing = sorted(VARIANT_CORE - set(value) if isinstance(value, dict) else VARIANT_CORE)
        raise CatalogError("shape", f"{context} is missing: {', '.join(missing)}")
    unknown = set(value) - (VARIANT_CORE | VARIANT_OPTIONAL)
    if unknown:
        raise CatalogError("shape", f"{context} has unknown fields: {', '.join(sorted(unknown))}")
    variant_id = _canonical_text(value["id"], f"{context}.id")
    if not VARIANT_ID_RE.fullmatch(variant_id):
        raise CatalogError("shape", f"{context}.id must be a lowercase portable identifier")
    format_id = _canonical_text(value["format_id"], f"{context}.format_id")
    if not SLUG_RE.fullmatch(format_id):
        raise CatalogError("shape", f"{context}.format_id must be a lowercase public identifier")
    if _has_benign_identity(variant_id, format_id):
        raise CatalogError("benign", f"{context} identifies benign/NotMalware data")
    filenames = _string_list(value["filenames"], f"{context}.filenames", sort=True)
    if not filenames:
        raise CatalogError("shape", f"{context}.filenames must not be empty")
    if len(filenames) > 32:
        raise CatalogError("shape", f"{context}.filenames contains too many patterns")
    for index, filename in enumerate(filenames):
        _validate_filename_pattern(filename, f"{context}.filenames[{index}]")
    _canonical_text(value["panel_brand"], f"{context}.panel_brand", nullable=True)
    _canonical_text(
        value["distribution_channel"], f"{context}.distribution_channel", nullable=True
    )
    _canonical_text(value.get("layout_id"), f"{context}.layout_id", nullable=True)
    confidence = _canonical_text(
        value["attribution_confidence"], f"{context}.attribution_confidence"
    )
    if confidence not in CONFIDENCE:
        raise CatalogError("shape", f"{context}.attribution_confidence is invalid")
    markers = _string_list(value["markers"], f"{context}.markers", sort=True)
    fields = _string_list(value["fields"], f"{context}.fields", sort=True)
    if len(markers) > 32 or any(len(marker) > 500 for marker in markers):
        raise CatalogError("shape", f"{context}.markers exceeds the public evidence limits")
    if len(fields) > 128 or any(len(field) > 160 for field in fields):
        raise CatalogError("shape", f"{context}.fields exceeds the public evidence limits")
    _string_list(value.get("sources", []), f"{context}.sources")
    observations = value.get("observations", 1)
    if isinstance(observations, bool) or not isinstance(observations, int) or observations < 1:
        raise CatalogError("shape", f"{context}.observations must be an integer >= 1")
    sample_path, sample_size, sample_content = _validate_sample(
        value["sample"], f"{context}.sample", family_dir, variant_id
    )
    _validate_sample_evidence(markers, fields, sample_content, f"{context}.sample")
    return variant_id, sample_path, observations, sample_size


def _family_files(root: Path) -> list[Path]:
    families = root / "families"
    if not families.is_dir() or families.is_symlink():
        raise CatalogError("layout", f"missing safe families directory: {families}")
    resolved_families = families.resolve(strict=True)
    result = []
    for path in families.glob("*/family.json"):
        try:
            path.parent.resolve(strict=True).relative_to(resolved_families)
        except (OSError, ValueError) as exc:
            raise CatalogError(
                "unsafe_path", f"family directory escapes families/: {path.parent}"
            ) from exc
        if path.is_symlink() or path.parent.is_symlink():
            raise CatalogError("unsafe_path", f"family metadata path contains a symlink: {path}")
        result.append(path)
    return sorted(result, key=lambda path: path.as_posix().casefold())


def _load_families(root: Path) -> list[tuple[Path, dict[str, Any]]]:
    result: list[tuple[Path, dict[str, Any]]] = []
    for path in _family_files(root):
        value = _load_json(path)
        if not isinstance(value, dict):
            raise CatalogError("shape", f"{path} must contain a JSON object")
        result.append((path, value))
    if not result:
        raise CatalogError("layout", "catalog has no family.json files")
    return result


def validate_catalog(root: Path = ROOT) -> dict[str, int]:
    root = root.resolve()
    loaded = _load_families(root)
    family_ids: dict[str, Path] = {}
    family_names: dict[str, Path] = {}
    canonical_links: list[tuple[Path, str]] = []
    contains_links: list[tuple[Path, str]] = []
    related_links: list[tuple[Path, str]] = []
    external_links: list[tuple[Path, str]] = []
    sample_paths: dict[str, Path] = {}
    sample_hashes: dict[str, tuple[str, str]] = {}
    variant_ids: dict[str, tuple[str, str]] = {}
    variant_identities: dict[tuple[str, str, str], tuple[str, str]] = {}
    format_families: dict[str, str] = {}
    attack_names: dict[str, tuple[str, Path]] = {}
    localized_attack_names: dict[tuple[str, str], tuple[str, Path]] = {}
    class_counts: Counter[str] = Counter()
    variant_count = sample_bytes = observation_count = 0

    for path, family in loaded:
        context = path.relative_to(root).as_posix()
        missing = FAMILY_CORE - family.keys()
        if missing:
            raise CatalogError("shape", f"{context} is missing: {', '.join(sorted(missing))}")
        unknown = set(family) - (FAMILY_CORE | FAMILY_OPTIONAL)
        if unknown:
            raise CatalogError(
                "shape", f"{context} has unknown fields: {', '.join(sorted(unknown))}"
            )
        family_id = _canonical_text(family["id"], f"{context}.id")
        name = _canonical_text(family["name"], f"{context}.name")
        classification = _canonical_text(
            family["classification"], f"{context}.classification"
        )
        if not SLUG_RE.fullmatch(family_id) or path.parent.name != family_id:
            raise CatalogError("shape", f"{context}.id must equal its lowercase directory name")
        if family_id != _family_slug(name):
            raise CatalogError("shape", f"{context}.id must be the canonical slug of its name")
        if classification not in FAMILY_CLASSES:
            raise CatalogError("shape", f"{context}.classification is invalid")
        if _has_benign_identity(family_id, name):
            raise CatalogError("benign", f"{context} identifies benign/NotMalware data")
        if family_id.startswith("unattributed-") or UNATTRIBUTED_HASH_RE.fullmatch(name):
            raise CatalogError(
                "unattributed_hash", f"{context} uses a hidden unattributed hash name"
            )
        if family_id in family_ids:
            raise CatalogError("duplicate", f"family id {family_id} appears more than once")
        if name.casefold() in family_names:
            raise CatalogError("duplicate", f"family name {name!r} appears more than once")
        family_ids[family_id] = path
        family_names[name.casefold()] = path
        class_counts[classification] += 1

        family_confidence = _canonical_text(
            family["attribution_confidence"], f"{context}.attribution_confidence"
        )
        if family_confidence not in CONFIDENCE:
            raise CatalogError("shape", f"{context}.attribution_confidence is invalid")
        if classification == "observed_self_label" and family_confidence not in {"low", "unknown"}:
            raise CatalogError(
                "shape",
                f"{context}.attribution_confidence must be low or unknown "
                "for an observed self-label",
            )
        description = _text(family["description"], f"{context}.description")
        _string_list(family["aliases"], f"{context}.aliases")
        typical_targets = _string_list(
            family["typical_targets"], f"{context}.typical_targets"
        )
        detection_notes = _text(
            family["detection_notes"], f"{context}.detection_notes"
        )
        _validate_inline_code_layout(description, f"{context}.description")
        for index, target in enumerate(typical_targets):
            _validate_inline_code_layout(
                target, f"{context}.typical_targets[{index}]"
            )
        _validate_inline_code_layout(
            detection_notes, f"{context}.detection_notes"
        )
        techniques = _validate_attack_techniques(
            family["attack_techniques"], f"{context}.attack_techniques"
        )
        localized_techniques = _validate_localizations(
            family["localizations"],
            f"{context}.localizations",
            description=description,
            typical_targets=typical_targets,
            detection_notes=detection_notes,
            attack_techniques=techniques,
        )
        for technique_id, technique_name in techniques:
            previous = attack_names.setdefault(technique_id, (technique_name, path))
            if previous[0] != technique_name:
                raise CatalogError(
                    "localization",
                    f"{context}.attack_techniques names {technique_id} as "
                    f"{technique_name!r}, but {previous[1].relative_to(root).as_posix()} "
                    f"names it as {previous[0]!r}",
                )
        for locale, translated_techniques in localized_techniques.items():
            for technique_id, technique_name in translated_techniques:
                key = (locale.casefold(), technique_id)
                previous = localized_attack_names.setdefault(
                    key, (technique_name, path)
                )
                if previous[0] != technique_name:
                    raise CatalogError(
                        "localization",
                        f"{context}.localizations.{locale}.attack_techniques names "
                        f"{technique_id} as {technique_name!r}, but "
                        f"{previous[1].relative_to(root).as_posix()} names it as "
                        f"{previous[0]!r}",
                    )
        related = _string_list(family["related_families"], f"{context}.related_families")
        for target in related:
            if not SLUG_RE.fullmatch(target) or target == family_id:
                raise CatalogError(
                    "link", f"{context}.related_families contains invalid id {target}"
                )
            related_links.append((path, target))
        external = _string_list(
            family.get("related_external", []), f"{context}.related_external"
        )
        external_identities = [_reference_key(target) for target in external]
        if len(external_identities) != len(set(external_identities)):
            raise CatalogError(
                "duplicate", f"{context}.related_external contains equivalent labels"
            )
        external_links.extend((path, target) for target in external)
        channels = _url_list(
            family.get("observed_channels", []), f"{context}.observed_channels"
        )
        for index, channel in enumerate(channels):
            parsed = urlsplit(channel)
            if parsed.hostname.casefold() in TELEGRAM_HOSTS and not parsed.path.strip("/"):
                raise CatalogError(
                    "shape",
                    f"{context}.observed_channels[{index}] must identify a Telegram channel "
                    "or invite",
                )
        sources = _url_list(family["sources"], f"{context}.sources")
        if any(urlsplit(source).hostname.casefold() in TELEGRAM_HOSTS for source in sources):
            raise CatalogError(
                "shape", f"{context}.sources must put Telegram URLs in observed_channels"
            )
        source_ids = {_url_identity(source) for source in sources}
        channel_ids = {_url_identity(channel) for channel in channels}
        if source_ids & channel_ids:
            raise CatalogError(
                "duplicate", f"{context} repeats a URL across sources and observed_channels"
            )
        if classification == "known_family" and not sources:
            raise CatalogError(
                "source", f"{context} known_family requires an independent research source"
            )

        canonical = family.get("canonical_family")
        if canonical is not None:
            canonical = _canonical_text(canonical, f"{context}.canonical_family")
            if not SLUG_RE.fullmatch(canonical) or canonical == family_id:
                raise CatalogError("link", f"{context}.canonical_family is invalid")
            canonical_links.append((path, canonical))
        if classification == "family_variant" and canonical is None:
            raise CatalogError("link", f"{context} family_variant requires canonical_family")
        if classification != "family_variant" and canonical is not None:
            raise CatalogError(
                "link", f"{context}.canonical_family is only valid for family variants"
            )

        contains = _string_list(family.get("contains_families", []), f"{context}.contains_families")
        if classification != "aggregator" and contains:
            raise CatalogError("link", f"{context}.contains_families is only valid for aggregators")
        if classification == "aggregator" and not contains:
            raise CatalogError("link", f"{context} aggregator requires contains_families")
        for target in contains:
            if not SLUG_RE.fullmatch(target) or target == family_id:
                raise CatalogError(
                    "link", f"{context}.contains_families contains invalid id {target}"
                )
            contains_links.append((path, target))

        variants = family["variants"]
        if not isinstance(variants, list):
            raise CatalogError("shape", f"{context}.variants must be an array")
        family_samples: set[str] = set()
        for index, variant in enumerate(variants):
            variant_id, sample_path, observations, size = _validate_variant(
                variant, f"{context}.variants[{index}]", path.parent
            )
            if classification == "observed_self_label" and variant[
                "attribution_confidence"
            ] not in {"low", "unknown"}:
                raise CatalogError(
                    "shape",
                    f"{context}.variants[{index}].attribution_confidence must be low or unknown "
                    "for an observed self-label",
                )
            if variant_id in variant_ids:
                other_family, _ = variant_ids[variant_id]
                raise CatalogError(
                    "duplicate",
                    f"variant id {variant_id} is shared by {other_family} and {family_id}",
                )
            identity = _variant_identity(variant)
            if identity in variant_identities:
                other_family, _ = variant_identities[identity]
                raise CatalogError(
                    "duplicate",
                    "format/panel/layout identity is shared by "
                    f"{other_family} and {family_id}",
                )
            format_id = variant["format_id"]
            format_family = format_families.get(format_id)
            if format_family is not None and format_family != family_id:
                raise CatalogError(
                    "duplicate",
                    f"format id {format_id} is shared by {format_family} and {family_id}",
                )
            qualified_sample = f"families/{family_id}/{sample_path}"
            portable_sample_key = unicodedata.normalize("NFC", qualified_sample).casefold()
            if portable_sample_key in sample_paths:
                raise CatalogError("duplicate", f"sample path {qualified_sample} is reused")
            sample_hash = variant["sample"]["sha256"]
            if sample_hash in sample_hashes:
                other_family, other_variant = sample_hashes[sample_hash]
                raise CatalogError(
                    "duplicate",
                    f"sample SHA-256 is shared by {other_family}/{other_variant} and "
                    f"{family_id}/{variant_id}",
                )
            variant_ids[variant_id] = (family_id, variant_id)
            variant_identities[identity] = (family_id, variant_id)
            format_families[format_id] = family_id
            sample_paths[portable_sample_key] = path
            sample_hashes[sample_hash] = (family_id, variant_id)
            family_samples.add(sample_path)
            variant_count += 1
            observation_count += observations
            sample_bytes += size

        samples_dir = path.parent / "samples"
        actual_samples: set[str] = set()
        if samples_dir.exists():
            for item in samples_dir.rglob("*"):
                if item.is_symlink():
                    raise CatalogError("unsafe_path", f"sample tree contains symlink: {item}")
                if item.is_file():
                    actual_samples.add(item.relative_to(path.parent).as_posix())
        if actual_samples != family_samples:
            missing_samples = sorted(family_samples - actual_samples)
            orphan_samples = sorted(actual_samples - family_samples)
            details = []
            if missing_samples:
                details.append("missing " + ", ".join(missing_samples))
            if orphan_samples:
                details.append("orphan " + ", ".join(orphan_samples))
            raise CatalogError(
                "sample", f"{context} sample inventory mismatch: {'; '.join(details)}"
            )

    for source, target in canonical_links + contains_links + related_links:
        if target not in family_ids:
            raise CatalogError("link", f"{source.relative_to(root)} links unknown family {target}")
    internal_references: dict[str, set[str]] = {}
    for _, family in loaded:
        for label in (family["id"], family["name"], *family["aliases"]):
            internal_references.setdefault(_reference_key(label), set()).add(family["id"])
    for source, target in external_links:
        internal_targets = internal_references.get(_reference_key(target), set())
        if internal_targets:
            raise CatalogError(
                "link",
                f"{source.relative_to(root)} lists catalog profile {target!r} as related_external; "
                f"use exact related_families ID {sorted(internal_targets)[0]!r}",
            )
    loaded_by_id = {family["id"]: family for _, family in loaded}
    for source, target in canonical_links:
        if loaded_by_id[target]["classification"] != "known_family":
            raise CatalogError(
                "link", f"{source.relative_to(root)} links non-canonical profile {target}"
            )

    return {
        "families": len(loaded),
        "known_families": class_counts["known_family"],
        "observed_self_labels": class_counts["observed_self_label"],
        "cystack_named": class_counts["cystack_named"],
        "family_variants": class_counts["family_variant"],
        "aggregators": class_counts["aggregator"],
        "variants": variant_count,
        "samples": len(sample_paths),
        "observations": observation_count,
        "sample_bytes": sample_bytes,
    }


def _md(value: str) -> str:
    return value.replace("|", "\\|").replace("\r", " ").replace("\n", " ").strip()


def _inline_list(values: Iterable[str]) -> str:
    values = list(values)
    return ", ".join(f"`{_md(value)}`" for value in values) if values else "-"


def _family_label(classification: str) -> str:
    return {
        "known_family": "Known malware family",
        "observed_self_label": "Observed self-label",
        "cystack_named": "CyStack tracking name",
        "family_variant": "Family variant",
        "aggregator": "Log aggregator",
    }[classification]


def _family_label_vi(classification: str) -> str:
    return {
        "known_family": "Họ mã độc đã được định danh",
        "observed_self_label": "Tên tự nhận quan sát được",
        "cystack_named": "Tên theo dõi do CyStack đặt",
        "family_variant": "Biến thể của một họ mã độc",
        "aggregator": "Nguồn tổng hợp log",
    }[classification]


def _family_readme(
    family: dict[str, Any], known_ids: set[str], family_names: dict[str, str]
) -> str:
    vietnamese = family["localizations"]["vi"]
    lines = [
        f"# {family['name']}",
        "",
        "## Overview / Tổng quan",
        "",
        "### English",
        "",
        family["description"].strip(),
        "",
        "### Tiếng Việt",
        "",
        vietnamese["description"].strip(),
        "",
        "## Research status / Trạng thái nghiên cứu",
        "",
        "- Classification / Phân loại: "
        f"**{_family_label(family['classification'])} / "
        f"{_family_label_vi(family['classification'])}**",
        f"- Attribution confidence: **{family['attribution_confidence']}**",
    ]
    if family.get("canonical_family"):
        target = family["canonical_family"]
        label = f"[{target}](../{target}/)" if target in known_ids else f"`{target}`"
        lines.append(f"- Canonical family: {label}")
    lines.extend(
        [
            f"- Aliases: {_inline_list(family['aliases'])}",
            f"- Variants observed: **{len(family['variants'])}**",
        ]
    )
    if family["variants"]:
        lines.append(
            "- CyStack observations represented: "
            f"**{sum(v.get('observations', 1) for v in family['variants']):,}**"
        )
    lines.extend(["", "## What it targets / Mục tiêu thường gặp", ""])
    if family["typical_targets"]:
        lines.extend(["| English | Tiếng Việt |", "|---|---|"])
        lines.extend(
            f"| {_md(english)} | {_md(vietnamese_target)} |"
            for english, vietnamese_target in zip(
                family["typical_targets"],
                vietnamese["typical_targets"],
                strict=True,
            )
        )
    if not family["typical_targets"]:
        lines.append("- No target inventory published yet / Chưa công bố danh mục mục tiêu.")
    lines.extend(
        [
            "",
            "## Detection notes / Ghi chú nhận diện",
            "",
            "### English",
            "",
            family["detection_notes"].strip(),
            "",
            "### Tiếng Việt",
            "",
            vietnamese["detection_notes"].strip(),
            "",
        ]
    )

    if family.get("contains_families"):
        lines.extend(["## Families seen in this aggregator", ""])
        for target in family["contains_families"]:
            lines.append(f"- [{target}](../{target}/)")
        lines.append("")

    lines.extend(["## Observed log variants", ""])
    if not family["variants"]:
        lines.extend(
            [
                "No representative sample has been retained by CyStack Threat Intelligence "
                "for this profile yet. The catalog does not publish placeholder variants or "
                "synthetic samples.",
            ]
        )
    for variant in sorted(family["variants"], key=lambda item: item["id"]):
        sample = variant["sample"]
        sample_link = quote(sample["path"], safe="/._-()[]")
        panel = f"`{_md(variant['panel_brand'])}`" if variant["panel_brand"] else "-"
        channel = (
            f"`{_md(variant['distribution_channel'])}`"
            if variant["distribution_channel"]
            else "-"
        )
        lines.extend(
            [
                f"### `{variant['id']}`",
                "",
                f"- Format ID: `{_md(variant['format_id'])}`",
                f"- Observed filenames: {_inline_list(variant['filenames'])}",
                f"- Panel brand: {panel}",
                f"- Distribution channel: {channel}",
                f"- Attribution confidence: **{variant['attribution_confidence']}**",
            ]
        )
        if variant.get("layout_id"):
            lines.append(f"- Layout: `{_md(variant['layout_id'])}`")
        lines.extend(
            [
                f"- Historical records represented: **{variant.get('observations', 1):,}**",
                f"- Representative sample: [open sample]({sample_link})",
                f"- Sample SHA-256: `{sample['sha256']}`",
                "- Sample provenance: CyStack Threat Intelligence collection, scrubbed for "
                "public research",
                "",
                "Recognition anchors:",
                "",
                f"- Stable markers: {_inline_list(variant['markers'])}",
                f"- Field labels: {_inline_list(variant['fields'])}",
                "",
            ]
        )

    sourced_variants = [variant for variant in family["variants"] if variant.get("sources")]
    if sourced_variants:
        lines.extend(["", "### Variant-specific sources", ""])
        for variant in sourced_variants:
            rendered_sources = []
            for source in variant["sources"]:
                parsed = urlsplit(source)
                rendered_sources.append(
                    f"<{source}>"
                    if parsed.scheme in {"http", "https"} and parsed.netloc
                    else f"`{source}`"
                )
            lines.append(f"- `{variant['id']}`: {', '.join(rendered_sources)}")

    lines.extend(["", "## MITRE ATT&CK", ""])
    if family["attack_techniques"]:
        lines.extend(
            [
                "| Technique | English | Tiếng Việt |",
                "|---|---|---|",
            ]
        )
        for technique, translated in zip(
            family["attack_techniques"],
            vietnamese["attack_techniques"],
            strict=True,
        ):
            technique_id = technique["id"]
            url = f"https://attack.mitre.org/techniques/{technique_id.replace('.', '/')}/"
            lines.append(
                f"| [{technique_id}]({url}) | {_md(technique['name'])} | "
                f"{_md(translated['name'])} |"
            )
    else:
        lines.append("No ATT&CK mapping published yet / Chưa công bố ánh xạ ATT&CK.")

    lines.extend(["", "## Related catalog profiles", ""])
    if family["related_families"]:
        for related in family["related_families"]:
            lines.append(f"- [{family_names[related]}](../{related}/)")
    else:
        lines.append("- None recorded.")

    if family.get("related_external"):
        lines.extend(["", "## Related external families", ""])
        lines.extend(f"- `{related}`" for related in family["related_external"])

    if family.get("observed_channels"):
        lines.extend(["", "## Observed distribution channels", ""])
        lines.extend(f"- <{channel}>" for channel in family["observed_channels"])

    lines.extend(["", "## Sources", ""])
    if family["sources"]:
        for source in family["sources"]:
            parsed = urlsplit(source)
            if parsed.scheme in {"http", "https"} and parsed.netloc:
                lines.append(f"- <{source}>")
            else:
                lines.append(f"- `{source}`")
    else:
        lines.append("- CyStack-observed log structure; no external family source recorded.")
    lines.extend(["", "Machine-readable record: [family.json](family.json)", ""])
    return "\n".join(lines)


def _root_readme(families: list[dict[str, Any]], stats: dict[str, int]) -> str:
    lines = [
        "# Stealer Fingerprints",
        "",
        "An independent public research catalog maintained by CyStack Threat Intelligence. "
        "It documents information-stealer log formats observed in real-world collections and "
        "distinguishes publicly attributed malware families, observed self-labels, and stable "
        "CyStack tracking names for formats without defensible public attribution.",
        "",
        "Every retained variant has exactly one representative text sample from the CyStack "
        "Threat Intelligence collection. Profiles without a retained sample remain visible as "
        "research records; the repository does not fill those gaps with synthetic samples.",
        "",
        "> This catalog describes exported stealer logs, not malware binaries. A structural "
        "match is an analyst lead, not proof of infection or final attribution.",
        "",
        "Family pages present the research narrative, target inventory, detection notes, and "
        "MITRE ATT&CK names in both English and Vietnamese. English remains the canonical "
        "machine-readable text; Vietnamese is maintained as an aligned localization.",
        "",
        "Các trang hồ sơ trình bày phần mô tả nghiên cứu, danh mục mục tiêu, ghi chú nhận diện "
        "và tên kỹ thuật MITRE ATT&CK bằng cả tiếng Anh và tiếng Việt.",
        "",
        "## Corpus at a glance",
        "",
        f"- **{stats['families']:,}** research profiles",
        f"- **{stats['known_families']:,}** known malware families",
        f"- **{stats['observed_self_labels']:,}** observed self-labels without independent family "
        "attribution",
        f"- **{stats['cystack_named']:,}** CyStack tracking names",
        f"- **{stats['family_variants']:,}** CyStack names mapped to a known parent family",
        f"- **{stats['aggregators']:,}** log aggregators",
        f"- **{stats['variants']:,}** observed log variants and **{stats['samples']:,}** samples",
        f"- **{stats['observations']:,}** CyStack observations represented by the retained "
        "sample set",
        "",
        "The historical-record count is a cumulative lower bound attached to the retained "
        "samples, not a live telemetry counter.",
        "",
        "## A quick look",
        "",
        "- [Lumma](families/lumma/) shows a well-attributed family with several observed layouts.",
        "- [CSAntiSandboxStealer](families/cs-anti-sandbox-stealer/) shows a format named and "
        "documented by CyStack pending defensible external attribution.",
        "- [CSBabaStealer](families/cs-baba-stealer/) shows a CyStack tracking name mapped to a "
        "known parent family while retaining its own observable panel identity.",
        "",
        "## Use it",
        "",
        "Browse any profile below for its description, targets, detection notes, ATT&CK "
        "mapping, recognition anchors, provenance, and sample. To rank a local text log "
        "against the published structures:",
        "",
        "```console",
        "python identify.py path/to/system-info.txt",
        "python identify.py --json path/to/system-info.txt",
        "```",
        "",
        "The matcher runs locally with Python 3.11+ and has no third-party dependencies.",
        "",
        "## Catalog",
    ]
    for classification in (
        "known_family",
        "observed_self_label",
        "cystack_named",
        "family_variant",
        "aggregator",
    ):
        group = [family for family in families if family["classification"] == classification]
        heading = {
            "known_family": "Known malware families",
            "observed_self_label": "Observed self-labels",
            "cystack_named": "CyStack tracking names",
            "family_variant": "Mapped family variants",
            "aggregator": "Log aggregators",
        }[classification]
        lines.extend(
            [
                "",
                f"### {heading} ({len(group):,})",
                "",
                "| Profile | Confidence | Variants | Sample status |",
                "|---|---|---:|---|",
            ]
        )
        for family in sorted(group, key=lambda item: (item["name"].casefold(), item["id"])):
            label = f"[{_md(family['name'])}](families/{family['id']}/)"
            if family.get("canonical_family"):
                parent = family["canonical_family"]
                label += f" → [{parent}](families/{parent}/)"
            variant_count = len(family["variants"])
            sample_status = (
                f"[{variant_count} retained](families/{family['id']}/#observed-log-variants)"
                if variant_count
                else "Metadata only"
            )
            lines.append(
                f"| {label} | {family['attribution_confidence']} | "
                f"{variant_count:,} | {sample_status} |"
            )
    lines.extend(
        [
            "",
            "## Naming and evidence",
            "",
            "An **observed self-label** is a name printed by a log or its panel that has not yet "
            "been established as a canonical family by independent research. A **CyStack "
            "tracking name** denotes a repeatable, useful log structure for which public "
            "attribution is not yet strong enough. A **family variant** is a CyStack name that "
            "has since been linked to a known parent. An **aggregator** describes a distribution "
            "or panel grouping that can contain multiple families.",
            "",
            "Family descriptions and detection notes are maintained by CyStack Threat "
            "Intelligence. Samples retain useful layout, spelling, separators, field order, "
            "and malware/panel markers while direct victim secrets are scrubbed.",
            "Each sample lives under its stable variant directory. Its basename is either "
            "`sample.txt` or the sanitized observed basename; original artifact basename "
            "patterns remain in each variant's **Observed filenames** field.",
            "",
            "## Research process",
            "",
            "CyStack Threat Intelligence adds a variant only after its structure has been "
            "confirmed, its representative sample has been scrubbed, and the record has been "
            "deduplicated and validated against the current catalog.",
            "",
            "## Working with the data",
            "",
            "The machine-readable source for each profile is its `family.json`; the adjacent "
            "README and this index are generated from those records. See [CONTRIBUTING.md]"
            "(CONTRIBUTING.md) for corrections or new evidence.",
            "",
            "Top-level descriptive fields in `family.json` are canonical English. The "
            "`localizations.vi` object carries a complete, positionally aligned Vietnamese "
            "translation without changing stable IDs or evidence fields.",
            "",
            "`format_id` is a catalog-wide stable public identifier for a log structure; each "
            "`v_...` value is an opaque catalog-wide stable variant identifier and should not "
            "be recalculated. A sample "
            "with `source: cystack_collection` was retained from the CyStack Threat "
            "Intelligence research collection and scrubbed before publication.",
            "",
            "```console",
            "python tools/catalog.py validate",
            "python tools/catalog.py build --check",
            "```",
            "",
        ]
    )
    return "\n".join(lines)


def build(root: Path = ROOT, *, check: bool = False) -> list[str]:
    root = root.resolve()
    stats = validate_catalog(root)
    loaded = _load_families(root)
    families = [family for _, family in loaded]
    known_ids = {family["id"] for family in families}
    family_names = {family["id"]: family["name"] for family in families}
    generated: dict[Path, bytes] = {
        root / "README.md": _root_readme(families, stats).encode("utf-8")
    }
    for path, family in loaded:
        generated[path.parent / "README.md"] = _family_readme(
            family, known_ids, family_names
        ).encode("utf-8")
    changed = [
        path.relative_to(root).as_posix()
        for path, expected in generated.items()
        if not path.is_file() or path.read_bytes() != expected
    ]
    if check and changed:
        raise CatalogError("generated", "generated README files are stale: " + ", ".join(changed))
    if not check:
        for path, expected in generated.items():
            if path.relative_to(root).as_posix() in changed:
                _atomic_write(path, expected)
    return changed


def _normalise_family_candidate(raw: Any, existing: dict[str, Any] | None) -> dict[str, Any]:
    if not isinstance(raw, dict):
        raise CatalogError("candidate", "candidate.family must be an object")
    allowed = (FAMILY_CORE - {"variants"}) | FAMILY_OPTIONAL
    unknown = set(raw) - allowed
    if unknown:
        raise CatalogError(
            "candidate", "candidate.family has unknown fields: " + ", ".join(sorted(unknown))
        )
    if existing is not None:
        family_id = _text(raw.get("id"), "candidate.family.id")
        name = _text(raw.get("name"), "candidate.family.name")
        if family_id != existing["id"] or name.casefold() != existing["name"].casefold():
            raise CatalogError(
                "collision", f"family id {family_id} does not identify {existing['name']}"
            )
        # Once published, the catalog's researched narrative is authoritative.
        # An incoming variant may carry older metadata without
        # overwriting public descriptions, attribution, links, or sources.
        return {key: value for key, value in existing.items() if key != "variants"}

    missing = (FAMILY_CORE - {"variants"}) - raw.keys()
    if missing:
        raise CatalogError(
            "candidate", "new family metadata is missing: " + ", ".join(sorted(missing))
        )
    family = {key: value for key, value in raw.items() if key in allowed}
    family_id = _text(family.get("id"), "candidate.family.id")
    name = _text(family.get("name"), "candidate.family.name")
    classification = _text(family.get("classification"), "candidate.family.classification")
    if not SLUG_RE.fullmatch(family_id) or classification not in FAMILY_CLASSES:
        raise CatalogError("candidate", "candidate family id or classification is invalid")
    if family_id != _family_slug(name):
        raise CatalogError("candidate", "candidate family id is not the canonical name slug")
    if _has_benign_identity(family_id, name) or family_id.startswith("unattributed-"):
        raise CatalogError("candidate", "benign and unattributed-hash families are not publishable")
    return family


def _normalise_variant_candidate(raw: Any) -> dict[str, Any]:
    if not isinstance(raw, dict):
        raise CatalogError("candidate", "candidate.variant must be an object")
    accepted = (VARIANT_CORE - {"sample"}) | VARIANT_OPTIONAL
    unknown = set(raw) - accepted
    if unknown:
        raise CatalogError(
            "candidate", "candidate.variant has unknown fields: " + ", ".join(sorted(unknown))
        )
    variant = {key: value for key, value in raw.items() if key in accepted}
    required = VARIANT_CORE - {"sample"}
    missing = required - variant.keys()
    if missing:
        raise CatalogError(
            "candidate", "candidate.variant is missing: " + ", ".join(sorted(missing))
        )
    variant["format_id"] = _text(variant["format_id"], "candidate.variant.format_id")
    if not SLUG_RE.fullmatch(variant["format_id"]):
        raise CatalogError(
            "candidate", "candidate.variant.format_id must be a lowercase public identifier"
        )
    variant["filenames"] = _string_list(
        variant["filenames"], "candidate.variant.filenames", sort=True, canonical=False
    )
    variant["markers"] = _string_list(
        variant["markers"], "candidate.variant.markers", sort=True, canonical=False
    )
    variant["fields"] = _string_list(
        variant["fields"], "candidate.variant.fields", sort=True, canonical=False
    )
    if not variant["filenames"] or len(variant["filenames"]) > 32:
        raise CatalogError("candidate", "candidate.variant.filenames count is invalid")
    for index, filename in enumerate(variant["filenames"]):
        _validate_filename_pattern(filename, f"candidate.variant.filenames[{index}]")
    if len(variant["markers"]) > 32 or any(
        len(marker) > 500 for marker in variant["markers"]
    ):
        raise CatalogError("candidate", "candidate.variant.markers exceeds public limits")
    if len(variant["fields"]) > 128 or any(len(field) > 160 for field in variant["fields"]):
        raise CatalogError("candidate", "candidate.variant.fields exceeds public limits")
    if "sources" in variant:
        variant["sources"] = _string_list(
            variant["sources"], "candidate.variant.sources", canonical=False
        )
    variant["panel_brand"] = _text(
        variant["panel_brand"], "candidate.variant.panel_brand", nullable=True
    )
    variant["distribution_channel"] = _text(
        variant["distribution_channel"], "candidate.variant.distribution_channel", nullable=True
    )
    variant["layout_id"] = _text(
        variant.get("layout_id"), "candidate.variant.layout_id", nullable=True
    )
    confidence = _text(
        variant["attribution_confidence"], "candidate.variant.attribution_confidence"
    )
    if confidence not in CONFIDENCE:
        raise CatalogError("candidate", "candidate.variant.attribution_confidence is invalid")
    observations = variant.get("observations", 1)
    if isinstance(observations, bool) or not isinstance(observations, int) or observations < 1:
        raise CatalogError("candidate", "candidate.variant.observations must be an integer >= 1")
    variant["observations"] = observations
    variant["id"] = _text(variant["id"], "candidate.variant.id")
    if not VARIANT_ID_RE.fullmatch(variant["id"]):
        raise CatalogError("candidate", "candidate.variant.id is invalid")
    if variant["layout_id"] is None:
        variant.pop("layout_id")
    return variant


def _adapt_candidate(value: Any) -> tuple[dict[str, Any], dict[str, Any], dict[str, Any]]:
    if not isinstance(value, dict):
        raise CatalogError("candidate", "candidate must be a JSON object")
    expected = {"family", "variant", "sample"}
    unknown = sorted(set(value) - expected)
    missing = sorted(expected - set(value))
    if unknown or missing:
        details = []
        if unknown:
            details.append("unknown fields: " + ", ".join(unknown))
        if missing:
            details.append("missing fields: " + ", ".join(missing))
        raise CatalogError(
            "candidate", "candidate must contain exactly family, variant, and sample; "
            + "; ".join(details)
        )
    family = value.get("family")
    variant = value.get("variant")
    sample = value.get("sample")
    if (
        not isinstance(family, dict)
        or not isinstance(variant, dict)
        or not isinstance(sample, dict)
    ):
        raise CatalogError("candidate", "candidate requires family, variant, and sample objects")
    return family, variant, sample


def _candidate_sample(raw: dict[str, Any]) -> tuple[str, bytes, bool]:
    unknown = set(raw) - {"filename", "content", "sanitized"}
    if unknown:
        raise CatalogError(
            "candidate", "candidate.sample has unknown fields: " + ", ".join(sorted(unknown))
        )
    if "sanitized" not in raw:
        raise CatalogError("candidate", "candidate.sample.sanitized must be explicitly true")
    filename = _text(raw.get("filename"), "candidate.sample.filename")
    content = raw.get("content")
    if not isinstance(content, str) or not content:
        raise CatalogError("candidate", "candidate.sample.content must be non-empty text")
    if "\x00" in content:
        raise CatalogError("candidate", "candidate.sample.content contains NUL")
    data = content.replace("\r\n", "\n").replace("\r", "\n").encode("utf-8")
    if len(data) > MAX_SAMPLE_BYTES:
        raise CatalogError("candidate", f"candidate sample exceeds {MAX_SAMPLE_BYTES} bytes")
    if any(character in filename for character in "/\\") or filename in {".", ".."}:
        raise CatalogError("unsafe_path", "candidate.sample.filename must be a basename")
    encoded = quote(
        filename, safe="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-()[] +"
    )
    if not encoded or len(encoded) > 160 or encoded[-1:] in {" ", "."}:
        suffix = Path(filename).suffix.lower()
        encoded = "sample" + (suffix if re.fullmatch(r"\.[a-z0-9]{1,8}", suffix) else ".txt")
    if encoded.split(".", 1)[0].upper() in WINDOWS_RESERVED:
        encoded = "sample-" + encoded
    sanitized = raw["sanitized"]
    if sanitized is not True:
        raise CatalogError("candidate", "candidate.sample.sanitized must be true")
    return encoded, data, sanitized


def _safe_ingest_target(root: Path, family_id: str, relative: PurePosixPath | None = None) -> None:
    families = root / "families"
    if not families.is_dir() or families.is_symlink():
        raise CatalogError("unsafe_path", f"missing safe families directory: {families}")
    resolved_families = families.resolve(strict=True)
    family_dir = families / family_id
    if family_dir.exists():
        try:
            family_dir.resolve(strict=True).relative_to(resolved_families)
        except (OSError, ValueError) as exc:
            raise CatalogError(
                "unsafe_path", f"family directory escapes families/: {family_dir}"
            ) from exc
        if family_dir.is_symlink():
            raise CatalogError("unsafe_path", f"family directory is a symlink: {family_dir}")
    if relative is None:
        return
    current = family_dir
    for part in relative.parts[:-1]:
        current /= part
        if current.exists() and current.is_symlink():
            raise CatalogError("unsafe_path", f"sample target contains a symlink: {current}")


def ingest(candidate_path: Path, root: Path = ROOT) -> dict[str, Any]:
    root = root.resolve()
    validate_catalog(root)
    raw_family, raw_variant, raw_sample = _adapt_candidate(_load_json(candidate_path))
    family_id = _canonical_text(raw_family.get("id"), "candidate.family.id")
    if not SLUG_RE.fullmatch(family_id) or _has_benign_identity(family_id):
        raise CatalogError("candidate", "candidate.family.id is not publishable")
    _safe_ingest_target(root, family_id)
    family_path = root / "families" / family_id / "family.json"
    existing = _load_json(family_path) if family_path.is_file() else None
    if existing is not None and not isinstance(existing, dict):
        raise CatalogError("shape", f"{family_path} must contain an object")
    family = _normalise_family_candidate(raw_family, existing)
    variant = _normalise_variant_candidate(raw_variant)
    filename, sample_data, sanitized = _candidate_sample(raw_sample)
    sample_hash = hashlib.sha256(sample_data).hexdigest()
    catalog_variants = [
        (catalog_family["id"], catalog_variant)
        for _, catalog_family in _load_families(root)
        for catalog_variant in catalog_family["variants"]
    ]
    for catalog_family_id, catalog_variant in catalog_variants:
        if catalog_variant["sample"]["sha256"] != sample_hash:
            continue
        if catalog_family_id != family_id:
            raise CatalogError(
                "collision",
                "candidate sample already belongs to "
                f"{catalog_family_id}/{catalog_variant['id']}",
            )
        return {
            "status": "no_change",
            "accepted": 1,
            "added": 0,
            "duplicates": 1,
            "samples_added": 0,
            "updated": 0,
            "family_id": family_id,
            "variant_id": catalog_variant["id"],
            "changed_paths": [],
        }

    existing_variants = list(existing.get("variants", [])) if existing else []
    by_id = {
        item.get("id"): (catalog_family_id, item)
        for catalog_family_id, item in catalog_variants
        if isinstance(item, dict)
    }
    by_identity = {
        _variant_identity(item): (catalog_family_id, item)
        for catalog_family_id, item in catalog_variants
        if isinstance(item, dict)
    }
    matched_id_record = by_id.get(variant["id"])
    matched_identity_record = by_identity.get(_variant_identity(variant))
    if matched_id_record is not None and matched_id_record[0] != family_id:
        raise CatalogError(
            "collision",
            f"variant id {variant['id']} already belongs to {matched_id_record[0]}",
        )
    if matched_identity_record is not None and matched_identity_record[0] != family_id:
        raise CatalogError(
            "collision",
            "candidate format/panel/layout identity already belongs to "
            f"{matched_identity_record[0]}/{matched_identity_record[1]['id']}",
        )
    format_owner = next(
        (
            catalog_family_id
            for catalog_family_id, item in catalog_variants
            if item["format_id"] == variant["format_id"]
        ),
        None,
    )
    if format_owner is not None and format_owner != family_id:
        raise CatalogError(
            "collision",
            f"format id {variant['format_id']} already belongs to {format_owner}",
        )
    matched_by_id = matched_id_record[1] if matched_id_record is not None else None
    matched_by_identity = (
        matched_identity_record[1] if matched_identity_record is not None else None
    )
    if (
        matched_by_id is not None
        and _variant_identity(matched_by_id) != _variant_identity(variant)
    ):
        raise CatalogError(
            "collision", f"variant id {variant['id']} already has a different identity"
        )
    if (
        matched_by_id is not None
        and matched_by_identity is not None
        and matched_by_id is not matched_by_identity
    ):
        raise CatalogError(
            "collision", "candidate variant id and format identity refer to different records"
        )
    matched = matched_by_id or matched_by_identity
    if matched is not None:
        return {
            "status": "no_change",
            "accepted": 1,
            "added": 0,
            "duplicates": 1,
            "samples_added": 0,
            "updated": 0,
            "family_id": family_id,
            "variant_id": matched["id"],
            "changed_paths": [],
        }

    original_family = _json_bytes(existing) if existing is not None else None
    if not any(_filename_matches(pattern, filename) for pattern in variant["filenames"]):
        raise CatalogError(
            "candidate", "candidate.sample.filename does not match candidate.variant.filenames"
        )
    _validate_sample_evidence(
        variant["markers"],
        variant["fields"],
        sample_data.decode("utf-8"),
        "candidate.sample",
        code="candidate",
    )
    sample_relative = PurePosixPath("samples", variant["id"], filename)
    variant["sample"] = {
        "path": sample_relative.as_posix(),
        "sha256": sample_hash,
        "source": "cystack_collection",
        "sanitized": sanitized,
    }
    existing_variants.append(variant)

    family["variants"] = sorted(existing_variants, key=lambda item: item["id"])
    before_family = original_family
    after_family = _json_bytes(family)
    metadata_changed = before_family != after_family
    changed_paths: list[str] = []
    writes: list[tuple[Path, bytes]] = []
    sample_relative = PurePosixPath(variant["sample"]["path"])
    _safe_ingest_target(root, family_id, sample_relative)
    sample_path = root / "families" / family_id / Path(*sample_relative.parts)
    if sample_path.exists() or sample_path.is_symlink():
        raise CatalogError("collision", f"sample target already exists: {sample_path}")
    writes.append((sample_path, sample_data))
    if metadata_changed:
        writes.append((family_path, after_family))
    backups = {path: path.read_bytes() if path.is_file() else None for path, _ in writes}
    try:
        for path, data in writes:
            _atomic_write(path, data)
            changed_paths.append(path.relative_to(root).as_posix())
        validate_catalog(root)

        # ``build`` may update the root index and any family README. Snapshot
        # every possible target before it starts so a partial build failure
        # rolls the entire ingest transaction back, not only JSON and sample
        # files.
        generated_paths = [root / "README.md"]
        generated_paths.extend(path.parent / "README.md" for path, _ in _load_families(root))
        for path in generated_paths:
            backups.setdefault(path, path.read_bytes() if path.is_file() else None)
        changed_paths.extend(build(root))
    except BaseException:
        for path, previous in reversed(list(backups.items())):
            if previous is None:
                try:
                    path.unlink()
                except OSError:
                    pass
                current = path.parent
                families_root = root / "families"
                while current != families_root:
                    try:
                        current.rmdir()
                    except OSError:
                        break
                    current = current.parent
            else:
                _atomic_write(path, previous)
        raise
    return {
        "status": "changed",
        "accepted": 1,
        "added": 1,
        "duplicates": 0,
        "samples_added": 1,
        "updated": 0,
        "family_id": family_id,
        "variant_id": variant["id"],
        "changed_paths": sorted(set(changed_paths)),
    }


def _normal(value: str) -> str:
    return " ".join(unicodedata.normalize("NFKC", value).casefold().split())


def _field_labels(content: str) -> set[str]:
    labels: set[str] = set()
    for line in content.splitlines():
        # Comments and advertising banners are not log-schema fields.
        if line.lstrip(" \t").startswith("#"):
            continue
        match = FIELD_LINE_RE.match(line)
        if match:
            label = _plausible_field_label(
                match.group("label"),
                separator=match.group("separator"),
                value=match.group("value"),
            )
            if label:
                labels.add(_normal(label))
        for json_key in JSON_FIELD_RE.findall(line):
            label = _plausible_field_label(json_key)
            if label:
                labels.add(_normal(label))
    return {label for label in labels if label}


def _plausible_field_label(
    label: str, *, separator: str = "", value: str = ""
) -> str:
    """Return a structural label, excluding ASCII art, URLs, and paths."""

    cleaned = label.strip(" []{}()\"'")
    if (
        not cleaned
        or not any(character.isalnum() for character in cleaned)
        or any(character in cleaned for character in "\\|<>")
        or (separator == ":" and value.lstrip().startswith((":", "/", "\\")))
    ):
        return ""
    return cleaned


def _filename_matches(pattern: str, filename: str) -> bool:
    pattern = _normal(pattern)
    filename = _normal(filename)
    expression = "".join(
        r"[^/\\]+" if part.startswith("<") and part.endswith(">") else re.escape(part)
        for part in re.split(r"(<[^<>]+>)", pattern)
        if part
    )
    return re.fullmatch(expression, filename) is not None


def _matcher_corpus(
    loaded: list[tuple[Path, dict[str, Any]]],
) -> tuple[dict[str, int], dict[str, int], dict[tuple[str, str], int]]:
    """Measure anchor specificity against the retained public samples.

    Counts are family document frequencies, not probabilities.  They are
    derived from evidence that actually occurs in samples rather than from
    declarations alone, so a ubiquitous label such as ``CPU`` cannot appear
    distinctive merely because other profiles did not list it as an anchor.
    """

    marker_features = {
        _normal(marker)
        for _, family in loaded
        for variant in family["variants"]
        for marker in variant["markers"]
    }
    field_features = {
        _normal(field).rstrip(":=")
        for _, family in loaded
        for variant in family["variants"]
        for field in variant["fields"]
    }
    samples_by_family: dict[str, list[tuple[str, set[str]]]] = {}
    for family_path, family in loaded:
        profiles: list[tuple[str, set[str]]] = []
        for index, variant in enumerate(family["variants"]):
            context = f"{family_path}.variants[{index}].sample.path"
            relative = _safe_relative_sample(variant["sample"]["path"], context)
            sample_path = _safe_existing_file(family_path.parent, relative)
            try:
                content = sample_path.read_bytes().decode("utf-8")
            except UnicodeDecodeError as exc:
                raise CatalogError("sample", f"{relative.as_posix()} must be UTF-8 text") from exc
            profiles.append((_normal(content), _field_labels(content)))
        samples_by_family[family["id"]] = profiles

    marker_family_df = {
        feature: sum(
            any(feature in content for content, _ in profiles)
            for profiles in samples_by_family.values()
        )
        for feature in marker_features
    }
    field_family_df = {
        feature: sum(
            any(feature in labels for _, labels in profiles)
            for profiles in samples_by_family.values()
        )
        for feature in field_features
    }

    signature_cache: dict[tuple[tuple[str, ...], tuple[str, ...]], int] = {}
    signature_family_df: dict[tuple[str, str], int] = {}
    for _, family in loaded:
        for variant in family["variants"]:
            signature = (
                tuple(_normal(marker) for marker in variant["markers"]),
                tuple(_normal(field).rstrip(":=") for field in variant["fields"]),
            )
            if signature not in signature_cache:
                markers, fields = signature
                signature_cache[signature] = sum(
                    any(
                        all(marker in content for marker in markers)
                        and all(field in labels for field in fields)
                        for content, labels in profiles
                    )
                    for profiles in samples_by_family.values()
                )
            signature_family_df[(family["id"], variant["id"])] = signature_cache[signature]
    return marker_family_df, field_family_df, signature_family_df


def identify(path: Path, root: Path = ROOT, *, top: int = 5) -> dict[str, Any]:
    if top < 1 or top > 50:
        raise CatalogError("input", "--top must be between 1 and 50")
    try:
        data = path.read_bytes()
    except OSError as exc:
        raise CatalogError("input", f"cannot read {path}: {exc}") from exc
    if len(data) > MAX_SAMPLE_BYTES:
        raise CatalogError("input", f"input exceeds {MAX_SAMPLE_BYTES} bytes")
    encodings = ["utf-8-sig"]
    if data.startswith((b"\xff\xfe", b"\xfe\xff")):
        encodings.insert(0, "utf-16")
    encodings.append("cp1252")
    content = None
    for encoding in encodings:
        try:
            content = data.decode(encoding)
            break
        except UnicodeDecodeError:
            pass
    if content is None or "\x00" in content:
        raise CatalogError("input", "input is not supported text")
    folded_content = _normal(content)
    labels = _field_labels(content)
    filename = path.name
    loaded = _load_families(root.resolve())
    marker_family_df, field_family_df, signature_family_df = _matcher_corpus(loaded)
    matches: list[dict[str, Any]] = []
    for _, family in loaded:
        for variant in family["variants"]:
            filename_hits = [
                item for item in variant["filenames"] if _filename_matches(item, filename)
            ]
            marker_hits = [item for item in variant["markers"] if _normal(item) in folded_content]
            field_hits = [
                item for item in variant["fields"] if _normal(item).rstrip(":=") in labels
            ]
            if not (filename_hits or marker_hits or field_hits):
                continue
            hit_weights = [
                1 / max(1, marker_family_df[_normal(marker)]) for marker in marker_hits
            ] + [
                1 / max(1, field_family_df[_normal(field).rstrip(":=")])
                for field in field_hits
            ]
            total_weights = [
                1 / max(1, marker_family_df[_normal(marker)])
                for marker in variant["markers"]
            ] + [
                1 / max(1, field_family_df[_normal(field).rstrip(":=")])
                for field in variant["fields"]
            ]
            anchor_hits = len(marker_hits) + len(field_hits)
            anchor_total = len(variant["markers"]) + len(variant["fields"])
            full_signature = anchor_hits == anchor_total
            family_count = signature_family_df[(family["id"], variant["id"])]
            distinctive_hits = sum(weight == 1 for weight in hit_weights)
            weighted_support = sum(hit_weights)
            weighted_coverage = weighted_support / sum(total_weights)
            strong = full_signature and family_count == 1
            evidence_level = (
                "strong"
                if strong
                else "possible"
                if marker_hits or field_hits
                else "filename_only"
            )
            matches.append(
                {
                    "family_id": family["id"],
                    "family": family["name"],
                    "classification": family["classification"],
                    "canonical_family": family.get("canonical_family"),
                    "variant_id": variant["id"],
                    "attribution_confidence": variant["attribution_confidence"],
                    "evidence_level": evidence_level,
                    "score": round(weighted_coverage, 3),
                    "score_basis": "catalog_weighted_anchor_coverage",
                    "evidence": {
                        "filenames": filename_hits,
                        "markers": marker_hits,
                        "fields": field_hits,
                        "field_coverage": f"{len(field_hits)}/{len(variant['fields'])}",
                        "anchor_coverage": f"{anchor_hits}/{anchor_total}",
                        "catalog_distinctive_hits": distinctive_hits,
                        "signature_family_count": family_count,
                    },
                    "_strong": strong,
                    "_full_signature": full_signature,
                    "_distinctive_hits": distinctive_hits,
                    "_weighted_coverage": weighted_coverage,
                    "_weighted_support": weighted_support,
                }
            )
    matches.sort(
        key=lambda item: (
            -int(item["_strong"]),
            -item["_distinctive_hits"],
            -int(item["_full_signature"]),
            item["evidence"]["signature_family_count"]
            if item["_full_signature"]
            else len(loaded) + 1,
            -item["_weighted_coverage"],
            -item["_weighted_support"],
            -int(bool(item["evidence"]["filenames"])),
            item["family"].casefold(),
            item["variant_id"],
        )
    )

    # A top-N result should contain N research profiles, not several sibling
    # variants that crowd out otherwise useful alternatives from other families.
    ranked: list[dict[str, Any]] = []
    seen_families: set[str] = set()
    for match in matches:
        if match["family_id"] in seen_families:
            continue
        seen_families.add(match["family_id"])
        ranked.append(match)

    ambiguous = False
    if ranked:
        first = ranked[0]
        first_group = first["canonical_family"] or first["family_id"]
        competitors = [
            item
            for item in ranked[1:]
            if (item["canonical_family"] or item["family_id"]) != first_group
        ]
        if first["evidence_level"] == "strong":
            ambiguous = any(item["evidence_level"] == "strong" for item in competitors)
        elif first["evidence_level"] == "possible":
            ambiguous = (
                first["_full_signature"]
                and first["evidence"]["signature_family_count"] > 1
            ) or any(item["_full_signature"] for item in competitors)
        else:
            ambiguous = bool(competitors)
    status = "no_match"
    if ranked:
        status = "filename_only" if ranked[0]["evidence_level"] == "filename_only" else "match"
    for match in ranked:
        for key in (
            "_strong",
            "_full_signature",
            "_distinctive_hits",
            "_weighted_coverage",
            "_weighted_support",
        ):
            match.pop(key)
    return {
        "status": status,
        "ambiguous": ambiguous,
        "input": {"filename": filename},
        "matches": ranked[:top],
    }


def print_identify(result: dict[str, Any]) -> None:
    if not result["matches"]:
        print("No structural match found.")
        return
    top_level = result["matches"][0]["evidence_level"]
    if top_level == "filename_only":
        print("Filename-only candidates (weak evidence)")
    elif result["ambiguous"] or top_level == "possible":
        print("Possible matches" if result["ambiguous"] else "Possible match")
    else:
        print("Likely match")
    for index, match in enumerate(result["matches"], 1):
        evidence = match["evidence"]
        print(
            f"{index}. {match['family']} / {match['variant_id']} - "
            f"{evidence['anchor_coverage']} anchors "
            f"({_family_label(match['classification'])}; "
            f"{match['attribution_confidence']} confidence; {match['evidence_level']})"
        )
        if match["canonical_family"]:
            print(f"   Parent family: {match['canonical_family']}")
        found = []
        if evidence["filenames"]:
            found.append("filename " + ", ".join(evidence["filenames"]))
        if evidence["markers"]:
            found.append("markers " + ", ".join(evidence["markers"][:5]))
        if evidence["fields"]:
            found.append("fields " + ", ".join(evidence["fields"][:10]))
        print("   " + "; ".join(found))
        family_word = "family" if evidence["signature_family_count"] == 1 else "families"
        print(
            "   Catalog specificity: "
            f"{evidence['catalog_distinctive_hits']} distinctive anchor hit(s); "
            f"full signature occurs in {evidence['signature_family_count']} {family_word}"
        )
    print("\nStructural lead only; confirm it with the surrounding malware evidence.")


def _error(exc: CatalogError, *, rejected: bool = False) -> None:
    print(
        json.dumps(
            {"status": "rejected" if rejected else "error", "code": exc.code, "message": str(exc)},
            ensure_ascii=False,
            separators=(",", ":"),
        ),
        file=sys.stderr,
    )


def _configure_utf8_stdio() -> None:
    """Make Unicode catalog evidence usable on legacy Windows consoles."""

    for stream in (sys.stdout, sys.stderr):
        reconfigure = getattr(stream, "reconfigure", None)
        if not callable(reconfigure):
            continue
        try:
            reconfigure(encoding="utf-8", errors="replace")
        except (OSError, ValueError):
            # Embedded callers can expose already-detached or immutable streams.
            continue


def main(argv: list[str] | None = None) -> int:
    _configure_utf8_stdio()
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)
    validate_parser = commands.add_parser("validate", help="validate family JSON and samples")
    validate_parser.add_argument("root", nargs="?", type=Path, default=ROOT)
    build_parser = commands.add_parser("build", help="regenerate README files")
    build_parser.add_argument("--check", action="store_true")
    build_parser.add_argument("root", nargs="?", type=Path, default=ROOT)
    ingest_parser = commands.add_parser("ingest", help="ingest one CyStack research candidate")
    ingest_parser.add_argument("candidate", type=Path)
    ingest_parser.add_argument("root", nargs="?", type=Path, default=ROOT)
    identify_parser = commands.add_parser("identify", help="rank a local log against the catalog")
    identify_parser.add_argument("path", type=Path)
    identify_parser.add_argument("--root", type=Path, default=ROOT)
    identify_parser.add_argument("--top", type=int, default=5)
    identify_parser.add_argument("--json", action="store_true", dest="as_json")
    args = parser.parse_args(argv)
    try:
        if args.command == "validate":
            print(
                json.dumps({"status": "ok", **validate_catalog(args.root)}, separators=(",", ":"))
            )
        elif args.command == "build":
            changed = build(args.root, check=args.check)
            print(json.dumps({"status": "ok", "changed_paths": changed}, separators=(",", ":")))
        elif args.command == "ingest":
            print(
                json.dumps(
                    ingest(args.candidate, args.root), ensure_ascii=False, separators=(",", ":")
                )
            )
        else:
            result = identify(args.path, args.root, top=args.top)
            if args.as_json:
                print(json.dumps(result, ensure_ascii=False, indent=2))
            else:
                print_identify(result)
            return 0 if result["status"] == "match" else 1
        return 0
    except CatalogError as exc:
        _error(exc, rejected=args.command == "ingest")
        return 2 if args.command == "ingest" else 1
    except Exception as exc:  # keep CLI diagnostics machine-readable
        _error(CatalogError("internal", str(exc)))
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
