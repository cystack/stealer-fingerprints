# CSMacUserinfoStealer

CSMacUserinfoStealer is a CyStack-coined identifier for a
macOS info-stealer that writes a bare `userinfo.txt`
(lowercase) with a 9-field IP geolocation header followed
directly by the verbatim `system_profiler` output for the
`SPSoftwareDataType`, `SPHardwareDataType`, and
`SPDisplaysDataType` sections. The file ships no operator
banner, no `BuildID:` per-build label, and no `MetaMask Info:`
/ `Debanks:` / `Userinfo:` panel section headers. Observed
inside `!! 2025 JULY.part001.rar` aggregator packs in
`<CC><31-alnum>_<ISO timestamp with
microseconds>/userinfo.txt` victim folders.

The layout overlaps the publicly documented Cthulhu Stealer
`Userinfo.txt` shape but two structural details rule out a
direct Cthulhu attribution. First, `BuildID:` is absent.
Cthulhu always emits the line carrying its operator-set
per-build label, so an unsigned variant is undocumented.
Second, the `Region:` value uses the IP2Location-style
`Dubayy` transliteration for Dubai instead of ipinfo.io's
`Dubai` form; Cthulhu uses ipinfo.io as its geo source. Family
attribution is provisional pending a published threat-intel
mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Bare macOS userinfo.txt panel`, `No-BuildID Cthulhu-shape macOS log`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets

- macOS hardware fingerprint (Hardware UUID, Model Identifier, Chip / Processor)
- macOS account inventory (Computer Name, User Name)
- macOS version and kernel build (System Version, Kernel Version)
- Public-IP geolocation (country, city, latitude / longitude, zipcode, timezone)
- Display configuration (Chipset Model, VRAM, resolution)

## Detection notes

Line-anchored `Country Code:` AND `Zipcode:` AND
`Hardware Overview:` is the fingerprint. The triple is
specific because `Country Code:` (separate from
`Country:`) plus `Zipcode:` (one word) is the geo-block
opener documented for Cthulhu, and `Hardware Overview:` is
the macOS-specific `system_profiler SPHardwareDataType`
header. Samples that also carry `BuildID:` match the Cthulhu profile; this profile covers the BuildID-less variant. AMOS uses `Country:` (not
`Country Code:`) plus the `MetaMask Info:` / `Debanks:` /
`Userinfo:` section header triple - no overlap. MacSync
requires the `MacSync Stealer` banner - absent here.
During triage, treat this label as a macOS infostealer
system summary and look for sibling files (browser data,
keychain dumps, wallet folders) in the same victim folder.

## Observed log variants

### `v_ab5581abd38bf0fcdf843171df456903`

- Format ID: `cs-mac-userinfo-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ab5581abd38bf0fcdf843171df456903/sample.txt)
- Sample SHA-256: `bc9690044f983ca1ac45b631b2d97f6548e94ae1d0d59269fa0c77be33baef85`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Hardware Overview:`
- Field labels: `Country Code`, `Zipcode`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [MacSync](../mac-sync/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
