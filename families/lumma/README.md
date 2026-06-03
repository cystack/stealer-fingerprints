# Lumma

Lumma C2 (LummaC2) logs. The panel writes `System.txt` with a
YAML-like dash-prefix list (`- LummaC2 Build:`,
`- Configuration:`, etc.) and a distinctive `(sig:UNIX.HEX)`
signature on the `Time:` line. Build banners reference the
`@lummanowork` channel; the panel is sold MaaS via
`@lummamarketplace_bot`.

**Also known as:** `LummaC2`, `Lumma Stealer`

**Variants observed:** 47
**Top attribution confidence:** `high`
**Operator panel brands:** `AL Stealer`, `BRADMAX`, `Deimos Golang Stealer`
**Distribution channels:** `@BRADLOGS`, `@ft7links`, `t.me/additionallibraries`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions (focus on MetaMask, Phantom, and similar)
- Steam, Telegram, Discord session tokens
- 2FA seeds from Authy and similar desktop clients
- Cryptocurrency seed phrases harvested from text files

## Variants

### `AL Stealer`

**Fingerprint id:** `al_stealer`

**Distribution channel:** `t.me/additionallibraries`

**Attribution confidence:** `medium`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
# Join now: t.me/additionallibraries
# Best Hypixel Skyblock free rat
- AL Stealer Build: May 17 2025

- OS Version: Microsoft Windows 11 Home (10.0.22631) x64
- Local Date: 21.06.2025 <ip>
- Time Zone: UTC+00:00 Dublin, Edinburgh, Lisbon, London
- Install Date: 11.04.2024 <ip>
- Computer: Eric
- User: ebouc
- Domain: WORKGROUP
- Hostname: Eric
- Anti Virus:
  - Windows Defender
- HWID: 39373338383931616437373734663765
- RAM Size: 16384MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i9-14900HX
- CPU Threads: 32
- CPU Cores: 24
- GPU: Meta Virtual Monitor
- Display resolution: 2048x1280

- Clipboard: 
win+r appdata  → roaming  → .minecraft → mods

- IP Address: <ip>
- Time: 21.06.2025 <ip>
- Country: NL

------------------------------------
Free/Best hypixel rat >> t.me/additionallibraries
Free, discord bot, cookies, passwords, crypto wallets, non dhooked, more than 180 applications that can be stealed and much more.
Become better right now - t.me/additionallibraries
```

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `high`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
@BRADLOGS (BRADMAX) / <url>
- Date : Build: Jun  3 2025
- Configuration:
- Path: C:\Users\<user>\AppData\Local\Temp\BRADLOGS.exe

- OS Version: Windows 11 Pro (10.0.22631) x64
- Local Date: 13.07.2025 <ip>
- Time Zone: UTC+2
- Install Date: 09.05.2025 <ip>
- Elevated: false
- Computer: DESKTOP-0UKU5EL
- User: ARSENIO
- Domain: 
- Hostname: DESKTOP-0UKU5EL
- NetBIOS: DESKTOP-0UKU5EL
- Language: id-ID
- Anti Virus:
	- Windows Defender
- HWID: 15338345EDAB91D64DE6BDB7967BA1F9
- RAM Size: 4096MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Celeron(R) CPU 1007U @ 1.50GHz
- CPU Threads: 2
- CPU Cores: 2
- GPU:
	- Intel(R) HD Graphics
- Display resolution: 1366x768

- IP Address: <ip>
- Time: 13.07.2025 <ip>
- Country: <ip>
- @BRADLOGS (BRADMAX) / <url>
```

### `cystack_033e06aa`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
**************************************************************
*                                                            *
*          ______                   _ ___  ___               *
*    ____  | ___ \                 | ||  \/  |               *
*   / __ \ | |_/ / _ __   __ _   __| || .  . |  __ _ __  __  *
*  / / _` || ___ \| '__| / _` | / _` || |\/| | / _` |\ \/ /  *
* | | (_| || |_/ /| |   | (_| || (_| || |  | || (_| | >  <   *
*  \ \__,_|\____/ |_|    \__,_| \__,_|\_|  |_/ \__,_|/_/\_\  *
*   \____/                                                   *
*                                                            *
*            Telegram: <url>        *
*                       t.me/BRADMAX_LOG                     *
**************************************************************

LummaC2 Build: May 19 2025
Path: <redacted>
OS Version: Windows 10 Pro (10.0.19044) x64
Local Date: 25.05.2025 <ip>
Time Zone: UTC+0
Elevated: true
Computer: F3C0-9FCL
User: User
Domain: <redacted>
Hostname: <redacted>
NetBIOS: F3C0-9FCL
Language: de-DE
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748178833.900ff7d8a5e6e988fc9c5fa37a62d73a)
Country: DE
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_086b58ca`

**Attribution confidence:** `high`

**Field keys:**
`Exploit`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
- OS Version: Windows 10 Entreprise N (10.0.19045) x64
- Local Date: 24.02.2025 <ip>
- Time Zone: UTC+1
- Install Date: 01.01.1970 <ip>
- Elevated: false
- Computer: DESKTOP-HEUP714
- User: Gege
- Domain:
- Hostname: DESKTOP-HEUP714
- NetBIOS: DESKTOP-HEUP714
- Language: fr-FR
- Anti Virus:
- Windows Defender
- HWID: 7B5903829E6CB491DCC0C509824AA8E1
- RAM Size: 16384MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
- CPU Threads: 12
- CPU Cores: 6
- GPU:
- NVIDIA GeForce GTX 1660
- Display resolution: 1920x1080
- IP Address: <ip>
- Time: 24.02.2025 <ip> (sig:1740352266.0a81f18f235776a21df83a97b367dbf6)
- Country: FR
Куплю ваши YouTube каналы в больших объемах!
Работая в данной сфере больше 6 лет  и могу с уверенностью сказать, что только работая с нами вы сможете  реализовать ваши YouTube каналы и получить максимальную выгоду.
Постоянным продавцам мы предоставляем лучшую цену на рынке за любой канал + % со стрима.
Наша команда на находится на связи 24/7.
Exploit: <url>
#1 Cервис по подобору паролей (MetaMask, Phantom, Exodus и множество других)
Применяем широкий спектр атак для подбора паролей. Большой опыт в области криптографии и взлома паролей.
Работаем с кошельками от $5,000
Процент: 70/30 или 60/40 в вашу пользу (зависит от сложности подобранного пароля)
Контакты - <url>
```

### `cystack_0b22cc29`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
Time Zone: UTC-3
Elevated: false
Computer: PC-912
User: benja
Hostname: <redacted>
NetBIOS: PC-912
Language: es-AR
HWID: <redacted>
RAM Size: 32768MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 7 5700G with Radeon Graphics
CPU Threads: 16
CPU Cores: 8
Display resolution: 1920x1080
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748171520.7efa11ed6fd3c502219602e82220d355)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_0df566a5`

**Attribution confidence:** `high`

**Field keys:**
`TG`

**Filenames:** `System.txt`, `UserInformation.txt`

**Sample (sanitized):**

```
- LummaC2 Build: Feb 23 2025
- @MAXERSTE (BRADMAX) / <url>
- Configuration: 
- Path: C:\WINDOWS\SysWOW64\explorer.exe

- OS Version: Windows 10 Home Single Language (10.0.19045) x64
- Local Date: 03.03.2025 <ip>
- Time Zone: UTC+4
- Install Date: 01.08.2020 <ip>
- Elevated: false
- Computer: AISON
- User: AIS�N
- Domain: 
- Hostname: Aison
- NetBIOS: AISON
- Language: en-US
- Anti Virus:
	- Norton 360
- HWID: 2BB1CAF18934E4DD8E7A5F48C2665F48
- RAM Size: 8192MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i5-4570T CPU @ 2.90GHz
- CPU Threads: 4
- CPU Cores: 2
- GPU:
	- Intel(R) HD Graphics 4600
- Display resolution: 1920x1080

- IP Address: <ip>
- Time: 03.03.2025 <ip> (sig:1741006955.06e122ce556622a5d752de1af3bbe448)
- Country: AE

------------------------------------

Automated log store >> t.me/lummamarketplace_bot
Tens of thousands of logs for sale, rating system, search by filters and countries, hundreds of sellers with their own storefronts. Unique development based on MaaS from LummaC2.
Purchase quality material right now - t.me/lummamarketplace_bot

------------------------------------

[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_0e7834a9`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 30 2025
Path: <redacted>
OS Version: Windows 11 Home Single Language (10.0.26100) x64
Local Date: 31.05.2025 <ip>
Time Zone: UTC-3
Install Date: 17.01.2025 <ip>
Elevated: false
Computer: ANTORENA
User: Usuario
Hostname: <redacted>
NetBIOS: ANTORENA
Language: es-CL
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 7535HS with Radeon Graphics
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Country: AR
- LID: @BRADMAX_LOG (BRADMAX) / <url>
BEST LOGS => @BRADMAX_LOG
```

### `cystack_17440144`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
OS Version: Windows 11 Pro (10.0.26100) x64
User: Julian
Hostname: <redacted>
NetBIOS: JULIAN
Language: es-AR
HWID: <redacted>
RAM Size: 32768MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748196566.032d67860a57e6864aa0d13b256007f1)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_1989fd30`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `LummaC2 Build`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT

LummaC2 Build: Jun  8 2025
Path: <redacted>
Elevated: false
Computer: SecHex-OZLFWJQ
User: Lucas
Hostname: <redacted>
NetBIOS: SecHex-OZLFWJQ
Language: pt-BR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 3400G with Radeon Vega Graphics    
CPU Threads: 8
CPU Cores: 1
Display resolution: 1920x1080
IP Address: <redacted>
Time: 14.06.2025 <ip> (sig:1749868793.760d1b04b3c03bccbd0bb80348934c6c)
Country: <ip>
LID: yau6Na--7400515879
```

### `cystack_30e46fb7`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
**************************************************************
*                                                            *
*          ______                   _ ___  ___               *
*    ____  | ___ \                 | ||  \/  |               *
*   / __ \ | |_/ / _ __   __ _   __| || .  . |  __ _ __  __  *
*  / / _` || ___ \| '__| / _` | / _` || |\/| | / _` |\ \/ /  *
* | | (_| || |_/ /| |   | (_| || (_| || |  | || (_| | >  <   *
*  \ \__,_|\____/ |_|    \__,_| \__,_|\_|  |_/ \__,_|/_/\_\  *
*   \____/                                                   *
*                                                            *
*            Telegram: <url>        *
*                       t.me/BRADMAX_LOG                     *
**************************************************************

LummaC2 Build: May 19 2025
Path: <redacted>
OS Version: Windows 10 Pro (10.0.19045) x64
Local Date: 20.05.2025 <ip>
Time Zone: UTC-4
Install Date: 29.11.2023 <ip>
Elevated: false
Computer: DESKTOP-U5RC80T
User: usuario
Hostname: <redacted>
NetBIOS: DESKTOP-U5RC80T
HWID: <redacted>
RAM Size: 8192MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
CPU Threads: 4
CPU Cores: 4
Display resolution: 1440x900
IP Address: <redacted>
Time: 20.05.2025 <ip> (sig:1747754872.4ed1b6540f0081a1dc3398cd6cb62bcd)
Country: VE
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_353a363d`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 30 2025
Path: <redacted>
OS Version: Windows 10 Home (10.0.19045) x64
Local Date: 02.06.2025 <ip>
Time Zone: UTC+2
Elevated: true
Computer: 7932C1
User: MK
Domain: <redacted>
Hostname: <redacted>
NetBIOS: 7932C1
Language: de-CH
HWID: <redacted>
RAM Size: 32768MB
CPU Vendor: GenuineIntel
CPU Name: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
CPU Threads: 16
CPU Cores: 8
Display resolution: 3440x1440
IP Address: <redacted>
Time: 02.06.2025 <ip> (sig:1748873486.db1b731ec4f8f08ff5dd083b8b801a19)
Country: CH
- LID: @BRADMAX_LOG (BRADMAX) / <url>
BEST LOGS => @BRADMAX_LOG
```

### `cystack_38ce40fc`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
Install Date: 30.04.2025 <ip>
Computer: ESTEFY
User: estef
Hostname: <redacted>
NetBIOS: ESTEFY
Language: es-AR
HWID: <redacted>
RAM Size: 8192MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i3-1005G1 CPU @ 1.20GHz
CPU Threads: 4
CPU Cores: 2
Display resolution: 1920x1080
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748136939.81cad37db8fbdf9d9c842e7da2ec6ee1)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_40fa2320`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 25 2025
OS Version: Windows 11 Pro (10.0.22621) x64
Local Date: 26.05.2025 <ip>
Time Zone: UTC-4
Install Date: 16.03.2023 <ip>
Elevated: false
Computer: COMPRAS06
User: Compras06
Domain: <redacted>
Hostname: <redacted>
NetBIOS: COMPRAS06
Language: es-VE
HWID: <redacted>
RAM Size: 8192MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz
CPU Threads: 4
CPU Cores: 2
Display resolution: 1366x768
IP Address: <redacted>
Country: VE
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_4a2e376b`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT

LummaC2 Build: Jun  8 2025
Path: <redacted>
OS Version: Windows 10 Home (10.0.19045) x64
Local Date: 10.06.2025 <ip>
Time Zone: UTC+2
Install Date: 01.01.1970 <ip>
Elevated: false
Computer: 4915
User: meas
Domain: <redacted>
Hostname: <redacted>
NetBIOS: 4915
Language: de-DE
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 3400G with Radeon Vega Graphics    
CPU Threads: 8
CPU Cores: 1
Display resolution: 1920x1080
IP Address: <redacted>
Time: 10.06.2025 <ip> (sig:1749573020.9c760aa202579f611827fbfbb7cd1140)
Country: <ip>
LID: yau6Na--7411681655
```

### `cystack_4d2e6c3b`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
Elevated: false
User: User
Hostname: <redacted>
NetBIOS: DESKTOP-080OP21
Language: en-US
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-8600K CPU @ 3.60GHz
CPU Threads: 6
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 27.05.2025 <ip> (sig:1748344043.aaa8f657b8daa2ede34127e0ea05baac)
Country: AL
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_501a4d38`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
OS Version: Windows 10 Professionnel (10.0.19045) x64
Local Date: 26.05.2025 <ip>
Time Zone: UTC+1
Install Date: 01.01.1970 <ip>
Elevated: false
Computer: 25210
User: trax
NetBIOS: 25210
Language: fr-FR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: 13th Gen Intel(R) Core(TM) i5-13400F
CPU Threads: 16
CPU Cores: 8
Display resolution: 1920x1080
IP Address: <redacted>
Country: TN
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_5178f185`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `Path`, `RAM Size`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
Path: <redacted>
Local Date: 25.05.2025 <ip>
Time Zone: UTC+2
Install Date: 11.05.2025 <ip>
Elevated: false
Computer: EFREUND
User: zweio
Hostname: <redacted>
NetBIOS: EFREUND
Language: de-AT
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 5500
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Country: AT
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_5492ae4d`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 30 2025
Path: <redacted>
OS Version: Windows 11 Home (10.0.22621) x64
Local Date: 02.06.2025 <ip>
Time Zone: UTC+2
Elevated: true
Computer: DESKTOP-MA46R3
User: Eli�ka O�merov�
Hostname: <redacted>
NetBIOS: DESKTOP-MA46R3
Language: cs-CZ
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: 11th Gen Intel(R) Core(TM) i7-11700F @ 2.50GHz
CPU Threads: 16
CPU Cores: 8
Display resolution: 1600x1024
IP Address: <redacted>
Time: 02.06.2025 <ip> (sig:1748883146.a7ad7e6de6128bb241b54edfd5c47bb4)
Country: CZ
- LID: @BRADMAX_LOG (BRADMAX) / <url>
BEST LOGS => @BRADMAX_LOG
```

### `cystack_642a0aa1`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
OS Version: Windows 10 Home (10.0.19045) x64
Elevated: false
Computer: DESKTOP-5FE1GCU
User: javie
Hostname: <redacted>
NetBIOS: DESKTOP-5FE1GCU
Language: es-AR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 2500U with Radeon Vega Mobile Gfx
CPU Threads: 8
CPU Cores: 1
Display resolution: 1920x1080
IP Address: <redacted>
Time: 26.05.2025 <ip> (sig:1748220668.d25fabb369d45f7874d100c695e14b0f)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_65a205e6`

**Attribution confidence:** `high`

**Field keys:**
`Click here`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
|  _____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____  |
| | ___ \| | | |\ \ / / |_   _|| \ | |/  ___||_   _|/ _ \ | |    | |    /  ___| |
| | |_/ /| | | | \ V /    | |  |  \| |\ `--.   | | / /_\ \| |    | |    \ `--.  |
| | ___ \| | | |  \ /     | |  | . ` | `--. \  | | |  _  || |    | |     `--. \ |
| | |_/ /| |_| |  | |    _| |_ | |\  |/\__/ /  | | | | | || |____| |____/\__/ / |
| \____/  \___/   \_/    \___/ \_| \_/\____/   \_/ \_| |_/\_____/\_____/\____/  |

- WHERE BUY THE BEST INSTALLS ??

Click here: <url>

**************************************************

- Date : Build: Jun 27 2025
- Configuration: 
- Path: C:\Users\<user>\AppData\Local\Temp\IXP001.TMP\1h69v2.exe

- OS Version: Windows 10 Pro (10.0.19045) x64
- Local Date: 02.07.2025 <ip>
- Time Zone: UTC+4
- Install Date: 30.06.2025 <ip>
- Elevated: false
- Computer: DESKTOP-6G27Q29
- User: vexhe
- Domain: 
- Hostname: DESKTOP-6G27Q29
- NetBIOS: DESKTOP-6G27Q29
- Language: en-US
- Anti Virus:
	- Windows Defender
- HWID: D753B3F2D3696BB7B9C9FD4CDB71E32F
- RAM Size: 16384MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
- CPU Threads: 4
- CPU Cores: 4
- GPU:
	- NVIDIA GeForce GTX 1660 Ti
- Display resolution: 1680x1050

[... truncated; full sample at ``sample.txt`` (approx. 3 more lines) ...]
```

### `cystack_67f302a7`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
Time Zone: UTC-3
Elevated: true
Computer: PC-DESP-1
User: Leonel
Domain: <redacted>
Hostname: <redacted>
NetBIOS: PC-DESP-1
Language: es-MX
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Athlon 3000G with Radeon Vega Graphics
CPU Threads: 4
CPU Cores: 1
Display resolution: 1920x1080
IP Address: <redacted>
Time: 28.05.2025 <ip> (sig:1748453409.47ea35a292357d3f76fc9236884bc304)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_70df1596`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
Elevated: true
User: Administrator
Domain: <redacted>
Hostname: <redacted>
NetBIOS: ROLYPC
Language: es-AR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-3330 CPU @ 3.00GHz
CPU Threads: 4
CPU Cores: 4
Display resolution: 1600x900
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748120762.d48d059285fb254ea6a53f874789d390)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_75f6591e`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 24 2025
Path: <redacted>
OS Version: Windows 11 Pro (10.0.26100) x64
Local Date: 29.05.2025 <ip>
Time Zone: UTC+2
Install Date: 16.01.2025 <ip>
Elevated: false
Computer: NAYER
User: betat
Hostname: <redacted>
NetBIOS: NAYER
Language: es-ES
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 29.05.2025 <ip> (sig:1748474723.97f7c8834af3be68129fa331b98ff126)
Country: AD
- LID: @BRADMAX_LOG (BRADMAX) / <url>
BEST LOGS => @BRADMAX_LOG
```

### `cystack_78a2bec1`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 24 2025
OS Version: Windows 10 专业版 (10.0.19045) x64
Local Date: 28.05.2025 <ip>
Time Zone: UTC+8
Install Date: 05.02.1986 <ip>
Elevated: true
Computer: WIN-7O4VPKG1PHL
User: Administrator
Domain: <redacted>
Hostname: <redacted>
NetBIOS: WIN-7O4VPKG1PHL
Language: zh-CN
HWID: <redacted>
RAM Size: 0MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 28.05.2025 <ip> (sig:1748423131.67ca36d649bfa8fbcb055ea6df8865c1)
Country: CN
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_7c2f44f2`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `Path`, `RAM Size`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
Time Zone: UTC-3
Elevated: true
Computer: DESKTOP-NV8IE2P
User: 54926
Hostname: <redacted>
NetBIOS: DESKTOP-NV8IE2P
Language: es-AR
HWID: <redacted>
RAM Size: 24576MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i3-8100 CPU @ 3.60GHz
CPU Threads: 4
CPU Cores: 4
Display resolution: 1360x768
IP Address: <redacted>
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_7ea45bcd`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `LummaC2 Build`, `NetBIOS`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 24 2025
Elevated: false
Computer: DESKTOP-SC4V462
User: Gaming PC
Hostname: <redacted>
NetBIOS: DESKTOP-SC4V462
Language: en-US
HWID: <redacted>
RAM Size: 8192MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz
CPU Threads: 8
CPU Cores: 4
Display resolution: 1920x1080
IP Address: <redacted>
Time: 28.05.2025 <ip> (sig:1748463978.c104d596e4cfb7ba8637c0a0b0a34786)
Country: CW
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_802420de`

**Attribution confidence:** `high`

**Field keys:**
`LID`

**Filenames:** `System.txt`

**Sample (sanitized):**

```


- @MAXERSTE (BRADMAX) / <url>
- Configuration: 
- Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe

- OS Version: Windows 11 Home (10.0.26100) x64
- Local Date: 18.03.2025 <ip>
- Time Zone: UTC-5
- Install Date: 30.11.2024 <ip>
- Elevated: false
- Computer: MIKES
- User: micha
- Domain: 
- Hostname: Mikes
- NetBIOS: MIKES
- Language: en-US
- Anti Virus:
	- Windows Defender
- HWID: AD3A692E9BB335CB8C9A1C42E7B3F29E
- RAM Size: 12288MB
- CPU Vendor: AuthenticAMD
- CPU Name: AMD Athlon Silver 3050U with Radeon Graphics   
- CPU Threads: 2
- CPU Cores: 1
- GPU:
	- AMD Radeon(TM) Vega 3 Graphics
- Display resolution: 1366x768

- IP Address: <ip>
- Time: 18.03.2025 <ip> (sig:1742307760.8839f447a216b645675b3fa5b6cf834c)
- Country: JM
LID: FATE99--Main
```

### `cystack_8176e468`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 30 2025
Path: <redacted>
OS Version: Windows 11 Home (10.0.26100) x64
Local Date: 31.05.2025 <ip>
Time Zone: UTC-4
Install Date: 31.12.1969 <ip>
Elevated: false
Computer: TS-eac31862
User: jsavo
Domain: <redacted>
Hostname: <redacted>
NetBIOS: TS-eac31862
Language: en-CA
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 9 3900X 12-Core Processor
CPU Threads: 24
CPU Cores: 12
Display resolution: 1680x1080
IP Address: <redacted>
Time: 31.05.2025 <ip> (sig:1748683211.ccbf36f2cbcd14e4a82cb47a33d9843b)
Country: CA
- LID: @BRADMAX_LOG (BRADMAX) / <url>
BEST LOGS => @BRADMAX_LOG
```

### `cystack_86f8cf79`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 25 2025
OS Version: Windows 11 Home (10.0.26100) x64
Local Date: 27.05.2025 <ip>
Time Zone: UTC-4
Elevated: true
Computer: DESKTOP-PADKEKD
User: Lucap
Hostname: <redacted>
NetBIOS: DESKTOP-PADKEKD
Language: en-US
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i7-10700 CPU @ 2.90GHz
CPU Threads: 16
CPU Cores: 8
Display resolution: 1920x1080
IP Address: <redacted>
Time: 27.05.2025 <ip> (sig:1748324371.cfdcf86d9851a3dd3d6c975f8989b9cb)
Country: CA
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_a1eca2c0`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `IP Address`, `Install Date`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 30 2025
Path: <redacted>
OS Version: Windows 11 Home (10.0.26100) x64
Local Date: 01.06.2025 <ip>
Time Zone: UTC+12
Install Date: 23.02.2025 <ip>
Elevated: false
Computer: 30293
User: lamar
NetBIOS: 30293
Language: en-AT
HWID: <redacted>
RAM Size: 32768MB
CPU Vendor: GenuineIntel
CPU Name: 11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 31.05.2025 <ip> (sig:1748697772.ceb2efb0542fa276e80dc52173e46caf)
Country: AT
- LID: @BRADMAX_LOG (BRADMAX) / <url>
BEST LOGS => @BRADMAX_LOG
```

### `cystack_a2cb2029`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
Path: <redacted>
Local Date: 25.05.2025 <ip>
Time Zone: UTC-3
Install Date: 26.07.2021 <ip>
Elevated: false
Computer: USUARIO-PC
User: Usuario
Hostname: <redacted>
NetBIOS: USUARIO-PC
Language: es-AR
HWID: <redacted>
RAM Size: 8192MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-3330 CPU @ 3.00GHz
CPU Threads: 4
CPU Cores: 4
Display resolution: 1366x768
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748191670.3778b2442fe17d82dcff219921f9ddd3)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_a33378ed`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `LummaC2 Build`, `NetBIOS`, `RAM Size`, `Time`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 25 2025
Computer: 3079-34NB
Hostname: <redacted>
NetBIOS: 3079-34NB
Language: en-AE
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: 12th Gen Intel(R) Core(TM) i5-12400F
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 27.05.2025 <ip> (sig:1748323609.25f4a69aab3bed154871e883de4b7428)
Country: AE
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_a373b677`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
OS Version: Windows 10 Famille (10.0.19045) x64
Local Date: 25.05.2025 <ip>
Time Zone: UTC+2
Install Date: 22.03.2025 <ip>
Elevated: false
Computer: DESKTOP-L3GU121
User: yyouyou
NetBIOS: DESKTOP-L3GU121
Language: fr-FR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 7 5700X3D 8-Core Processor
CPU Threads: 16
CPU Cores: 8
Display resolution: 1920x1080
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748200499.41aee482cb68dc75f91031ceb9ac61d0)
Country: FR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_b2f2fa78`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT

LummaC2 Build: Jun 11 2025
Path: <redacted>
OS Version: Windows 11 Pro (10.0.22631) x64
Local Date: 16.06.2025 <ip>
Time Zone: UTC+4
Install Date: 05.10.2023 <ip>
Elevated: false
Computer: DESKTOP-TVPSAF8
User: User
Hostname: <redacted>
NetBIOS: DESKTOP-TVPSAF8
Language: en-AE
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 5600X 6-Core Processor             
CPU Threads: 12
CPU Cores: 6
Display resolution: 2560x1440
IP Address: <redacted>
Time: 16.06.2025 <ip> (sig:1750080426.1e13882fa064badf1bcdf155530f6200)
Country: <ip>
LID: yau6Na--1378348465
```

### `cystack_b7e3e9f5`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `LummaC2 Build`, `NetBIOS`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 25 2025
Elevated: false
User: alk84
Hostname: <redacted>
NetBIOS: BINZAYED
Language: en-US
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 27.05.2025 <ip> (sig:1748319456.45ddcf28ff7b10bc1e9b18bf3343f195)
Country: AE
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_bc15a086`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT

LummaC2 Build: Jun  8 2025
Path: <redacted>
OS Version: Windows 10 Pro (10.0.19045) x64
Local Date: 15.06.2025 <ip>
Time Zone: UTC+4
Elevated: false
Computer: 10911-3C
User: salem
Hostname: <redacted>
NetBIOS: 10911-3C
Language: en-AE
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: 12th Gen Intel(R) Core(TM) i5-12400F
CPU Threads: 12
CPU Cores: 6
Display resolution: 1720x1080
IP Address: <redacted>
Time: 15.06.2025 <ip> (sig:1749951064.8862c86a55a922d578bdfe9acc8195e7)
Country: <ip>
LID: yau6Na--7400515879
```

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `System.txt`, `UserInformation.txt`, `system_info.txt`

**Sample (sanitized):**

```

 
- Path: C:\Users\<user>\AppData\Local\Temp\118083\Secretariat.com

- Elevated: false
- Computer: DESKTOP-PQTQDKI
- User: denan
- Domain: 
- Hostname: DESKTOP-PQTQDKI
- NetBIOS: DESKTOP-PQTQDKI
- Language: pt-BR
- Anti Virus:
	- Windows Defender
- HWID: 7183DCE3556ED14C23B78A6C75E2DD1E
- RAM Size: 8192MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
- CPU Threads: 8
- CPU Cores: 4
- GPU:
- Display resolution: 1024x768

- IP Address: <ip>
- Time: 19.07.2025 <ip> (sig:1752891423.31dc75bf4e926c574f2456308d5f28ea)
- Country: <ip>
```

### `cystack_c8acc99b`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
OS Version: Windows 11 Pro (10.0.26100) x64
Local Date: 25.05.2025 <ip>
Time Zone: UTC-3
Install Date: 03.01.2025 <ip>
Elevated: false
Computer: PROVAZZIPC
User: arthu
Hostname: <redacted>
NetBIOS: PROVAZZIPC
Language: pt-BR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 5600X 6-Core Processor
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 26.05.2025 <ip> (sig:1748215947.f95b9df14aa24346e258cecfc70625cd)
Country: BR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_cd164f31`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `LummaC2 Build`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 24 2025
Path: <redacted>
Computer: CARTERS-DESKTOP
User: Cj Herreen
Hostname: <redacted>
NetBIOS: CARTERS-DESKTOP
Language: en-AU
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
CPU Threads: 6
CPU Cores: 6
Display resolution: 2560x1440
IP Address: <redacted>
Time: 28.05.2025 <ip> (sig:1748414189.1a2eb483ef5f6c5b16d2a2187eee416f)
Country: AU
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_d9beb4e5`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
OS Version: Windows 10 Home (10.0.19045) x64
Local Date: 25.05.2025 <ip>
Time Zone: UTC-3
Install Date: 28.02.2025 <ip>
Elevated: false
Computer: DESKTOP-22JB4OH
User: castr
Hostname: <redacted>
NetBIOS: DESKTOP-22JB4OH
Language: pt-BR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz
CPU Threads: 8
CPU Cores: 4
Display resolution: 1366x768
IP Address: <redacted>
Country: BR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_e2af0132`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Language`, `LummaC2 Build`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

**************************************************************
*                                                            *
*          ______                   _ ___  ___               *
*    ____  | ___ \                 | ||  \/  |               *
*   / __ \ | |_/ / _ __   __ _   __| || .  . |  __ _ __  __  *
*  / / _` || ___ \| '__| / _` | / _` || |\/| | / _` |\ \/ /  *
* | | (_| || |_/ /| |   | (_| || (_| || |  | || (_| | >  <   *
*  \ \__,_|\____/ |_|    \__,_| \__,_|\_|  |_/ \__,_|/_/\_\  *
*   \____/                                                   *
*                                                            *
*            Telegram: <url>        *
*                       t.me/BRADMAX_LOG                     *
**************************************************************

LummaC2 Build: May 24 2025
Path: <redacted>
Elevated: false
Computer: CARTERS-DESKTOP
User: Cj Herreen
Hostname: <redacted>
NetBIOS: CARTERS-DESKTOP
Language: en-AU
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
CPU Threads: 6
CPU Cores: 6
Display resolution: 2560x1440
IP Address: <redacted>
Time: 28.05.2025 <ip> (sig:1748414189.1a2eb483ef5f6c5b16d2a2187eee416f)
Country: AU
[... 3 blank lines ...]
```

### `cystack_e4df1ff8`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `LummaC2 Build`, `NetBIOS`, `RAM Size`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
Elevated: false
User: ba539
Hostname: <redacted>
NetBIOS: DESKTOP-FQIUHA8
Language: en-AE
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: 12th Gen Intel(R) Core(TM) i5-12400F
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Country: AE
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_e841a58c`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
OS Version: Windows 10 Enterprise (10.0.19045) x64
Local Date: 25.05.2025 <ip>
Time Zone: UTC+0
Elevated: true
Computer: Windows User
User: neaf
Domain: <redacted>
Hostname: <redacted>
NetBIOS: Windows User
Language: en-US
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 3400G with Radeon Vega Graphics
CPU Threads: 8
CPU Cores: 1
Display resolution: 1920x1080
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748191945.b3c74c75b36a5826e88bfd73ab7b30a6)
Country: QA
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_ee2649ee`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `RAM Size`, `Time`, `Time Zone`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
LummaC2 Build: May 19 2025
OS Version: Windows 10 Home (10.0.19045) x64
Local Date: 25.05.2025 <ip>
Time Zone: UTC-3
Install Date: 15.02.2025 <ip>
Elevated: false
Computer: DESKTOP-ETOBHEB
Hostname: <redacted>
NetBIOS: DESKTOP-ETOBHEB
Language: pt-BR
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: GenuineIntel
CPU Name: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
CPU Threads: 12
CPU Cores: 6
Display resolution: 1920x1080
IP Address: <redacted>
Time: 25.05.2025 <ip> (sig:1748192999.6408a23d60a7da9e2da985ee5c3fb820)
Country: BR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_f3c7371d`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `HWID`, `Hostname`, `IP Address`, `LID`, `Language`, `NetBIOS`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Path: <redacted>
Time Zone: UTC-3
Computer: DESKTOP-NDEAJJA
User: LightS
Hostname: <redacted>
NetBIOS: DESKTOP-NDEAJJA
Language: es-ES
HWID: <redacted>
RAM Size: 8192MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Athlon 3000G with Radeon Vega Graphics
CPU Threads: 4
CPU Cores: 1
Display resolution: 1024x768
IP Address: <redacted>
Time: 28.05.2025 <ip> (sig:1748447320.66f1e213aa3a3e6f2a9e7c6f9fbbc47a)
Country: AR
LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `cystack_f7d74e23`

**Attribution confidence:** `high`

**Field keys:**
`Telegram`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
- OS Version: Windows 10 Home (10.0.19045) x64
- Local Date: 22.08.2024 <ip>
- Time Zone: UTC+2
- Install Date: 06.11.2023 <ip>
- Elevated: false
- Computer: DESKTOP-A3AG368
- User: lopez
- Domain:
- Hostname: DESKTOP-A3AG368
- NetBIOS: DESKTOP-A3AG368
- Language: es-ES
- Anti Virus:
- Windows Defender [ON]
- HWID: 573553C7444086B62E0D69219EF937F8
- RAM Size: 8192MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
- CPU Threads: 6
- CPU Cores: 6
- GPU: NVIDIA GeForce GTX 1050
- Display resolution: 1920x1080
- IP Address: <ip>
- Country: ES
Подбор паролей и отработка кошельков >> t.me/Cashoutmeta
Подбор паролей к Phantom / Metamask / Electrum / Atomic / Wallet.dat / Exodus
Минимальная сумма подбора от 3.000$
Беру после любых других брутеров
Процент: 70/30 на любые балансы (70% вам)
Депозит: ~3.2 BTC
Telegram: @cashoutmeta
- IP Address: <ip>
- Time: 06.06.2025 <ip> (sig:1749232130.84ecfad149f0343efb6c0f00fdadbd56)
- Country: UNK
- LID: @BRADMAX_LOG (BRADMAX) / <url>
```

### `Deimos Golang Stealer`

**Fingerprint id:** `deimos_golang_stealer`

**Distribution channel:** `@ft7links`

**Attribution confidence:** `medium`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
- OS Version: Windows 10 Home (10.0.19045) x64
- Time Zone: UTC+4
- Elevated: false
- Computer: DESKTOP-NNFJQM0
- User: FaTe
- Domain:
- Hostname: DESKTOP-NNFJQM0
- NetBIOS: DESKTOP-NNFJQM0
- Language: en-US
- Anti Virus:
- Windows Defender
- HWID: FFD03EDB5320C5729578BE4C0ADF174C
- RAM Size: 32768MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i7-10700KF CPU @ 3.80GHz
- CPU Threads: 16
- CPU Cores: 8
- GPU:
- NVIDIA GeForce GTX 1660
- Display resolution: 1920x1080
```

## Detection

High-confidence trigger: the `(sig:UNIX.HEX)` parenthesised
signature on the `- Time:` line. Together with the
`- LummaC2 Build:` banner this is unambiguous Lumma. Several
derivative families (Remus, AL Stealer, BabaStealer,
ArtHouseCloud, CashFlow) share the dash-prefix shape but lack
the signature; they should be tracked separately.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`remus-stealer`](../remus_stealer/)
- [`csalstealer`](../csalstealer/)
- [`csbabastealer`](../csbabastealer/)
- [`csarthousecloudstealer`](../csarthousecloudstealer/)
- [`cscashflowstealer`](../cscashflowstealer/)

## References

- @lummanowork
- @lummamarketplace_bot
- https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/
