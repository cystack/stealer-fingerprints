# Security policy

## Reporting sensitive data or a vulnerability

Do not disclose sensitive content in a public issue. Use GitHub's private vulnerability-reporting feature for this repository or contact CyStack through the private security channel published on the organization's official website.

Include only the affected repository path, commit identifier, and the minimum description needed to locate the problem. Do not copy the sensitive value into the report.

## Response priorities

Maintainers should remove exposed secrets, rotate them where possible, and assess downstream
distribution. Public samples are expected in this repository, but live credentials, cookies,
session tokens, wallet secrets, malware binaries, and bulk victim datasets are not.

The generated YARA rules classify exported text formats. They are experimental, may produce false positives or false negatives, and must not be treated as proof that a host or binary is infected.
