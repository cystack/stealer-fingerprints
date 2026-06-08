# CSOttomanPanelStealer

CSOttomanPanelStealer is a CyStack-coined identifier for
the Ottoman aggregator panel`s `Information.txt` shape.
Ottoman, self-styled as `Ottoman Cloud` or
`Ottoman Stealer v2.0`, is a paid log-distribution
service that resells stealer logs through the Telegram
ecosystem. Per the operator`s own marketing site at
ottomancloud.github.io, the service compiles harvested
data from multiple source stealers, normalises the
output to a unified `Information.txt` shape, and sells
1500 to 5000 records per day across tiered subscription
plans ($75 to $600 per month).

The Ottoman panel is documented by community catalogs
(deepdarkCTI, Cyber Shafarat / Treadstone 71) but no
curated CTI vendor publishes a primary analysis of the
panel format. The operator admits Ottoman runs over
multiple source malware families (Redline, MetaStealer,
Raccoon, AuraStealer, TitanStealer, Vidar), so the
underlying family on any given victim varies. The CS
prefix marks the label as CyStack-coined; the panel
brand `Ottoman` and the operator support handle
`@OttoSup` are preserved as taxonomy fields.

**Also known as:** `Ottoman Cloud`, `Ottoman Stealer`, `Ottoman Stealer v2.0`

**Variants observed:** 1
**Top attribution confidence:** `low`
**Operator panel brands:** `Ottoman`
**Distribution channels:** `@OttoSup`

## Targets

- Browser saved credentials, cookies, autofill
- Cryptocurrency wallet apps and browser extensions
- Session tokens for Telegram, Steam, Discord
- Documents matching the file-grabber filter list
- Browser history, bookmarks, extensions
- Credit card data stored in browsers

## Variants

### `Ottoman`

**Fingerprint id:** `ottoman`

**Distribution channel:** `@OttoSup`

**Attribution confidence:** `low`

**Field keys:**
`CPU`, `City`, `Computer name`, `Country`, `GPU`, `HWID`, `IP`, `Installed antivirus`, `Internet provider`, `RAM`, `Region`, `Started as admin`, `System`, `System time`, `User name`

**Filenames:** `Information.txt`, `PC_info.txt`

**Sample (sanitized):**

```

***********************************************
*         _   _   _   _   _   _   _           *
*        / \ / \ / \ / \ / \ / \ / \          *
*       ( O | T | T | O | M | A | N )         *
*        \_/ \_/ \_/ \_/ \_/ \_/ \_/          *
*                                             *
*  Telegram : <url>  *
***********************************************

рџ–ҐпёЏ User: Unknown
рџЊђ IP: Unknown
рџ“‹ OS Name: Unknown

рџЌЄ Cookies: 0
рџ”’ Passwords: 14
рџ“– History: 0
рџ“љ Bookmarks: 0
рџ“¦ Extensions: 0
рџ’і Cards: 0

рџ“Ѓ Other applications:
@OttoSup - Buy daily fresh logs

рџ’ё Crypto wallets:
No wallets found

рџ“ќ Grabbed files:
No grabbed files found
```

## Detection

The parenthesized per-letter ASCII banner
`( O | T | T | O | M | A | N )` plus the `@OttoSup`
operator-support handle is the strongest fingerprint.
The `Telegram :` invite-link row inside the ASCII frame
rotates per archive, so anchor rules should use the
banner literal and handle rather than the invite code.
When triaging logs from this family, remember the
underlying malware varies per victim, so map back to
the source stealer (Redline / Meta / Raccoon / Aura /
Titan / Vidar) from sibling files when possible.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1213 Data from Information Repositories](https://attack.mitre.org/techniques/T1213/)

## Related families

- [`redline`](../redline/)
- [`meta-stealer`](../meta_stealer/)
- [`raccoon-stealer`](../raccoon_stealer/)
- [`aura-stealer`](../aura_stealer/)
- [`vidar`](../vidar/)

## References

- https://ottomancloud.github.io/info/
- https://cybershafarat.com/2025/09/17/ottoman-stealer-v2-0/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
