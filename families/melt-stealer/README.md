# MeltStealer

MeltStealer is an open-source C# data-extraction tool
maintained at `github.com/Vorolski/melt-stealer`. The builder
packs a Telegram bot API token plus chat ID and exfiltrates
harvested data through the Telegram Bot API. Public sandbox
databases track the family with documented behaviours:
credential theft from web browsers, system-information
collection (Windows installation date, computer name, machine
GUID, environment values), and general data exfiltration.

The harvest scope per the project README covers passwords and
cookies, credit cards, cryptocurrency wallets and mnemonics,
browser extensions, Wi-Fi networks, gaming session tokens
(Steam, Minecraft), VPN configurations, Discord tokens,
screenshots and webcam captures, process lists, and registry
information. The panel-side `Information.txt` opens with the
verbatim `📋 MeltStealer - Report:` clipboard-emoji banner and
ships a 15-field emoji-prefixed identity block (Date / System
/ Username / CompName / CPU / RAM / IP / Location / Zip Code /
Coordinates / Timezone / ISP / Organization / AS) plus six
section blocks (Browsers / Software / Device / File Grabber /
Domains info / Installation) with U+221F right-angle-arrow
sub-items per section.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `melt-stealer`, `Melt Stealer`
- Variants observed: **1**
- CyStack observations represented: **5**

## What it targets

- Browser saved credentials (Chrome, Brave, Edge, Firefox,
Opera variants)
- Browser cookies, autofill, history, bookmarks, downloads,
extensions
- Credit card data
- Cryptocurrency wallets and seed-phrase mnemonics
- Discord tokens
- Steam and Minecraft session data
- VPN client configurations
- Wi-Fi network credentials
- Windows product key, screenshots, webcam captures
- Process lists and selected registry values
- System fingerprint (CPU, RAM, OS version, IP, ISP, ASN)

## Detection notes

The opening `📋 MeltStealer - Report:` banner is the family's
verbatim self-identification and the cleanest fingerprint
anchor. The U+1F4CB CLIPBOARD emoji prefix plus the
`MeltStealer - Report:` literal cannot collide with any other
documented family. Pairing with the `🗺️ Location:` geo field
confirms the body matches the panel template rather than a
public writeup quoting the banner. During triage, the `⚙️
Installation:` section flags `Clipper installed` and
`Keylogger installed` for modules the operator enabled on the
build; check those flags to understand the active feature set
on this specific victim.

## Observed log variants

### `v_209de6a8e4756161ea71c25d62594571`

- Format ID: `melt-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_209de6a8e4756161ea71c25d62594571/sample.txt)
- Sample SHA-256: `063e49dcad7f0ab2bfa94158a5346a9a37d17883637a6cf6f23f460349dd7390`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Location:`, `MeltStealer - Report:`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1125](https://attack.mitre.org/techniques/T1125/) | Video Capture |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |

## Related catalog profiles

- [Phantom Stealer](../phantom-stealer/)
- [Stealerium](../stealerium/)

## Related external families

- `pupkin-stealer`

## Sources

- <https://github.com/Vorolski/melt-stealer>
- <https://any.run/report/a934dc7424ecc3d0e20848f36e44d1473b1908761cd41a4021d31f6d91c5ee34/ea0e35cd-70cc-4c19-aa20-532f49f278c7>

Machine-readable record: [family.json](family.json)
