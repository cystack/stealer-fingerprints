# PXA Stealer

PXA Stealer is a Vietnamese-origin info-stealer. Its
`system_info.txt` uses a Vietnamese header
(`Thông tin hệ thống`) and snake_case keys lifted from WMI /
Win32 API names, making the fingerprint visually distinctive
even before content matches.

**Also known as:** `PXAStealer`

**Variants observed:** 2
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- Telegram, Discord, Steam session tokens
- VPN and FTP client configurations
- Documents matching specific filename patterns

## Variants

### `cystack_15c13fbc`

**Attribution confidence:** `high`

**Field keys:**
`AntiVirus`, `Country`, `Data Information`, `IP`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: 🇧🇷 BR - Brazil
User: ruann
AntiVirus: Windows Defender, Kaspersky, Reason Cybersecurity
Data Information: CK:16204|PW:650|AF:9749|CC:1|TK:37|FB:9|Sites:25|Wallets:3|Apps:0
```

### `cystack_724e1a44`

**Attribution confidence:** `high`

**Field keys:**
`AntiVirus`, `Country`, `Data Information`, `IP`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: 🇧🇷 BR - Brazil
Username: <redacted>
AntiVirus: McAfee, Windows Defender
Data Information: CK:3277|PW:221|AF:9256|CC:0|TK:6|FB:4|Sites:16|Wallets:0|Apps:0
```

## Detection

Vietnamese banner `Thông tin hệ thống` is unambiguous. Pair
with the snake_case key style (`computer_system`, `os`,
`processor`, `bios`) to confirm.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://blog.talosintelligence.com/pxa-stealer/
- https://socradar.io/threat-actor-spotlight-pxa-stealer/
