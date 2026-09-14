# CSDeimosStealer

CSDeimosStealer is a CyStack-coined identifier for the
self-named `Deimos Golang Stealer` `UserInformation.txt` log
observed inside `@ft7links`-distributed packs alongside the
CSEnchantCloudStealer and RedlineLikeStealer variants. The
`@ft7links` operator labels the archive `redline` but actually
mixes in multiple Lumma-shaped panels under one cover; this is
one of them. The `## Deimos Golang Stealer` banner is the
primary self-identification.

## Research status

- Classification: **Family variant**
- Attribution confidence: **medium**
- Canonical family: [lumma](../lumma/)
- Aliases: `Deimos Golang Stealer`, `Deimos`
- Variants observed: **1**
- CyStack observations represented: **1,058**

## What it targets

- No target inventory published yet.

## Detection notes

The `## Deimos Golang Stealer` literal banner together with
the `## Buy: https://t.me/<channel>` purchase line is the
cleanest fingerprint. The Go origin shows up in stable field
ordering across builds.

## Observed log variants

### `v_0db166abde7c3b7da1e04e5d3ff74795`

- Format ID: `cs-deimos-stealer`
- Observed filenames: `System.txt`
- Panel brand: `Deimos Golang Stealer`
- Distribution channel: `@ft7links`
- Attribution confidence: **medium**
- Historical records represented: **1,058**
- Representative sample: [open sample](samples/v_0db166abde7c3b7da1e04e5d3ff74795/sample.txt)
- Sample SHA-256: `a83fccfacb06f4fbe761e09d8b9ff8fc419a3f5e4ab52498f360f848ba9b9926`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `CPU Vendor`, `Display resolution`, `HWID`, `NetBIOS`


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
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
