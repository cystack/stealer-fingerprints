# RedlineLike Stealer

RedLine extended-block log variants. UserInformation.txt files
emitting the canonical Redline `Operation System:` typo together
with the panel's identity, locale, and hardware fields. Several
Telegram-based affiliate channels rebrand the same RedLine builder
with custom banners (DARKSIDE, ZAPLINE, and similar) while keeping
the underlying field layout intact.

**Also known as:** `redline`, `redline-extended`

**Variants observed:** 5
**Total observations:** 2,834
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials (Chromium and Gecko families)
- Browser cookies and session storage
- Crypto-wallet desktop clients
- FTP and SSH client configs
- Discord and Telegram session tokens

## Variants

### `cystack_1863c96d`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
    Country: United Arab Emirates
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz (6 cores, 12 threads)
Installed RAM: 15.86 GB
Operation System: Windows 10 22H2 Pro (Build 19045) (64 Bit)
Graphics card: NVIDIA GeForce GTX 1650
Computer Name: <redacted>
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+4
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
```

### `cystack_2d2c7ce0`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 29 Dec 25 20:53
HWID: <redacted>
Country: Argentina
IP: <redacted>
System Language: Spanish
Processor: AMD Ryzen 5 8400F 6-Core Processor (6 cores, 12 threads)
Installed RAM: 31.64 GB
Operation System: Windows 10 22H2 Pro (Build 19045) (64 Bit)
Graphics card: AMD Radeon RX 6600
Computer Name: <redacted>
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC-3
UserLanguage: Spanish
Keyboard Language: Spanish
Display Resolution: 1920x1080
```

### `cystack_47bdc5de`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
[... 4 blank lines ...]
Country: Australia
IP: <redacted>
System Language: English
Processor: 12th Gen Intel(R) Core(TM) i7-12650H (10 cores, 16 threads)
Installed RAM: 15.78 GB
Operation System: Windows 11 25H2 Home (Build 26200) (64 Bit)
Graphics card: NVIDIA GeForce RTX 4070 Laptop GPU
Computer Name
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+10
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
```

### `cystack_5455ca59`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Country: United Arab Emirates
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i9-14900KF (24 cores, 32 threads)
Installed RAM: 31.79 GB
Operation System: Windows 11 25H2 Pro (Build 26200) (64 Bit)
Graphics card: NVIDIA GeForce RTX 4080 SUPER
Computer Name: <redacted>
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+4
UserLanguage: English
Keyboard Language: English
Display Resolution: 5120x1440
```

### `cystack_d377db09`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 05 Jan 26 10:35 MSK
HWID: <redacted>
Country: AO
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i5-10600KF CPU @ 4.10GHz
Installed RAM: 16292 MB
Operation System: Windows 10 Pro build 19045 (64 Bit)
Graphics card: NVIDIA GeForce GT 710
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+1
UserLanguage: Portuguese
Keyboard Language: Portuguese
Display Resolution: 1920x1080
Wallpaper Hash: d08c477d7682cd97be0a55cf613fdf56c9c08923
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
