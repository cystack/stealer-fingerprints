# PXA Stealer

PXA Stealer is a Vietnamese-origin info-stealer. Its
`system_info.txt` uses a Vietnamese header
(`Thông tin hệ thống`) and snake_case keys lifted from WMI /
Win32 API names, making the fingerprint visually distinctive
even before content matches.

**Also known as:** `PXAStealer`

**Variants observed:** 4
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

### `cystack_94cdfe2d`

**Attribution confidence:** `high`

**Field keys:**
`AntiVirus`, `Data Information`, `IP`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
Username: <redacted>
AntiVirus: Windows Defender
Data Information: CK:5133|PW:308|AF:1222|CC:0|TK:3|FB:1|Sites:3|Wallets:0|Apps:0
```

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Thông tin hệ thống

install_date: 1767274718
ram_used_percent: 9
product_name: Windows 10 Pro
public_ip: <ip>
timezone: SE Asia Standard Time
cpu_count: 20
mac_address: Realtek Gaming 2.5GbE Family Controller
username: <redacted>
ram_total: 63.84 GB
screen_resolution: 1920x1080
user_domain: DESKTOP-CM1RHUN
local_ip: <ip>
system_language: 0409
windows_version: 24H2
hostname: <redacted>
windows_build: 26100
computer_name: DESKTOP-CM1RHUN
edition_id: Professional
processor: 12th Gen Intel(R) Core(TM) i7-12700F
ram_available: 57.73 GB
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
