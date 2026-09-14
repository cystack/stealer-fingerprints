# Category Stealer

Unidentified Category-block stealer observed inside the
`@BRADMAX 20000 APRIL-MAY` and `@bugatti_cloud` aggregator
packs. The `Information.txt` is divided into three
`Category:` sections each separated by a 60-character dash
divider, with column-aligned key/value records under each.
Family attribution is provisional pending a published
threat-intel mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **2**
- CyStack observations represented: **376**

## What it targets

- No target inventory published yet.

## Detection notes

Three `Category:` headers separated by 60-dash dividers,
with column-aligned (rather than dash-prefixed) field rows,
is the cleanest signature. A stripped variant emits only
the `User` and `System` blocks with the `Hardware` block
dropped.

## Observed log variants

### `v_6207ef922a5d4ce9cdbf6bc9de7c25e9`

- Format ID: `category-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-ip-country`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_6207ef922a5d4ce9cdbf6bc9de7c25e9/sample.txt)
- Sample SHA-256: `f0205a7d51757b3c1fef49f00edac33c10336b44ff904dd5d9d86005d4ecc56e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Category: User`
- Field labels: `Country`, `IP`

### `v_93495bf8f14283ee6d5b4a5905b5ece2`

- Format ID: `category-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-system-sections`
- Historical records represented: **375**
- Representative sample: [open sample](samples/v_93495bf8f14283ee6d5b4a5905b5ece2/sample.txt)
- Sample SHA-256: `be55a1214cddcab3f472fe2e30d202cf727db2b36b0a3c52ed2d530043238d81`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Category: System`, `Category: User`
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

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
