# DiskInfo Stealer

Unidentified `Disk Capacity` / `Disk Free` stealer observed
inside `@BRADMAX` aggregator packs as a sibling of Remus,
user-info bracket, Snake, Minimal, and PCInfo logs. The
`System_Info.txt` is a flat six-line key/value record with no
banner, no IP, no timestamp, and no CPU/GPU/display fields.
Verified victims have included Windows Defender Application
Guard sandbox VMs, suggesting heavy automated-execution
poisoning of this corpus.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **1**

## What it targets

- No target inventory published yet.

## Detection notes

The unique combination of `Disk Capacity:` and `Disk Free:`
fields without any CPU/GPU/IP/banner is the signature. The
flat six-line record makes the layout easy to recognise even
without an explicit family banner.

## Observed log variants

### `v_3b0bf5da89b9f399b382ffe560a526ed`

- Parser: `logmine.ioc.parsers.disk_info_stealer.DiskInfoStealerParser`
- Observed filenames: `System_Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_3b0bf5da89b9f399b382ffe560a526ed/sample.txt)
- Sample SHA-256: `41ad6b627f7bc2b4d753757541766f6028c5a6422f979ba4485a31c8d691ed57`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `Computer`, `Disk Capacity`, `Disk Free`, `Memory`, `OS`, `User`


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
