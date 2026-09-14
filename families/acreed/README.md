# Acreed

Acreed Stealer is one of the few infostealer families that
emits structured JSON instead of free-form key/value text. The
victim metadata is written to `pc_info.json` with PascalCase
keys (`PcName`, `Os`, `Cpu`, etc.).

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Acreed Stealer`
- Variants observed: **1**
- Historical Logmine records represented: **224,616**

## What it targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions and desktop clients
- Discord and Telegram session data
- Document grabber for sensitive file types

## Detection notes

Structured JSON shape with a top-level `PcName` key (PascalCase,
no spaces) is unique among the families this catalog tracks; no
other parser claims `pc_info.json` content.

## Observed log variants

### `v_02aba0afc027e0ffde6554b29031e0b1`

- Parser: `logmine.ioc.parsers.acreed.AcreedParser`
- Observed filenames: `pc_info.json`, `pc_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **224,616**
- Representative sample: [open sample](samples/v_02aba0afc027e0ffde6554b29031e0b1/sample.txt)
- Sample SHA-256: `b8f16d760313ebd4003085217477561045790d3303b9e579b81cbc88983ae551`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `IsElevator`, `PcName`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.kaspersky.com/blog/acreed-stealer/>

Machine-readable record: [family.json](family.json)
