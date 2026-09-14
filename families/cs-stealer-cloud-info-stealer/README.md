# CSStealerCloudInfoStealer

CSStealerCloudInfoStealer is a CyStack-coined identifier for
the STEALERCLOUD broker's third file shape: a stripped 2-field
`Information.txt` containing just a `GPU:` line and a
`Displays:` (plural) line with multi-space value padding after
each colon. The body carries no banner, no operator handle,
and no other fields. Same `STEALERCLOUD` panel brand and
`@STEALERBOSS` distribution channel as CSHardwareTailStealer
(Info.txt YAML hardware tail) and
CSStealerCloudUserInfoStealer (UserInformation.txt locale +
geo block); the broker ships per-victim context split across
three filename shapes.

The stripped 2-field form likely reflects a fallback path the
broker takes when no canonical source-stealer panel was
available, falling back to a bare Win32 WMI
`Win32_VideoController` + `Win32_DisplayMonitor` enumeration.
Family attribution is provisional pending a public writeup.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: -
- Variants observed: **2**
- Historical Logmine records represented: **2,160**

## What it targets

- Victim GPU model (from WMI `Win32_VideoController`)
- Victim display resolution (from WMI `Win32_DisplayMonitor`)

## Detection notes

The line-anchored `GPU:` plus line-anchored `Displays:`
(plural) fingerprint is unique across the registry. The
plural `Displays:` form rules out sibling panels that
emit singular `Display:` or `Display Resolution:`. Pair
this label with CSHardwareTailStealer Info.txt and
CSStealerCloudUserInfoStealer UserInformation.txt files
in the same `STEALERCLOUD#<NN>` victim folder for the
full per-victim summary.

## Observed log variants

### `v_1bdd89ba317526aee7eba31023ec3ca7`

- Parser: `logmine.ioc.parsers.cs_stealer_cloud_info_stealer.CSStealerCloudInfoStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: `STEALERCLOUD`
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Historical records represented: **298**
- Representative sample: [open sample](samples/v_1bdd89ba317526aee7eba31023ec3ca7/sample.txt)
- Sample SHA-256: `297314c85c3b72f3a2204e78a3fa68a27536509f24f3c3ee8e8d494d3c5ba18f`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `Displays`, `GPU`

### `v_37cf42da017bf5a1efd7e81fa6f57304`

- Parser: `logmine.ioc.parsers.cs_stealer_cloud_info_stealer.CSStealerCloudInfoStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Historical records represented: **1,862**
- Representative sample: [open sample](samples/v_37cf42da017bf5a1efd7e81fa6f57304/sample.txt)
- Sample SHA-256: `cce24ebd2450b80bb74a3ff079522b5093cd05ac388e7639267524b7e7502a54`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `Displays`, `GPU`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSHardwareTailStealer](../cs-hardware-tail-stealer/)
- [CSStealerCloudUserInfoStealer](../cs-stealer-cloud-user-info-stealer/)

## Observed distribution channels

- <https://t.me/STEALERBOSS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
