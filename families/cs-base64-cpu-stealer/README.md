# CSBase64CpuStealer

CSBase64CpuStealer is a CyStack-coined identifier for a flat
`UserInformation.txt` panel observed inside `@BRADMAX 21300
APRIL.part1.rar` Telegram aggregator packs at `@BRADMAX
<count> <MONTH>/[<CC>]<IPv4>/UserInformation.txt` victim
folders. The body has a compact 13-field flat `Key: Value`
layout with three distinctive quirks: an `L_HWID:` field that
duplicates the `HWID:` value in lowercase (the `L_` prefix
appears to stand for lowercase), a `CPU Name Base64:` field
that base64-serialises the plain `CPU Name:` value above
(verified: the sample string
`SW50ZWwoUikgQ29yZShUTSkgaTctODcwMEsgQ1BVIEAgMy43MEdIeg==`
decodes to `Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz`), and a
paired `Log Date:` plus `Grab Start Date:` header that records
both the harvest start and the panel-render time in the same
`DD MMM YYYY HH:MM UTC[+-]H` shape.

The panel splits the IP geolocation lookup into two adjacent
fields: `IP Location: <country name>, <city name>`
(human-readable form) plus `IP Country Code: <ISO2>` (the
machine-readable alpha-2 code). The OS field uses the
Redline-canonical typo `Operation System:` (sic, `Operation`
rather than `Operating`), and the AV field uses the
Vidar-style plural `AVs:` key. The mix of Redline and Vidar
spelling conventions plus the Russian-adjacent UTC+3 timezone
in the sample points at a Russian-speaking developer who
studied Redline's output format but adopted some Vidar
field-name conventions. The redundant base64 duplicate of the
CPU name may be a panel-side workaround for character-set
corruption on ASCII-hostile channels.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
community catalogues do not attest a family emitting exactly
this 13-field layout with the L_HWID / CPU Name Base64
duplicates. Candidates ruled out: Aurora (different field
spellings, JSON wire format), Redline / Redline-like
(different identity preamble), Vidar (uses AV singular and has
a bracketed section header), StealC v2 (base64 lives in the
wire protocol, not the log file), Torg Grabber, CGrabber,
Marco Stealer, Raven Stealer.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `L_HWID + CPU Name Base64 duplicate-field panel`, `BRADMAX @BRADMAX-pack UserInformation.txt variant`
- Variants observed: **0**

## What it targets

- Public IPv4 plus split human-readable and ISO2 geolocation
- Machine name, OS user name
- HWID (uppercase and lowercase base16 duplicates)
- CPU name (plain and base64-serialised duplicates)
- OS caption (with Redline-canonical `Operation` typo)
- Installed antivirus product list
- Log render time and grab start time

## Detection notes

Fingerprint requires all five line-anchored keys: `L_HWID:`
AND `CPU Name Base64:` AND `Grab Start Date:` AND `IP Country
Code:` AND `IP Location:`. The combination is unique across
the registry because no other parser emits the lowercase-HWID
duplicate, the base64-serialised CPU name, or the split
human-vs-ISO2 geolocation pair. During triage, treat the
sample as weak attribution to an unnamed private stealer that
borrows Redline's `Operation System:` field name; if a public
writeup later identifies the underlying builder, rename the
family constant rather than adding a duplicate parser. The
`L_HWID` and `CPU Name Base64` duplicates are lossless copies
of the paired plain field, so ignoring them during IOC
composition loses no information.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [Vidar](../vidar/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
