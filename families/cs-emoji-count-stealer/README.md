# CSEmojiCountStealer

CSEmojiCountStealer is a CyStack-coined identifier for an
`Information.txt` panel divided into four `- IP Info -` /
`- PC Info -` / `- Other Info -` / `- Log Info -` sections
with dash-space-name-space-dash captions. The Log Info
section ships a `Build:_____` placeholder and a per-category count line for each artifact type using ✅ (data
harvested) or ❌ (category empty) emoji indicators. Eight
count categories are tracked: `Passwords:`, `Cookies:`,
`Wallets:`, `Files:`, `Credit Cards:`, `Servers FTP/SSH:`,
`Discord Tokens:`, `Others:`. Observed inside
`!! 2025 NOV.part001.rar` aggregator packs in
`[<CC>]<IP>/Information.txt` victim folders.

The body carries `FileLocation:` and `Current Language:`
field names that match Redline canonical, but the
surrounding section structure (dash-space captions, emoji
count indicators, `Build:_____` placeholder) does not
match Redline canonical (no `Operation System:` typo, no
`Hardwares:` block, no `Anti-Viruses:` block). Family
attribution is provisional pending a published threat-intel mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Dash-section emoji-count Information.txt panel`, `4-section ✅/❌ checkmark stealer`
- Variants observed: **1**
- CyStack observations represented: **119**

## What it targets

- Browser-saved credentials
- Browser cookies and session tokens
- Cryptocurrency wallets
- Grabbed files
- Credit cards
- FTP and SSH server credentials
- Discord tokens
- Per-victim IP / country / city / ISP geolocation

## Detection notes

Fingerprint requires three section-header substrings
(`- IP Info -`, `- PC Info -`, `- Log Info -`) plus at
least one emoji count indicator (U+2705 ✅ or U+274C ❌).
The three-section trio is unique across this catalog, and
the emoji confirmation rejects unrelated text that uses
the dash-delimited captions for prose section markers.
During triage, treat the family attribution as unknown:
the `FileLocation:` and `Current Language:` Redline-canonical field names suggest Redline lineage but the
overall body shape does not match Redline canonical.

## Observed log variants

### `v_74aa5cc181db85383521d875e06d07c2`

- Format ID: `cs-emoji-count-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **119**
- Representative sample: [open sample](samples/v_74aa5cc181db85383521d875e06d07c2/sample.txt)
- Sample SHA-256: `52b51535eda98f0e3714e37c99a9fb70d530a76a007280af9f45f223f2aab0ed`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `- IP Info -`, `- Log Info -`, `- PC Info -`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
