# CSEmojiInfoStealer

CSEmojiInfoStealer is a CyStack-coined identifier for a
nineteen-line `Information.txt` panel summary where every
visible field carries a leading Unicode emoji glyph, observed
inside `!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` victim folders
(e.g. `1121_CH_149.81.6.62_18-10-25/`). The body opens with
a three-line victim header (`🖥️ User:`, `🌐 IP:`,
`📋 OS Name:` carrying Python's `platform.platform()`
dash-joined string), six single-line counts (`🍪 Cookies:`,
`🔒 Passwords:`, `📖 History:`, `📚 Bookmarks:`,
`📦 Extensions:`, `💳 Cards:`), and closes with three
free-form section blocks (`📁 Other applications:`,
`💸 Crypto wallets:`, `📝 Grabbed files:`) that use the
literal placeholders `No wallets found` and
`No grabbed files found` when empty.

The `platform.platform()` OS-string format points at a
Python-built grabber, and the emoji-on-every-field
convention plus the `📝 Grabbed files:` section header is
the panel's developer-side quirk. Family attribution is
provisional pending a published threat-intel mapping for
this exact field set. The closest documented relative is
PupkinStealer (Picus Security write-up), which also uses
emoji-prefixed fields but ships a different label set
(`🔸 PC:`, `🆔 SID:`, `🔐 Found passwords:`,
`📷 Screenshot:`, `📂 Desktop files:`) and a `Coded by
Ardent` watermark not seen here.

**Also known as:** `!! 2025 OCT aggregator emoji-prefixed panel summary`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials, cookies, history, bookmarks (counts only)
- Browser autofill and credit-card data (count flag)
- Browser extensions (count flag)
- Other applications of interest (per-victim list)
- Crypto wallet extensions and desktop clients (per-victim list)
- Grabbed user files (per-victim list)

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `unknown`

**Filenames:** `Information.txt`, `System.txt`

**Sample (sanitized):**

```
🖥️ User: user
🌐 IP: <ip>
📋 OS Name: Windows-10-10.0.19045-SP0

🍪 Cookies: 753
🔒 Passwords: 396
📖 History: 34867
📚 Bookmarks: 84
📦 Extensions: 5
💳 Cards: 0

📁 Other applications:
Discord, Telegram

💸 Crypto wallets:
No wallets found

📝 Grabbed files:
No grabbed files found
```

## Detection

Fingerprint requires the `📝 Grabbed files:` substring (the
memo-emoji-prefixed section header is the disambiguator -
`Grabbed files` is unusual phrasing not used by
PupkinStealer or the other emoji-prefixed grabbers
surveyed) plus three line-anchored header keys
`🖥️ User: `, `🌐 IP: `, `📋 OS Name: `. The `🖥️` glyph
carries Python's variation selector U+FE0F that must be
preserved in source code. During triage, treat the family
attribution as unknown: the panel summary lacks any
harvested credential bodies, and the underlying stealer
cannot be identified from the summary fields alone.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`pupkinstealer`](../pupkinstealer/)
- [`cs-browers-stealer`](../cs_browers_stealer/)
- [`cs-gads-panel-stealer`](../cs_gads_panel_stealer/)

## References

- https://www.picussecurity.com/resource/blog/pupkinstealer-net-infostealer-using-telegram-for-data-theft
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
