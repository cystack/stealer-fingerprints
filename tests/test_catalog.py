from __future__ import annotations

import contextlib
import hashlib
import io
import json
import tempfile
import unicodedata
import unittest
from pathlib import Path
from unittest import mock

import identify as identify_cli
from tools import catalog

ROOT = Path(__file__).resolve().parents[1]
SAMPLE = "Fixture stealer marker\nMachine ID: <redacted>\n"


def _variant_id(format_id: str, panel: str | None = None, layout: str | None = None) -> str:
    def identity(value: str | None) -> str:
        return " ".join(unicodedata.normalize("NFKC", value or "").casefold().split())

    material = "\0".join(
        ("test-fixture-variant-v1", format_id, identity(panel), identity(layout))
    )
    return "v_" + hashlib.sha256(material.encode()).hexdigest()[:32]


def _family(
    family_id: str = "fixture-family",
    name: str = "Fixture Family",
    classification: str = "known_family",
) -> dict:
    return {
        "id": family_id,
        "name": name,
        "classification": classification,
        "attribution_confidence": "medium",
        "description": "A test-only stealer log profile.",
        "aliases": [],
        "typical_targets": ["Browser data"],
        "detection_notes": "Confirm multiple structural anchors before attribution.",
        "attack_techniques": [],
        "localizations": {
            "vi": {
                "description": "Hồ sơ log stealer chỉ dùng cho kiểm thử.",
                "typical_targets": ["Dữ liệu trình duyệt"],
                "detection_notes": (
                    "Xác nhận nhiều dấu hiệu cấu trúc trước khi quy kết."
                ),
                "attack_techniques": [],
            }
        },
        "related_families": [],
        "sources": ["https://example.test/research"],
        "variants": [],
    }


def _variant(
    format_id: str = "fixture-format",
    filename: str = "system-info.txt",
    *,
    panel: str | None = None,
    marker: str = "Fixture stealer marker",
    field: str = "Machine ID",
) -> dict:
    return {
        "id": _variant_id(format_id, panel),
        "format_id": format_id,
        "filenames": [filename],
        "panel_brand": panel,
        "distribution_channel": None,
        "attribution_confidence": "medium",
        "markers": [marker],
        "fields": [field],
        "observations": 1,
    }


def _write_family(root: Path, family: dict) -> Path:
    path = root / "families" / family["id"] / "family.json"
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(family, indent=2) + "\n", encoding="utf-8")
    return path


def _install_variant(root: Path, family: dict, variant: dict, content: str) -> None:
    stored = dict(variant)
    filename = variant["filenames"][0]
    relative = Path("samples") / variant["id"] / filename
    data = content.encode()
    sample_path = root / "families" / family["id"] / relative
    sample_path.parent.mkdir(parents=True, exist_ok=True)
    sample_path.write_bytes(data)
    stored["sample"] = {
        "path": relative.as_posix(),
        "sha256": hashlib.sha256(data).hexdigest(),
        "source": "cystack_collection",
        "sanitized": True,
    }
    family["variants"].append(stored)
    _write_family(root, family)


def _write_candidate(
    root: Path,
    family: dict,
    variant: dict,
    *,
    filename: str = "system-info.txt",
    content: str = SAMPLE,
) -> Path:
    candidate = {
        "family": {key: value for key, value in family.items() if key != "variants"},
        "variant": variant,
        "sample": {"filename": filename, "content": content, "sanitized": True},
    }
    path = root / "candidate.json"
    path.write_text(json.dumps(candidate, indent=2), encoding="utf-8")
    return path


def _tree_state(root: Path) -> dict[str, tuple[str, bytes]]:
    state: dict[str, tuple[str, bytes]] = {}
    for path in sorted(root.rglob("*"), key=lambda item: item.as_posix()):
        relative = path.relative_to(root).as_posix()
        state[relative] = ("directory", b"") if path.is_dir() else ("file", path.read_bytes())
    return state


class CatalogTests(unittest.TestCase):
    def test_cli_configures_unicode_safe_windows_streams(self) -> None:
        class Stream:
            def __init__(self) -> None:
                self.options: dict[str, str] = {}

            def reconfigure(self, **options: str) -> None:
                self.options = options

        stdout = Stream()
        stderr = Stream()
        with (
            mock.patch.object(catalog.sys, "stdout", stdout),
            mock.patch.object(catalog.sys, "stderr", stderr),
        ):
            catalog._configure_utf8_stdio()

        self.assertEqual(stdout.options, {"encoding": "utf-8", "errors": "replace"})
        self.assertEqual(stderr.options, {"encoding": "utf-8", "errors": "replace"})

    def test_identify_entrypoint_prints_unicode_with_a_legacy_console(self) -> None:
        raw = io.BytesIO()
        stream = io.TextIOWrapper(raw, encoding="cp1252")
        result = {
            "status": "match",
            "ambiguous": False,
            "input": {"filename": "Info.txt"},
            "matches": [{"evidence": {"markers": ["RÔýĆløud"]}}],
        }
        try:
            with (
                mock.patch.object(identify_cli.sys, "stdout", stream),
                mock.patch.object(identify_cli, "identify", return_value=result),
            ):
                self.assertEqual(identify_cli.main(["Info.txt", "--json"]), 0)
                stream.flush()
            rendered = raw.getvalue().decode("utf-8")
        finally:
            stream.detach()

        self.assertIn("RÔýĆløud", rendered)

    def test_repository_validates_and_generated_docs_are_current(self) -> None:
        stats = catalog.validate_catalog(ROOT)
        self.assertGreater(stats["families"], 0)
        self.assertEqual(stats["variants"], stats["samples"])
        self.assertEqual(
            stats["families"],
            sum(
                stats[key]
                for key in (
                    "known_families",
                    "observed_self_labels",
                    "cystack_named",
                    "family_variants",
                    "aggregators",
                )
            ),
        )
        self.assertEqual(catalog.build(ROOT, check=True), [])

    def test_catalog_samples_keep_their_profile_in_the_top_three(self) -> None:
        """Catalog-relative self-consistency check, not a detection-accuracy claim."""

        for family_path in sorted((ROOT / "families").glob("*/family.json")):
            family = json.loads(family_path.read_text(encoding="utf-8"))
            for variant in family["variants"]:
                sample = family_path.parent / variant["sample"]["path"]
                with self.subTest(family=family["id"], variant=variant["id"]):
                    result = catalog.identify(sample, ROOT, top=3)
                    self.assertIn(
                        family["id"],
                        [match["family_id"] for match in result["matches"]],
                    )

    def test_empty_research_profile_is_valid(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            _write_family(root, _family())
            stats = catalog.validate_catalog(root)
            self.assertEqual((stats["families"], stats["variants"], stats["samples"]), (1, 0, 0))

    def test_vietnamese_localization_validates_and_renders(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family["description"] = "Profile for the `Machine ID:` layout."
            family["typical_targets"] = ["Saved `Browser Data`"]
            family["detection_notes"] = "Require the `Machine ID:` field."
            family["attack_techniques"] = [
                {"id": "T1555", "name": "Credentials from Password Stores"}
            ]
            family["localizations"]["vi"] = {
                "description": "Hồ sơ cho bố cục `Machine ID:`.",
                "typical_targets": ["`Browser Data` đã lưu"],
                "detection_notes": "Yêu cầu trường `Machine ID:`.",
                "attack_techniques": [
                    {"id": "T1555", "name": "Thông tin xác thực từ kho mật khẩu"}
                ],
            }
            _write_family(root, family)

            catalog.validate_catalog(root)
            catalog.build(root)
            readme = (root / "families" / family["id"] / "README.md").read_text(
                encoding="utf-8"
            )

            self.assertIn("## Overview / Tổng quan", readme)
            self.assertIn("Hồ sơ cho bố cục `Machine ID:`.", readme)
            self.assertIn("| Saved `Browser Data` | `Browser Data` đã lưu |", readme)
            self.assertIn(
                "| [T1555](https://attack.mitre.org/techniques/T1555/) | "
                "Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |",
                readme,
            )

    def test_vietnamese_localization_is_required(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family.pop("localizations")
            _write_family(root, family)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "shape")
            self.assertIn("localizations", str(raised.exception))

    def test_localization_requires_aligned_fields_and_literals(self) -> None:
        cases = []

        missing_field = _family()
        missing_field["localizations"]["vi"].pop("detection_notes")
        cases.append(("missing-field", missing_field, "missing: detection_notes"))

        target_drift = _family()
        target_drift["localizations"]["vi"]["typical_targets"] = []
        cases.append(("target-count", target_drift, "align one-to-one"))

        technique_drift = _family()
        technique_drift["attack_techniques"] = [
            {"id": "T1555", "name": "Credentials from Password Stores"}
        ]
        technique_drift["localizations"]["vi"]["attack_techniques"] = [
            {"id": "T1005", "name": "Dữ liệu từ hệ thống cục bộ"}
        ]
        cases.append(("technique-id", technique_drift, "IDs and order"))

        literal_drift = _family()
        literal_drift["description"] = "Profile for `Machine ID:`."
        literal_drift["localizations"]["vi"]["description"] = (
            "Hồ sơ cho trường `Mã máy:`."
        )
        cases.append(("inline-code", literal_drift, "inline-code literals"))

        double_literal_drift = _family()
        double_literal_drift["description"] = "Profile for ``Machine ID:``."
        double_literal_drift["localizations"]["vi"]["description"] = (
            "Hồ sơ không còn literal kỹ thuật."
        )
        cases.append(
            ("double-inline-code", double_literal_drift, "inline-code literals")
        )

        multiline_literal = _family()
        multiline_literal["description"] = "Profile for `Machine\nID:`."
        multiline_literal["localizations"]["vi"]["description"] = (
            "Hồ sơ cho `Machine\nID:`."
        )
        cases.append(
            ("multiline-inline-code", multiline_literal, "multiline inline-code")
        )

        for label, family, message in cases:
            with self.subTest(case=label), tempfile.TemporaryDirectory() as temporary:
                root = Path(temporary)
                _write_family(root, family)
                with self.assertRaises(catalog.CatalogError) as raised:
                    catalog.validate_catalog(root)
                self.assertIn(message, str(raised.exception))

    def test_attack_names_are_consistent_across_locales_and_profiles(self) -> None:
        for localized_drift in (False, True):
            with (
                self.subTest(localized_drift=localized_drift),
                tempfile.TemporaryDirectory() as temporary,
            ):
                root = Path(temporary)
                first = _family()
                second = _family("second-family", "Second Family")
                for family in (first, second):
                    family["attack_techniques"] = [
                        {"id": "T1555", "name": "Credentials from Password Stores"}
                    ]
                    family["localizations"]["vi"]["attack_techniques"] = [
                        {"id": "T1555", "name": "Thông tin xác thực từ kho mật khẩu"}
                    ]
                if localized_drift:
                    second["localizations"]["vi"]["attack_techniques"][0]["name"] = (
                        "Tên tiếng Việt không nhất quán"
                    )
                else:
                    second["attack_techniques"][0]["name"] = "Different English name"
                _write_family(root, first)
                _write_family(root, second)

                with self.assertRaises(catalog.CatalogError) as raised:
                    catalog.validate_catalog(root)

                self.assertEqual(raised.exception.code, "localization")
                self.assertIn("names T1555", str(raised.exception))

    def test_new_attack_id_requires_reviewed_vietnamese_terminology(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family["attack_techniques"] = [
                {"id": "T9999", "name": "Future Technique"}
            ]
            family["localizations"]["vi"]["attack_techniques"] = [
                {"id": "T9999", "name": "Kỹ thuật tương lai"}
            ]
            _write_family(root, family)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

        self.assertEqual(raised.exception.code, "localization")
        self.assertIn("no reviewed Vietnamese name for T9999", str(raised.exception))

    def test_observed_self_label_and_external_context_render_separately(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            peer = _family("known-peer", "Known Peer")
            observed = _family(
                "observed-banner", "Observed Banner", "observed_self_label"
            )
            observed["attribution_confidence"] = "unknown"
            observed["related_families"] = ["known-peer"]
            observed["related_external"] = ["External Research Name"]
            observed["observed_channels"] = ["https://t.me/observed_channel"]
            _write_family(root, peer)
            _write_family(root, observed)

            stats = catalog.validate_catalog(root)
            changed = catalog.build(root)
            profile_readme = (root / "families" / "observed-banner" / "README.md").read_text(
                encoding="utf-8"
            )
            root_readme = (root / "README.md").read_text(encoding="utf-8")

            self.assertEqual(stats["observed_self_labels"], 1)
            self.assertIn("README.md", changed)
            self.assertIn(
                "## Related catalog profiles\n\n- [Known Peer](../known-peer/)",
                profile_readme,
            )
            self.assertIn(
                "## Related external families\n\n- `External Research Name`",
                profile_readme,
            )
            self.assertIn(
                "## Observed distribution channels\n\n- <https://t.me/observed_channel>",
                profile_readme,
            )
            self.assertIn("### Observed self-labels (1)", root_readme)

    def test_observed_self_label_rejects_attribution_overclaim(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family("observed-banner", "Observed Banner", "observed_self_label")
            family["attribution_confidence"] = "high"
            _write_family(root, family)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "shape")
            self.assertIn("must be low or unknown", str(raised.exception))

    def test_observed_self_label_rejects_variant_attribution_overclaim(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family("observed-banner", "Observed Banner", "observed_self_label")
            family["attribution_confidence"] = "unknown"
            variant = _variant()
            variant["attribution_confidence"] = "high"
            _install_variant(root, family, variant, SAMPLE)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "shape")
            self.assertIn("variants[0].attribution_confidence", str(raised.exception))

    def test_related_families_require_exact_existing_ids(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            peer = _family("known-peer", "Known Peer")
            family = _family()
            family["related_families"] = ["knownpeer"]
            _write_family(root, peer)
            _write_family(root, family)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "link")
            self.assertIn("links unknown family knownpeer", str(raised.exception))

    def test_related_external_rejects_an_internal_profile_id(self) -> None:
        for reference in ("known-peer", "Known Peer", "knownpeer", "Peer Alias"):
            with self.subTest(reference=reference), tempfile.TemporaryDirectory() as temporary:
                root = Path(temporary)
                peer = _family("known-peer", "Known Peer")
                peer["aliases"] = ["Peer Alias"]
                family = _family()
                family["related_external"] = [reference]
                _write_family(root, peer)
                _write_family(root, family)

                with self.assertRaises(catalog.CatalogError) as raised:
                    catalog.validate_catalog(root)

                self.assertEqual(raised.exception.code, "link")
                self.assertIn("as related_external", str(raised.exception))

    def test_observed_channels_require_public_http_urls(self) -> None:
        invalid_urls = (
            "t.me/channel",
            "ftp://example.test/channel",
            "https://user:secret@example.test/channel",
            "https://[invalid",
            "https://t.me/",
        )
        for url in invalid_urls:
            with self.subTest(url=url), tempfile.TemporaryDirectory() as temporary:
                root = Path(temporary)
                family = _family()
                family["observed_channels"] = [url]
                _write_family(root, family)

                with self.assertRaises(catalog.CatalogError) as raised:
                    catalog.validate_catalog(root)

                self.assertEqual(raised.exception.code, "shape")
                self.assertTrue(
                    "absolute public HTTP(S) URL" in str(raised.exception)
                    or "Telegram channel or invite" in str(raised.exception)
                )

    def test_family_sources_require_absolute_http_urls(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family["sources"] = ["@operator_handle"]
            _write_family(root, family)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "shape")
            self.assertIn("absolute public HTTP(S) URL", str(raised.exception))

    def test_known_family_requires_an_independent_source(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family["sources"] = []
            family["observed_channels"] = ["https://t.me/operator_channel"]
            _write_family(root, family)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "source")
            self.assertIn("independent research source", str(raised.exception))

    def test_sources_and_channels_must_not_repeat_a_url(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family["sources"] = ["https://example.test/research/"]
            family["observed_channels"] = ["https://example.test/research"]
            _write_family(root, family)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "duplicate")
            self.assertIn("across sources and observed_channels", str(raised.exception))

    def test_variant_id_is_an_opaque_stable_identifier(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            variant = _variant()
            variant["id"] = "v_" + "a" * 32
            _install_variant(root, family, variant, SAMPLE)

            stats = catalog.validate_catalog(root)

            self.assertEqual(stats["variants"], 1)

    def test_duplicate_ingest_is_a_no_op(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            variant = _variant()
            content = SAMPLE
            _install_variant(root, family, variant, content)
            family_path = root / "families" / family["id"] / "family.json"
            before = family_path.read_bytes()
            candidate = _write_candidate(root, family, variant, content=content)

            result = catalog.ingest(candidate, root)

            self.assertEqual(result["status"], "no_change")
            self.assertEqual(result["changed_paths"], [])
            self.assertEqual(family_path.read_bytes(), before)
            self.assertEqual(len(list((family_path.parent / "samples").rglob("*.*"))), 1)

    def test_ingest_deduplicates_by_public_format_identity(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            stored_variant = _variant()
            _install_variant(root, family, stored_variant, SAMPLE)
            candidate_variant = dict(stored_variant)
            candidate_variant["id"] = "v_" + "b" * 32
            candidate = _write_candidate(
                root,
                family,
                candidate_variant,
                content=SAMPLE + "Distinct observation\n",
            )

            result = catalog.ingest(candidate, root)

            self.assertEqual(result["status"], "no_change")
            self.assertEqual(result["variant_id"], stored_variant["id"])
            self.assertEqual(result["changed_paths"], [])

    def test_ingest_deduplicates_same_family_sample_hash_after_identity_drift(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            stored_variant = _variant("first-format")
            _install_variant(root, family, stored_variant, SAMPLE)
            candidate_variant = _variant("second-format")
            candidate = _write_candidate(root, family, candidate_variant)

            result = catalog.ingest(candidate, root)
            stored = json.loads(
                (root / "families" / family["id"] / "family.json").read_text(encoding="utf-8")
            )

            self.assertEqual(result["status"], "no_change")
            self.assertEqual(result["variant_id"], stored_variant["id"])
            self.assertEqual([item["id"] for item in stored["variants"]], [stored_variant["id"]])
            self.assertEqual(len(list((root / "families").glob("*/samples/*/*"))), 1)

    def test_ingest_rejects_sample_hash_owned_by_another_family(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            first_family = _family()
            _install_variant(root, first_family, _variant("first-format"), SAMPLE)
            second_family = _family("second-family", "Second Family")
            _write_family(root, second_family)
            candidate = _write_candidate(
                root,
                second_family,
                _variant("second-format"),
            )
            before = _tree_state(root)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "collision")
            self.assertIn("already belongs to fixture-family", str(raised.exception))
            self.assertEqual(_tree_state(root), before)

    def test_ingest_rejects_id_collision_with_different_format_identity(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            stored_variant = _variant()
            _install_variant(root, family, stored_variant, SAMPLE)
            candidate_variant = dict(stored_variant)
            candidate_variant["format_id"] = "different-format"
            candidate = _write_candidate(
                root,
                family,
                candidate_variant,
                content=SAMPLE + "Distinct observation\n",
            )

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "collision")
            self.assertIn("different identity", str(raised.exception))

    def test_repository_rejects_duplicate_public_format_identity(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            first = _variant()
            second = dict(first)
            second["id"] = "v_" + "c" * 32
            _install_variant(root, family, first, SAMPLE)
            _install_variant(root, family, second, SAMPLE)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "duplicate")
            self.assertIn("format/panel/layout identity", str(raised.exception))

    def test_repository_rejects_variant_id_reused_across_families(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            first_family = _family()
            second_family = _family("second-family", "Second Family")
            first = _variant("first-format")
            second = _variant("second-format")
            second["id"] = first["id"]
            _install_variant(root, first_family, first, SAMPLE)
            _install_variant(root, second_family, second, SAMPLE + "Second sample\n")

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "duplicate")
            self.assertIn("variant id", str(raised.exception))
            self.assertIn("shared by", str(raised.exception))

    def test_repository_rejects_format_id_reused_across_families(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            first_family = _family()
            second_family = _family("second-family", "Second Family")
            _install_variant(
                root,
                first_family,
                _variant("shared-format", panel="First Panel"),
                SAMPLE,
            )
            _install_variant(
                root,
                second_family,
                _variant("shared-format", panel="Second Panel"),
                SAMPLE + "Second sample\n",
            )

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "duplicate")
            self.assertIn("format id shared-format is shared", str(raised.exception))

    def test_repository_rejects_duplicate_sample_hash_across_families(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            first_family = _family()
            second_family = _family("second-family", "Second Family")
            _install_variant(root, first_family, _variant("first-format"), SAMPLE)
            _install_variant(root, second_family, _variant("second-format"), SAMPLE)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "duplicate")
            self.assertIn("sample SHA-256 is shared", str(raised.exception))

    def test_ingest_rejects_cross_family_variant_id_reuse(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            first_family = _family()
            second_family = _family("second-family", "Second Family")
            first = _variant("first-format")
            _install_variant(root, first_family, first, SAMPLE)
            _write_family(root, second_family)
            second = _variant("second-format")
            second["id"] = first["id"]
            candidate = _write_candidate(
                root,
                second_family,
                second,
                content=SAMPLE + "Second sample\n",
            )

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "collision")
            self.assertIn("already belongs to fixture-family", str(raised.exception))

    def test_ingest_rejects_cross_family_format_id_reuse(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            first_family = _family()
            second_family = _family("second-family", "Second Family")
            _install_variant(
                root,
                first_family,
                _variant("shared-format", panel="First Panel"),
                SAMPLE,
            )
            _write_family(root, second_family)
            candidate = _write_candidate(
                root,
                second_family,
                _variant("shared-format", panel="Second Panel"),
                content=SAMPLE + "Second sample\n",
            )

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "collision")
            self.assertIn("format id shared-format already belongs", str(raised.exception))

    def test_new_ingest_adds_exactly_one_variant_and_sample(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            variant = _variant()
            candidate = _write_candidate(root, family, variant)

            result = catalog.ingest(candidate, root)
            stats = catalog.validate_catalog(root)
            stored = json.loads(
                (root / "families" / family["id"] / "family.json").read_text(encoding="utf-8")
            )

            self.assertEqual(result["status"], "changed")
            self.assertEqual((result["added"], result["samples_added"]), (1, 1))
            self.assertEqual((stats["variants"], stats["samples"]), (1, 1))
            self.assertEqual([item["id"] for item in stored["variants"]], [variant["id"]])
            self.assertEqual(len(list((root / "families").glob("*/samples/*/*"))), 1)

    def test_existing_family_keeps_public_metadata_when_ingesting_new_variant(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family["description"] = "Authoritative public research narrative."
            _write_family(root, family)
            incoming = json.loads(json.dumps(family))
            incoming["description"] = "Older upstream narrative."
            incoming["detection_notes"] = "Older upstream detection notes."
            variant = _variant(
                "second-format",
                marker="Second stealer marker",
                field="Second ID",
            )
            candidate = _write_candidate(
                root,
                incoming,
                variant,
                content="Second stealer marker\nSecond ID: <redacted>\n",
            )

            result = catalog.ingest(candidate, root)
            stored = json.loads(
                (root / "families" / family["id"] / "family.json").read_text(encoding="utf-8")
            )

            self.assertEqual(result["status"], "changed")
            self.assertEqual(stored["description"], "Authoritative public research narrative.")
            self.assertEqual(stored["detection_notes"], family["detection_notes"])
            self.assertEqual(stored["localizations"], family["localizations"])
            self.assertEqual([item["id"] for item in stored["variants"]], [variant["id"]])

    def test_ingest_preserves_observed_label_relationship_and_channel_fields(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            _write_family(root, _family())
            family = _family("observed-banner", "Observed Banner", "observed_self_label")
            family["attribution_confidence"] = "unknown"
            family["related_families"] = ["fixture-family"]
            family["related_external"] = ["External Research Name"]
            family["observed_channels"] = ["https://t.me/observed_channel"]
            family["sources"] = []
            variant = _variant("observed-banner-format")
            variant["attribution_confidence"] = "unknown"
            candidate = _write_candidate(root, family, variant)

            result = catalog.ingest(candidate, root)
            stored = json.loads(
                (root / "families" / family["id"] / "family.json").read_text(encoding="utf-8")
            )

            self.assertEqual(result["status"], "changed")
            self.assertEqual(stored["classification"], "observed_self_label")
            self.assertEqual(stored["related_families"], ["fixture-family"])
            self.assertEqual(stored["related_external"], ["External Research Name"])
            self.assertEqual(stored["observed_channels"], ["https://t.me/observed_channel"])

    def test_ingest_rejects_unknown_top_level_candidate_fields(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            candidate = _write_candidate(root, family, _variant())
            value = json.loads(candidate.read_text(encoding="utf-8"))
            value["schema_version"] = "legacy"
            candidate.write_text(json.dumps(value, indent=2), encoding="utf-8")
            before = _tree_state(root)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("unknown fields: schema_version", str(raised.exception))
            self.assertEqual(_tree_state(root), before)

    def test_ingest_rejects_internal_implementation_field(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            candidate = _write_candidate(root, family, _variant())
            value = json.loads(candidate.read_text(encoding="utf-8"))
            value["variant"]["parser"] = "internal.package.Detector"
            candidate.write_text(json.dumps(value, indent=2), encoding="utf-8")

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("unknown fields: parser", str(raised.exception))

    def test_existing_family_ingest_rejects_unknown_metadata_field(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            candidate = _write_candidate(root, family, _variant())
            value = json.loads(candidate.read_text(encoding="utf-8"))
            value["family"]["internal_note"] = "not part of the public record"
            candidate.write_text(json.dumps(value, indent=2), encoding="utf-8")

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("unknown fields: internal_note", str(raised.exception))

    def test_ingest_requires_explicit_sanitized_provenance(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            candidate = _write_candidate(root, family, _variant())
            value = json.loads(candidate.read_text(encoding="utf-8"))
            del value["sample"]["sanitized"]
            candidate.write_text(json.dumps(value, indent=2), encoding="utf-8")
            before = _tree_state(root)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("sanitized must be explicitly true", str(raised.exception))
            self.assertEqual(_tree_state(root), before)

    def test_ingest_rolls_back_generated_files_after_partial_build_failure(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _install_variant(root, family, _variant(), SAMPLE)
            catalog.build(root)
            second = _variant(
                "second-format",
                marker="Second stealer marker",
                field="Second ID",
            )
            candidate = _write_candidate(
                root,
                family,
                second,
                content="Second stealer marker\nSecond ID: <redacted>\n",
            )
            before = _tree_state(root)
            original_atomic_write = catalog._atomic_write
            failure_injected = False

            def fail_on_family_readme(path: Path, data: bytes) -> None:
                nonlocal failure_injected
                if path == root / "families" / family["id"] / "README.md" and not failure_injected:
                    failure_injected = True
                    raise OSError("simulated generated-file write failure")
                original_atomic_write(path, data)

            with mock.patch.object(catalog, "_atomic_write", fail_on_family_readme):
                with self.assertRaisesRegex(OSError, "simulated generated-file write failure"):
                    catalog.ingest(candidate, root)

            self.assertTrue(failure_injected)
            self.assertEqual(_tree_state(root), before)

    def test_ingest_rejects_a_sample_filename_outside_variant_patterns(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            family_path = _write_family(root, family)
            before = family_path.read_bytes()
            candidate = _write_candidate(root, family, _variant(), filename="other.txt")

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("does not match", str(raised.exception))
            self.assertEqual(family_path.read_bytes(), before)

    def test_ingest_rejects_notmalware_identity(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            _write_family(root, _family())
            not_malware = _family("not-malware", "NotMalware")
            candidate = _write_candidate(root, not_malware, _variant())

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("not publishable", str(raised.exception))

    def test_ingest_rejects_benign_format_under_normal_family(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            variant = _variant("not-malware-format")
            candidate = _write_candidate(root, family, variant)

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "benign")
            self.assertIn("benign", str(raised.exception))

    def test_matcher_marks_filename_only_cystack_candidates_as_ambiguous(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            for suffix in ("Alpha", "Beta"):
                family = _family(f"cs-{suffix.lower()}", f"CS{suffix}", "cystack_named")
                format_id = f"cs-{suffix.lower()}-format"
                _install_variant(root, family, _variant(format_id), SAMPLE)
            probe = root / "system-info.txt"
            probe.write_text("No structural anchors in this file.\n", encoding="utf-8")

            result = catalog.identify(probe, root)
            output = io.StringIO()
            with contextlib.redirect_stdout(output):
                catalog.print_identify(result)

            self.assertEqual(result["status"], "filename_only")
            self.assertTrue(result["ambiguous"])
            self.assertEqual(len(result["matches"]), 2)
            self.assertTrue(
                all(match["evidence_level"] == "filename_only" for match in result["matches"])
            )
            self.assertTrue(all(m["classification"] == "cystack_named" for m in result["matches"]))
            self.assertIn("Filename-only candidates (weak evidence)", output.getvalue())
            self.assertIn("CyStack tracking name", output.getvalue())

    def test_matcher_unique_marker_beats_generic_field_signature(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            generic = _family("generic-layout", "Generic Layout", "cystack_named")
            generic_variant = _variant("generic-format")
            generic_variant["markers"] = []
            generic_variant["fields"] = ["CPU", "IP"]
            _install_variant(root, generic, generic_variant, "CPU: x\nIP: <IP>\n")

            specific = _family("specific-stealer", "Specific Stealer")
            specific_variant = _variant("specific-format")
            specific_variant["markers"] = ["Unique stealer banner"]
            specific_variant["fields"] = []
            _install_variant(
                root,
                specific,
                specific_variant,
                "Unique stealer banner\nCPU: x\nIP: <IP>\n",
            )
            probe = root / "renamed.log"
            probe.write_text("Unique stealer banner\nCPU: y\nIP: <IP>\n", encoding="utf-8")

            result = catalog.identify(probe, root)

            self.assertEqual(result["matches"][0]["family_id"], "specific-stealer")
            self.assertEqual(result["matches"][0]["evidence_level"], "strong")
            self.assertEqual(result["matches"][0]["evidence"]["signature_family_count"], 1)
            self.assertEqual(result["matches"][1]["evidence_level"], "possible")

    def test_matcher_keeps_shared_contained_signatures_ambiguous(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            shared_content = "[Software]\nMicrosoft Visual C++\n"
            short = _family("short-signature", "Short Signature", "cystack_named")
            short_variant = _variant("short-format")
            short_variant["markers"] = ["[Software]"]
            short_variant["fields"] = []
            _install_variant(root, short, short_variant, shared_content)

            long = _family("long-signature", "Long Signature", "cystack_named")
            long_variant = _variant("long-format")
            long_variant["markers"] = ["[Software]", "Microsoft Visual C++"]
            long_variant["fields"] = []
            _install_variant(root, long, long_variant, shared_content)
            probe = root / "renamed.log"
            probe.write_text(shared_content, encoding="utf-8")

            result = catalog.identify(probe, root)

            self.assertTrue(result["ambiguous"])
            self.assertTrue(
                all(match["evidence_level"] == "possible" for match in result["matches"])
            )
            self.assertTrue(
                all(
                    match["evidence"]["signature_family_count"] == 2
                    for match in result["matches"]
                )
            )

    def test_matcher_marks_a_full_but_nonunique_signature_ambiguous(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            short = _family("short-signature", "Short Signature", "cystack_named")
            short_variant = _variant("short-format")
            short_variant["markers"] = ["Shared marker"]
            short_variant["fields"] = []
            _install_variant(
                root,
                short,
                short_variant,
                "Shared marker\nExtra: value\n",
            )

            detailed = _family(
                "detailed-signature", "Detailed Signature", "cystack_named"
            )
            detailed_variant = _variant("detailed-format")
            detailed_variant["markers"] = ["Shared marker"]
            detailed_variant["fields"] = ["Extra"]
            _install_variant(
                root,
                detailed,
                detailed_variant,
                "Shared marker\nExtra: value\n",
            )
            probe = root / "renamed.log"
            probe.write_text("Shared marker\n", encoding="utf-8")

            result = catalog.identify(probe, root)

            self.assertEqual(result["matches"][0]["family_id"], "short-signature")
            self.assertEqual(result["matches"][0]["evidence_level"], "possible")
            self.assertEqual(
                result["matches"][0]["evidence"]["signature_family_count"], 2
            )
            self.assertTrue(result["ambiguous"])

    def test_ingest_rejects_declared_evidence_missing_from_sample(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            candidate = _write_candidate(
                root,
                family,
                _variant(),
                content="Unrelated: text\n",
            )

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("declared evidence", str(raised.exception))

    def test_field_labels_ignore_art_comments_urls_and_drive_paths(self) -> None:
        content = "\n".join(
            (
                "|::|\\:::: ASCII art",
                "/::::\\ banner",
                "ROYCLOUD:::: banner",
                "< Admin : @operator >",
                "# BUY STEALER - https://t.me/example",
                "# Telegram: operator",
                "path: >-",
                "  C:/Users/<USER>/sample.exe",
                "- CPU: Example processor",
                "| Machine ID: example |",
                '  \"PcName\": \"<HOST>\",',
                "👑Build: example",
                ".NET Runtime: 4.8",
                "– Business: 1",
                "IPv4/IPv6 Mode: dual",
                "edition_id=Professional",
            )
        )

        self.assertEqual(
            catalog._field_labels(content),
            {
                ".net runtime",
                "– business",
                "cpu",
                "edition_id",
                "ipv4/ipv6 mode",
                "machine id",
                "path",
                "pcname",
                "👑build",
            },
        )

    def test_ingest_rejects_non_structural_declared_fields(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            variant = _variant()
            variant["fields"] = ["|", "C", "BUY STEALER - https"]
            candidate = _write_candidate(
                root,
                family,
                variant,
                content=(
                    "Fixture stealer marker\n"
                    "|:::::::::/ ASCII art\n"
                    "# BUY STEALER - https://t.me/example\n"
                    "path: >-\n"
                    "  C:/Users/<USER>/sample.exe\n"
                ),
            )

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.ingest(candidate, root)

            self.assertEqual(raised.exception.code, "candidate")
            self.assertIn("missing field labels", str(raised.exception))

    def test_repository_rejects_non_text_sample(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            variant = _variant()
            _install_variant(root, family, variant, SAMPLE)
            sample = next((root / "families").glob("*/samples/*/*"))
            binary = b"Fixture stealer marker\nMachine ID: x\n\x00binary"
            sample.write_bytes(binary)
            family_path = root / "families" / family["id"] / "family.json"
            stored = json.loads(family_path.read_text(encoding="utf-8"))
            stored["variants"][0]["sample"]["sha256"] = hashlib.sha256(binary).hexdigest()
            family_path.write_text(json.dumps(stored, indent=2) + "\n", encoding="utf-8")

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "sample")
            self.assertIn("binary/control data", str(raised.exception))

    def test_repository_requires_explicit_sanitized_provenance(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _install_variant(root, family, _variant(), SAMPLE)
            family_path = root / "families" / family["id"] / "family.json"
            stored = json.loads(family_path.read_text(encoding="utf-8"))
            del stored["variants"][0]["sample"]["sanitized"]
            family_path.write_text(json.dumps(stored, indent=2) + "\n", encoding="utf-8")

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "shape")
            self.assertIn("sanitized", str(raised.exception))

    def test_repository_requires_cystack_collection_provenance(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _install_variant(root, family, _variant(), SAMPLE)
            family_path = root / "families" / family["id"] / "family.json"
            stored = json.loads(family_path.read_text(encoding="utf-8"))
            stored["variants"][0]["sample"]["source"] = "unknown_collection"
            family_path.write_text(json.dumps(stored, indent=2) + "\n", encoding="utf-8")

            with self.assertRaises(catalog.CatalogError) as raised:
                catalog.validate_catalog(root)

            self.assertEqual(raised.exception.code, "provenance")
            self.assertIn("cystack_collection", str(raised.exception))


if __name__ == "__main__":
    unittest.main()
