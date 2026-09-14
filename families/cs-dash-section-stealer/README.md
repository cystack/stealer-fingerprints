# CSDashSectionStealer

CSDashSectionStealer is a CyStack-coined identifier for an
unidentified dash-section `SystemInfo.txt` variant observed
inside `@stealerboss` distribution packs nested under
`Autofill/[OF - NEW @kir3info]_<random>/` subfolders. The body
opens with HWID, IP, location, and locale fields, then a
`----- System info:` separator introducing CPU, GPU, and
hardware records.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `@stealerboss dash-section variant`
- Variants observed: **1**
- CyStack observations represented: **254**

## What it targets

- No target inventory published yet.

## Detection notes

The `----- System info:` literal (five dashes, space, colon)
is unique to this format among formats in this catalog. Pair
with `HWID:` GUID-shaped value and the `@stealerboss` channel
reference in the buy-now banner to confirm.

## Observed log variants

### `v_f82ff4bbec34c0df923d22ca12f55d1f`

- Format ID: `cs-dash-section-stealer`
- Observed filenames: `SystemInfo.txt`
- Panel brand: `----- System info: 5-dash sections`
- Distribution channel: `@stealerboss`
- Attribution confidence: **low**
- Historical records represented: **254**
- Representative sample: [open sample](samples/v_f82ff4bbec34c0df923d22ca12f55d1f/sample.txt)
- Sample SHA-256: `cfa3dcedb24a2af71c15134dcdda6969674bcd3529250e9004d85898c2ec6ea0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `----- Display info:`, `----- Installed apps:`, `----- System info:`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
