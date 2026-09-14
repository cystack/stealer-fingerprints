# CSGeoSysInfoStealer

CSGeoSysInfoStealer is a CyStack-coined identifier for
a single-section `=== SYSTEM INFO ===` `system.txt` panel
distributed through the `@BRADMAX` Telegram channel.
The body carries 8 flat `Key: Value` lines under one
triple-equals header: `Computer`, `User`, `OS`, `IP`,
`Country`, `CPU`, `GPU`, `RAM`. Hardware fields are
present but typically empty on observed bodies; the
`OS` value is the literal placeholder `Windows 10/11`
rather than a real version string.

The format shares the `=== SYSTEM INFO ===` header with
CSStatsSectionStealer (iteration #34) but ships an
entirely different field set and no second STATS
section. Same operator channel `@BRADMAX` but a
different builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **2**

## What it targets

- Browser saved credentials and cookies
- IP and geo fingerprint
- System hardware and OS inventory

## Detection notes

The header `=== SYSTEM INFO ===` plus the IP + Country
geo block plus the bare-key hardware tail is the
fingerprint. The negative anchor on `=== STATS ===`
separates this panel from CSStatsSectionStealer, which
uses the same header but adds a count section. The
`OS: Windows 10/11` literal placeholder is a strong
tell that the panel never enumerated the actual
version, useful as a triage signal.

## Observed log variants

### `v_bfb272d1a685583ab75ebac60c4da8f2`

- Parser: `logmine.ioc.parsers.cs_geo_sys_info_stealer.CSGeoSysInfoStealerParser`
- Observed filenames: `system.txt`
- Panel brand: -
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_bfb272d1a685583ab75ebac60c4da8f2/sample.txt)
- Sample SHA-256: `d397ccf04a3f36789d00fe08ba92e011b18eed591bf5ee3ab386487c43b47471`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `=== SYSTEM INFO ===`, `CPU:`
- Field labels: `Country`, `IP`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |

## Related catalog profiles

- [CSStatsSectionStealer](../cs-stats-section-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
