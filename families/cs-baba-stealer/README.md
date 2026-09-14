# CSBabaStealer

CSBabaStealer is a CyStack-coined identifier for a self-named
`.B.A.B.A.` Lumma-rebrand `System.txt` log observed inside
`@ft7links`-distributed packs alongside canonical Lumma content.
The `@ft7links` operator labels the archive `lumma` and ships
both genuine Lumma logs and this Lumma-shaped rebrand under one
cover.

## Research status

- Classification: **Family variant**
- Attribution confidence: **high**
- Canonical family: [lumma](../lumma/)
- Aliases: `.B.A.B.A.`, `Baba Logs`
- Variants observed: **1**
- CyStack observations represented: **365**

## What it targets

- No target inventory published yet.

## Detection notes

The `.B.A.B.A. Build :` literal (note the dotted spelling and
the space before the colon) is the unambiguous trigger.
This profile and canonical Lumma may coexist in the same
distribution.

## Observed log variants

### `v_63cd49f8bebd918e6de1394bbce58a3d`

- Format ID: `cs-baba-stealer`
- Observed filenames: `System.txt`
- Panel brand: `.B.A.B.A.`
- Distribution channel: `@Xavier_Log`
- Attribution confidence: **high**
- Historical records represented: **365**
- Representative sample: [open sample](samples/v_63cd49f8bebd918e6de1394bbce58a3d/sample.txt)
- Sample SHA-256: `6fa8895ded0e8ba56db4c36e66660d54e11d185d6ed088c74f9601593a8f991d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `.B.A.B.A.`
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

- [Lumma](../lumma/)
- [CSArtHouseCloudStealer](../cs-art-house-cloud-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
