# CSAzureBuildStealer

CSAzureBuildStealer is a CyStack-coined identifier for a
dash-prefixed `System.txt` panel observed inside
`!! 2025 JULY` aggregator packs under `[<CC>]<IP>/System.txt`
victim folders. Every line is shaped `- Key: Value` with a
leading ASCII hyphen plus space. The panel ships an
`Azure Build:` date stamp and a `Worker Tag:` operator-set
label as the first two fields, then a fixed system summary
covering OS, hardware, network, and the local clock.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The `Worker Tag` value
observed in the first sample was `XwormExp`, which hints at
an operator affiliation with XWorm but does not match XWorm's
own published log shape, so attribution to XWorm would be
misleading.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **2,480**

## What it targets

- System hardware and locale inventory
- Anti-virus product name (Windows Defender / installed AV)
- Geo-IP country code

## Detection notes

Line-anchored `- Azure Build:` plus `- Worker Tag:` plus
`- HWID:` plus `- Time Save Log:` is the fingerprint. The
`- ` dash prefix is part of every key literal so a bare
`Azure Build` mention (Microsoft Azure DevOps build-task
documentation uses that phrase) cannot produce a false match.
Timestamps are in `DD.MM.YYYY HH:MM:SS` form and the
`Time Zone` field is bare `UTC<N>` with no sign or minutes.

## Observed log variants

### `v_6fc6c2fd95c996b3102846257cf1e256`

- Format ID: `cs-azure-build-stealer`
- Observed filenames: `System.txt`
- Panel brand: `Azure Build`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2,480**
- Representative sample: [open sample](samples/v_6fc6c2fd95c996b3102846257cf1e256/sample.txt)
- Sample SHA-256: `ef9b784f4feede70941b4fe5cd457bf9e0b3165263ec9086304878fd6bc682ba`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Azure Build`
- Field labels: `Azure Build`, `HWID`, `Time Save Log`, `Worker Tag`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
