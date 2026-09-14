# CSDashPlusSepStealer

CSDashPlusSepStealer is a CyStack-coined identifier for an
11-stanza `Information.txt` panel summary that the `@BRADLOGS
/ BRADMAX` aggregator distributes inside `!! 2025
NOV.part001.rar` packs. Per-victim folders follow the
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt` layout.
Every value is written on its own line, padded with blank
lines on both sides, and a `---+---+---+---+---+---+---`
dash-plus rule separates the panel-summary block from a
three-line trailing block of opaque Facebook-Ads-Manager
artefacts.

The panel-summary block carries `country : City-Region-CC`
with a space before the colon, an `ID :` value shaped like a
15-digit Facebook user ID, a bare
`Windows-<major>-<release>-<build>-SP0` line in the Python
`platform.platform()` shape, a `Username:` line, and a
pipe-separated `CK: <n> | Card: <n>` count line. The trailing
block ships three values: a short alpha token, an integer, and
a `T-` prefixed 18-digit number (likely Facebook page
initials, page-likes count, and ad-account ID, though the
schema has no slot for these so they are dropped at parse
time). Family attribution is provisional pending a published
threat-intel mapping for this layout. The closest documented
relatives are NodeStealer and SYS01, both Facebook-targeting
families, but neither publishes a sample log showing this
exact label set or the `---+---+---` rule.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX dash-plus separator panel summary`, `@BRADLOGS Facebook-ID panel summary`
- Variants observed: **1**
- CyStack observations represented: **120**

## What it targets

- Browser cookies (count flag only)
- Credit cards (count flag only)
- Facebook user ID
- Facebook Ad account ID (T-prefixed)
- Host OS via Python `platform.platform()` output
- Windows username
- Victim country (ISO 3166-1 alpha-2)

## Detection notes

Fingerprint requires the `---+---+---+---+---+---+---`
dash-plus rule AND `country :` (with space before the colon)
AND `CK:` AND `| Card:`. Four anchors together cannot collide
with any other cataloged format. During triage, treat the
family attribution as unknown: the panel summary is the
metadata view of an underlying stealer whose canonical name
has not been mapped to this layout in any public reporting.
The Facebook user ID plus T-prefixed ad-account ID strongly
suggest a Facebook-business-account targeting family in the
NodeStealer / SYS01 / Album-Stealer lineage, but no public
source confirms the mapping.

## Observed log variants

### `v_229be1e07e9e623014faf573e5ca36b7`

- Format ID: `cs-dash-plus-sep-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Layout: `rich-summary-tail`
- Historical records represented: **120**
- Representative sample: [open sample](samples/v_229be1e07e9e623014faf573e5ca36b7/sample.txt)
- Sample SHA-256: `a73abf8cf6019727813bc41124b5ddb46d42519fba783916f286eb99aeb0ae42`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `---+---+---+---+---+---+---`, `\| Card:`
- Field labels: `CK`, `country`, `ID`, `Username`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSFacebookProfileStealer](../cs-facebook-profile-stealer/)
- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSCountRunsStealer](../cs-count-runs-stealer/)

## Related external families

- `nodestealer`
- `sys01-stealer`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
