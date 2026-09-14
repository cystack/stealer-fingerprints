# Minimal Stealer

Unidentified minimal-format stealer observed inside `@BRADMAX`
aggregator packs alongside Remus, user-info bracket, and Snake logs.
The `System_Info.txt` is a flat seven-line key/value record
with no banner, no IP, and no time, barely enough to compose an
IOC. Verified victims include Windows Defender Application Guard
sandbox VMs.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **2**

## What it targets

- No target inventory published yet.

## Detection notes

Flat seven-line record headed by `User:` (no `Username` or
`User name` variant) is the primary trigger. The absence of
banner, IP, and timestamp distinguishes this layout from every
other family in this catalog.

## Observed log variants

### `v_289e675ff30a29b1a1292c77b54489e5`

- Parser: `logmine.ioc.parsers.minimal_stealer.MinimalStealerParser`
- Observed filenames: `System_Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_289e675ff30a29b1a1292c77b54489e5/sample.txt)
- Sample SHA-256: `995594618cd831da529b69edf7f0372c94e7a63849cdd39ca4cd3cde3b866bf0`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `Computer`, `CPU`, `GPU`, `OS`, `RAM`, `Resolution`, `User`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
