# PXA Stealer

PXA Stealer is a Vietnamese-origin info-stealer. Its
`system_info.txt` uses a Vietnamese header
(`Thông tin hệ thống`) and snake_case keys lifted from WMI /
Win32 API names, making the fingerprint visually distinctive
even before content matches.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `PXAStealer`
- Variants observed: **2**
- Historical Logmine records represented: **108,969**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- Telegram, Discord, Steam session tokens
- VPN and FTP client configurations
- Documents matching specific filename patterns

## Detection notes

Vietnamese banner `Thông tin hệ thống` is unambiguous. Pair
with the snake_case key style (`computer_system`, `os`,
`processor`, `bios`) to confirm.

## Observed log variants

### `v_fb40413b70aabfded7e83dc45324181f`

- Parser: `logmine.ioc.parsers.pxa_caption.PXACaptionParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **108,363**
- Representative sample: [open sample](samples/v_fb40413b70aabfded7e83dc45324181f/sample.txt)
- Sample SHA-256: `0ab2118e99c70b06a86332550d95db9fd363dd959c30ffe27428c3001412ff1c`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Data Information: CK:`
- Field labels: `AntiVirus`, `IP`, `Username`

### `v_ffefe59bb73c8a386d24c645d4405857`

- Parser: `logmine.ioc.parsers.pxa.PXAParser`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `full-wmi`
- Historical records represented: **606**
- Representative sample: [open sample](samples/v_ffefe59bb73c8a386d24c645d4405857/sample.txt)
- Sample SHA-256: `69381bc169c48f7dbdb2483dad88c4746f626167ace43dcd6c7e9c33e030ef83`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Thông tin hệ thống`
- Field labels: `edition_id`, `install_date`


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

- <https://blog.talosintelligence.com/pxa-stealer/>
- <https://socradar.io/threat-actor-spotlight-pxa-stealer/>

Machine-readable record: [family.json](family.json)
