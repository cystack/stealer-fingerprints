# RedlineLike Stealer

RedLine extended-block log variants. UserInformation.txt files
emitting the canonical Redline `Operation System:` typo together
with the panel's identity, locale, and hardware fields. Several
Telegram-based affiliate channels rebrand the same RedLine builder
with custom banners (DARKSIDE, ZAPLINE, and similar) while keeping
the underlying field layout intact.

**Also known as:** `redline`, `redline-extended`

## Targets

- Browser saved credentials (Chromium and Gecko families)
- Browser cookies and session storage
- Crypto-wallet desktop clients
- FTP and SSH client configs
- Discord and Telegram session tokens

## Variants

### `cystack_2d2c7ce0`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 10 Feb 26 <ip>
HWID: <redacted>
Country: Indonesia
IP: <redacted>
System Language: Indonesian
Processor: AMD Ryzen 5 7520U with Radeon Graphics (4 cores, 8 threads)
Installed RAM: 15.28 GB
Operation System: Windows 11 24H2 Home Single Language (Build 26100) (64 Bit)
Graphics card: AMD Radeon(TM) Graphics
Computer Name: <redacted>
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+7
UserLanguage: Indonesian
Keyboard Language: English
Display Resolution: 1280x720
```

### `cystack_5e2c1672`

**Field keys:**
`ASN`, `Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP Address`, `ISP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Organization`, `Postal Code`, `Processor`, `Region`, `System Language`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 10 Feb 26 <ip>
HWID: <redacted>
System Language: German
Processor: Intel(R) Pentium(R) Silver N6000 @ 1.10GHz
Installed RAM: 8029 MB
Operation System: Windows 10 Home build 26100 (64 Bit)
Graphics card: Intel(R) UHD Graphics
Antivirus: Avast
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: TRUE
Integrity: Medium
TimeZone: UTC+1
UserLanguage: German
Keyboard Language: German
Display Resolution: 1920x1080
Wallpaper Hash: f82d29ef0409f8f1885e6ab74de47ba7283afbff
═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════
IP Address:      <redacted>
Country:         Germany (DE)
Region:          Free Hanseatic City of Bremen
City:            <redacted>
Postal Code:     <redacted>
ISP:             Vodafone GmbH
Organization:    Kabel Deutschland Vertrieb Und Service GmbH
ASN:             3209
Timezone:        Europe/Berlin (UTC+01:00)
═══════════════════════════════════════════════════════════════════
```

### `cystack_a06e8d9d`

**Field keys:**
`Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP Address`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Postal Code`, `Processor`, `Region`, `System Language`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 10 Feb 26 <ip>
HWID: <redacted>
System Language: English
Processor: Intel(R) Core(TM) Ultra 7 155H
Installed RAM: 32469 MB
Operation System: Windows 10 Home Single Language build 26100 (64 Bit)
Graphics card: Intel(R) Arc(TM) Graphics
Antivirus: Windows Defender
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+7
UserLanguage: Malay
Keyboard Language: Malay
Display Resolution: 1536x960
Wallpaper Hash: 75fac2956852c4176f1a463aeb436451e3c40bfb
═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════
IP Address:      <redacted>
Country:         Indonesia (ID)
Region:          West Java
City:            <redacted>
Postal Code:     <redacted>
Timezone:        Asia/Jakarta (UTC)
═══════════════════════════════════════════════════════════════════
```

### `cystack_d948cd26`

**Field keys:**
`ASN`, `Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP Address`, `ISP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Organization`, `Processor`, `Region`, `System Language`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 10 Feb 26 <ip>
HWID: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz
Installed RAM: 12124 MB
Operation System: Windows 10 Home Single Language build 19045 (64 Bit)
Graphics card: Intel(R) UHD Graphics
Antivirus: Windows Defender
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+7
UserLanguage: English
Keyboard Language: English
Display Resolution: 1536x864
Wallpaper Hash: caa2adbdb2065f2f410468cd00d999d43f85dc43
═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════
IP Address:      <redacted>
Country:         Indonesia (ID)
Region:          Bangka-Belitung Islands
City:            <redacted>
ISP:             Cloudflare, Inc.
Organization:    CLOUDFLAREWARP
ASN:             13335
Timezone:        Asia/Jakarta (UTC+07:00)
═══════════════════════════════════════════════════════════════════
```

## Detection

Confidence triggers, in increasing order of certainty:

1. Plain `Operation System:` field (note the typo) is suggestive
   but matches several stripped-down clones.
2. `Operation System:` plus the channel banner (e.g.
   `===DARKSIDE_BRAND_BEGIN===`) is high-confidence RedLine.
3. `Operation System:` plus `Admin Group:` plus `Integrity:` is
   the unambiguous RedLine extended-block form.

Pair with browser-credential file paths (`Login Data`,
`formhistory.sqlite`) and Discord token grabber output to confirm
in incident-response triage.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)

## Related families

- [`vidar`](../vidar/)
- [`meta-stealer`](../meta_stealer/)

## References

- https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-redline-stealer
- https://github.com/MalBeacon/what-is-this-stealer
