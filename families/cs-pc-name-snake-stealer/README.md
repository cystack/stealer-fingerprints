# CSPcNameSnakeStealer

CSPcNameSnakeStealer is a CyStack-coined identifier for an
eleven-line minimal `system_info.txt` panel distributed
through the `@BRADLOGS / BRADMAX` Telegram channel inside
`!! 2025 NOV.part001.rar` packs at
`[<TAG>]@BRADLOGS (BRADMAX)/system_info.txt` victim folders.
The body is a flat `key: value` block with all-lowercase
snake_case keys and short-form field abbreviations:
`username`, `pc_name`, `os`, `ram`, `cpu`, `gpu`, `mac`,
`hwid`, `ip`, `country`, `city`. The `os:` value is the
Python `platform.platform()` dash-joined shape
(`Windows-10-10.0.19045-SP0`), and the `hwid:` value is
the classic Windows `GetSystemUUID` format (8-4-4-4-12
hex with dashes, trailing segment matching the `mac:`
value with dashes stripped).

When the panel cannot resolve geo-IP, it emits the
literal `Unknown` placeholder for `ip`, `country`, and
`city`. The Python-builder OS shape pairs this format
with `CSPyHostTimeStealer` as a sibling panel that the
same `@BRADLOGS / BRADMAX` aggregator distributes; this
eleven-key variant carries richer device metadata
(MAC, HWID, CPU, GPU, RAM) but omits the timestamp.
Family attribution is provisional pending a published
threat-intel mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX minimal snake_case system_info.txt`, `11-field pc_name/mac/hwid snake_case panel`
- Variants observed: **1**
- CyStack observations represented: **23**

## What it targets

- Windows username
- Host metadata: hostname (pc_name), MAC address, HWID UUID
- OS fingerprint via Python `platform.platform()` output
- Hardware inventory: CPU model, GPU model, RAM size
- Victim public IP plus country / city (placeholder Unknown when geo-IP fails)

## Detection notes

Fingerprint requires all four line-anchored short-form keys:
`username:`, `pc_name:`, `mac:`, `hwid:`. The combination of
lowercase snake_case keys with these short-form abbreviations
(no `_address` suffix on `mac`, no `_id` suffix on `hwid`, no
`computer_` prefix on `pc_name`) cannot collide with any other
cataloged format. During triage, treat the family attribution
as unknown: the format is structurally a Python-builder panel
(`platform.platform()` OS shape) but no public source maps the
11-key layout to a specific named family. Geo-IP placeholders
(`Unknown`) indicate the victim was offline or behind a
firewall during panel exfiltration.

## Observed log variants

### `v_a518f20e8beffe929060e8d959b2b01c`

- Format ID: `cs-pc-name-snake-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **23**
- Representative sample: [open sample](samples/v_a518f20e8beffe929060e8d959b2b01c/sample.txt)
- Sample SHA-256: `c593944d228fcb55426fd7148086fb0bab573ca48d15be120a47c8bec8eef293`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `hwid`, `mac`, `pc_name`, `username`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSWmicDumpStealer](../cs-wmic-dump-stealer/)
- [PyInfo Stealer](../py-info-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
