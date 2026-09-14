# PCInfo Stealer

Unidentified `PC Username` / `PC Name` stealer observed inside
`@BRADMAX` aggregator packs alongside Remus, user-info bracket, Snake,
and Minimal logs. The `System_Info.txt` uses two
triple-equals section headers (`=== SYSTEM INFORMATION ===`)
and four distinctive `PC ...` field keys.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **4**

## What it targets

- No target inventory published yet.

## Detection notes

Field keys prefixed with `PC ` (`PC Username:`, `PC Name:`,
`PC Owner:`, `PC Domain:`) together with the
`=== SYSTEM INFORMATION ===` section header are the cleanest
signature.

## Observed log variants

### `v_b9fc8961d3b757934ac79ac1f776b15e`

- Format ID: `pcinfo-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **4**
- Representative sample: [open sample](samples/v_b9fc8961d3b757934ac79ac1f776b15e/sample.txt)
- Sample SHA-256: `cd2523aa9a43cacfe86e70cb0acf8791d1b0037d783fd1a3134c8a067f1fed8b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== NETWORK INFO ===`, `=== SYSTEM INFORMATION ===`
- Field labels: `PC Name`, `PC Username`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
