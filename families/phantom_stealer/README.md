# Phantom Stealer

Phantom Stealer is a Stealerium-fork info-stealer sold as a
MaaS through the `phantomsoftwares.site` storefront and the
`@Phantomsoftwares_bot` Telegram marketplace, contact handle
`@Oldphantomoftheopera`. Proofpoint, Group-IB, Dark Atlas, and
Malpedia document the family as active since February 2025
with a NativeAOT `pdh.dll` outer loader plus a .NET inner
payload (two-layer attack chain).

Two `Information.txt` panel shapes are claimed by separate
parsers in this project:

- v2 emoji-section panel (canonical, curated-CTI confirmed):
  banner `*Phantom stealer v2.0 - Report:*` with `📅 Date:`,
  `🖥️ System:`, `💻 CompName:`, `🌐 External IP:` field lines
  organised under `*HARDWARE INFORMATION*` /
  `*NETWORK INFORMATION*` / `*DETECTED DOMAINS*` /
  `*BROWSER DATA*` / `*SOFTWARE & ACCOUNTS*` /
  `*DEVICE INFORMATION*` / `*INSTALLATION STATUS*`
  Markdown-bold section banners separated by U+2501 heavy
  horizontal `━` rules. Trailing operator-attribution block
  carries `contact` / `marketplace` / `website` URLs.
- v1 flat key-colon-value `UserInformation.txt` layout
  (`Username:` / `PC-name:` / `Ip:` / `Location:` /
  `System:` / `Admin rights:`). The v1 layout was originally
  flagged as provisionally-attributed Phantom; the v2
  emoji-panel research has not directly confirmed the v1
  key-value shape, so v1 attribution remains tentative even
  though it is claimed under the same canonical family
  literal pending a published mapping.

**Also known as:** `Phantom Stealer`, `Phantom stealer v2.0`

**Variants observed:** 2
**Top attribution confidence:** `high`
**Operator panel brands:** `Phantom stealer v2.0`, `Sys_root v-200`
**Distribution channels:** `@Phantomsoftwares_bot`

## Targets

- Browser saved credentials, cookies, autofill, history, bookmarks
- Crypto wallet extensions and desktop wallet clients
- Discord and Telegram session data (Tdata)
- Windows product key extraction
- Desktop screenshot capture
- Banking / crypto / adult site domain detection summary
- System hardware (CPU, GPU, RAM, screen, webcam, power) inventory
- Network info (gateway, internal, external IP)

## Variants

### `Phantom stealer v2.0`

**Fingerprint id:** `phantom_stealer_v2_0`

**Distribution channel:** `@Phantomsoftwares_bot`

**Attribution confidence:** `high`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
😹 *Phantom stealer v2.0 - Report:*
━━━━━━━━━━━━━━━━━━━━━━
📅 Date: 2025-10-19 <ip> AM
🖥️ System: Microsoft Windows 10 Pro (64 Bit)
👤 Username: Frank
💻 CompName: DESKTOP-D019GDM
🌐 Language: 🇺🇸 en-US
🛡️ Antivirus: Windows Defender

*HARDWARE INFORMATION*
━━━━━━━━━━━━━━━━━━━━━━
⚡ CPU: Intel(R) Celeron(R) CPU G3930TE @ 2.70GHz
🎮 GPU: ASPEED Graphics Family(WDDM)
📊 RAM: 16259MB
🔋 Power: NoSystemBattery (100%)
📺 Screen: 1280x1024
📷 Webcams: 0

*NETWORK INFORMATION*
━━━━━━━━━━━━━━━━━━━━━━
🌐 Gateway IP: <ip>
🔒 Internal IP: <ip>
🌍 External IP: <ip>

*DETECTED DOMAINS*
━━━━━━━━━━━━━━━━━━━━━━
   - 🏦 Banking Services (No data)
   - 💰 Crypto Services (No data)
   - 🔞 Adult Websites (No data)

*BROWSER DATA*
━━━━━━━━━━━━━━━━━━━━━━
   ∟ 🔑 Passwords: 1
   ∟ 🍪 Cookies: 58
   ∟ 📝 AutoFill: 1
   ∟ 📜 History: 32
   ∟ 🔖 Bookmarks: 5

*SOFTWARE & ACCOUNTS*
━━━━━━━━━━━━━━━━━━━━━━
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `Sys_root v-200`

**Fingerprint id:** `sys_root_v_200`

**Attribution confidence:** `high`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
🔍 * Sys_root  v-200 Security is just an illusion $$$
━━━━━━━━━━━━━━━━━━━━━━
📅 Date: 2025-07-23 <ip> AM
🖥️ System: Microsoft Windows 10 Pro Education (64 Bit)
👤 Username: sys_root
💻 CompName: DESKTOP-U6ED9SP
🌐 Language: 🇺🇸 en-US
🛡️ Antivirus: Windows Defender

*HARDWARE INFORMATION*
━━━━━━━━━━━━━━━━━━━━━━
⚡ CPU: AMD Ryzen 5 PRO 2500U w/ Radeon Vega Mobile Gfx
🎮 GPU: AMD Radeon(TM) Vega 8 Graphics
📊 RAM: 15293MB
🔋 Power: Low (17%)
📺 Screen: 1920x1080
📷 Webcams: 1

*NETWORK INFORMATION*
━━━━━━━━━━━━━━━━━━━━━━
🌐 Gateway IP: <ip>
🔒 Internal IP: <ip>
🌍 External IP: <ip>

*DETECTED DOMAINS*
━━━━━━━━━━━━━━━━━━━━━━
   - 🏦 Banking Services (No data)
   - 💰 Crypto Services:
  - Bmstrading.Ca
  - Devshiltrade.Mn
  - Meet - Eth-Broz-Bkt
  - Prometheus.Ge
  - Wallet EN
   - 🔞 Adult Websites:
  - Sexygirls39.Ru

*BROWSER DATA*
━━━━━━━━━━━━━━━━━━━━━━
   ∟ 🔑 Passwords: 2964
   ∟ 💳 Credit Cards: 2
[... truncated; full sample at ``sample.txt`` (approx. 29 more lines) ...]
```

## Detection

v2 fingerprint requires the literal `Phantom stealer v2.0`
banner substring AND the `HARDWARE INFORMATION` section
header AND the `External IP:` field name. The three-anchor
combination is the panel self-banner plus structural
confirmation. v2 `Date:` values use 12-hour `AM/PM` format
with no explicit timezone marker, so log_time is normalised
to UTC via strptime rather than the to_iso_time dateparser
fallback (which would re-tag with the running host's local
offset).

v1 fingerprint requires the `PC-name:` (hyphenated) and
`Admin rights:` keys together. The v1 attribution to Phantom
Stealer is provisional - the v1 layout is structurally
distinct from the curated-CTI-confirmed v2 panel and may
represent a look-alike Russian stealer that was originally
misattributed. Treat v1-shape Phantom claims with caution
during triage.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1113 Screen Capture](https://attack.mitre.org/techniques/T1113/)
- [T1083 File and Directory Discovery](https://attack.mitre.org/techniques/T1083/)
- [T1217 Browser Information Discovery](https://attack.mitre.org/techniques/T1217/)

## Related families

- [`stealerium`](../stealerium/)

## References

- https://malpedia.caad.fkie.fraunhofer.de/details/win.phantom_stealer
- https://www.proofpoint.com/us/blog/threat-insight/not-safe-work-tracking-and-investigating-stealerium-and-phantom-infostealers
- https://www.group-ib.com/blog/phantom-stealer-credential-theft/
- https://darkatlas.io/blog/phantom-stealer-analysis-inside-the-two-layer-attack-chain-hidden-behind-a-windows-dll
- t.me/Phantomsoftwares_bot
- t.me/Oldphantomoftheopera
- https://www.phantomsoftwares.site/home
