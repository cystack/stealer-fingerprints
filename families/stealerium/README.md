# Stealerium

Stealerium is an open-source .NET info-stealer first published
on GitHub by user `kgnfth` in April 2022. The project ships as
a buildable C# solution rather than a paid MaaS, so anyone can
compile a private build and point it at their own Telegram
bot, Discord webhook, SMTP relay, or Gofile upload endpoint.
Public reporting tracked a surge in Stealerium activity
through 2025 and documents the panel-side summary report as
opening with the literal `*Stealerium - Report:` Markdown-bold
banner. The v3.5.2 panel revision tags the banner with the
build version (`*Stealerium v3.5.2 - Report:*`) and organises
output into emoji-prefixed `*Hardware:*` / `*Network:*` /
`*Domains info:*` / `*Browsers:*` / `*Software:*` /
`*Device:*` / `*Installation:*` / `*File Grabber:*` sections.

Stealerium is the upstream family for several documented
forks: Phantom Stealer (sold as MaaS), Warp Stealer, and
StealeriumPy (distributed via ClickFix). The forks rebrand the
banner while keeping the underlying data-collection layout, so
analysts triaging logs should check the banner literal first
to disambiguate.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Stealerium v3.5.2`
- Variants observed: **1**
- CyStack observations represented: **4**

## What it targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet desktop clients and browser extensions
- Discord, Telegram, Skype, Pidgin, Outlook, Element, Signal, Tox session data
- Steam, Minecraft, Epic, Uplay, Growtopia session tokens
- Wi-Fi profiles and saved passwords via netsh
- Windows product key extraction
- Desktop and webcam screenshot capture
- VPN client configurations
- File grabber configurable by extension and folder

## Detection notes

High-confidence trigger: the `*Stealerium` banner token inside
a Markdown-bold pair on the first line of `Information.txt`.
The v3.5.2 build adds the version string (`*Stealerium v3.5.2
- Report:*`); earlier builds per public reporting use the
version-less `*Stealerium - Report:*` form. Disambiguate from
Phantom (uses `*Phantom stealer v2.0`), Warp, and StealeriumPy
forks by the banner literal rather than the field set, since
all four families share the underlying section layout.

During incident response, check the trailing archive block (`🔗
[Archive download link]` plus `🔐 Archive password is:`) for
the operator-side staging URL; the URL identifies the
cloud-hosting service (commonly Gofile) the operator chose for
exfiltration but is not victim infrastructure.

## Observed log variants

### `v_fea267824fe0c63f2704a2f713a8b5fc`

- Format ID: `stealerium`
- Observed filenames: `Information.txt`
- Panel brand: `Stealerium v3.5.2`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **high**
- Historical records represented: **4**
- Representative sample: [open sample](samples/v_fea267824fe0c63f2704a2f713a8b5fc/sample.txt)
- Sample SHA-256: `e3531ea1de20061e3a974888e95d7ee570781c278652e02ff783f076a1d6e504`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `*Stealerium v3.5.2 - Report:*`, `Stealerium v3.5.2`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1125](https://attack.mitre.org/techniques/T1125/) | Video Capture |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |

## Related catalog profiles

- [Phantom Stealer](../phantom-stealer/)
- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)

## Sources

- <https://malpedia.caad.fkie.fraunhofer.de/details/win.stealerium>
- <https://www.proofpoint.com/us/blog/threat-insight/not-safe-work-tracking-and-investigating-stealerium-and-phantom-infostealers>
- <https://www.uptycs.com/blog/threat-research-report-team/understanding-stealerium-malware-and-its-evasion-techniques>
- <https://securityscorecard.com/wp-content/uploads/2024/01/Whitepaper-A-Detailed-Analysis-Of-A-New-Stealer-Called-Stealerium-.pdf>

Machine-readable record: [family.json](family.json)
