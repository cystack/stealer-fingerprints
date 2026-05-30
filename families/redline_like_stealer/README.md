# RedlineLike Stealer

RedLine extended-block log variants. UserInformation.txt files
emitting the canonical Redline `Operation System:` typo together
with the panel's identity, locale, and hardware fields. Several
Telegram-based affiliate channels rebrand the same RedLine builder
with custom banners (DARKSIDE, ZAPLINE, and similar) while keeping
the underlying field layout intact.

**Also known as:** `redline`, `redline-extended`

**Variants observed:** 17
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials (Chromium and Gecko families)
- Browser cookies and session storage
- Crypto-wallet desktop clients
- FTP and SSH client configs
- Discord and Telegram session tokens

## Variants

### `cystack_10fe4746`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 25 Oct 25 22:50 UTC
Country: AE
IP: <redacted>
System Language: English
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Installed RAM: 16197 MB
Operation System: Windows 11 24H2 build 26200 (64 Bit)
Graphics card: NVIDIA GeForce RTX 4060
Computer Name: <redacted>
Domain Name: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+4
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 423295216c266958ef6cb2d6bc8eeea7f491ef75
```

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

### `cystack_2e13a9b2`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 25 Oct 25
# Buy now:@BRADLOGS (BRADMAX) / <url>
HWID: <redacted>
Country: CA
IP: <redacted>
System Language: English
Processor: 12th Gen Intel(R) Core(TM) i5-1235U
Installed RAM: 16068 MB
Operation System: Windows 11 24H2 build 26100 (64 Bit)
Graphics card: Intel(R) Iris(R) Xe Graphics
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC-3
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 2a9dc3afc25ee3f465343d47108ab027bb519214
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

### `cystack_49f11599`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `Prodct Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 27 Sep 25 19:15 MSK
now: @russia_logs
HWID: <redacted>
Country: IN
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz
Installed RAM: 12252 MB
Operation System: Windows 10 22H2 build 19045 (64 Bit)
Graphics card: NVIDIA GeForce GT 610
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Prodct Key:   @ logs_russia   
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+5
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 0825e886///  @ l o g s _ r u s s i a  ///4c47e6 cae75034d51d8ffe2fa03196d9a08f6958757be6
```

### `cystack_5076fdca`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `MachineID`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `System.txt`, `UserInformation.txt`

**Sample (sanitized):**

```

Country: CA
IP: <redacted>
System Language: English
Processor: 12th Gen Intel(R) Core(TM) i5-12500
Installed RAM: 7880 MB
Operation System: Windows 11 24H2 build 26100 (64 Bit)
Graphics card: Intel(R) UHD Graphics 770
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC-6
UserLanguage: English
Keyboard Language: Chinese (Simplified)
Display Resolution: 1920x1080
Wallpaper Hash: bacd46dd2134fea31c6a5f275c21c01507f209e7
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

### `cystack_60ccf6d5`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `MachineID`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
    Country: AE
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Installed RAM: 16319 MB
Operation System: Windows 11 24H2 build 26200 (64 Bit)
Graphics card: NVIDIA GeForce GTX 1660 SUPER
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+4
UserLanguage: English
Keyboard Language: English
Display Resolution: 1720x1080
Wallpaper Hash: 4d10156e41790d76cd3e7133778b082af9242d78
```

### `cystack_655435f6`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `MachineID`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
    Log date: 03 Nov 25 15:40 CET
HWID: <redacted>
Country: TR
IP: <redacted>
System Language: Turkish
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Installed RAM: 16243 MB
Operation System: Windows 11 24H2 build 26200 (64 Bit)
Graphics card: NVIDIA GeForce RTX 4060
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: TRUE
Integrity: High
TimeZone: UTC+3
UserLanguage: Turkish
Keyboard Language: Turkish
Display Resolution: 3440x1440
Wallpaper Hash: db91794afafc7b32b6d71b9561e067f72ceb4e16
```

### `cystack_6d229675`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 23 Nov 25
Country: AE
IP: <redacted>
System Language: English
Processor: 13th Gen Intel(R) Core(TM) i7-13700H
Installed RAM: 16064 MB
Operation System: Windows 11 24H2 build 26200 (64 Bit)
Graphics card: Intel(R) UHD Graphics
Domain Name: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+4
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1200
Wallpaper Hash: 32a4f2aead9726b13a6b06d1170070a036adac8e
```

### `cystack_ac5ebc70`

**Attribution confidence:** `unknown`

**Field keys:**
`Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `HWID`, `IP`, `Installed RAM`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `Traffic`, `User Name`, `UserLanguage`, `Video card`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 15 Mar 25 20:56 UTC
Traffic: @MAXERSTE (BRADMAX) / <url>
HWID: <redacted>
Country: DZ
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM)2 Duo CPU     P7450  @ 2.13GHz
Installed RAM: 4024 MB
Operation System: Windows 10 build 19045 (64 Bit)
Video card: Mobile Intel(R) 4 Series Express Chipset Family (Microsoft Corporation - WDDM 1.1)
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Product Key: 
-------------
User Name: <redacted>
TimeZone: UTC-8
UserLanguage: English
Keyboard Language: French
Display Resolution: 1366x768
Wallpaper Hash: 9926b26bfb8ba791ca1b08e52dbcc60bd1daed78
```

### `cystack_c47c7f16`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 19 Nov 25
Country: AE
IP: <redacted>
System Language: English
Processor: AMD Ryzen 7 5800H with Radeon Graphics         
Installed RAM: 28524 MB
Operation System: Windows 11 23H2 build 22631 (64 Bit)
Graphics card: AMD Radeon(TM) Graphics
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+4
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 0f8bee011383a069bd2d1fbd678fba86021b5036
```

### `cystack_c6375578`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```

Country: AE
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
Installed RAM: 16227 MB
Operation System: Windows 10 22H2 build 19045 (64 Bit)
Graphics card: Intel(R) UHD Graphics 620
Computer Name: <redacted>
Domain Name: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC-8
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 028f4ff456fd2615687e34bf4043bdbe5364a42e
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

### `cystack_d5e7e4a8`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `Product Key`, `System Language`, `TimeZone`, `Traffic`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 16 Mar 25 15:36 UTC
Traffic: @MAXERSTE (BRADMAX) / <url>
HWID: <redacted>
Country: TH
IP: <redacted>
System Language: Thai
Processor: Intel(R) Core(TM) i3-6100U CPU @ 2.30GHz
Installed RAM: 3995 MB
Operation System: Windows 10 22H2 build 19045 (64 Bit)
Graphics card: Intel(R) HD Graphics 520
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Product Key: 
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+7
UserLanguage: Thai
Keyboard Language: English
Display Resolution: 1366x768
Wallpaper Hash: 
```

### `cystack_ea6a2985`

**Attribution confidence:** `unknown`

**Field keys:**
`Admin Group`, `Computer Name`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `MachineID`, `Operation System`, `Processor`, `Prodct Key`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
    Country: JM
IP: <redacted>
System Language: English
Processor: 12th Gen Intel(R) Core(TM) i5-1235U
Installed RAM: 11956 MB
Operation System: Windows 11 24H2 build 26100 (64 Bit)
Graphics card: Intel(R) Iris(R) Xe Graphics
Computer Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Prodct Key:   @ logs_russia   
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC-5
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 0825e886///  @ l o g s _ r u s s i a  ///4c47e6 49d8b8245dea194637ebc808ba25f0d3590f78be
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
