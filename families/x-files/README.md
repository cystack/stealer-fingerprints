# XFiles

X-FILES (XFiles / DeerStealer) is a long-running C#-written
infostealer first observed on Russian hacker forums in March
2021. Later evolutions (2024+) are sold under the rebranded name
DeerStealer by the same actor on dark-web forums and Telegram
with a tiered subscription model. Targets Chromium and Gecko
browsers, 80+ browser-based crypto wallet extensions, plus
VPN, FTP, RDP, and messenger client data.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `X-FILES`, `DeerStealer`, `X-Files Stealer`
- Variants observed: **2**
- CyStack observations represented: **74,339**

## What it targets

- Browser saved credentials and cookies (Chromium and Gecko)
- 80+ browser-based crypto wallet extensions
- Crypto wallet desktop clients
- VPN, FTP, RDP client configs
- Messenger session data (Telegram, Discord, Steam)

## Detection notes

XFiles `Information.txt` carries the panel banner together with
victim hardware and locale fields. Older 2021-2022 variants and
the rebranded 2024+ DeerStealer share the same field set so the
family rule covers both eras. An aggregator-stripped variant
redistributed via the Cloud WLFR project (`t.me/WichLoveFromR`,
`linktr.ee/WLFRcloud`, support `@AltairSupport`) drops the
`Operation ID:` panel-run identifier but keeps the rest of the
XFiles-canonical field set; the structural fingerprint covers both
shapes.

## Observed log variants

### `v_696f8d4a627ea995706ebfc9ab448d36`

- Format ID: `xfiles`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `hardware-id-gpu`
- Historical records represented: **95**
- Representative sample: [open sample](samples/v_696f8d4a627ea995706ebfc9ab448d36/sample.txt)
- Sample SHA-256: `bdab8a2c2cbfd659c005dda07081848e8cd88ba461d8d89da08a0e66c41ba2f3`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Hardware ID`, `Processed parts`

### `v_7b67103a472b833b8edbbdb65216dad0`

- Format ID: `xfiles`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `operation-id`
- Historical records represented: **74,244**
- Representative sample: [open sample](samples/v_7b67103a472b833b8edbbdb65216dad0/sample.txt)
- Sample SHA-256: `c407b8a84f11600db4c293b9631173e61d5dee1801972cffe5438adb67b3f6de`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Operation ID`, `Processed parts`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.zscaler.com/blogs/security-research/x-files-stealer-evolution-analysis-and-comparison-study>
- <https://any.run/malware-trends/xfiles/>
- <https://www.esentire.com/blog/dont-get-caught-in-the-headlights-deerstealer-analysis>
- <https://cyberint.com/blog/research/xfiles-stealer-campaign-abusing-follina/>
- <https://www.bleepingcomputer.com/news/security/xfiles-info-stealing-malware-adds-support-for-follina-delivery/>

Machine-readable record: [family.json](family.json)
