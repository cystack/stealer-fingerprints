# MeltStealer

MeltStealer is an open-source C# data-extraction tool
maintained at `github.com/Vorolski/melt-stealer`. The
builder packs a Telegram bot API token plus chat ID and
exfiltrates harvested data through the Telegram Bot API.
ANY.RUN tracks the family in its sandbox database with
documented behaviours: credential theft from web browsers,
system-information collection (Windows installation date,
computer name, machine GUID, environment values), and
general data exfiltration.

The harvest scope per the project README covers passwords
and cookies, credit cards, cryptocurrency wallets and
mnemonics, browser extensions, Wi-Fi networks, gaming
session tokens (Steam, Minecraft), VPN configurations,
Discord tokens, screenshots and webcam captures, process
lists, and registry information. The panel-side
`Information.txt` opens with the verbatim
`📋 MeltStealer - Report:` clipboard-emoji banner and
ships a 15-field emoji-prefixed identity block (Date /
System / Username / CompName / CPU / RAM / IP / Location
/ Zip Code / Coordinates / Timezone / ISP / Organization
/ AS) plus six section blocks (Browsers / Software /
Device / File Grabber / Domains info / Installation) with
U+221F right-angle-arrow sub-items per section.

**Also known as:** `melt-stealer`, `Melt Stealer`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

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

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
📋 MeltStealer - Report:
📅 Date: 2025-12-01 <ip>
💻 System: Microsoft Windows NT 6.2.9200.0
👤 Username: Pixel
🖥️ CompName: DESKTOP-9KA1BNT
🧠 CPU: AMD Ryzen 3 3200G with Radeon Vega Graphics    
💾 RAM: 6 GB
🌐 IP: <ip>
🗺️ Location: Buenos Aires, Buenos Aires, Argentina
📮 Zip Code: 1772
🧭 Coordinates: -36, -59,9964
⏰ Timezone: America/Argentina/Buenos_Aires
🔌 ISP: Telecom Argentina S.A.
🏢 Organization: Telecom Argentina S.A
🔧 AS: AS7303 Telecom Argentina S.A.

🌐 Browsers:
   ∟ Passwords: 209
   ∟ Cookies: 42
   ∟ AutoFill: 530
   ∟ History: 21990
   ∟ Bookmarks: 68
   ∟ Downloads: 866
   ∟ Extensions: 9
💿 Software:
🔌 Device:
   ∟ Windows product key
   ∟ Desktop screenshot
📁 File Grabber:
🔍 Domains info:
   ∟ Banking services (No data)
   ∟ Cryptocurrency services (No data)
   ∟ Porn websites
⚙️ Installation:
   ∟ Startup disabled
   ∟ Clipper not installed
   ∟ Keylogger not installed
```

## Detection

The opening `📋 MeltStealer - Report:` banner is the
family`s verbatim self-identification and the cleanest
fingerprint anchor. The U+1F4CB CLIPBOARD emoji prefix
plus the `MeltStealer - Report:` literal cannot collide
with any other documented family. Pairing with the
`🗺️ Location:` geo field confirms the body matches the
panel template rather than a CTI report quoting the
banner. During triage, the `⚙️ Installation:` section
flags `Clipper installed` and `Keylogger installed` for
modules the operator enabled on the build; check those
flags to understand the active feature set on this
specific victim.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1217 Browser Information Discovery](https://attack.mitre.org/techniques/T1217/)
- [T1113 Screen Capture](https://attack.mitre.org/techniques/T1113/)
- [T1125 Video Capture](https://attack.mitre.org/techniques/T1125/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)

## Related families

- [`phantom-stealer`](../phantom_stealer/)
- [`stealerium`](../stealerium/)
- [`pupkin-stealer`](../pupkin_stealer/)

## References

- https://github.com/Vorolski/melt-stealer
- https://any.run/report/a934dc7424ecc3d0e20848f36e44d1473b1908761cd41a4021d31f6d91c5ee34/ea0e35cd-70cc-4c19-aa20-532f49f278c7
