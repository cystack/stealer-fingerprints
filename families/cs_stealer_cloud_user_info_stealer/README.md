# CSStealerCloudUserInfoStealer

CSStealerCloudUserInfoStealer is a CyStack-coined
identifier for the STEALERCLOUD broker`s
`UserInformation.txt` shape: three flush-left
`Key: Value` identity lines at the top (`Keyboard
Language:`, `Display Resolution:`, an
`@stealerboss - Buy daily fresh logs:` operator banner
with a wallpaper-name value), then a centered
`IP GEOLOCATION DATA` ASCII section header, then six
geo fields (`IP Address:`, `Country: <Name> (<ISO2>)`,
`Region:`, `City:`, `Postal Code:`, `Timezone:
<IANA-tz> (<UTC-offset>)`). The `IP Address:` slot
accepts both IPv4 and IPv6.

Same broker as CSHardwareTailStealer: the STEALERCLOUD
aggregator pack splits the victim summary across two
files, with the YAML hardware tail in `Info.txt` and
the locale plus geo identity in `UserInformation.txt`.
The `@STEALERBOSS` Telegram channel handle is the
distribution channel. No surveyed CTI vendor attributes
either file shape to a specific source-stealer family,
so attribution is provisional pending a curated CTI
report.

**Variants observed:** 1
**Top attribution confidence:** `low`
**Operator panel brands:** `STEALERCLOUD`
**Distribution channels:** `@STEALERBOSS`

## Targets

- Browser saved credentials and cookies (sibling files in the same victim folder; this file is identity / locale / geo only)
- Victim locale (keyboard language, display resolution)
- Victim geo (country, region, city, postal code, timezone) plus IPv4 / IPv6 address

## Variants

### `STEALERCLOUD`

**Fingerprint id:** `stealercloud`

**Distribution channel:** `@STEALERBOSS`

**Attribution confidence:** `low`

**Field keys:**
`City`, `Country`, `Display Resolution`, `IP Address`, `Keyboard Language`, `Postal Code`, `Region`, `Timezone`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Keyboard Language: English
Display Resolution: 2560x1440
@stealerboss - Buy daily fresh logs: no_wallpaper


                        IP GEOLOCATION DATA

IP Address:      <redacted>
Country:         United States (US)
Region:          South Carolina
City:            <redacted>
Postal Code:     <redacted>


Timezone:        America/Adak (UTC)
```

## Detection

The two-anchor fingerprint `@stealerboss - Buy daily
fresh logs:` operator-handle banner plus the centered
`IP GEOLOCATION DATA` section header is the cleanest
panel signal. The IPv6 capability in the `IP Address:`
slot is unusual across stealer panels (most ship IPv4
only via `ip-api.com`-shaped lookups). Pair with
CSHardwareTailStealer hardware-tail Info.txt files in
the same victim folder for the full per-victim summary.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1016 System Network Configuration Discovery](https://attack.mitre.org/techniques/T1016/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)

## Related families

- [`cshardwaretailstealer`](../cshardwaretailstealer/)
- [`csgeosysinfostealer`](../csgeosysinfostealer/)
- [`csottomanpanelstealer`](../csottomanpanelstealer/)

## References

- @STEALERBOSS
