# Contributing

By contributing, you agree to [DATA_POLICY.md](DATA_POLICY.md). Do not open an issue or pull request containing observed logs or private evidence.

## Candidate JSONL

Automation may submit one JSON object per line. The only accepted shape is defined by [`schemas/candidate.schema.json`](schemas/candidate.schema.json):

```json
{"event_type":"catalog_candidate","schema_version":"1.0","family":{"id":"vidar","name":"Vidar","classification":"known_family","attribution_confidence":"high"},"fingerprint":{"panel_brand":null,"banner_strings":[],"field_keys":["Operating System","User Name"],"filenames":["information.txt"]}}
```

The example above is synthetic structure. Do not add values, timestamps, source identifiers, counts, channels, or extra properties.

`panel_brand` and `banner_strings` mean exact, stable literals present in the exported text—not an analyst label, operator name, parser description, or distribution channel. Use `null`/an empty array when no literal has been verified. `field_keys` are labels only, never key/value lines. Filenames must be stable basenames without paths or dynamic victim/host tokens.

Run:

```console
python tools/catalog.py ingest --events candidates.jsonl
python tools/catalog.py validate
python tools/catalog.py build --check
python -m unittest discover -s tests -v
```

`ingest` is idempotent. It returns exit code `0` for both `changed` and `no_change`; candidate or privacy rejection returns `2`; an operational failure returns `1`. Standard output contains one JSON result. Rejections are written as JSON to standard error and no candidate files are written.

The ingest command deliberately performs no Git/network operation. Multi-worker publishers must start from a freshly fetched worktree, rebase or fast-forward before ingest, and retry from a fresh remote state after a non-fast-forward push. Never resolve a catalog race by overwriting the remote branch.

New `known_family` entries require manual curator review and public attribution evidence. Provisional, low-confidence, and unknown-confidence events are manual-review only. The CLI understands deterministic neutral provisional identities so reviewed imports remain idempotent, but unattended publishers must submit only existing `known_family` entries explicitly opted in by their parser. Historical tracking labels are not confirmed family names.

## Review checklist

- Confirm every field is structural and necessary.
- Confirm there are no values derived from observed people, systems, or collections.
- Confirm family classification and confidence are supportable.
- Confirm the fingerprint ID matches its canonical content.
- Review generated YARA as experimental log-text classification, not executable detection.
- Run all validation and tests.

Fingerprint documents are immutable. Correcting fingerprint content creates a new content ID and removes the obsolete document in a reviewed change.
