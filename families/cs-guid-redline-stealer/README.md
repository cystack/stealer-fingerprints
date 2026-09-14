# CSGuidRedlineStealer

CSGuidRedlineStealer is a CyStack-coined identifier for a
Redline-lineage `UserInformation.txt` fork whose field-key
convention swaps canonical Redline's `MachineName:` for
`ComputerName:` and `HWID:` for `GUID:` (dashed-UUID
value). The panel preserves the Redline-canonical
`Operation System:` typo but reformats several other
value shapes: `ScreenSize:` uses bare `WxH` (not the
canonical `{Width=X, Height=Y}` brace form),
`TimeZone:` carries an IANA Olson identifier (e.g.
`Europe/Belgrade`, not the canonical `(UTC+X:XX) <city
list>` form), and the `Hardwares:` block uses bare
`CPU:` / `GPU:` / `RAM:` sub-keys instead of the
canonical WMI-serialized `Name: <cpu>, N Cores` /
`Name: <gpu>, N bytes` / `Name: Total of RAM, X.XX Mb
or Y bytes` prefixed dual-serialization. `File Location:`
(space-separated) matches the MetaStealer-fork convention
but this variant drops the MetaStealer `Log from:`
distributor-id line.

Observed inside `MARCH 15 - 3059 LOGS2.part01.rar`
aggregator packs at `[<UUID>][<random-alnum>]/
UserInformation.txt` victim folders. The UUID inside the
folder's first bracket matches the `GUID:` body field.
Family attribution stays CS-coined pending a curated CTI
mapping - attributing to canonical Redline would poison
the canonical-Redline IOC index with a fork whose value
shapes diverge substantively.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill (per Redline lineage)
- System hardware and locale inventory
- Antivirus product enumeration

## Detection notes

High-confidence trigger: line-anchored `Operation System:`
(Redline-canonical typo) plus line-anchored
`ComputerName:` (fork rename of `MachineName:`) plus
line-anchored `GUID:` (fork rename of `HWID:`). The
three-anchor combination is disjoint from canonical
Redline (which uses `MachineName:` + `HWID:`),
MetaStealer (which requires `Log from:` +
`File Location:` and uses `OS:` without the typo), and
RedlineLikeStealer (which uses `Processor:` /
`Installed RAM:` / `Graphics card:` / `Computer Name:`
with a space). During triage, the `GUID:` UUID matches
the first bracketed segment of the victim folder name,
so the folder path format can cross-check per-victim
identity.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [MetaStealer](../meta-stealer/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>
- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://securityscorecard.com/research/detailed-analysis-redline-stealer/>

Machine-readable record: [family.json](family.json)
