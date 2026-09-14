# CSPasswordsNotFoundStub

CSPasswordsNotFoundStub is a CyStack-coined identifier for a
short panel-side empty-result stub observed inside `@BRADLOGS
/ BRADMAX` aggregator packs at `[<TAG>]<IP>/` or
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders. The
folder ships one or more cred files (`passwords.txt`,
`passwords(1).txt`, `Pass/Pass.txt`, `PASSWORD <NN>.txt`)
whose entire body is one of three short literals:

- `Passwords not found.` (20 bytes, observed in `!! 2025
NOV.part001.rar`). - `No passwords found.` (19 bytes, same NOV
pack). - `d41d8cd98f00b204e9800998ecf8427e` (32 bytes,
observed in `!! 2025 JULY.part001.rar` at `PASSWORD
<NN>.txt`). This is the documented MD5 hex digest of the empty
byte string (`hashlib.md5(b'').hexdigest()`). The harvester
ran an MD5 hash over an empty cred buffer and wrote the digest
verbatim as a placeholder.

No companion system-info file is present and no other
harvested credential artifacts ship in the same folder. The
label marks the victim as compromised (a stealer ran and
produced the stub) but carries no exfiltrated credentials.

The underlying stealer that emitted the stub is not
identifiable from the body alone. None of the three phrasings
is attributed to a specific named family in public reporting:
all three are generic builder boilerplate, and the BRADMAX
aggregator mixing them within one channel is itself evidence
of generic provenance. The empty-MD5 digest is widely
documented as a generic empty-input marker but is not
attributed to a specific stealer. Family attribution is
provisional pending a published threat-intel mapping for any
stub variant.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX empty-passwords stub`, `Panel-side no-credentials sentinel`, `Empty-MD5 placeholder cred file`
- Variants observed: **0**

## What it targets

- Browser-saved credentials (attempted, none found)

## Detection notes

Fingerprint requires the cred-file body to be exactly one
of `Passwords not found.`, `No passwords found.`, or the
literal 32-character MD5 hex of the empty byte string
(`d41d8cd98f00b204e9800998ecf8427e`), after whitespace
strip. Real cred files that mention either phrase or carry
the empty-MD5 hex inside a longer body do not match.
During triage, treat this label as a "victim infected but
no credentials harvested" marker: the IOC still indicates
an infection occurred but the cred-dump payload is empty.
The underlying stealer family is unknown; if the same
victim folder later ships a system-info file, the
malware-family detector chain will overwrite this label
with the canonical family.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
