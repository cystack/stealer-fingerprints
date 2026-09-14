# CSCrownBuildStealer

CSCrownBuildStealer is a CyStack-coined identifier for a
six-line `Information.txt` Telegram-bot caption observed
inside `!! 2025 JULY.part001.rar` aggregator packs under
`[<CC>]<IPv4>/Information.txt` victim folders. The panel is a
compact preview summary - one field per line, each line opens
with an emoji glyph attached directly to the ASCII key with no
separator space (`🚩IP:`, `👑Build:`, `🔑Passwords:`,
`🍪Cookies:`, `💰Wallets:`, `📂Applications:`). The zero-space
form is the panel quirk that distinguishes this layout from
other emoji-prefixed parsers.

The IP line carries a trailing `(<CC>)` two-letter ISO country
code in parentheses after the IPv4. The Build line carries an
operator-set build / affiliate label (`STEAM` in the observed
sample, but the slot accepts arbitrary literals). The Wallets
line names a single wallet brand (`MetaMask`) rather than
emitting a count. The Applications line uses a literal `No No
/ No` placeholder when the empty-bucket sentinel applies.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
public stealer-format catalogues do not document a family that
emits this exact six-line zero-space emoji-key shape with the
country-code-in-parens IP convention and the `Build:` operator
label slot.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **247**

## What it targets

- Browser saved credentials (count surfaced as `Passwords:`)
- Browser cookies (count surfaced as `Cookies:`)
- Cryptocurrency wallet extensions (single brand surfaced as `Wallets:`)
- Application-data presence flag (`Applications:`)

## Detection notes

Fingerprint requires three line-anchored zero-space
emoji-key literals: `👑Build:`, `🚩IP:`, and
`📂Applications:`. The three-anchor combination is unique
across the registry - no other parser emits any of the
three forms (CSEmojiInfo / CSEmojiCount / CSMainLoot /
CSRLPanel all separate the glyph from the ASCII key
with a space). During triage, treat the family
attribution as unknown: the compact six-line bot-caption shape ships only IP, country, and build-label
as IOC fields, so per-victim hostname / username /
OS / HWID / timestamp cannot be recovered from this
log alone. The `Build:` slot is operator-controlled, so
one observed value (`STEAM`) does not represent the
full label space.

## Observed log variants

### `v_eae1f957793bebdb107bbdd9b20a5a3e`

- Parser: `logmine.ioc.parsers.cs_crown_build_stealer.CSCrownBuildStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **247**
- Representative sample: [open sample](samples/v_eae1f957793bebdb107bbdd9b20a5a3e/sample.txt)
- Sample SHA-256: `b85cbebdce04009c11d64d24c265852848495ce896f7ae4fc7bf657638570742`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `👑Build`, `📂Applications`, `🚩IP`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSEmojiCountStealer](../cs-emoji-count-stealer/)
- [CSMainLootStealer](../cs-main-loot-stealer/)
- [RL Stealer](../rl-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
