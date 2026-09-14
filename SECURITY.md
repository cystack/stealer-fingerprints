# Security policy

## Reporting sensitive data or a vulnerability

Do not disclose sensitive content in a public issue. Use GitHub's private vulnerability-reporting feature for this repository or contact CyStack through the private security channel published on the organization's official website.

Include only the affected repository path, commit identifier, and the minimum description needed to locate the problem. Do not copy the sensitive value into the report.

## Response priorities

Maintainers should restrict access, preserve a private incident record, remove the material from the current tree, rotate exposed secrets, assess downstream distribution, and rewrite Git history when sensitive material entered a commit. Consumers should be told to discard affected clones or follow the replacement-history instructions.

The initial v1 release is subject to the mandatory gate in [HISTORY_REWRITE.md](HISTORY_REWRITE.md).

The generated YARA rules classify exported text formats. They are experimental, may produce false positives or false negatives, and must not be treated as proof that a host or binary is infected.
