# DCRat

DCRat (Dark Crystal RAT, DarkCrystal RAT) is a .NET-based
remote access trojan plus info-stealer that has been sold as
malware-as-a-service since at least 2019. Public trackers list
the family under the canonical literal DCRat. CERT-UA has
flagged DCRat campaigns against Ukrainian defense and
government targets, attributed to Russia-aligned operators
(Sandworm plus other clusters).

The harvested log opens with a five-line Figlet `small`- font
ASCII-art banner spelling `Dark Crystal RAT`, then a
horizontal-rule line of em-dashes, then four flat `Key: Value`
blocks separated by blank lines. The first block carries WMI
hardware enumeration including `PC Name`, `User Name`,
`Windows` version, `CPU Name`, `CPU Cores` (with parenthesised
logical-thread count), `GPU Name`, `GPU Mode` (WxH x
color-depth triple), `Motherboard` (Win32_BaseBoard SMBIOS
string), `BIOS` (Win32_BIOS string), `Antivirus`, `Firewall`,
`RAM` (locale-aware comma decimal), and `LANIP`. The second
block reports the .NET Framework version and the install path
(DCRat typically masquerades as a fake system service binary,
for example `fontdrvhost.exe` under a typo-squatted
`MsHyperserverBrokersvc` folder). The third block is
geolocation (`IP`, `City`, `Country` as `CC / Name`,
`Location` as latitude / longitude). The tail reports the
monitor list and `Save Time` in `DD.MM.YYYY HH:MM` European
format.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Dark Crystal RAT`, `DarkCrystal RAT`, `dcRAT`
- Variants observed: **1**
- Historical Logmine records represented: **177**

## What it targets

- Browser saved credentials and cookies (plugin modules: Plugin_AutoStealer)
- Keystroke capture (Plugin_AutoKeylogger)
- Clipboard contents
- Remote shell command execution
- WMI-enumerated machine fingerprint (motherboard, BIOS, monitors)
- Installed antivirus and firewall product detection

## Detection notes

The Figlet `small`-font `Dark Crystal RAT` ASCII banner is the
cleanest fingerprint. The detector class
`logmine.detection.rats.DCRat` and the parser share the banner
literal as their anchor so attribution stays consistent across
both layers. The .NET / WMI enumeration profile plus the
`MsHyperserverBrokersvc` style fake-service install path is
the secondary confidence signal. Public analyses note plugin
identifiers like `DCRatBuild`, `DCStlr`, `Plugin_AutoStealer`,
and `Plugin_AutoKeylogger` in the binary; defenders triaging a
victim host should hunt for those strings in process memory or
on disk to confirm the family.

## Observed log variants

### `v_c05affb578cdd7ad283bd765c0f9cc1c`

- Parser: `logmine.ioc.parsers.dcrat.DCRatParser`
- Observed filenames: `Information [ID].txt`, `Information [IN].txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `gpu-mode`
- Historical records represented: **177**
- Representative sample: [open sample](samples/v_c05affb578cdd7ad283bd765c0f9cc1c/sample.txt)
- Sample SHA-256: `80541f90621ee53219173218c227126bbe60ecf769d3369b2a0ced1b8af26355`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `/ __\|_`, `/_\_   _\|`
- Field labels: `.NET Framework Version`, `GPU Mode`, `LANIP`, `PC Name`, `Save Time`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1056.001](https://attack.mitre.org/techniques/T1056/001/) | Keylogging |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |
| [T1071.001](https://attack.mitre.org/techniques/T1071/001/) | Application Layer Protocol: Web Protocols |
| [T1218](https://attack.mitre.org/techniques/T1218/) | System Binary Proxy Execution |

## Related catalog profiles

- None recorded.

## Sources

- <https://cloud.google.com/blog/topics/threat-intelligence/analyzing-dark-crystal-rat-backdoor>
- <https://www.splunk.com/en_us/blog/security/dark-crystal-rat-agent-deep-dive.html>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.dcrat>
- <https://any.run/malware-trends/dcrat/>
- <https://thehackernews.com/2025/03/cert-ua-warns-dark-crystal-rat-targets.html>

Machine-readable record: [family.json](family.json)
