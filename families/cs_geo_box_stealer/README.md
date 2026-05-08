# CSGeoBoxStealer

CSGeoBoxStealer is a CyStack-coined identifier for a no-banner
`@ft7links` `UserInformation.txt` variant containing an
`═══` `IP GEOLOCATION DATA` boxed enrichment block. Observed in
the same folder layout as `CSEnchantCloudStealer` (channel-banner
variants) and the RedlineLikeStealer DARKSIDE-banner variants,
but this rebrand strips the panel banner entirely and replaces
the identity preamble with a box-drawing geolocation block.

**Also known as:** `@ft7links geo-box variant`

## Variants

### `cystack_a4e34ae5`

**Field keys:**
`City`, `Country`, `Display Resolution`, `IP Address`, `Keyboard Language`, `Postal Code`, `Region`, `Timezone`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Keyboard Language: Arabic
Display Resolution: 1920x1080
Wallpaper Hash: no_wallpaper


═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════

IP Address:      <redacted>
Country:         Saudi Arabia (SA)
Region:          Riyadh Region
City:            <redacted>
Postal Code:     <redacted>


Timezone:        Asia/Riyadh (UTC)

═══════════════════════════════════════════════════════════════════
```

## Detection

Box-drawing horizontal rule (`═══...`) followed by an
`IP GEOLOCATION DATA` heading is the cleanest trigger. Field
shape parallels the Redline extended-block (`UserLanguage:`,
`Keyboard Language:`, `Display Resolution:`, `Wallpaper Hash:`)
but the explicit panel banner is absent.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redline`](../redline/)
- [`redlinelike-stealer`](../redlinelike_stealer/)
- [`csenchantcloudstealer`](../csenchantcloudstealer/)

## References

- https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-redline-stealer
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
