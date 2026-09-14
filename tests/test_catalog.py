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

from tools import catalog

ROOT = Path(__file__).resolve().parents[1]
SAMPLE = "Fixture stealer marker\nMachine ID: <redacted>\n"


def _variant_id(parser: str, panel: str | None = None, layout: str | None = None) -> str:
    def identity(value: str | None) -> str:
        return " ".join(unicodedata.normalize("NFKC", value or "").casefold().split())

    module, class_name = parser.rsplit(".", 1)
    material = "\0".join(
        ("logmine-variant-v1", module, class_name, identity(panel), identity(layout))
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
        "related_families": [],
        "sources": ["https://example.test/research"],
        "variants": [],
    }


def _variant(
    parser: str = "logmine.ioc.parsers.fixture.FixtureParser",
    filename: str = "system-info.txt",
    *,
    panel: str | None = None,
    marker: str = "Fixture stealer marker",
    field: str = "Machine ID",
) -> dict:
    return {
        "id": _variant_id(parser, panel),
        "parser": parser,
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
        "source": "logmine_runtime",
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

    def test_variant_id_uses_exact_stable_contract(self) -> None:
        actual = catalog._expected_variant_id(
            "logmine.ioc.parsers.redline.RedlineParser", "RedLine", None
        )
        self.assertEqual(actual, "v_5ab9d955c734184e707e1231cec208c5")
        self.assertEqual(
            actual, _variant_id("logmine.ioc.parsers.redline.RedlineParser", "RedLine")
        )

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
            variant = _variant("logmine.ioc.parsers.fixture.ObservedBannerParser")
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
                "logmine.ioc.parsers.fixture.SecondParser",
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

    def test_ingest_rejects_notmalware_parser_under_normal_family(self) -> None:
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            family = _family()
            _write_family(root, family)
            variant = _variant(
                "logmine.ioc.parsers.not_malware.NotMalwareParser"
            )
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
                parser = f"logmine.ioc.parsers.fixture.CS{suffix}Parser"
                _install_variant(root, family, _variant(parser), SAMPLE)
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
            generic_variant = _variant("logmine.ioc.parsers.fixture.GenericParser")
            generic_variant["markers"] = []
            generic_variant["fields"] = ["CPU", "IP"]
            _install_variant(root, generic, generic_variant, "CPU: x\nIP: <IP>\n")

            specific = _family("specific-stealer", "Specific Stealer")
            specific_variant = _variant("logmine.ioc.parsers.fixture.SpecificParser")
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
            short_variant = _variant("logmine.ioc.parsers.fixture.ShortParser")
            short_variant["markers"] = ["[Software]"]
            short_variant["fields"] = []
            _install_variant(root, short, short_variant, shared_content)

            long = _family("long-signature", "Long Signature", "cystack_named")
            long_variant = _variant("logmine.ioc.parsers.fixture.LongParser")
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


if __name__ == "__main__":
    unittest.main()
