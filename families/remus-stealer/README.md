# Remus Stealer

Remus Stealer is a 64-bit malware-as-a-service infostealer first
observed in 2026 and independently analyzed as closely related
to Lumma. It is distributed via the `@rmsops` channel. The
`Info.txt` opens with `# BUY STEALER - https://t.me/rmsops`
followed by a `# REMUS LOG` banner and a YAML-style `build:`
block. Field shape parallels Lumma's dash-prefix list but with
a different banner and distribution channel.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Remus`
- Variants observed: **2**
- CyStack observations represented: **55**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions and clients
- System hardware and locale inventory

## Detection notes

The `# REMUS LOG` banner together with the `@rmsops` channel
reference is unambiguous. The YAML-shaped `build:` opening
also distinguishes Remus from Lumma proper, which uses the
dash-prefix `- LummaC2 Build:` form instead.

## Observed log variants

### `v_0b6a40975520ab343d4d6ad9a6073ea0`

- Format ID: `remus`
- Observed filenames: `Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `yaml-build-root`
- Historical records represented: **46**
- Representative sample: [open sample](samples/v_0b6a40975520ab343d4d6ad9a6073ea0/sample.txt)
- Sample SHA-256: `dc289702682a735f5566e6b52da1f22b3d99526d4f28c8409d75bd02dbb715ff`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `# REMUS LOG`, `hardware:`, `os:`
- Field labels: `elevated`, `ip-address`

### `v_40b69f8215f8aad13e8f74334058d313`

- Format ID: `remus`
- Observed filenames: `Info.txt`
- Panel brand: `Daisy Cloud`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **high**
- Layout: `yaml-build-root`
- Historical records represented: **9**
- Representative sample: [open sample](samples/v_40b69f8215f8aad13e8f74334058d313/sample.txt)
- Sample SHA-256: `795a50c7235d2d0299b86b9589d8bcdd3446b0d9cd93c472cc5c8f1d3fc1d4b0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `# REMUS LOG`, `Daisy Cloud`, `hardware:`, `os:`
- Field labels: `elevated`, `ip-address`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Lumma](../lumma/)

## Observed distribution channels

- <https://t.me/rmsops>

## Sources

- <https://stairwell.com/resources/detecting-remus-infostealer/>
- <https://flashpoint.io/blog/remus-stealer-a-new-not-so-new-infostealer/>
- <https://www.gendigital.com/blog/insights/reports/threat-report-h1-2026>

Machine-readable record: [family.json](family.json)
