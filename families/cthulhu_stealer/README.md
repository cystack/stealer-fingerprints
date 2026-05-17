# Cthulhu Stealer

Cthulhu Stealer is a Go-written macOS infostealer that
exfiltrates a custom `Userinfo.txt` written to
`/Users/Shared/NW/`. The body opens with `IP:` and `Country:`
fields and continues with macOS hardware and account inventory.
Observed in `@bugatti_cloud` aggregator packs.

**Also known as:** `Cthulhu macOS Stealer`

**Variants observed:** 17
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials on macOS
- Crypto wallet desktop clients
- macOS Keychain entries
- Telegram session data
- System inventory and hardware fingerprint

## Variants

### `cystack_000c0121`

**Attribution confidence:** `high`

**Field keys:**
`AMD Radeon RX 5500 XT`, `BenQ GW2270`, `BuildID`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:ND1

Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 26.0 (25A354)
  Kernel Version: Darwin 25.0.0
  Boot Volume: HD
  Boot Mode: Normal
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 1heure et 30 minutes

Hardware:

Hardware Overview:

  Model Name: Mac Pro
  Model Identifier: MacPro7,1
  Processor Name: AMD Ryzen 7 5700X 8-Core Processor 
  Processor Speed: 175 MHz
  Number of Processors: 1
  Total Number of Cores: 8
  L2 Cache (per Core): 512 KB
  L3 Cache: 32 MB
  Hyper-Threading Technology: Enabled
  Memory: 32 GB
  System Firmware Version: 2087.<ip>
  OS Loader Version: 583~2470
  Serial Number (system): F5KJ1HYZP7QM
  Hardware UUID: D888A79B-AC68-53FB-AC68-3A7F5A0E0BAA
  Provisioning UDID: D888A79B-AC68-53FB-AC68-3A7F5A0E0BAA
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_161680a5`

**Attribution confidence:** `high`

**Field keys:**
`Apple M3`, `BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:F2

Userinfo:
Country: AR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 26.0 (25A354)
  Kernel Version: Darwin 25.0.0
  Boot Volume: Midnight Blue HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 2 das, 21 horas y 17 minutos

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: Mac15,13
  Model Number: MXD43LL/A
  Chip: Apple M3
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 16 GB
  System Firmware Version: 13822.1.2
  OS Loader Version: 13822.1.2
  Serial Number (system): D7GWFH3W41
  Hardware UUID: A97F4C64-1061-5D53-B5DD-FE67BC55C45B
  Provisioning UDID: 00008122-0016493E0AEA001C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_2a8c0f89`

**Attribution confidence:** `high`

**Field keys:**
`BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel UHD Graphics 617`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:james

Userinfo:
Country: IN
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 14.7.8 (23H730)
  Kernel Version: Darwin 23.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 3 hours, 5 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: MacBookAir8,2
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 1.6 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 4 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: 2075.<ip> (iBridge: 22.16.16083.0.0,0)
  OS Loader Version: 580.140.1~51
  Serial Number (system): FVFYV064LYWM
  Hardware UUID: 41DCD0BA-0626-590E-A48F-C0F14B327724
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_32f80447`

**Attribution confidence:** `high`

**Field keys:**
`Apple M2`, `BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `LEN P27h-10`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: <url>
<url>
<url>
<url>
BuildID:random

Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.2 (24C101)
  Kernel Version: Darwin 24.2.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 131jours, 16heures et 3 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: Mac14,7
  Model Number: Z16R000ZWFN/A
  Chip: Apple M2
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 24 GB
  System Firmware Version: 11881.61.3
  OS Loader Version: 11881.61.3
  Serial Number (system): VGDXXF779V
  Hardware UUID: E27D394F-680D-578F-9BD5-3E2E2DD64534
  Provisioning UDID: 00008112-0011302621F9401E
[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

### `cystack_6238b4e0`

**Attribution confidence:** `high`

**Field keys:**
`Apple M2`, `BuildID`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `SwitchResX4 - Color LCD`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:F2

Userinfo:
Country: IN
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6.1 (24G90)
  Kernel Version: Darwin 24.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 30 days, 18 hours, 33 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: Mac14,2
  Model Number: MLY13HN/A
  Chip: Apple M2
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): Q5VV77FC2D
  Hardware UUID: 1DA7D104-C14C-5EBB-BA62-1322904D1622
  Provisioning UDID: 00008112-0001258002F1401E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_62f9b2c7`

**Attribution confidence:** `high`

**Field keys:**
`Apple M1 Max`, `BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:james_4

Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6.1 (24G90)
  Kernel Version: Darwin 24.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 8heures et 57 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro18,2
  Model Number: MK1A3LL/A
  Chip: Apple M1 Max
  Total Number of Cores: 10 (8 performance and 2 efficiency)
  Memory: 32 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): YDJGK7625J
  Hardware UUID: 11B45641-394A-5F2C-B420-EC21534709BA
  Provisioning UDID: 00006001-0010118A3C04801E
  Activation Lock Status: Disabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_65967d4c`

**Attribution confidence:** `high`

**Field keys:**
`Apple M4`, `BuildID`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `LS27D300G`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:james

Userinfo:
Country: DK
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6.1 (24G90)
  Kernel Version: Darwin 24.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name:  <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 2552

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: Mac16,13
  Model Number: Z1HF0008SCH/A
  Chip: Apple M4
  Total Number of Cores: 10 (4 performance and 6 efficiency)
  Memory: 32 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): FG6JQQ3YGK
  Hardware UUID: B9FFF9B2-212A-58A9-B333-1A69A6B271F7
  Provisioning UDID: 00008132-0019719C227A801C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

### `cystack_72d91b19`

**Attribution confidence:** `high`

**Field keys:**
`BuildID`, `City`, `Country`, `Graphics/Displays`, `Hardware`, `IP`, `MetaMask Info`, `Software`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
BuildID:Zapor
Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:
    System Software Overview:
      System Version: macOS 15.6 (24G84)
      Kernel Version: Darwin 24.6.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 3jours, 9heures et 24 minutes
Hardware:
    Hardware Overview:
      Model Name: MacBook Air
      Model Identifier: MacBookAir10,1
      Model Number: Z12400015FN/A
      Chip: Apple M1
      Total Number of Cores: 8 (4 performance and 4 efficiency)
      Memory: 16 GB
      System Firmware Version: 11881.140.96
      OS Loader Version: 11881.140.96
      Serial Number (system): C02GK4P1Q6LR
      Hardware UUID: C74ABC59-0BA7-56C9-8E03-8E3D70C77DA1
      Provisioning UDID: 00008103-001E29280AA3001E
      Activation Lock Status: Enabled
Graphics/Displays:
    Apple M1:
      Chipset Model: Apple M1
      Type: GPU
      Bus: Built-In
      Total Number of Cores: 7
      Vendor: Apple (0x106b)
      Metal Support: Metal 3
      Displays:
[... truncated; full sample at ``sample.txt`` (approx. 8 more lines) ...]
```

### `cystack_7afe11aa`

**Attribution confidence:** `high`

**Field keys:**
`Apple M2`, `BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:E3

Userinfo:
Country: IN
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 26.0 (25A354)
  Kernel Version: Darwin 25.0.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 6 days, 16 hours, 58 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: Mac14,2
  Model Number: MLY23HN/A
  Chip: Apple M2
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 13822.1.2
  OS Loader Version: 13822.1.2
  Serial Number (system): DWDJWK2CT4
  Hardware UUID: C295E773-2143-5276-9E1F-238484844355
  Provisioning UDID: 00008112-000839D42E23C01E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_92b81443`

**Attribution confidence:** `high`

**Field keys:**
`BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Plus Graphics 650`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:FF

Userinfo:
Country: GB
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 13.7.8 (22H730)
  Kernel Version: Darwin 22.6.0
  Boot Volume: Naamloos
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 3 hours, 12 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro14,2
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 3,1 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 4 MB
  Hyper-Threading Technology: Enabled
  Memory: 16 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 577.140.2~30
  SMC Version (system): 2.44f6
  Serial Number (system): C02V339CHV2Q
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_9fb6f3f1`

**Attribution confidence:** `high`

**Field keys:**
`BuildID`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Radeon Pro 570`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:F2

Userinfo:
Country: GB
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 13.7.8 (22H730)
  Kernel Version: Darwin 22.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 55 minutes, 34 seconds

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac18,3
  Processor Name: Quad-Core Intel Core i5
  Processor Speed: 3.4 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 577.140.2~30
  SMC Version (system): 2.41f2
  Serial Number (system): C02TP5JSJ1GG
  Hardware UUID: 5E19BC9D-AD6E-5B4C-9F9B-132A5E729AC6
[... truncated; full sample at ``sample.txt`` (approx. 28 more lines) ...]
```

### `cystack_c6bf81f0`

**Attribution confidence:** `high`

**Field keys:**
`Apple M1 Pro`, `BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `G274F`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:random

Userinfo:
Country: GB
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6.1 (24G90)
  Kernel Version: Darwin 24.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 6 days, 22 hours, 11 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro18,1
  Model Number: MK193B/A
  Chip: Apple M1 Pro
  Total Number of Cores: 10 (8 performance and 2 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): Y3HGD6KJ7T
  Hardware UUID: 76E1DE10-5B97-5E00-871E-629C7FF4E617
  Provisioning UDID: 00006000-000868E226D2801E
  Activation Lock Status: Disabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_cd0458aa`

**Attribution confidence:** `high`

**Field keys:**
`BuildID`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `IP`, `MetaMask Info`, `Software`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:drive

Userinfo:
Country: AE
IP: <redacted>
City: <redacted>
Software:

    System Software Overview:

      System Version: macOS 26.0.1 (25A362)
      Kernel Version: Darwin 25.0.0
      Boot Volume: Untitled
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 30 minutes, 31 seconds

Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: MacBookPro16,1
      Processor Name: 6-Core Intel Core i7
      Processor Speed: 2.6 GHz
      Number of Processors: 1
      Total Number of Cores: 6
      L2 Cache (per Core): 256 KB
      L3 Cache: 12 MB
      Hyper-Threading Technology: Enabled
      Memory: 16 GB
      System Firmware Version: 2092.<ip> (iBridge: 23.16.10350.0.0,0)
      OS Loader Version: 583~2470
      Serial Number (system): C02FXEQUMD6M
      Hardware UUID: 7B1F9FDA-4B99-5692-BE49-D4D811FFE2B7
[... truncated; full sample at ``sample.txt`` (approx. 45 more lines) ...]
```

### `cystack_d48169df`

**Attribution confidence:** `high`

**Field keys:**
`BuildID`, `City`, `Country`, `Hardware`, `IP`, `MetaMask Info`, `Software`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
BuildID:Yanger
Userinfo:
Country: SE
IP: <redacted>
City: <redacted>
Software:
    System Software Overview:
      System Version: macOS 26.0 (25A354)
      Kernel Version: Darwin 25.0.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 20 minutes, 39 seconds
Hardware:
    Hardware Overview:
      Model Name: Apple Virtual Machine 1
      Model Identifier: VirtualMac2,1
      Model Number: VM0001UA/A
      Chip: Apple M4 Max (Virtual)
      Total Number of Cores: 4
      Memory: 8 GB
      System Firmware Version: 13822.1.2
      OS Loader Version: 13822.1.2
      Serial Number (system): Z4K614MYR0
      Hardware UUID: 775BE00F-5114-51B3-B223-AB901BC3A36C
      Provisioning UDID: 39b19135a46f38d132963a1166ad9b36d715325c
      Activation Lock Status: Disabled
```

### `cystack_d883046a`

**Attribution confidence:** `high`

**Field keys:**
`Apple M1 Pro`, `BuildID`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:F2

Userinfo:
Country: CA
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.5 (24F74)
  Kernel Version: Darwin 24.5.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 20 minutes, 36 seconds

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro18,1
  Model Number: MK193LL/A
  Chip: Apple M1 Pro
  Total Number of Cores: 10 (8 performance and 2 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.121.1
  OS Loader Version: 11881.121.1
  Serial Number (system): YFJ2CQVJ7H
  Hardware UUID: 2FFC939F-255F-52F7-A917-6DA259D0BB3C
  Provisioning UDID: 00006000-001A258611C3801E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_dd4f9b5b`

**Attribution confidence:** `high`

**Field keys:**
`BuildID`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Radeon Pro 580`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 
BuildID:F2

Userinfo:
Country: ES
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 13.7.8 (22H730)
  Kernel Version: Darwin 22.6.0
  Boot Volume: SSD M.2 arranque
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 40 minutos y 11 segundos

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac18,3
  Processor Name: Quad-Core Intel Core i5
  Processor Speed: 3,8 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Memory: 32 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 577.140.2~30
  SMC Version (system): 2.41f2
  Serial Number (system): DGKX4HK4J1GQ
  Hardware UUID: 24FB051F-4105-5A80-9E35-78991A98BD83
[... truncated; full sample at ``sample.txt`` (approx. 28 more lines) ...]
```

### `cystack_f6f1b312`

**Attribution confidence:** `high`

**Field keys:**
`Apple M4`, `BuildID`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```

MetaMask Info:
Debanks: 
BuildID:Alves

Userinfo:
Country: AT
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 26.0 (25A353)
  Kernel Version: Darwin 25.0.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 17 Stunden und 34 Minuten

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: Mac16,12
  Model Number: MW123D/A
  Chip: Apple M4
  Total Number of Cores: 10 (4 performance and 6 efficiency)
  Memory: 16 GB
  System Firmware Version: 13822.1.2
  OS Loader Version: 13822.1.2
  Serial Number (system): K6J75P7LH6
  Hardware UUID: D1D7D77B-20D2-5D54-8C97-1F4BFFFA12A0
  Provisioning UDID: 00008132-001261C21405001C
  Activation Lock Status: Enabled

[... truncated; full sample at ``sample.txt`` (approx. 19 more lines) ...]
```

## Detection

macOS-specific path (`/Users/Shared/NW/Userinfo.txt`) plus the
IP-then-country opening is the clean fingerprint. The Go
origin shows up in stable field ordering across builds.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.001 Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://www.darktrace.com/blog/from-the-depths-analyzing-the-cthulhu-stealer-malware-for-macos
