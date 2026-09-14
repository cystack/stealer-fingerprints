# CSFacebookMarketStealer

CSFacebookMarketStealer is a CyStack-coined identifier for a
Facebook-account-resale marketplace listing emitted as
`Information.txt` inside `!! 2025 NOV.part001.rar` `@BRADLOGS
/ BRADMAX` aggregator packs. Per-victim folders follow the
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` layout. The body is a
four-line record: a 15-digit Facebook user ID plus display
name plus date of birth header, a crown emoji pricing tier
line, a related-pages line, and a raw Facebook session cookie
string carrying `c_user`, `xs`, `datr`, `sb`, `fr`, `ps_l`,
`ps_n`, `wd`.

The pricing-tier line uses U+1F451 `👑` followed by a U+2219
`∙` BULLET OPERATOR separator chain that carries asking price
(with U+1F4B6 `💶` euro-banknote suffix), age and ratio stats,
trading currency, ISO 3166 country code, a `TS[<n>-<m>]`
trust-score bracket, and a U+2119 `ℙ` category flag. The body
is most likely a panel-side post-processing artifact where a
raw stealer cookie dump has been converted into a resale
listing for an underground Facebook account marketplace.
Family attribution is provisional pending a published
threat-intel mapping for this layout. The closest documented
relatives are NodeStealer, SYS01, and the public
Facebook-Profile-Stealer write-ups: each collects the `c_user`
and `xs` cookie pair from Facebook accounts, but none
publishes a sample log showing this exact emoji-tagged
marketplace listing shape.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Facebook account marketplace listing`, `Crown-emoji Facebook resale Information.txt`
- Variants observed: **1**
- CyStack observations represented: **925**

## What it targets

- Facebook user ID
- Facebook session cookies (`c_user`, `xs`, `datr`, `sb`, `fr`)
- Facebook account creation year and trust-score metadata
- Account display name and date of birth
- Related Facebook page IDs

## Detection notes

Fingerprint requires U+1F451 `👑` crown glyph AND `c_user=` AND
`xs=` AND `datr=` cookie-name substrings. Four anchors
together cannot collide with any other cataloged format: the
crown glyph alone rules out every system-info shape, and the
three Facebook session-cookie name substrings rule out any
non-Facebook artifact that happens to carry a crown emoji.
During triage, treat the raw `c_user`, `xs`, and `datr` cookie
values as exfiltrated session secrets that grant attacker-side
Facebook account takeover. Family attribution is unknown: the
underlying stealer that scraped the original cookie dump has
not been mapped to this marketplace-listing layout in any
public reporting.

## Observed log variants

### `v_cd44448921562de22da01df5270af56b`

- Format ID: `cs-facebook-market-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **925**
- Representative sample: [open sample](samples/v_cd44448921562de22da01df5270af56b/sample.txt)
- Sample SHA-256: `c631122ad6230c405c5e4d526c8b5869185f87f579e7c9c59eaee9e715d6f7ad`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `c_user=`, `datr=`, `xs=`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSFacebookProfileStealer](../cs-facebook-profile-stealer/)
- [CSDashPlusSepStealer](../cs-dash-plus-sep-stealer/)

## Related external families

- `nodestealer`
- `sys01-stealer`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
