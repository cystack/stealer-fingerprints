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

### `cystack_0df2596d`

**Field keys:**
`Display Resolution`, `Domain Name`, `Graphics card`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>  

System Language: Portuguese
Processor: AMD Ryzen 5 2400G with Radeon Vega Graphics (4 cores, 8 threads)
Installed RAM: 13.92 GB
Operation System: Windows 10 22H2 Pro (Build 19045) (64 Bit)
Graphics card: AMD Radeon(TM) RX Vega 11 Graphics
Domain Name: <redacted>
User Name: <redacted>
Integrity: High
TimeZone: -1
UserLanguage: Portuguese
Keyboard Language: Portuguese
Display Resolution: 1280x800
```

### `cystack_0f69a6b9`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Version Build`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
░▄▀▄░█░█░▀█▀░█▀▄░▀▀█░█▀▀░█░░░█▀█░█░█░█▀▄
░█▀▀░█▀▄░░█░░█▀▄░░▀▄░█░░░█░░░█░█░█░█░█░█
░░▀░░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀░                                                                                                                                   
@𝗸𝗶𝗿𝟯𝗰𝗹𝗼𝘂𝗱 -- @𝗸𝗶𝗿𝟯𝗼𝘄𝗻𝗲𝗿 @̲k̲i̲r̲3̲c̲l̲o̲u̲d̲ ̲-̲-̲ ̲@̲k̲i̲r̲3̲o̲w̲n̲e̲r̲ －－ ＠ｋｉｒ３ｃｌｏｕｄ －－ ＠ｋｉｒ３ｏｗｎｅｒ  

1234
Log date: 29/03/26 12:36
Version Build: 1.0
HWID: <redacted>
Country: AE
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i7-14700HX (20 cores, 28 threads)
Installed RAM: 15.73 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: Intel(R) UHD Graphics
Computer Name: <redacted>
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+4
UserLanguage: English
Keyboard Language: English
Display Resolution: 1280x800
```

### `cystack_2460a6dc`

**Field keys:**
`Admin Group`, `Computer Name`, `Display Resolution`, `Domain Name`, `Integrity`, `Keyboard Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Computer Name: <redacted>
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC-3
UserLanguage: Portuguese
Keyboard Language: Portuguese
Display Resolution: 1920x1080
```

### `cystack_24e2c0b7`

**Banners:**
- `===DARKSIDE_BRAND_BEGIN===`

**Field keys:**
`Domain Name`, `Graphics card`, `Installed RAM`, `Operation System`, `Processor`, `System Language`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
===DARKSIDE_BRAND_BEGIN===
|________________________________________________________________________________________________________________________|
| D                                                                                                                    D |
| A Join: <url>                                                                               A |
| R                                                                                                                    R |
| K $$$$$$$\                      $$\                 $$\       $$\                                                    K |
| S $$  __$$\                     $$ |                \__|      $$ |                                                   S |
| I $$ |  $$ | $$$$$$\   $$$$$$\  $$ |  $$\  $$$$$$$\ $$\  $$$$$$$ | $$$$$$\                                           I |
| D $$ |  $$ | \____$$\ $$  __$$\ $$ | $$  |$$  _____|$$ |$$  __$$ |$$  __$$\                                          D |
| E $$ |  $$ | $$$$$$$ |$$ |  \__|$$$$$$  / \$$$$$$\  $$ |$$ /  $$ |$$$$$$$$ |                                         E |
| C $$ |  $$ |$$  __$$ |$$ |      $$  _$$<   \____$$\ $$ |$$ |  $$ |$$   ____|                                         C |
| L $$$$$$$  |\$$$$$$$ |$$ |      $$ | \$$\ $$$$$$$  |$$ |\$$$$$$$ |\$$$$$$$\                                          L |
| O \_______/  \_______|\__|      \__|  \__|\_______/ \__| \_______| \_______|                                         O |
| U                                                                                                                    U |
| D                                                                                                                    D |
| D                                                                                                                    D |
| A                                                                                                                    A |
| R DARKSIDE PRIVATE CLOUD - Private Monthly Packs                                                                     R |
| K TIERS (monthly):  BUDGET $100  |  PREMIUM $200  |  GOLD $300                                                       K |
| S                                                                                                                    S |
| I                                                                                                                    I |
| D C  Budget Channel: 100$/month - Access up to 10+ private channels (total 500$).                                    D |
| E L  Premium Channel: 200$/month - Access to 10-20+ private channels (total 1000$).                                  E |
| C O  Gold Channel: 300$/month - Access to 20-30+ private channels (total 2000$).                                     C |
| L U          Join: <url>                                                                    L |
| O D             Join: <url>                                                                 O |
| U                   Join: <url>                                                             U |
| D DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD      D |
|________________________________________________________________________________________________________________________|
===DARKSIDE_BRAND_END===

System Language: English
Processor: Intel(R) Core(TM) Ultra 7 155H (16 cores, 22 threads)
Installed RAM: 31.46 GB
Operation System: Windows 11 (Build 26100) (64 Bit)
Graphics card: Intel(R) Arc(TM) Graphics
Domain Name: <redacted>
```

### `cystack_2ac6571b`

**Field keys:**
`Admin Group`, `Antivirus`, `City`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>




























<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



System Language: Italian
Processor: Intel(R) Core(TM) i7-10510U CPU @ 1.80GHz
Installed RAM: 7995 MB
Operation System: Windows 10 Home build 26100 (64 Bit)
Graphics card: Intel(R) UHD Graphics
Antivirus: Windows Defender
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+1
UserLanguage: English
Keyboard Language: English
Display Resolution: 1536x864
Wallpaper Hash: f78bca4847b3404f79aba9fe8ab1fcab25617a1e
Country:         Italy (IT)
City:            <redacted>
Timezone:        Europe/Rome (UTC)
```

### `cystack_3662db05`

**Banners:**
- `===DARKSIDE_BRAND_BEGIN===`

**Field keys:**
`Country`, `Graphics card`, `IP`, `Installed RAM`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `ScreenSize`, `System Language`, `User Language`, `UserName`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
===DARKSIDE_BRAND_BEGIN===
|________________________________________________________________________________________________________________________|
| D                                                                                                                    D |
| A Join: <url>                                                                               A |
| R                                                                                                                    R |
| K $$$$$$$\                      $$\                 $$\       $$\                                                    K |
| S $$  __$$\                     $$ |                \__|      $$ |                                                   S |
| I $$ |  $$ | $$$$$$\   $$$$$$\  $$ |  $$\  $$$$$$$\ $$\  $$$$$$$ | $$$$$$\                                           I |
| D $$ |  $$ | \____$$\ $$  __$$\ $$ | $$  |$$  _____|$$ |$$  __$$ |$$  __$$\                                          D |
| E $$ |  $$ | $$$$$$$ |$$ |  \__|$$$$$$  / \$$$$$$\  $$ |$$ /  $$ |$$$$$$$$ |                                         E |
| C $$ |  $$ |$$  __$$ |$$ |      $$  _$$<   \____$$\ $$ |$$ |  $$ |$$   ____|                                         C |
| L $$$$$$$  |\$$$$$$$ |$$ |      $$ | \$$\ $$$$$$$  |$$ |\$$$$$$$ |\$$$$$$$\                                          L |
| O \_______/  \_______|\__|      \__|  \__|\_______/ \__| \_______| \_______|                                         O |
| U                                                                                                                    U |
| D                                                                                                                    D |
| D                                                                                                                    D |
| A                                                                                                                    A |
| R DARKSIDE PRIVATE CLOUD - Private Monthly Packs                                                                     R |
| K TIERS (monthly):  BUDGET $100  |  PREMIUM $200  |  GOLD $300                                                       K |
| S                                                                                                                    S |
| I                                                                                                                    I |
| D C  Budget Channel: 100$/month - Access up to 10+ private channels (total 500$).                                    D |
| E L  Premium Channel: 200$/month - Access to 10-20+ private channels (total 1000$).                                  E |
| C O  Gold Channel: 300$/month - Access to 20-30+ private channels (total 2000$).                                     C |
| L U          Join: <url>                                                                    L |
| O D             Join: <url>                                                                 O |
| U                   Join: <url>                                                             U |
| D DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD      D |
|________________________________________________________________________________________________________________________|
===DARKSIDE_BRAND_END===

Log date: 2026-03-09 <ip>
IP: <redacted>
Country: AE
UserName: <redacted>
Operation System: Windows 11 build 26100
System Language: English
User Language: English
Keyboard Language: English
MachineID: <redacted>
ScreenSize: 2880x1800
Processor: Intel(R) Core(TM) i5-7360U CPU @ 2.30GHz
Installed RAM: 8057 MB
Graphics card: Intel(R) Iris(R) Plus Graphics 640
```

### `cystack_47bdc5de`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot




























<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



Country: IN
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i7-8665U CPU @ 1.90GHz (4 cores, 8 threads)
Installed RAM: 7.78 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: Intel(R) UHD Graphics 620
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+5
UserLanguage: English
Keyboard Language: English
Display Resolution: 1536x864
```

### `cystack_49de1981`

**Field keys:**
`Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP Address`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Postal Code`, `Processor`, `Region`, `System Language`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```

System Language: French
Processor: AMD Ryzen 5 7600X 6-Core Processor             
Installed RAM: 28317 MB
Operation System: Windows 10 Pro build 26200 (64 Bit)
Graphics card: AMD Radeon RX 7900 GRE
Antivirus: ESET
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+1
UserLanguage: French
Keyboard Language: French
Display Resolution: 1920x1080
Wallpaper Hash: fa5ee1099fe23ec70912e6a73e0c03cfb674ae55


═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════

IP Address:      <redacted>
Country:         Belgium (BE)
Region:          Wallonia
City:            <redacted>
Postal Code:     <redacted>


Timezone:        Europe/Brussels (UTC)

═══════════════════════════════════════════════════════════════════
```

### `cystack_4c3cebf2`

**Banners:**
- `===DARKSIDE_BRAND_BEGIN===`

**Field keys:**
`Admin Group`, `Display Resolution`, `Domain Name`, `Graphics card`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
===DARKSIDE_BRAND_BEGIN===
|________________________________________________________________________________________________________________________|
| D                                                                                                                    D |
| A Join: <url>                                                                               A |
| R                                                                                                                    R |
| K $$$$$$$\                      $$\                 $$\       $$\                                                    K |
| S $$  __$$\                     $$ |                \__|      $$ |                                                   S |
| I $$ |  $$ | $$$$$$\   $$$$$$\  $$ |  $$\  $$$$$$$\ $$\  $$$$$$$ | $$$$$$\                                           I |
| D $$ |  $$ | \____$$\ $$  __$$\ $$ | $$  |$$  _____|$$ |$$  __$$ |$$  __$$\                                          D |
| E $$ |  $$ | $$$$$$$ |$$ |  \__|$$$$$$  / \$$$$$$\  $$ |$$ /  $$ |$$$$$$$$ |                                         E |
| C $$ |  $$ |$$  __$$ |$$ |      $$  _$$<   \____$$\ $$ |$$ |  $$ |$$   ____|                                         C |
| L $$$$$$$  |\$$$$$$$ |$$ |      $$ | \$$\ $$$$$$$  |$$ |\$$$$$$$ |\$$$$$$$\                                          L |
| O \_______/  \_______|\__|      \__|  \__|\_______/ \__| \_______| \_______|                                         O |
| U                                                                                                                    U |
| D                                                                                                                    D |
| D                                                                                                                    D |
| A                                                                                                                    A |
| R DARKSIDE PRIVATE CLOUD - Private Monthly Packs                                                                     R |
| K TIERS (monthly):  BUDGET $100  |  PREMIUM $200  |  GOLD $300                                                       K |
| S                                                                                                                    S |
| I                                                                                                                    I |
| D C  Budget Channel: 100$/month - Access up to 10+ private channels (total 500$).                                    D |
| E L  Premium Channel: 200$/month - Access to 10-20+ private channels (total 1000$).                                  E |
| C O  Gold Channel: 300$/month - Access to 20-30+ private channels (total 2000$).                                     C |
| L U          Join: <url>                                                                    L |
| O D             Join: <url>                                                                 O |
| U                   Join: <url>                                                             U |
| D DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD      D |
|________________________________________________________________________________________________________________________|
===DARKSIDE_BRAND_END===

System Language: English
Processor: Intel(R) Core(TM) i7 CPU Q 740 @ 1.73GHz (4 cores, 8 threads)
Installed RAM: 7.99 GB
Operation System: Windows 10 (Build 19045) (64 Bit)
Graphics card: AMD Mobility Radeon HD 5800 Series
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: 7
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
```

### `cystack_4d65acc2`

**Field keys:**
`Admin Group`, `Display Resolution`, `Integrity`, `Keyboard Language`, `TimeZone`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+2
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
```

### `cystack_5455ca59`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```

Country: GB
IP: <redacted>
System Language: English
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz (6 cores, 12 threads)
Installed RAM: 31.87 GB
Operation System: Windows 11 (Build 22631) (64 Bit)
Graphics card: NVIDIA GeForce GTX 1660 SUPER
Computer Name: <redacted>
Domain Name: <redacted>
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+0
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
```

### `cystack_60bb56d3`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>  

Country: Argentina
IP: <redacted>
System Language: Spanish
Processor: AMD Ryzen 5 5500  (6 cores, 12 threads)
Installed RAM: 16.00 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: AMD Radeon RX 580 2048SP
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
TimeZone: -1
UserLanguage: Spanish
Keyboard Language: Spanish [k1188]
Display Resolution: 1920x1080
```

### `cystack_63de139b`

**Banners:**
- `===DARKSIDE_BRAND_BEGIN===`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
===DARKSIDE_BRAND_BEGIN===
|________________________________________________________________________________________________________________________|
| D                                                                                                                    D |
| A Join: <url>                                                                               A |
| R                                                                                                                    R |
| K $$$$$$$\                      $$\                 $$\       $$\                                                    K |
| S $$  __$$\                     $$ |                \__|      $$ |                                                   S |
| I $$ |  $$ | $$$$$$\   $$$$$$\  $$ |  $$\  $$$$$$$\ $$\  $$$$$$$ | $$$$$$\                                           I |
| D $$ |  $$ | \____$$\ $$  __$$\ $$ | $$  |$$  _____|$$ |$$  __$$ |$$  __$$\                                          D |
| E $$ |  $$ | $$$$$$$ |$$ |  \__|$$$$$$  / \$$$$$$\  $$ |$$ /  $$ |$$$$$$$$ |                                         E |
| C $$ |  $$ |$$  __$$ |$$ |      $$  _$$<   \____$$\ $$ |$$ |  $$ |$$   ____|                                         C |
| L $$$$$$$  |\$$$$$$$ |$$ |      $$ | \$$\ $$$$$$$  |$$ |\$$$$$$$ |\$$$$$$$\                                          L |
| O \_______/  \_______|\__|      \__|  \__|\_______/ \__| \_______| \_______|                                         O |
| U                                                                                                                    U |
| D                                                                                                                    D |
| D                                                                                                                    D |
| A                                                                                                                    A |
| R DARKSIDE PRIVATE CLOUD - Private Monthly Packs                                                                     R |
| K TIERS (monthly):  BUDGET $100  |  PREMIUM $200  |  GOLD $300                                                       K |
| S                                                                                                                    S |
| I                                                                                                                    I |
| D C  Budget Channel: 100$/month - Access up to 10+ private channels (total 500$).                                    D |
| E L  Premium Channel: 200$/month - Access to 10-20+ private channels (total 1000$).                                  E |
| C O  Gold Channel: 300$/month - Access to 20-30+ private channels (total 2000$).                                     C |
| L U          Join: <url>                                                                    L |
| O D             Join: <url>                                                                 O |
| U                   Join: <url>                                                             U |
| D DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD      D |
|________________________________________________________________________________________________________________________|
===DARKSIDE_BRAND_END===

Country: AE
IP: <redacted>
System Language: English
Processor: AMD Ryzen 5 3600 6-Core Processor  (6 cores, 12 threads)
Installed RAM: 15.93 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: NVIDIA GeForce GTX 1080
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: 4
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
```

### `cystack_735b57ba`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
  

Country: BR
IP: <redacted>
System Language: Portuguese
Processor: AMD Ryzen 5 5600GT with Radeon Graphics  (6 cores, 12 threads)
Installed RAM: 11.90 GB
Operation System: Windows 11 (Build 26100) (64 Bit)
Graphics card: AMD Radeon(TM) Graphics
Domain Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: -4
UserLanguage: Portuguese
Keyboard Language: Portuguese
Display Resolution: 1360x768
```

### `cystack_7378aac5`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>  

Country: BR [A1853]
IP: <redacted>
System Language: Portuguese
Processor: 11th Gen Intel(R) Core(TM) i5-11400 @ 2.60GHz (6 cores, 12 threads)
Installed RAM: 15.86 GB
Graphics card: NVIDIA GeForce GTX 1650
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: -1
UserLanguage: Portuguese
Keyboard Language: Portuguese
Display Resolution: 1920x1080
```

### `cystack_80805b46`

**Field keys:**
`Admin Group`, `Display Resolution`, `Domain Name`, `Graphics card`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>  

Processor: AMD Ryzen 5 3550H with Radeon Vega Mobile Gfx  (4 cores, 8 threads)
Installed RAM: 7.81 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: AMD Radeon(TM) Vega 8 Graphics
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: 8
UserLanguage: English
Keyboard Language: English
Display Resolution: 1536x864
```

### `cystack_8307a3e7`

**Banners:**
- `===DARKSIDE_BRAND_BEGIN===`

**Field keys:**
`Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
===DARKSIDE_BRAND_BEGIN===
|________________________________________________________________________________________________________________________|
| D                                                                                                                    D |
| A Join: <url>                                                                               A |
| R                                                                                                                    R |
| K $$$$$$$\                      $$\                 $$\       $$\                                                    K |
| S $$  __$$\                     $$ |                \__|      $$ |                                                   S |
| I $$ |  $$ | $$$$$$\   $$$$$$\  $$ |  $$\  $$$$$$$\ $$\  $$$$$$$ | $$$$$$\                                           I |
| D $$ |  $$ | \____$$\ $$  __$$\ $$ | $$  |$$  _____|$$ |$$  __$$ |$$  __$$\                                          D |
| E $$ |  $$ | $$$$$$$ |$$ |  \__|$$$$$$  / \$$$$$$\  $$ |$$ /  $$ |$$$$$$$$ |                                         E |
| C $$ |  $$ |$$  __$$ |$$ |      $$  _$$<   \____$$\ $$ |$$ |  $$ |$$   ____|                                         C |
| L $$$$$$$  |\$$$$$$$ |$$ |      $$ | \$$\ $$$$$$$  |$$ |\$$$$$$$ |\$$$$$$$\                                          L |
| O \_______/  \_______|\__|      \__|  \__|\_______/ \__| \_______| \_______|                                         O |
| U                                                                                                                    U |
| D                                                                                                                    D |
| D                                                                                                                    D |
| A                                                                                                                    A |
| R DARKSIDE PRIVATE CLOUD - Private Monthly Packs                                                                     R |
| K TIERS (monthly):  BUDGET $100  |  PREMIUM $200  |  GOLD $300                                                       K |
| S                                                                                                                    S |
| I                                                                                                                    I |
| D C  Budget Channel: 100$/month - Access up to 10+ private channels (total 500$).                                    D |
| E L  Premium Channel: 200$/month - Access to 10-20+ private channels (total 1000$).                                  E |
| C O  Gold Channel: 300$/month - Access to 20-30+ private channels (total 2000$).                                     C |
| L U          Join: <url>                                                                    L |
| O D             Join: <url>                                                                 O |
| U                   Join: <url>                                                             U |
| D DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD     DARKSIDE CLOUD      D |
|________________________________________________________________________________________________________________________|
===DARKSIDE_BRAND_END===

System Language: Spanish
Processor: AMD Ryzen 5 5600GT with Radeon Graphics
Installed RAM: 16171 MB
Operation System: Windows 10 Pro build 26200 (64 Bit)
Graphics card: NVIDIA GeForce RTX 3050
Antivirus: Windows Defender
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: -1
UserLanguage: Spanish
Keyboard Language: Spanish
Display Resolution: 2560x1440
Wallpaper Hash: 427994ebdf8964fdf883226db0657be466f86276
Country:         Argentina (AR)
City:            <redacted>
Timezone:        America/Argentina/Buenos_Aires (UTC)
```

### `cystack_84654605`

**Field keys:**
`Admin Group`, `Computer Name`, `Display Resolution`, `Domain Name`, `Graphics card`, `Integrity`, `Keyboard Language`, `Product Key`, `Router MAC Address`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Graphics card: NVIDIA GeForce GTX 1650
Computer Name: <redacted>
Router MAC Address: <ip>
Domain Name: <redacted>
Product Key: YTMG3-N6DKC-DKB77-7M9GH-8HVX7
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
UserLanguage: Spanish
Keyboard Language: Spanish
Display Resolution: 1536x864
Wallpaper Hash: 865aebae671ff297423ed7d28c583b683a12d092
```

### `cystack_8739bd31`

**Field keys:**
`Admin Group`, `Display Resolution`, `Integrity`, `Keyboard Language`, `Product Key`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Product Key: HNGVG-HGJFG-6BKFM-MDW7K-RM6F8
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
UserLanguage: English
Keyboard Language: English
Display Resolution: 1080x1080
Wallpaper Hash: cb29d2b21390ce22be8d3009ca330c0db0ac81f0
```

### `cystack_93fee37c`

**Field keys:**
`Admin Group`, `BUILD NAME`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `Product Key`, `Router MAC Address`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```

BUILD NAME: bigdick
HWID: <redacted>
Country: BE
IP: <redacted>
TimeZone: +1
System Language: English
Processor: AMD Ryzen 5 5600X 6-Core Processor
Installed RAM: 16327 MB
Operation System: Windows 11-10.0.26200
Graphics card: NVIDIA GeForce RTX 3060
Computer Name: <redacted>
Router MAC Address: <ip>
Domain Name: <redacted>
Product Key: YTMG3-N6DKC-DKB77-7M9GH-8HVX7
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: Unknown
```

### `cystack_a06e8d9d`

**Field keys:**
`Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP Address`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Postal Code`, `Processor`, `Region`, `System Language`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
@ k i r 3 c l o u d  	@ k i r 3 c l o u d	@ k i r 3 c l o u d  	@ k i r 3 c l o u d      @ k i r 3 c l o u d
░▄▀▄░█░█░▀█▀░█▀▄░▀▀█░█▀▀░█░░░█▀█░█░█░█▀▄
░█▀▀░█▀▄░░█░░█▀▄░░▀▄░█░░░█░░░█░█░█░█░█░█
░░▀░░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀░                                                                                                                                   
@𝗸𝗶𝗿𝟯𝗰𝗹𝗼𝘂𝗱 -- @𝗸𝗶𝗿𝟯𝗼𝘄𝗻𝗲𝗿 @̲k̲i̲r̲3̲c̲l̲o̲u̲d̲ ̲-̲-̲ ̲@̲k̲i̲r̲3̲o̲w̲n̲e̲r̲ －－ ＠ｋｉｒ３ｃｌｏｕｄ －－ ＠ｋｉｒ３ｏｗｎｅｒ  

Log date: 14 Mar 26 00:42
HWID: <redacted>
System Language: English
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Installed RAM: 32581 MB
Operation System: Windows 10 Pro build 26200 (64 Bit)
Graphics card: NVIDIA GeForce RTX 3060
Antivirus: Windows Defender
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+3
UserLanguage: English
Keyboard Language: English
Display Resolution: 1366x768
Wallpaper Hash: 4eff1592e863915bb0f2fd791bd00ca258a7185c
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

### `cystack_a1b233c6`

**Field keys:**
`Admin Group`, `Display Resolution`, `Domain Name`, `Integrity`, `Keyboard Language`, `Product Key`, `Router MAC Address`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Router MAC Address: <ip>
Domain Name: <redacted>
Product Key: 37GNV-YCQVD-38XP9-T848R-FC2HD
-------------
User Name: <redacted>
Admin Group: TRUE
Integrity: High
UserLanguage: German
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 7edf68c495f6fe8b8001a36c9ea0b65040a2d0a7
```

### `cystack_b6ece516`

**Field keys:**
`Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `Product Key`, `Router MAC Address`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
HWID: <redacted>
Country: DE
IP: <redacted>
TimeZone: +1
System Language: German
Processor: AMD Ryzen 5 4500 6-Core Processor
Installed RAM: 16179 MB
Operation System: Windows 11-10.0.26200
Graphics card: NVIDIA GeForce RTX 3050
Computer Name: <redacted>
Router MAC Address: <ip>
Domain Name: <redacted>
Product Key: VK7JG-NPHTM-C97JM-9MPGT-3V66T
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
UserLanguage: German
Keyboard Language: German
Display Resolution: 1920x1080
Wallpaper Hash: c6a38b4bd78e81be291413cda43e00de442c1267
```

### `cystack_c142a44b`

**Field keys:**
`City`, `Country`, `Display Resolution`, `IP Address`, `Keyboard Language`, `Postal Code`, `Region`, `TimeZone`, `Timezone`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
TimeZone: UTC+1
UserLanguage: German
Keyboard Language: German
Display Resolution: 2949x1659
Wallpaper Hash: 0cf0e02ece23fe949b1dff9706912274c766d3d4


═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════

IP Address:      <redacted>
Country:         Germany (DE)
Region:          Mecklenburg-Vorpommern
City:            <redacted>
Postal Code:     <redacted>


Timezone:        Europe/Berlin (UTC)

═══════════════════════════════════════════════════════════════════
```

### `cystack_c83e9a41`

**Field keys:**
`Admin Group`, `City`, `Country`, `Display Resolution`, `IP Address`, `Integrity`, `Keyboard Language`, `Postal Code`, `Region`, `TimeZone`, `Timezone`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+1
UserLanguage: German
Keyboard Language: German
Display Resolution: 1920x1080
Wallpaper Hash: b6093c9a1e712ff5536d69426f6026b58b3d4afd


═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════

IP Address:      <redacted>
Country:         Austria (AT)
Region:          Vienna
City:            <redacted>
Postal Code:     <redacted>


Timezone:        Europe/Vienna (UTC)

═══════════════════════════════════════════════════════════════════
```

### `cystack_c850613f`

**Field keys:**
`Admin Group`, `Display Resolution`, `Graphics card`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>  

System Language: Spanish
Processor: AMD Ryzen 7 4800HS with Radeon Graphics  (8 cores, 16 threads)
Installed RAM: 7.42 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: AMD Radeon(TM) Graphics
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: -7
UserLanguage: English
Keyboard Language: Spanish
Display Resolution: 1280x720 [h2307]
```

### `cystack_cc52bdba`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Log date`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot   <url>      Subscribe    ArtHouse




























<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



Log date: 11/03/26 19:41
HWID: <redacted>
Country: IN
IP: <redacted>
System Language: English
Processor: AMD Ryzen 5 5600H with Radeon Graphics  (6 cores, 12 threads)
Installed RAM: 7.38 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: AMD Radeon(TM) Graphics
Domain Name: <redacted>
User Name: <redacted>
Admin Group: TRUE
Integrity: High
TimeZone: UTC+5
UserLanguage: English
Keyboard Language: English
Display Resolution: 1536x864
```

### `cystack_d6ea5c3d`

**Field keys:**
`Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP Address`, `Integrity`, `Keyboard Language`, `Operation System`, `Postal Code`, `Region`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Operation System: Windows 10 Home Single Language build 26200 (64 Bit)
Graphics card: Intel(R) UHD Graphics
Antivirus: Windows Defender
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+3
UserLanguage: English
Keyboard Language: English
Display Resolution: 1536x864
Wallpaper Hash: 29c89080470fe7cd473bed86c63c907effe5d3fa


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

### `cystack_d706f1b5`

**Field keys:**
`Admin Group`, `Antivirus`, `City`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP Address`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Postal Code`, `Processor`, `Region`, `TimeZone`, `Timezone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Processor: 13th Gen Intel(R) Core(TM) i7-13700K
Installed RAM: 32509 MB
Operation System: Windows 10 Home build 26200 (64 Bit)
Graphics card: NVIDIA GeForce RTX 4060
Antivirus: Windows Defender
Computer Name: <redacted>
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC+1
UserLanguage: German
Keyboard Language: German
Display Resolution: 1920x1080
Wallpaper Hash: 32a4f2aead9726b13a6b06d1170070a036adac8e


═══════════════════════════════════════════════════════════════════
                        IP GEOLOCATION DATA
═══════════════════════════════════════════════════════════════════

IP Address:      <redacted>
Country:         Germany (DE)
Region:          Hesse
City:            <redacted>
Postal Code:     <redacted>


Timezone:        Europe/Berlin (UTC)

═══════════════════════════════════════════════════════════════════
```

### `cystack_d7c6c67e`

**Field keys:**
`Admin Group`, `Display Resolution`, `Domain Name`, `Graphics card`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot




























Bot @arthouse_full_bot

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



System Language: La
Processor: Intel(R) Core(TM) i3-10100F CPU @ 3.60GHz (4 cores, 8 threads)
Installed RAM: 15.94 GB
Operation System: Windows 11 (Build 26100) (64 Bit)
Graphics card: NVIDIA GeForce GTX 1050 Ti [q1707]
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: 0
UserLanguage: Latvian
Keyboard Language: Latvian
Display Resolution: 1920x1080
```

### `cystack_dd8d6359`

**Field keys:**
`APPLE`, `Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `GOOGLE`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `Product Key`, `Router MAC Address`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
HWID: <redacted>
Country: FR
IP: <redacted>
TimeZone: +1
System Language: French
Processor: 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz
Installed RAM: 16112 MB
Operation System: Windows 10-10.0.19045
Graphics card: Intel(R) Iris(R) Xe Graphics
Computer Name: <redacted>
Router MAC Address: <ip>
Domain Name: <redacted>
Product Key: VK7JG-NPHTM-C97JM-9MPGT-3V66T
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
UserLanguage: French
Keyboard Language: French
Display Resolution: 1280x720
Wallpaper Hash: 92073779a1fec9d53c640a8f513324f484bf5879

=== GEOLOCATION ===
APPLE: 48.881622, 2.394148
GOOGLE: 48.881633, 2.394072
```

### `cystack_df353994`

**Field keys:**
`Admin Group`, `Display Resolution`, `Integrity`, `Keyboard Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: UTC-3
UserLanguage: Portuguese
Keyboard Language: Portuguese
Display Resolution: 2560x1440
```

### `cystack_e6316c5e`

**Field keys:**
`Admin Group`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot       @cloud_arthouse       Subscribe    ArtHouse    Cloud 2021-2026  <url>




























Bot @arthouse_full_bot

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



Country: Spain
IP: <redacted>
System Language: Spanish
Installed RAM: 32.00 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: NVIDIA GeForce RTX 4060 Ti
Domain Name: <redacted>
User Name: <redacted>
Admin Group: TRUE
Integrity: High
TimeZone: UTC+1
UserLanguage: Spanish
Keyboard Language: Spanish
Display Resolution: 1920x1080
```

### `cystack_ec5637c1`

**Field keys:**
`Admin Group`, `BUILD NAME`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `MYLNIKOV`, `Operation System`, `Processor`, `Product Key`, `Router MAC Address`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
============================================================
BUILD NAME: bigdick
HWID: <redacted>
Country: FR
IP: <redacted>
TimeZone: -8
System Language: English
Processor: AMD Ryzen 9 5950X 16-Core Processor
Installed RAM: 2047 MB
Operation System: Windows 10-10.0.20348
Graphics card: Microsoft Remote Display Adapter
Computer Name: <redacted>
Router MAC Address: <ip>
Domain Name: <redacted>
Product Key: NHB69-V77PJ-F86MF-2DHCK-66RQV
-------------
User Name: <redacted>
Admin Group: TRUE
Integrity: High
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 07e4b5cb74ddc87b24b25d26a76fe4ad60104c87

=== GEOLOCATION ===
MYLNIKOV: 52.472744, 13.457951
```

### `cystack_efe7f525`

**Field keys:**
`APPLE`, `Admin Group`, `Display Resolution`, `GOOGLE`, `Integrity`, `Keyboard Language`, `Product Key`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Product Key: VK7JG-NPHTM-C97JM-9MPGT-3V66T
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 0044e72dae34743b7c978dd7656aca30b714a9fd

=== GEOLOCATION ===
APPLE: 14.938121, 101.883789
GOOGLE: 14.938049, 101.883748
```

### `cystack_f3954c4a`

**Field keys:**
`APPLE`, `Admin Group`, `BUILD NAME`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `GOOGLE`, `Graphics card`, `HWID`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `Product Key`, `Router MAC Address`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
============================================================
BUILD NAME: bigdick
HWID: <redacted>
Country: CA
IP: <redacted>
TimeZone: -3
System Language: English
Processor: AMD Ryzen 5 7600 6-Core Processor
Installed RAM: 31902 MB
Operation System: Windows 11-10.0.26200
Graphics card: AMD Radeon RX 7600 XT
Computer Name: <redacted>
Router MAC Address: <ip>
Domain Name: <redacted>
Product Key: VK7JG-NPHTM-C97JM-9MPGT-3V66T
-------------
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
Wallpaper Hash: 41e8c2b506390bcdab59b9cb3fc1222c78d4aefa

=== GEOLOCATION ===
APPLE: 47.592857, -52.735085
GOOGLE: 47.592955, -52.73486
```

### `cystack_f95511e0`

**Field keys:**
`Admin Group`, `Display Resolution`, `Domain Name`, `Graphics card`, `IP`, `Installed RAM`, `Integrity`, `Keyboard Language`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>  

IP: <redacted>
System Language: English
Processor: AMD Ryzen 5 7600X 6-Core Processor  (6 cores, 12 threads)
Installed RAM: 15.14 GB
Operation System: Windows 11 (Build 26200) (64 Bit)
Graphics card: NVIDIA GeForce RTX 3060
Domain Name: <redacted>
User Name: <redacted>
Admin Group: FALSE
Integrity: Medium
TimeZone: -2
UserLanguage: English
Keyboard Language: English
Display Resolution: 1920x1080
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
- [`meta-stealer`](../meta-stealer/)

## References

- https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-redline-stealer
- https://github.com/MalBeacon/what-is-this-stealer
