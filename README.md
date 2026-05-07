# Stealer Fingerprints

Public catalog of malware family fingerprints for stealer logs. Each entry documents a stealer family with its banner strings, field signatures, a sanitized sample, and YARA rules ready to drop into a detection pipeline.

Maintained by [CyStack](https://cystack.net) threat intelligenge team.

## Layout

```
families/
  <family-name>/
    README.md       Description, variants, detection guidance
    rules.yar       YARA rules per variant
    sample.txt      One sanitized sample log
    variants.json   Machine-readable variant list
```

The top-level [`README.md`](README.md) above also has a table of all families with their variant counts.

## How to use

**Incident response.** Grep the family pages for any distinctive banner string you observed in a captured log. Match it against the `rules.yar` of the suspected family to confirm.

**Detection engineering.** Import any family's `rules.yar` into your YARA scanner of choice. Each rule fires on either a unique banner string or the family's full observed field key set. Tune the threshold at the use site for low false positives.

**Threat intelligence.** Cross-reference variants by alias, MITRE ATT&CK technique, or reference link.

## Sample data

Sample logs in this repository are sanitized before publication. Email addresses, URLs, IP addresses, computer names, hardware ids, and other identifying values are replaced with placeholders such as `<email>` or `<redacted>`. The fingerprint structure (banners, field labels, overall layout) is preserved so the samples remain useful for analyst review and YARA tuning.

## Contributing

Pull requests are welcome for:

* New variants of an existing family (a `variants.json` entry plus a YARA rule).
* New family pages.
* Corrections to descriptions, MITRE ATT&CK mappings, or reference links.
* Improved YARA rules.

Before submitting a sample log, please verify every victim identifier is redacted.

## License

Apache License 2.0. See [`LICENSE`](LICENSE).
