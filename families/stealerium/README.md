# Stealerium

Stealerium is an open-source .NET info-stealer first
published on GitHub by user `kgnfth` in April 2022. The
project ships as a buildable C# solution rather than a
paid MaaS, so anyone can compile a private build and
point it at their own Telegram bot, Discord webhook,
SMTP relay, or Gofile upload endpoint. Proofpoint
tracked a surge in Stealerium activity through 2025 and
documents the panel-side summary report as opening with
the literal `*Stealerium - Report:` Markdown-bold
banner. The v3.5.2 panel revision tags the banner with
the build version (`*Stealerium v3.5.2 - Report:*`) and
organises output into emoji-prefixed `*Hardware:*` /
`*Network:*` / `*Domains info:*` / `*Browsers:*` /
`*Software:*` / `*Device:*` / `*Installation:*` /
`*File Grabber:*` sections.

Stealerium is the upstream family for several documented
forks: Phantom Stealer (sold as MaaS, Proofpoint /
Group-IB / Malpedia), Warp Stealer (Seqrite), and
StealeriumPy (Cegeka, distributed via ClickFix). The
forks rebrand the banner while keeping the underlying
data-collection layout, so analysts triaging logs should
check the banner literal first to disambiguate.

**Also known as:** `Stealerium v3.5.2`

**Variants observed:** 1
**Top attribution confidence:** `high`
**Operator panel brands:** `Stealerium v3.5.2`
**Distribution channels:** `@BRADLOGS`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet desktop clients and browser extensions
- Discord, Telegram, Skype, Pidgin, Outlook, Element, Signal, Tox session data
- Steam, Minecraft, Epic, Uplay, Growtopia session tokens
- Wi-Fi profiles and saved passwords via netsh
- Windows product key extraction
- Desktop and webcam screenshot capture
- VPN client configurations
- File grabber configurable by extension and folder

## Variants

### `Stealerium v3.5.2`

**Fingerprint id:** `stealerium_v3_5_2`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `high`

**Field keys:**
`Antivirus`, `CPU`, `CompName`, `Date`, `External IP`, `GPU`, `Gateway IP`, `Internal IP`, `Language`, `Power`, `RAM`, `Screen`, `System`, `Username`, `Webcams count`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
😹 *Stealerium v3.5.2 - Report:*
Date: 2025-07-23 <ip> PM
System: Microsoft Windows 11 Pro (64 Bit)
Username: <redacted>
CompName: DESKTOP-B6MCDPQ
Language: 🇺🇸 es-US
Antivirus: Windows Defender

💻 *Hardware:*
CPU: AMD Ryzen 7 5700G with Radeon Graphics         
GPU: AMD Radeon(TM) Graphics
RAM: 14229MB
Power: NoSystemBattery (100%)
Screen: 1440x900
Webcams count: 0

📡 *Network:* 
Gateway IP: <ip>
Internal IP: <ip>
External IP: <redacted>

💸 *Domains info:*
   - 🏦 *Banking services* (No data)
   - 💰 *Cryptocurrency services* (No data)
   - 🍓 *Porn websites* (No data)

🌐 *Browsers:*
   ∟ 📂 AutoFill: 4
   ∟ ⏳ History: 136

🗃 *Software:*

🧭 *Device:*
   ∟ 🗝 Windows product key
   ∟ 🌃 Desktop screenshot

🦠 *Installation:*
   ∟ ⛔️ Startup disabled
   ∟ ⛔️ Clipper not installed
   ∟ ⛔️ Keylogger not installed
[... truncated; full sample at ``sample.txt`` (approx. 6 more lines) ...]
```

## Detection

High-confidence trigger: the `*Stealerium` banner token
inside a Markdown-bold pair on the first line of
`Information.txt`. The v3.5.2 build adds the version
string (`*Stealerium v3.5.2 - Report:*`); earlier builds
per Proofpoint use the version-less `*Stealerium -
Report:*` form. Disambiguate from Phantom (uses
`*Phantom stealer v2.0`), Warp, and StealeriumPy forks
by the banner literal rather than the field set, since
all four families share the underlying section layout.

During incident response, check the trailing archive
block (`🔗 [Archive download link]` plus
`🔐 Archive password is:`) for the operator-side staging
URL; the URL identifies the cloud-hosting service
(commonly Gofile) the operator chose for exfiltration
but is not victim infrastructure.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1113 Screen Capture](https://attack.mitre.org/techniques/T1113/)
- [T1125 Video Capture](https://attack.mitre.org/techniques/T1125/)
- [T1083 File and Directory Discovery](https://attack.mitre.org/techniques/T1083/)
- [T1217 Browser Information Discovery](https://attack.mitre.org/techniques/T1217/)
- [T1016 System Network Configuration Discovery](https://attack.mitre.org/techniques/T1016/)
- [T1518.001 Security Software Discovery](https://attack.mitre.org/techniques/T1518/001/)

## Related families

- [`phantom-stealer`](../phantom_stealer/)
- [`cs-bradmax-category-stealer`](../cs_bradmax_category_stealer/)

## References

- https://malpedia.caad.fkie.fraunhofer.de/details/win.stealerium
- https://www.proofpoint.com/us/blog/threat-insight/not-safe-work-tracking-and-investigating-stealerium-and-phantom-infostealers
- https://www.uptycs.com/blog/threat-research-report-team/understanding-stealerium-malware-and-its-evasion-techniques
- https://securityscorecard.com/wp-content/uploads/2024/01/Whitepaper-A-Detailed-Analysis-Of-A-New-Stealer-Called-Stealerium-.pdf
