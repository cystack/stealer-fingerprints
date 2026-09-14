# CSEduResultStealer

CSEduResultStealer is a CyStack-coined identifier for a
minimal five-field Python `system_info.txt` observed inside
`7-11 AUGUST - 31283 LOGS2.part01.rar`-style aggregator packs
at `<HWIDPFX>_<TIMESTAMP>/EDU_RESULT/extracted/
system_info.txt` victim folders. The body carries only `OS`,
`Hostname`, `IP Address` (LAN, not public), `CPU` (in Python
`platform.processor()` output format, e.g. `Intel64 Family 6
Model 186 Stepping 3, GenuineIntel`), and `RAM` (float GB from
`psutil.virtual_memory()`).

The victim-folder `EDU_RESULT/` subtree carries the stealer's
harvest categories (`archives_scanned.txt`, `cards.txt`,
`cookies.txt`, `discord_token.txt`) plus an `extracted/`
sibling with per-category folders (`bin/`,
`Browsers/BraveSoftware/`, `Browsers/Chromium/`, etc.). The
`EDU_RESULT` folder-name literal suggests an "educational"
Python-project origin, likely one of the hobbyist /
open-source stealer scripts indexed under GitHub's
`stealer-2025` / `info-steal` / `stealer-undetectable` Topics
covered in public reporting on the GitVenom campaign. Family
attribution is provisional pending a published threat-intel
mapping for the `EDU_RESULT` output layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `EDU_RESULT Python stealer`, `system_info.txt platform.processor minimal`
- Variants observed: **0**

## What it targets

- Basic host identity and hardware inventory (OS,
hostname, LAN IP, CPU, RAM)
- Browser saved credentials, cookies, autofills, bookmarks
(under `EDU_RESULT/extracted/Browsers/`)
- Discord tokens (`EDU_RESULT/discord_token.txt`)
- Credit-card data (`EDU_RESULT/cards.txt`)
- Cookies dump (`EDU_RESULT/cookies.txt`)
- Archive/wallet scan results (`archives_scanned.txt`)

## Detection notes

Fingerprint requires all four of `OS:`, `Hostname:`,
`IP Address:`, and a `CPU:` line whose value matches the
Python `platform.processor()` shape `(Intel64|AMD64|
ARM64) Family <N> Model <N> Stepping <N>, (GenuineIntel|
AuthenticAMD|...)`. The Python platform.processor CPU
format is the load-bearing anchor: canonical C# / .NET
stealers emit the marketing CPU name (`Intel(R) Core(TM)
i5-...`) rather than the raw registry `PROCESSOR_
IDENTIFIER` string. During triage, treat this label as a
"hobbyist Python stealer" marker: the underlying builder
is not identifiable from this shape alone, but the
`EDU_RESULT/extracted/` folder tree is the load-bearing
evidence for confirming the family.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |

## Related catalog profiles

- [PyInfo Stealer](../py-info-stealer/)
- [Blank Grabber](../blank-grabber/)

## Related external families

- `xillenstealer`
- `braodo-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
