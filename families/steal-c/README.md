# StealC

StealC info-stealer logs. Writes a sectioned `system_info.txt`
with header lines like `Network Info:`, `System Summary:`, and
tab-indented `- Key: Value` records under each. First documented
in early 2023, StealC has remained an active commodity stealer
with the v2 rewrite tracked through 2024.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `StealC v1`, `StealC v2`
- Variants observed: **2**
- CyStack observations represented: **972,301**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- FTP, email, VPN, RDP client configs
- Discord and Telegram session data
- Custom file grabber configurable per-build

## Detection notes

Distinctive sectioned layout with `Network Info:` and
`System Summary:` parent headers and tab-indented field lines.
Distributed via multiple Telegram resellers; the
`@stealerboss` channel is one of the larger redistributors.

## Observed log variants

### `v_078dda10ae3264ed2b51d559017ac685`

- Format ID: `stealc`
- Observed filenames: `System.txt`, `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `network-info-system-summary`
- Historical records represented: **972,136**
- Representative sample: [open sample](samples/v_078dda10ae3264ed2b51d559017ac685/sample.txt)
- Sample SHA-256: `f5a0773995f4020e4e275701e8f3d3e858111ea7a2784bc8350eef7f5cef19f1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Network Info:`, `System Summary:`
- Field labels: -

### `v_176158076f220af65d5f14c6593efde1`

- Format ID: `stealc`
- Observed filenames: `System.txt`, `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `installed-apps-users-processes`
- Historical records represented: **165**
- Representative sample: [open sample](samples/v_176158076f220af65d5f14c6593efde1/sample.txt)
- Sample SHA-256: `f504e0db01d2a3b1132ecc7ce12765f38eca2f6f90bf187acb9c6ab6557ae80b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `All Users`, `Current User`, `Installed Apps`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.zscaler.com/blogs/security-research/i-stealc-you-tracking-rapid-changes-stealc>
- <https://mssplab.github.io/threat-hunting/2023/11/23/malware-analysis-stealc-2.html>

Machine-readable record: [family.json](family.json)
