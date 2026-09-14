# YARA rules

These rules classify exported stealer-log text. They do not scan malware binaries.

```console
yara -r experimental_log_formats.yar path/to/exported/logs
```

Rules are generated only when a fingerprint has a stable marker plus enough supporting
fields. A family can therefore have useful samples and matcher data without a YARA rule.
Treat every hit as an analyst lead and compare it with the linked family sample.
