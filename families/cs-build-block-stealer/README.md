# CSBuildBlockStealer

CSBuildBlockStealer is a CyStack-coined identifier for a
`UserInformation.txt` shape distributed via `@ft7links`
aggregator packs that the operator mislabels as `redline`. The
body is a flat key/value block whose distinguishing feature is
a four-line `Build Path:` / `Build ID:` / `Build Version:` /
`Build Comment:` group plus an `Active window:` line and a
two-letter `GEO:` country code. None of the canonical Redline
anchors (`Operation System:` typo, `FileLocation:`,
`Hardwares:` block, `Anti-Viruses:` block) appear, so the
aggregator label cannot be trusted.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
public stealer-format catalogues do not document a family
using this exact `Build` block plus `Active window:` plus
`GEO:` field set. Aurora ships `Build ID` paired with `Build
Group`; RisePro ships `Build` and `HWID` only; Mystic Stealer
is documented at the protocol level rather than the
log-template level - none match.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **369**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- System hardware and locale inventory

## Detection notes

Requires all five line-anchored keys: `Build Path:`,
`Build ID:`, `Build Version:`, `Build Comment:`, and
`Active window:`. The five-key combo is unique across
the catalog; a stray document quoting one or two
of the field names cannot produce a false match.
Treat the family attribution as provisional during triage
- the aggregator labels the pack `redline` but the body
lacks every canonical Redline anchor.

## Observed log variants

### `v_bf1a41ea43d38a0ab65502c1f7d81936`

- Format ID: `cs-build-block-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `4-key Build block (Path/ID/Version/Comment)`
- Distribution channel: `@ft7links`
- Attribution confidence: **unknown**
- Historical records represented: **369**
- Representative sample: [open sample](samples/v_bf1a41ea43d38a0ab65502c1f7d81936/sample.txt)
- Sample SHA-256: `4d700e61e5c0fcc1772af67f8b8ee8b2c058923251721b03102aca4b369a7e9d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Active window`, `Build Comment`, `Build Path`, `Build Version`


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

## Observed distribution channels

- <https://t.me/ft7links>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
