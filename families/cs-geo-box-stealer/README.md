# CSGeoBoxStealer

CSGeoBoxStealer is a CyStack-coined identifier for a no-banner
`@ft7links` `UserInformation.txt` variant containing an
`═══` `IP GEOLOCATION DATA` boxed enrichment block. Observed in
the same folder layout as `CSEnchantCloudStealer` (channel-banner
variants) and the RedlineLikeStealer DARKSIDE-banner variants,
but this rebrand strips the panel banner entirely and replaces
the identity preamble with a box-drawing geolocation block.

## Research status

- Classification: **Family variant**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `@ft7links geo-box variant`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

Box-drawing horizontal rule (`═══...`) followed by an
`IP GEOLOCATION DATA` heading is the cleanest trigger. Field
shape parallels the Redline extended-block (`UserLanguage:`,
`Keyboard Language:`, `Display Resolution:`, `Wallpaper Hash:`)
but the explicit panel banner is absent.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [CSEnchantCloudStealer](../cs-enchant-cloud-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
