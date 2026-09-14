# CSMatchesFilterStealer

CSMatchesFilterStealer is a CyStack-coined identifier for a
four-line `Information.txt` written by a Telegram broker bot
that pre-scans the victim's harvested cookies and passwords
for high-value domain or keyword hits, then rolls the
per-target counts into a single `Matches:` line so prospective
buyers can rank logs before purchase. The body is `IP:` /
`Country:` / `User:` / `Matches:`, no banner, no section
dividers, no trailing footer. The `Country:` value follows the
dual-token `ISO2 - Name` form (`BD - Bangladesh`), which is
the format's narrowest disambiguator across flat-key shapes.

The format is a broker-side caption rather than a stealer
family's own writer output, so the underlying family for any
given log is not recoverable from this panel alone: multiple
stealers can feed into the broker's pre-scan pipeline. The
`Matches:` enrichment list (per-domain or per-keyword counts)
is panel-side metadata, not victim-side data, so it is
intentionally not retained as victim observables. Observed targets in
the rollup line include freelancer / payment platforms
(`payoneer.com`, `upwork.com`, `gumroad.com`), social-network
accounts (`facebook.com`, `studio.youtube.com`), and free-form
financial keywords (`bank`, `payout`).

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
public stealer-format catalogues do not document a family that
emits this exact four-line `IP` / `Country` / `User` /
`Matches:` shape.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Broker pre-scan caption`, `Matches rollup filter bot`
- Variants observed: **1**
- CyStack observations represented: **9**

## What it targets

- Browser-saved credentials and cookies (counted by `Matches:` rollup)
- Freelancer payment accounts (Payoneer, Upwork, Gumroad)
- Social-network sessions (Facebook, YouTube Studio)
- Free-form financial keywords (bank, payout)

## Detection notes

Fingerprint requires four line-anchored anchor keys
(`IP:`, `Country:`, `User:`, `Matches:`) plus the
`Country: ISO2 - Name` dual-token country form. The four
anchors alone would collide with any generic flat-key
panel that ships an `IP:` / `Country:` / `User:` triple;
requiring the country value to carry both the two-letter
ISO code and the full name joined by ` - ` is what
narrows the match. The `Matches:` rollup itself is
broker-side metadata, not victim-side data, so during
triage treat the per-target counts as a relevance signal
(the broker advertised the log because these accounts
were valuable) rather than as direct evidence of
compromise for those services. Treat the family
attribution as unknown: multiple underlying stealers can
feed into the broker's pipeline, and the panel does not
preserve the original writer's family signature.

## Observed log variants

### `v_e969c3c4ba0bb12611cb41de10a5c23f`

- Format ID: `cs-matches-filter-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **9**
- Representative sample: [open sample](samples/v_e969c3c4ba0bb12611cb41de10a5c23f/sample.txt)
- Sample SHA-256: `21f0660b9ade211b7833f67f3471828a5adc27506e0b063ac6f9f85a0cffcdaa`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `IP`, `Matches`, `User`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSCrownBuildStealer](../cs-crown-build-stealer/)
- [CSMainLootStealer](../cs-main-loot-stealer/)
- [RL Stealer](../rl-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
