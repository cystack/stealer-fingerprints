# Contributing

Contributions that make an exported stealer log easier to recognize are welcome.

A useful family or variant contribution normally contains:

- a representative text sample in `samples/`;
- the filename used by the malware;
- stable banners or field labels used for matching;
- a public reference when assigning a known family name.

Samples should keep the original layout, field order, separators, spelling, and useful
malware/operator markers. Remove live passwords, cookies, session tokens, wallet secrets,
and direct victim identifiers. Do not submit malware executables, archives, browser databases,
or bulk account data.

Non-malware and generic operating-system output do not belong in this repository.

## Adding a known family manually

1. Add `families/<family>/family.json` and at least one file under
   `families/<family>/samples/`.
2. Add a fingerprint JSON under `families/<family>/fingerprints/`, or explain in the pull
   request why the sample is reference-only.
3. Run the build and validation commands below. Family pages and indexes are generated.

New family attribution is reviewed by a maintainer. If the malware family is not known yet,
add it as an unattributed format instead of inventing a product name.

For an unattributed format, save its four-key `fingerprint` signature object as JSON and
derive the stable core-based family ID and name instead of inventing either value:

```console
python tools/catalog.py provisional-id signature.json
```

Filename variants do not change this provisional identity.

## Automated candidates

Logmine and other trusted producers may submit one JSON object per line to the catalog tool.
Each event represents exactly one observed filename variant and one representative sample.
Declare at most one filename when publishing a new fingerprint; submit later filename variants
as separate events with their own sample. Every declared panel/banner literal must appear in
at least one uniquely linked representative sample; alternative marker layouts are separate
fingerprint variants. An exact/subset duplicate remains a no-op. A family's already-published,
unlinked sample may be adopted as its first fingerprint's representative sample only when the
content and case-insensitive logical filename are identical.

```json
{"event_type":"catalog_candidate","schema_version":"1.0","family":{"id":"vidar","name":"Vidar","classification":"known_family","attribution_confidence":"high"},"fingerprint":{"panel_brand":null,"banner_strings":[],"field_keys":["Operating System","User Name","HWID","IP","Computer Name"],"filenames":["information.txt"]},"sample":{"filename":"information.txt","content":"Operating System: Windows 11 Pro\nUser Name: [redacted]\nHWID: [redacted]\nIP: [redacted]\nComputer Name: [redacted]\n"}}
```

The catalog deduplicates the normalized fingerprint after the publisher fetches the latest
remote branch. A push race is retried from a fresh remote state; it is never resolved by
overwriting the branch.

Automated ingest runs in a disposable, single-writer worktree; Logmine discards that
worktree if any step fails.

The runtime accepts at most 32 banner strings, 128 field keys, and 32 filename patterns in
a signature. A JSONL line is limited to 1 MiB, a stream to 16 MiB, and a stream to 1,000
candidate events. Filename patterns may contain at most eight non-adjacent placeholders; a
placeholder name starts with a letter or digit and then uses only letters, digits, `_`, or `-`.
A representative sample remains limited to 128 KiB after UTF-8 encoding.

## Checks

```console
python tools/catalog.py build
python tools/catalog.py validate
python tools/catalog.py build --check
python -m unittest discover -s tests -v
```

`ingest` returns `0` for both a change and a duplicate, `2` for a rejected candidate, and `1`
for an operational error.
