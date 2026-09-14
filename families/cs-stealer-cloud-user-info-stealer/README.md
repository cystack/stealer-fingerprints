# CSStealerCloudUserInfoStealer

CSStealerCloudUserInfoStealer is a CyStack-coined identifier
for the STEALERCLOUD broker's `UserInformation.txt` shape:
three flush-left `Key: Value` identity lines at the top
(`Keyboard Language:`, `Display Resolution:`, an `@stealerboss
- Buy daily fresh logs:` operator banner with a wallpaper-name
value), then a centered `IP GEOLOCATION DATA` ASCII section
header, then six geo fields (`IP Address:`, `Country: <Name>
(<ISO2>)`, `Region:`, `City:`, `Postal Code:`, `Timezone:
<IANA-tz> (<UTC-offset>)`). The `IP Address:` slot accepts
both IPv4 and IPv6.

Same broker as CSHardwareTailStealer: the STEALERCLOUD
aggregator pack splits the victim summary across two files,
with the YAML hardware tail in `Info.txt` and the locale plus
geo identity in `UserInformation.txt`. The `@STEALERBOSS`
Telegram channel handle is the distribution channel. No public
reporting attributes either file shape to a specific
source-stealer family, so attribution is provisional pending a
public writeup.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **1**

## What it targets

- Browser saved credentials and cookies (sibling files in the same victim folder; this file is identity / locale / geo only)
- Victim locale (keyboard language, display resolution)
- Victim geo (country, region, city, postal code, timezone) plus IPv4 / IPv6 address

## Detection notes

The two-anchor fingerprint `@stealerboss - Buy daily
fresh logs:` operator-handle banner plus the centered
`IP GEOLOCATION DATA` section header is the cleanest
panel signal. The IPv6 capability in the `IP Address:`
slot is unusual across stealer panels (most ship IPv4
only via `ip-api.com`-shaped lookups). Pair with
CSHardwareTailStealer hardware-tail Info.txt files in
the same victim folder for the full per-victim summary.

## Observed log variants

### `v_8e55366401da27155e33a5b4b0980965`

- Parser: `logmine.ioc.parsers.cs_stealer_cloud_user_info_stealer.CSStealerCloudUserInfoStealerParser`
- Observed filenames: `UserInformation.txt`
- Panel brand: `STEALERCLOUD`
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_8e55366401da27155e33a5b4b0980965/sample.txt)
- Sample SHA-256: `2ab648084d61be75caa12336c62e8927bf2920ef5e0a93d8062466ad83832624`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `IP GEOLOCATION DATA`
- Field labels: `@stealerboss - Buy daily fresh logs`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSHardwareTailStealer](../cs-hardware-tail-stealer/)
- [CSGeoSysInfoStealer](../cs-geo-sys-info-stealer/)
- [CSOttomanPanelStealer](../cs-ottoman-panel-stealer/)

## Observed distribution channels

- <https://t.me/STEALERBOSS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
