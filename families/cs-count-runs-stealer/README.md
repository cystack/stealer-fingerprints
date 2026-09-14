# CSCountRunsStealer

CSCountRunsStealer is a CyStack-coined identifier for an
11-line `Information.txt` panel summary framed by U+2500
heavy box-drawing characters and split into two captioned
sections, `SYSTEM INFORMATION` and `EXTRACTION RESULTS`.
Observed inside `!! 2025 NOV.part001.rar` aggregator packs
in `[<TAG>]<IP>/Information.txt` victim folders (e.g.
`[AK]<IPv4>/Information.txt`), distributed through the
`@BRADLOGS` Telegram aggregator that resells multiple
underlying stealer families.

The SYSTEM INFORMATION block ships five fields: a combined
`Location: City, Country (ISP)` line (consumer-grade IP
geolocation API shape), `Device:` hostname, `OS:` in
`Windows <major>.<minor> (Build <build>)` form, `IP:`, and
a `Time:` value in the JS `toLocaleString` shape
`MM/DD/YYYY, HH:MM:SS (UTC[+-]HH:MM)`. The EXTRACTION
RESULTS block ships five count fields: `Cookies:`,
`Passwords:`, `Facebook:`, `CC with CVC:` (the awkward
`with CVC` phrasing for credit-card-with-CVV), and
`Count Runs:` (an execution counter likely incremented
across repeated runs on the same victim). Family
attribution is provisional pending a published threat-intel mapping for this caption format. The closest
documented relative is Phemedrone, which also writes a
per-victim `Information.txt` summary but uses dashed
section captions (`----- Geolocation Data -----` /
`----- Hardware Info -----`) and a different field set.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX aggregator box-drawing panel summary`, `!! 2025 NOV.part001 EXTRACTION RESULTS panel`
- Variants observed: **1**
- Historical Logmine records represented: **97**

## What it targets

- Browser cookies (count flag plus harvested body in sibling files)
- Browser saved credentials (count flag plus body)
- Credit cards with CVC (count flag)
- Facebook sessions (count flag)
- Host metadata: hostname, OS version with build
- Victim public IP plus city / country / ISP enrichment

## Detection notes

Fingerprint requires the `EXTRACTION RESULTS` mid-frame
caption AND the `Count Runs:` field key AND a U+2503 `┃` heavy
vertical bar. The `Count Runs:` field name is unique across
the registry, and the box-drawing frame rejects any free-form
report that happens to mention the two captions. During
triage, treat the family attribution as unknown: the panel
summary is the metadata view of an underlying stealer whose
canonical name has not been mapped to this caption layout in
any public reporting. The `Facebook:` and `CC with CVC:` count
fields suggest the underlying stealer prioritises
social-account session theft alongside browser credential
harvesting.

## Observed log variants

### `v_e5b07600b730bdb57cd9363fc77e23db`

- Parser: `logmine.ioc.parsers.cs_count_runs_stealer.CSCountRunsStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **97**
- Representative sample: [open sample](samples/v_e5b07600b730bdb57cd9363fc77e23db/sample.txt)
- Sample SHA-256: `311b49be46062d3264464794a1e7ff623313f365a9656639596a354846eab194`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Count Runs:`, `EXTRACTION RESULTS`
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

- [Phemedrone](../phemedrone/)
- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
