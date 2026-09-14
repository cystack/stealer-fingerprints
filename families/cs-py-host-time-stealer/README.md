# CSPyHostTimeStealer

CSPyHostTimeStealer is a CyStack-coined identifier for a
Python-based stealer whose `system_info.txt` is reduced to a
4-line `User:` / `Host:` / `OS:` / `Time:` block with no
hardware, network, or locale fields. Distributed through the
`@BRADLOGS` Telegram channel (active mirror of the `@BRADMAX`
/ `t.me/bradmax_cloud` aggregator that public channel
catalogues list as a "Redline and Raccoon Data Logs"
reseller), with per-victim folders named `[<CC>]@BRADLOGS
(BRADMAX)/`.

Two structural traits point at a Python builder. The `OS:`
value is dash-joined `platform.platform()` output
(`Windows-11-10.0.26200-SP0`), and the `Time:` value carries
six-digit microsecond precision - the default
`str(datetime.now())` format. No C# or .NET stealer in the
surveyed catalogues emits those two shapes together. The bare
`Host:` key (rather than `Hostname:` / `Computer Name:`) is
also unusual.

Family attribution is provisional pending a published threat-intel mapping for this layout. The aggregator self-labels
content as Redline / Raccoon but the body lacks every Redline
canonical anchor (`Operation System:` typo, `Hardwares:`
block) and every Raccoon canonical anchor (`User ID:` UUID,
`Last seen:` JS-date), so the channel label cannot be trusted.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@BRADLOGS minimal system_info.txt`
- Variants observed: **0**

## What it targets

- Victim username and hostname
- Operating-system platform string
- Wall-clock exfiltration timestamp

## Detection notes

Triple-guard fingerprint: all four line-anchored keys
(`User:`, `Host:`, `OS:`, `Time:`) must appear, the `OS:`
value must match the dash-joined `platform.platform()` shape
(`Windows-<n>-...`), and the `Time:` value must carry six-digit microsecond precision (`.\d{6}`). The microsecond-precision Time field is the strongest single signal that
rules out non-Python builders. False-positive risk is low
because no other registered parser uses `Host:` as a bare
key with this exact Time-value shape.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/BRADLOGS>
- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
