# CSCountCoreStealer

CSCountCoreStealer is a CyStack-coined identifier for a
fifteen-line `Information.txt` panel summary that opens with a
`🔐 Passwords Count: <n>` banner and a `⚙ System Information:`
header, then ships a keyed field block carrying NodeJS `os`
module values. Observed inside `!! 2025 OCT.part01.rar`-style
aggregator packs in `<id>_<CC>_<IPv4>_<DD-MM-YY>/` victim
folders (e.g. `1273_UN_<IPv4>_16-10-25/`). The keyed
block carries `Mac:`, `Gpu:`, `Cpu:`, `Uuid:`, `Hostname:`,
`User Info:`, `IP Address:`, `Version:`, `Type:`, `Arch:`,
`Release:`, `Count Core:`, `File Location:`. Multi-GPU systems
put the second GPU name on its own line after `Gpu:` with no
key prefix.

The NodeJS `os` module fingerprint is unmistakable: `Type:
Windows_NT` is the `os.type()` literal, `Arch: x64` is
`os.arch()`, `Release: 10.0.22631` is `os.release()`, and
`Count Core: 8` is the transposed phrasing for
`os.cpus().length`. The transposed `Count Core` plus the `User
Info:` label (rather than `Username:`) is the panel's
developer-side quirk. Family attribution is provisional
pending a published threat-intel mapping for this exact
caption format. The closest publicly documented JavaScript /
NodeJS infostealer candidates - Celestial Stealer, Bizfum
Stealer, Wish Stealer - do not publish a matching caption
format in their write-ups.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator NodeJS-os panel summary`
- Variants observed: **1**
- Historical Logmine records represented: **23,809**

## What it targets

- Browser saved credentials (count flag plus harvested body in sibling files)
- Host metadata: MAC address, hardware UUID, hostname
- Hardware inventory: CPU model, GPU list
- OS fingerprint: NodeJS os.type/arch/release plus friendly Windows version
- Victim public IP
- Stealer install path under `C:\WINDOWS\System32`

## Detection notes

Fingerprint requires the line-anchored `Count Core:` key (the
transposed phrasing is the disambiguator - no other registered
parser keys on it) plus the `Type: Windows_NT` NodeJS
`os.type()` literal. Together the pair cannot collide with
other registered formats. During triage, treat the family
attribution as unknown: the panel summary is the metadata view
of a JavaScript / NodeJS infostealer whose canonical name has
not been mapped to this caption layout in any public
reporting.

## Observed log variants

### `v_1021cf33442dd3c624bed4d2c8af05e8`

- Parser: `logmine.ioc.parsers.cs_count_core_stealer.CSCountCoreStealerParser`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **23,809**
- Representative sample: [open sample](samples/v_1021cf33442dd3c624bed4d2c8af05e8/sample.txt)
- Sample SHA-256: `080b0b0dc3db8d919c1b220daf009b2acf5aa9ffd0d0e64b9ebe91821f663870`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `Count Core`, `User Info`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSNewLogStealer](../cs-new-log-stealer/)

## Related external families

- `celestial-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
