# Redline

Canonical Redline Stealer logs. UserInformation.txt files emitting
the family's typo'd `Operation System:` field together with a full
identity, locale, and hardware block. Build banners typically frame
the panel name (Octopus Cloud Logs and similar resellers) above
the field block.

**Also known as:** `RedLine`, `RedLineStealer`

**Variants observed:** 19
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials
- Browser cookies and session storage
- Crypto wallet desktop clients and browser extensions
- FTP and VPN client configs
- Discord and Telegram session tokens

## Variants

### `cystack_4ec8e352`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: UNKNOWN
Zip Code: <redacted>
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width = 1600,Height = 900}TimeZone: (UTC-08:00) Pacific Time (US & Canada)
Operation System: Windows 10 Home x64
Process Elevation: True

Available KeyboardLayouts: 
English (United States)


Hardwares: 
Name: Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz, 2 Cores
Name: Intel(R) HD Graphics Family, 1073741824 bytes
Name: Total of RAM, 7898.57 MB or 8282255360 bytes
```

### `cystack_55f0c282`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Available KeyboardLayouts`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*               _   _   _   _                 *
*              / \ / \ / \ / \                *
*             ( M | E | T | A )               *
*              \_/ \_/ \_/ \_/                *
*                                             *
*    Telegram: <url>   *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: AF
Zip Code: <redacted>
Location: Kabul, Kabul
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width=1366, Height=768}
TimeZone: (UTC+04:30) Kabul
Operation System: Windows 8 Pro with Media Center x64
Process Elevation: False
Log date: 10/18/2023 <ip> PM

Available KeyboardLayouts: 
English (United States)
Pashto (Afghanistan)
Persian


Hardwares: 
Name: Total of RAM, 3982.49 MB or 4175945728 bytes
Name: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz, 4 Cores
Name: Intel(R) HD Graphics, 1886646272 bytes


Anti-Viruses: 
Windows Defender
```

### `cystack_60a96ef0`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Available KeyboardLayouts`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `Hardwares`, `IP`, `Location`, `Log date`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*  Telegram: <url>  *
***********************************************

Build ID: @BRADLOGS (BRADMAX) / <url>
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: BD
Zip Code: <redacted>
Location: Khulna, Khulna
Current Language: English (United States)
ScreenSize: {Width=1440, Height=900}
TimeZone: (UTC+06:00) Dhaka
Operation System: Windows 10 Enterprise x64
UAC: AllowAll
Process Elevation: False
Log date: 12/25/2023 <ip> AM

Available KeyboardLayouts: 
English (United States)


Hardwares: 
Name: Intel(R) Core(TM) i3-6100T CPU @ 3.20GHz, 2 Cores
Name: Intel(R) HD Graphics 530, 1073741824 bytes
Name: Total of RAM, 3967.33 MB or 4160045056 bytes


Anti-Viruses: 
Windows Defender
```

### `cystack_648cafef`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: AR
Zip Code: <redacted>
Location: Buenos Aires, Ciudad Autonoma de Buenos Aires
HWID: <redacted>
Current Language: Spanish (Argentina)
ScreenSize: {Width=1920, Height=1080}
TimeZone: (UTC-03:00) Ciudad de Buenos Aires
Operation System: Windows 10 Enterprise x64
UAC: AllowAll
Process Elevation: False
Log date: 10/18/2023 <ip> PM

Hardwares: 
Name: AMD Ryzen 5 5600G with Radeon Graphics         , 6 Cores
Name: AMD Radeon(TM) Graphics, 536870912 bytes
Name: Total of RAM, 15665.73 MB or 16426713088 bytes


Anti-Viruses: 
Windows Defender
```

### `cystack_65b17882`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `MachineName`, `Name`, `Operation System`, `ScreenSize`, `TimeZone`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
[... 9 blank lines ...]
* *
* *

IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
MachineName: DESKTOP-QFQ4FGM
Country: BD
Zip Code: <redacted>
Location: Dhaka, Dhaka
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width=1536, Height=864}
TimeZone: (UTC+06:00) Dhaka
Operation System: Windows 11 Pro x64
Log date: 15/01/2026 <ip>

Available KeyboardLayouts: 
English (United States)

Hardwares: 
Name: Total of RAM, 7896.49 Mb or 8280072192 bytes
Name: 12th Gen Intel(R) Core(TM) i3-1215U, 6 Cores
Name: Intel(R) UHD Graphics, 134217728 bytes
cuspe 
ccwfe 
ljwecfxxs Anti-Viruses:
odkwhnnrc Windows Defender
```

### `cystack_69d1cad4`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*               _   _   _   _                 *
*              / \ / \ / \ / \                *
*             ( M | E | T | A )               *
*              \_/ \_/ \_/ \_/                *
*                                             *
*    Telegram: <url>   *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: AR
Zip Code: <redacted>
Location: Jose C. Paz, Buenos Aires
HWID: <redacted>
Current Language: Spanish (Spain, International Sort)
ScreenSize: {Width=1280, Height=960}
TimeZone: (UTC-03:00) Ciudad de Buenos Aires
Operation System: Windows 10 Enterprise LTSC 2019 x64
Process Elevation: False
Log date: 10/18/2023 <ip> PM

Available KeyboardLayouts: 
Spanish (Argentina)
Spanish (Spain, International Sort)


Hardwares: 
Name: Total of RAM, 8134.55 MB or 8529698816 bytes
Name: AMD A8-5600K APU with Radeon(tm) HD Graphics   , 2 Cores
Name: AMD Radeon R7 200 Series, 2147483648 bytes
```

### `cystack_709d1fed`

**Attribution confidence:** `high`

**Field keys:**
`Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: BR
Zip Code: <redacted>
Location: Bananeiras, Paraiba
HWID: <redacted>
Current Language: Portuguese (Brazil)
ScreenSize: {Width=1280, Height=1024}
TimeZone: (UTC-03:00) Brasília
Operation System: Windows 7 Home Premium x64
UAC: AllowAll
Process Elevation: False
Log date: 10/17/2023 <ip> PM

Hardwares: 
Name: Intel(R) Atom(TM) CPU D2500   @ 1.86GHz, 2 Cores
Name: Total of RAM, 6131.87 MB or 6429728768 bytes
```

### `cystack_73218974`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `IP`, `Location`, `Log date`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: BR
Zip Code: <redacted>
Location: Cianorte, Parana
HWID: <redacted>
Current Language: Portuguese (Brazil)
ScreenSize: {Width=800, Height=800}
TimeZone: (UTC-03:00) Brasília
Operation System: Windows 10 Home x64
UAC: AllowAll
Process Elevation: False
Log date: 10/17/2023 <ip> AM

Available KeyboardLayouts: 
Portuguese (Brazil)
Portuguese (Brazil)
```

### `cystack_73292a89`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Available KeyboardLayouts`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: MA
Zip Code: <redacted>
Location: UNKNOWN
HWID: <redacted>
Current Language: French (France)
ScreenSize: {Width=1440, Height=900}
TimeZone: (UTC+01:00) Bruxelles, Copenhague, Madrid, Paris
Operation System: Windows 10 Enterprise x64
UAC: AllowAll
Process Elevation: False
Log date: 10/17/2023 <ip> AM

Available KeyboardLayouts: 
French (France)
Arabic (Morocco)


Hardwares: 
Name: Intel(R) Core(TM) i3-2100 CPU @ 3.10GHz, 2 Cores
Name: Intel(R) HD Graphics, 1877772288 bytes
Name: Total of RAM, 3965.57 MB or 4158197760 bytes


Anti-Viruses: 
Windows Defender
```

### `cystack_7d94dffd`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Available KeyboardLayouts`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: UNKNOWN
Zip Code: <redacted>
HWID: <redacted>
Current Language: English (Philippines)
ScreenSize: {Width = 1536,Height = 864}TimeZone: (UTC+04:00) Abu Dhabi, Muscat
Operation System: Windows 10 Home x64
Process Elevation: True

Available KeyboardLayouts: 
English (Philippines)
English (United States)


Hardwares: 
Name: AMD Ryzen 7 7735HS with Radeon Graphics        , 8 Cores
Name: AMD Radeon(TM) Graphics, 536870912 bytes
Name: NVIDIA GeForce RTX 4060 Laptop GPU, 4293918720 bytes
Name: Total of RAM, 15571.54 MB or 16327946240 bytes


Anti-Viruses: 
Windows Defender
```

### `cystack_84cd011a`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: AL
Zip Code: <redacted>
Location: Durres, Durres
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width=1440, Height=900}
TimeZone: (UTC+03:00) Istanbul
Operation System: Windows 10 Enterprise x64
UAC: AllowAll
Process Elevation: False
Log date: 10/17/2023 <ip> AM

Available KeyboardLayouts: 
English (United States)


Hardwares: 
Name: Intel(R) Core(TM)2 Duo CPU     E8500  @ 3.16GHz, 2 Cores
Name: Intel(R) Q45/Q43 Express Chipset (Microsoft Corporation - WDDM 1.1), 2899097600 bytes
Name: Total of RAM, 5977.59 MB or 6267957248 bytes
```

### `cystack_b95b940e`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Available KeyboardLayouts`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `IP`, `Location`, `Log date`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: BE
Zip Code: <redacted>
Location: Lommel, Limburg
HWID: <redacted>
Current Language: Dutch (Netherlands)
ScreenSize: {Width=1920, Height=1080}
TimeZone: (UTC+01:00) Brussel, Kopenhagen, Madrid, Parijs
Operation System: Windows 10 Home x64
UAC: AllowAll
Process Elevation: False
Log date: 10/17/2023 <ip> AM

Available KeyboardLayouts: 
Dutch (Netherlands)
Dutch (Netherlands)


Anti-Viruses: 
Windows Defender
AVG Antivirus
```

### `cystack_ba5fe0ea`

**Attribution confidence:** `high`

**Field keys:**
`Build ID`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
*                                             *
***********************************************

Build ID:
```

### `cystack_c65f37b2`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
    
```

### `cystack_d7157e6b`

**Attribution confidence:** `high`

**Field keys:**
`Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `IP`, `Location`, `Log date`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*  Telegram: <url>  *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: AR
Zip Code: <redacted>
Location: Villa Mercedes, San Luis
HWID: <redacted>
Current Language: Spanish (Argentina)
ScreenSize: {Width=1366, Height=768}
TimeZone: (UTC-03:00) Ciudad de Buenos Aires
Operation System: Windows 10 Enterprise x64
UAC: AllowAll
Process Elevation: False
Log date: 10/18/2023 <ip> PM
```

### `cystack_e61b3dc8`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `MachineName`, `Name`, `Operation System`, `ScreenSize`, `TimeZone`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
* *
* *

IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
MachineName: NODE1
Zip Code: <redacted>
Location: Kochi, Kerala
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width=1366, Height=768}
TimeZone: (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi
Operation System: Windows 8.1 Pro x32
Log date: 15/01/2026 <ip>

Available KeyboardLayouts: 
English (United States)

Hardwares: 
Name: Total of RAM, 3494.25 Mb or 3663990784 bytes
Name: Intel(R) Pentium(R) CPU G3260 @ 3.30GHz, 2 Cores
Name: Intel(R) HD Graphics, 1073741824 bytes
ysxfgt 
forqxxih 
lqegvlvnd Anti-Viruses:
ujngmyjg Windows Defender
```

### `cystack_e9a53ad6`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Available KeyboardLayouts`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: UNKNOWN
Zip Code: <redacted>
HWID: <redacted>
Current Language: English (United States)
ScreenSize: UNKNOWN
TimeZone: (UTC-05:00) Eastern Time (US & Canada)
Operation System: Windows 10 Home x64
Process Elevation: True

Available KeyboardLayouts: 
English (United States)


Hardwares: 
Name: Intel(R) Core(TM) i7-9700F CPU @ 3.00GHz, 8 Cores
Name: NVIDIA GeForce RTX 2070 SUPER, 4293918720 bytes
Name: Total of RAM, 16305.04 MB or 17097068544 bytes


Anti-Viruses: 
Windows Defender
```

### `cystack_ebcec32a`

**Attribution confidence:** `high`

**Field keys:**
`Anti-Viruses`, `Build ID`, `Country`, `Current Language`, `FileLocation`, `HWID`, `IP`, `Location`, `Log date`, `Operation System`, `Process Elevation`, `ScreenSize`, `TimeZone`, `UAC`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************

Build ID:
IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: CI
Zip Code: <redacted>
Location: Abidjan, Abidjan
HWID: <redacted>
Current Language: French (France)
ScreenSize: {Width=1536, Height=864}
TimeZone: (UTC+00:00) São Tomé
Operation System: Windows 10 Home x64
UAC: AllowAll
Process Elevation: False
Log date: 10/18/2023 <ip> AM

Anti-Viruses: 
Windows Defender
```

### `cystack_f2fae5b0`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `MachineName`, `Operation System`, `ScreenSize`, `TimeZone`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
[... 7 blank lines ...]
* *
* *

IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
MachineName: KAMEL-PC
Country: DZ
Zip Code: <redacted>
Location: Mechta Bou Nabel, Jijel
HWID: <redacted>
Current Language: French (France)
ScreenSize: {Width=1366, Height=768}
TimeZone: (UTC+01:00) Bruxelles, Copenhague, Madrid, Paris
Operation System: Windows 7 Édition Intégrale x32
Log date: 15/01/2026 <ip>

Available KeyboardLayouts: 
French (France)
Arabic (Saudi Arabia)
Chinese (Traditional, Taiwan)
English (United States)

Hardwares: 
tofhk Name: Total of RAM, 2718.36 Mb or 2850402304 bytes
qzyky Name: Intel(R) Core(TM) i3-3120M CPU @ 2.50GHz, 2 Cores
dumclejk Name: Intel(R) HD Graphics 4000, 1223874560 bytes
texzqfqkh 
cskaukibf 
gftfdrawy Anti-Viruses:
ckrfa Windows Defender
```

## Detection

High-confidence trigger: the typo'd `Operation System:` field
paired with `FileLocation:`. Stripped variants without
`FileLocation:` are tracked separately as `RedlineLike Stealer`.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redlinelike-stealer`](../redlinelike_stealer/)
- [`metastealer`](../metastealer/)

## References

- @redline_market_bot
- https://flare.io/learn/resources/blog/redline-stealer-malware/
