# CSEnvVarDumpStealer

CSEnvVarDumpStealer is a CyStack-coined identifier for a
.NET-based stealer panel whose `system_info.txt` opens with a
`=== SYSTEM INFORMATION ===` header followed by a `===
ENVIRONMENT VARIABLES ===` block that dumps the full Win32
environment table verbatim. Distributed through the `@BRADMAX`
Telegram aggregator (public channel catalogues list
`t.me/bradmax_cloud` as a Redline / Raccoon Data Logs
channel), with per-victim folders named `[<CC>]@BRADMAX
(<N>)/`.

Distinctive to this panel are the `CLR Version:` and `.NET
Runtime:` fields (pointing to a .NET builder), the `Default
Gateway:` / `Antivirus:` / `Local IP:` triple, and a verbatim
Win32 environment dump as the second section. A panel bug
emits `RAM: NoSystemBattery (100%)` as a duplicate `RAM:`
line: a battery-detection result mislabeled with the RAM key.
The `NoSystemBattery (100%)` literal is shared with
Stealerium's `Info.txt` `BATTERY:` field per a community
stealer-format catalogue, but Stealerium's layout uses
bracket-titled `[Machine]` / `[Virtualization]` sections,
never the `===` triple-equals headers seen here, so the
relationship is at most a snippet lift, not a fork.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX system_info.txt`
- Variants observed: **1**
- CyStack observations represented: **875**

## What it targets

- Browser saved credentials and cookies (panel companion files)
- System hardware and locale inventory
- Verbatim Win32 environment-variable dump
- Antivirus product enumeration

## Detection notes

Triple fingerprint: `=== SYSTEM INFORMATION ===` substring
AND `=== ENVIRONMENT VARIABLES ===` substring AND
`.NET Runtime:` substring. The `.NET Runtime:` key is unique
across this catalog; the env-var section header excludes
PCInfoStealer (which requires `=== NETWORK INFO ===`) and
CSWmicDumpStealer (snake_case keys, no env-var dump). The
family attribution is provisional pending a published
threat-intel mapping for this layout.

## Observed log variants

### `v_7ba734c3d104f5d042e195feac7c49c7`

- Format ID: `cs-envvar-dump-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **875**
- Representative sample: [open sample](samples/v_7ba734c3d104f5d042e195feac7c49c7/sample.txt)
- Sample SHA-256: `f199a9ebbc21066e827b992498d9b5daf2916bb2388bcca8c5857d92c653093c`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== ENVIRONMENT VARIABLES ===`, `=== SYSTEM INFORMATION ===`
- Field labels: `.NET Runtime`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- [Stealerium](../stealerium/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
