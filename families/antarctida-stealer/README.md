# Antarctida Stealer

Observed-self-label profile for logs whose `Information.txt`
opens with `❄ Antarctida Stealer ❄`. No independent malware
analysis currently confirms that label as a canonical family.
A bullet-prefixed (`• OS:`, `• CPU:`) hardware and locale block
follows the banner.

## Research status

- Classification: **Observed self-label**
- Attribution confidence: **unknown**
- Aliases: `Antarctida Stealer`
- Variants observed: **1**
- Historical Logmine records represented: **33**

## What it targets

- System hardware and OS inventory
- User and computer identity
- Public IP address

## Detection notes

Require the exact snowflake-decorated banner line plus the
bullet-prefixed `OS:`, `CPU:`, and `Computer Name:` fields. The
banner proves the observed label, not payload lineage; keep the
profile at unknown attribution until independent analysis maps
the executable or output format.

## Observed log variants

### `v_04bcb3b8fdb3ba04fb2e9c8bdfbf63bd`

- Parser: `logmine.ioc.parsers.antarctida.AntarctidaParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **33**
- Representative sample: [open sample](samples/v_04bcb3b8fdb3ba04fb2e9c8bdfbf63bd/sample.txt)
- Sample SHA-256: `ed5cf23778fb0d49a3f4fb3a8bad55d5dc53f377421473ad086773dba95a4830`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Antarctida Stealer`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
