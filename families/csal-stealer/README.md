# CSALStealer

CSALStealer is a CyStack-coined identifier for a self-named
AL Stealer log family observed inside `APRIL 25 - 19966 LOGS`
Telegram packs in `DZ_<IP>_<DD-MM-YY>/` victim folders. The
format is Lumma-shaped (dash-prefix YAML list) but carries a
distinct build banner, a different distribution channel, and
lacks Lumma's canonical `(sig:UNIX.HEX)` signature. The
malware self-identifies as AL Stealer (likely "Additional
Libraries", matching its Telegram channel) and targets
Hypixel Skyblock players via fake Minecraft mods. Family
identification is provisional; no published threat-intel
source attests this specific log template, hence the `CS`
prefix.

## Research status

- Classification: **Family variant**
- Attribution confidence: **medium**
- Canonical family: [lumma](../lumma/)
- Aliases: `AL Stealer`
- Variants observed: **1**
- Historical Logmine records represented: **26**

## What it targets

- Browser saved credentials
- Crypto wallet extensions
- Minecraft account credentials and Hypixel Skyblock data

## Detection notes

Dash-prefix `- AL Stealer Build:` line is the cleanest
trigger. The `t.me/additionallibraries` channel reference in
the join-now header is a backup signature for variants that
strip the build banner.

## Observed log variants

### `v_acc2678339f8059055700c66f385f24d`

- Parser: `logmine.ioc.parsers.cs_al_stealer.CSALStealerParser`
- Observed filenames: `System.txt`
- Panel brand: `AL Stealer`
- Distribution channel: `t.me/additionallibraries`
- Attribution confidence: **medium**
- Historical records represented: **26**
- Representative sample: [open sample](samples/v_acc2678339f8059055700c66f385f24d/sample.txt)
- Sample SHA-256: `f500fa816cbb77efa7222cdd89e3dbf77713cf65c9cdf9d5a5f658957689f41e`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `AL Stealer`, `t.me/additionallibraries`
- Field labels: `AL Stealer Build`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Lumma](../lumma/)

## Observed distribution channels

- <https://t.me/additionallibraries>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
