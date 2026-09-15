# CSForzaTrafficStealer

CSForzaTrafficStealer is a CyStack tracking name for the bare
`Key: Value` `Info.txt` panel that the `@FORZATRAFFICx`
Telegram reseller redistributes inside
`MIX_LOGS_<NNNN>_BONUS_UPDATE_@FORZATRAFFICx_<Month>_<YYYY>
_part<N>.rar` aggregator packs. Victim folders follow the
shape `<CC>_<32-hex>/Info.txt` (country code plus underscore
plus a 32-character HWID-derived hex identifier, no IP
segment in the folder tree), and the archive-tree top
folder repeats the `@FORZATRAFFICx` reseller handle
verbatim.

The body vocabulary is byte-identical to two peer cloud
reseller shapes already cataloged (`CSRoyCloudInfoStealer`
and `CSSigInfoStealer`): a Redline-shape verbose field
inventory with Lumma influences carrying `Build Date` in the
C-preprocessor `__DATE__` format, a `Configuration:` header
with empty value, `Execution Path:` with the setup binary
path, `Elevated:` privilege state, `Computer Name` /
`User Name` / `Netbios` / `User Language`, an
`Operation System:` (sic) typo carried from Redline sources,
`Install Date` and `System Date` in dotted DMY, `Time Zone`
as a short `UTC[+-]H` offset, `Antivirus:` naming the AV
product, plain 32-hex `HWID`, `Processor` plus split
`Processor Threads` and `Processor Cores`, an indented
`Graphics Card:` block, `Installed RAM:` in MB, and
`Display Resolution:` in `WxH` form.

Distinguishing features vs the two peer shapes: no
Lumma-canonical `(sig:UNIX.HEX)` Time-line watermark and no
trailing `IP Address:` / `Time:` / `Country:` / `User:`
panel-metadata footer (both are present on the `CSSigInfo`
shape), and no `RÔýĆløud` panel-brand watermark that
wraps the `CSRoyCloud` shape. Victim IP and country and log
time are recoverable only from the archive-path segment
plus the `System Date` / `Time Zone` field pair inside
`Info.txt`.

Public reporting attests `@FORZATRAFFICx` as an active
credential-log reseller distributing tens of thousands of
records per pack alongside sibling `TG ArhontCorp`-branded
channels (`FateTraffic TG ArhontCorp`, `Slurm Private TG
ArhontCorp`, `KATANA CLOUD PRIVATE TG ArhontCorp`). No
published mapping ties the exact bare-KV field vocabulary
here to a canonical builder, so family attribution stays a
CyStack tracking name pending a curated writeup.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@FORZATRAFFIC`, `@FORZATRAFFICx`, `ForzaTraffic MIX LOGS`, `ForzaTraffic TG ArhontCorp`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets

- Browser saved credentials, cookies, autofill
- System hardware and identity inventory
- Installed antivirus product identity

## Detection notes

Fingerprint requires line-anchored `Execution Path:` AND
`Installed RAM:` AND the `forzatraffic` archive-tree token
in the observed system-path breadcrumbs. The two peer bare
Key-Value parsers cleanly decline the same body when the
`(sig:UNIX.HEX)` watermark and the `RÔýĆløud` reseller
banner are both absent, so channel attribution lands on
this profile.

## Observed log variants

### `v_243781523ca2e74811e2e8ecf7b8cea3`

- Format ID: `cs-forzatraffic-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `@FORZATRAFFICx`
- Distribution channel: `@FORZATRAFFICx`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_243781523ca2e74811e2e8ecf7b8cea3/Info.txt)
- Sample SHA-256: `0d1d48d0eefa4e15994db2039cceafd04d15d7b11c57101cb7514ccf28c21e1d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `│ [ CLÓUD CHANNEL - @forza_traffic ] [ SUPPORT - @ez_sources ] │`
- Field labels: `Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `Install Date`, `Installed RAM`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time Zone`, `User Language`, `User Name`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |

## Related catalog profiles

- [CSRoyCloudInfoStealer](../cs-roy-cloud-info-stealer/)
- [CSSigInfoStealer](../cs-sig-info-stealer/)

## Sources

- <https://heroic.com/darkhive-breaches/fatetraffic-tg-arhontcloud-uploaded-by-a-telegram-user/>
- <https://heroic.com/darkhive-breaches/logs-uploaded-by-a-telegram-user-breach-2023/>

Machine-readable record: [family.json](family.json)
