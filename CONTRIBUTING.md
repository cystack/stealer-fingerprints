# Contributing

Contributions that make a stealer log format easier to understand or identify are welcome.

Each family lives at `families/<id>/family.json`. Add a variant only when it is backed by one
representative log sample under that family's `samples/` directory. Keep the original layout,
field order, spelling, separators, and useful malware or panel markers. Remove live credentials,
cookies, tokens, wallet secrets, and direct victim identifiers.

Do not create a placeholder variant or synthetic sample just to make a profile look complete. A
documented research profile may keep an empty `variants` array until CyStack Threat Intelligence
retains a real sample. When a sample is present, it must still satisfy the format and detection
anchors named by the variant.

The five classifications have deliberately different meanings:

- `known_family`: the family name is supported by public threat intelligence.
- `observed_self_label`: the name is printed by an observed log or panel, but independent
  research has not yet established it as a canonical malware family.
- `cystack_named`: CyStack assigned a stable tracking name to an observed format that has not
  been attributed confidently elsewhere.
- `family_variant`: a former CyStack tracking name now linked to a known parent family.
- `aggregator`: a distributor or panel grouping that can contain more than one family.

## Languages

The top-level `description`, `typical_targets`, `detection_notes`, and
`attack_techniques` fields are the canonical English record. Every family also carries a
complete Vietnamese overlay under the BCP 47 language tag `localizations.vi`:

```json
{
  "description": "English research narrative.",
  "typical_targets": ["Browser saved credentials"],
  "detection_notes": "English recognition guidance.",
  "attack_techniques": [{"id": "T1555", "name": "Credentials from Password Stores"}],
  "localizations": {
    "vi": {
      "description": "Nội dung nghiên cứu bằng tiếng Việt.",
      "typical_targets": ["Thông tin xác thực đã lưu trong trình duyệt"],
      "detection_notes": "Hướng dẫn nhận diện bằng tiếng Việt.",
      "attack_techniques": [{"id": "T1555", "name": "Thông tin xác thực từ kho mật khẩu"}]
    }
  }
}
```

Keep all four localized fields present. Target entries and ATT&CK techniques must remain in
the same order as the English record, and ATT&CK IDs must be identical. Preserve text inside
backticks exactly; those literals are filenames, field labels, paths, commands, or malware and
panel markers rather than prose to translate. Proper names, IDs, URLs, source links, aliases,
relationships, variant evidence, and samples are language-neutral catalog data and must not be
copied into the localization block.

Vietnamese ATT&CK names use the reviewed catalog glossary in `tools/catalog.py`; they are not
free-form machine translations. When a profile introduces a new technique ID, add and review
its Vietnamese name in that glossary before publishing the profile.

Do not replace an unattributed format with a third-party family name without evidence. Do not
add benign files, malware binaries, archives, browser databases, or bulk credential data.

Use exact existing profile IDs in `related_families`. Put names that are useful research context
but have no profile in this catalog in `related_external`. Keep threat-research references in
`sources`; put observed Telegram or operator URLs in `observed_channels`.

Run the checks before opening a pull request:

```console
python tools/catalog.py validate
python tools/catalog.py build --check
```
