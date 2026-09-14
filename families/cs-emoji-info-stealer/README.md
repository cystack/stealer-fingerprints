# CSEmojiInfoStealer

CSEmojiInfoStealer is a CyStack-coined identifier for a
nineteen-line `Information.txt` panel summary where every
visible field carries a leading Unicode emoji glyph, observed
inside `!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` victim folders
(e.g. `1121_CH_<IPv4>_18-10-25/`). The body opens with a
three-line victim header (`🖥️ User:`, `🌐 IP:`, `📋 OS Name:`
carrying Python's `platform.platform()` dash-joined string),
six single-line counts (`🍪 Cookies:`, `🔒 Passwords:`, `📖
History:`, `📚 Bookmarks:`, `📦 Extensions:`, `💳 Cards:`), and
closes with three free-form section blocks (`📁 Other
applications:`, `💸 Crypto wallets:`, `📝 Grabbed files:`) that
use the literal placeholders `No wallets found` and `No
grabbed files found` when empty.

The `platform.platform()` OS-string format points at a
Python-built grabber, and the emoji-on-every-field convention
plus the `📝 Grabbed files:` section header is the panel's
developer-side quirk. Family attribution is provisional
pending a published threat-intel mapping for this exact field
set. The closest documented relative is PupkinStealer, which
also uses emoji-prefixed fields but ships a different label
set (`🔸 PC:`, `🆔 SID:`, `🔐 Found passwords:`, `📷 Screenshot:`,
`📂 Desktop files:`) and a `Coded by Ardent` watermark not seen
here.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator emoji-prefixed panel summary`
- Variants observed: **1**
- Historical Logmine records represented: **5,414**

## What it targets

- Browser saved credentials, cookies, history, bookmarks (counts only)
- Browser autofill and credit-card data (count flag)
- Browser extensions (count flag)
- Other applications of interest (per-victim list)
- Crypto wallet extensions and desktop clients (per-victim list)
- Grabbed user files (per-victim list)

## Detection notes

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

## Observed log variants

### `v_0d792db01a0756f7e24d1c85651bfea1`

- Parser: `logmine.ioc.parsers.cs_emoji_info_stealer.CSEmojiInfoStealerParser`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **5,414**
- Representative sample: [open sample](samples/v_0d792db01a0756f7e24d1c85651bfea1/sample.txt)
- Sample SHA-256: `00c1d34544696aa93c8919692d5f642d64d15d0456cf894b1ef25537032dadef`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `📝 Grabbed files:`
- Field labels: `🌐 IP`, `📋 OS Name`, `🖥️ User`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSBrowersStealer](../cs-browers-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)

## Related external families

- `pupkinstealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
