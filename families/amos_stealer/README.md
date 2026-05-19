# AMOS Stealer

Atomic macOS Stealer (AMOS) is a Go and C++ macOS info-stealer
sold as malware-as-a-service through private Telegram channels
since April 2023. The operator panel charges around $1000 per
month and ships a builder, a victim web panel, a MetaMask
brute-forcer, and Telegram log delivery. SentinelOne, eSentire,
Picus Security, Moonlock, Cyble, and BleepingComputer all
profile the family. AMOS spawned the Banshee, Cthulhu,
Poseidon, and Odyssey forks tracked separately in this catalog.

The artifact this parser claims is the operator-facing summary
written as `UserInformation.txt` inside per-victim folders of
AMOS log aggregator packs. The file opens with four flush-left
panel section headers in a fixed order (`MetaMask Info:`,
`Debanks:`, `Userinfo:`, then `Software:` / `Hardware:` /
`Graphics/Displays:` introducing the verbatim `system_profiler`
output for the SPSoftwareDataType, SPHardwareDataType, and
SPDisplaysDataType data types). `MetaMask Info` and `Debanks`
sit empty in most samples because the panel surfaces wallet
artifacts in sibling folders (`Wallets/`, `Keychain/`) rather
than inlined into this summary.

**Also known as:** `Atomic Stealer`, `Atomic macOS Stealer`, `AMOS`, `Atomic Mac`

**Variants observed:** 52
**Top attribution confidence:** `medium`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions (MetaMask, Phantom, Coin98, Trust Wallet, 50+ targeted)
- Desktop crypto wallets (Electrum, Exodus, Atomic, Wasabi, Ledger Live, Trezor Suite)
- macOS Keychain database and login password (AppleScript prompt)
- Apple Notes content and Telegram session files
- Documents and Desktop file grabber (.txt, .pdf, .docx, .wallet, .key)

## Variants

### `cystack_08f7ef15`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M2`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `LG TV`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: MX
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.6.2 (21G320)
  Kernel Version: Darwin 21.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 8:46

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: Mac14,7
  Chip: Apple M2
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 8419.60.44
  OS Loader Version: 7459.141.1
  Serial Number (system): Q1V3T7XK94
  Hardware UUID: 874672CF-6B3C-5543-95FA-18102688FA17
  Provisioning UDID: 00008112-001C089921F9401E
  Activation Lock Status: Enabled

Graphics/Displays:

[... truncated; full sample at ``sample.txt`` (approx. 24 more lines) ...]
```

### `cystack_130284cc`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon R9 M390`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: GB
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.7.6 (21H1320)
  Kernel Version: Darwin 21.6.0
  Boot Volume: bez 
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 5:47

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac17,1
  Processor Name: Quad-Core Intel Core i5
  Processor Speed: 3.2 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Memory: 16 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 540.120.3~37
  SMC Version (system): 2.33f12
  Serial Number (system): C02QF5W6GG7L
  Hardware UUID: 721A29DE-23FC-5152-B102-8B0A0C9475DB
[... truncated; full sample at ``sample.txt`` (approx. 28 more lines) ...]
```

### `cystack_130a8bd3`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Plus Graphics`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.7 (24G217)
  Kernel Version: Darwin 24.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 5jours, 16heures et 57 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: MacBookAir9,1
  Processor Name: Quad-Core Intel Core i7
  Processor Speed: 1,2 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 512 KB
  L3 Cache: 8 MB
  Hyper-Threading Technology: Enabled
  Memory: 16 GB
  System Firmware Version: 2092.<ip> (iBridge: 23.16.10348.5.1,0)
  OS Loader Version: 583~2317
  Serial Number (system): FVFCW0CXMLVD
  Hardware UUID: B9421B60-7910-5CC5-8146-F72E5AE5BE9F
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_198df320`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M3 Pro`, `BenQ PD3205U`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MSI MD241P`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: IT
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
  Time since boot: 9 uur en 36 minuten

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: Mac15,7
  Model Number: G1AG0T/A
  Chip: Apple M3 Pro
  Total Number of Cores: 12 (6 performance and 6 efficiency)
  Memory: 36 GB
  System Firmware Version: 11881.61.3
  OS Loader Version: 11881.61.3
  Serial Number (system): FYHLFW076Q
  Hardware UUID: 9753371D-EE1B-5B8F-A2F8-DDE7D1825A1B
  Provisioning UDID: 00006030-000A51392279001C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 30 more lines) ...]
```

### `cystack_1ba7019c`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Pro`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: MX
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.6.3 (21G419)
  Kernel Version: Darwin 21.6.0
  Boot Volume: kokis
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 3:53

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac14,1
  Processor Name: Quad-Core Intel Core i5
  Processor Speed: 2.7 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 4 MB
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 540.120.3~22
  SMC Version (system): 2.14f24
  Serial Number (system): C02MW3DBF8J2
  Hardware UUID: 3C8FE7C3-1428-56BC-B00E-0CA5A78B63A2
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_3311417f`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon Pro 5500M`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel UHD Graphics 630`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AF
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.0 (24A335)
  Kernel Version: Darwin 24.0.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 10 hours, 37 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro16,1
  Processor Name: 8-Core Intel Core i9
  Processor Speed: 2.4 GHz
  Number of Processors: 1
  Total Number of Cores: 8
  L2 Cache (per Core): 256 KB
  L3 Cache: 16 MB
  Hyper-Threading Technology: Enabled
  Memory: 64 GB
  System Firmware Version: 2075.<ip> (iBridge: 22.16.15072.0.0,0)
  OS Loader Version: 582~1023
  Serial Number (system): C02DV8JLMD6T
  Hardware UUID: 12844F3C-078A-59F1-9034-B1820F8F7D08
[... truncated; full sample at ``sample.txt`` (approx. 45 more lines) ...]
```

### `cystack_39a9de7a`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel HD Graphics 4000`, `MetaMask Info`, `NVIDIA GeForce GT 650M`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: ID
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 10.15.7 (19H2026)
  Kernel Version: Darwin 19.6.0
  Boot Volume: OS SSD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 1:48

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro9,1
  Processor Name: Quad-Core Intel Core i7
  Processor Speed: 2,3 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Hyper-Threading Technology: Enabled
  Memory: 16 GB
  Boot ROM Version: <ip>.0
  SMC Version (system): 2.1f170
  Serial Number (system): C02HP3GPDV33
  Hardware UUID: B0AF9128-025E-5D90-AD2C-DD9BCCBB2920
[... truncated; full sample at ``sample.txt`` (approx. 43 more lines) ...]
```

### `cystack_3a4ae0ac`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `HP 22f`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: ES
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
  Time since boot: 13 horas y 38 minutos

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Macmini9,1
  Model Number: MGNT3Y/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): C07DP1N8Q6NW
  Hardware UUID: B9EF151B-A298-586C-ADED-36E001E670E3
  Provisioning UDID: 00008103-000130190440291E
  Activation Lock Status: Disabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

### `cystack_4338b51f`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M2 Pro`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `T27C350`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: IE
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.4.1 (24E263)
  Kernel Version: Darwin 24.4.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 10 days, 13 hours, 8 minutes

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Mac14,12
  Model Number: MNH73LL/A
  Chip: Apple M2 Pro
  Total Number of Cores: 10 (6 performance and 4 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.101.1
  OS Loader Version: 11881.101.1
  Serial Number (system): HV7RVDQWP0
  Hardware UUID: 650F8262-EC6A-5AE8-BB1D-AB1EC7ACE38B
  Provisioning UDID: 00006020-000A701E3E6B401E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_4a8d83d3`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Graphics 6100`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AE
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.7.2 (21G1974)
  Kernel Version: Darwin 21.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 42 days 2:56

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro12,1
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 2.9 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 3 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 540.120.3~37
  SMC Version (system): 2.28f7
  Serial Number (system): C02Q38CDFVH7
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_6be8171f`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `NVIDIA GeForce GTX 660M`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 10.15.7 (19H2026)
  Kernel Version: Darwin 19.6.0
  Boot Volume: MACINTOSH HD
  Boot Mode: Normal
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 8 minutes

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac13,2
  Processor Name: Quad-Core Intel Core i5
  Processor Speed: 2,9 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Memory: 16 GB
  Boot ROM Version: <ip>.0
  SMC Version (system): 2.11f16
  Serial Number (system): C02K98HCDNCV
  Hardware UUID: 54DD2387-0A12-5156-B837-1A36C7D15292

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 24 more lines) ...]
```

### `cystack_7542b9ba`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Pro`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: DE
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.7.6 (21H1320)
  Kernel Version: Darwin 21.6.0
  Boot Volume: Macintosh SSD
  Boot Mode: Normal
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 14 days 23:50

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro11,4
  Processor Name: Quad-Core Intel Core i7
  Processor Speed: 2,2 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Hyper-Threading Technology: Enabled
  Memory: 16 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 540.120.3~37
  SMC Version (system): 2.29f24
  Serial Number (system): C02QT5WYG8WN
  Hardware UUID: 5C52E202-810E-59ED-9065-1DC6AF19C7A5
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_7655c83f`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M3 Max`, `City`, `Color LCD`, `Country`, `DELL P2419H`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: <url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>
<url>


Userinfo:
Country: NG
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 14.4 (23E214)
  Kernel Version: Darwin 23.4.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 2 days, 10 hours, 10 minutes

Hardware:

Hardware Overview:

[... truncated; full sample at ``sample.txt`` (approx. 38 more lines) ...]
```

### `cystack_7b9b631b`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `PHL 273V7`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AT
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
  System Integrity Protection: Disabled
  Time since boot: 7 Tage, 8 Stunden und 30 Minuten

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Macmini9,1
  Model Number: Z12N00006D/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): C07DR31QQ6NY
  Hardware UUID: E818F0F2-C253-5CAC-8BAC-40FE16E984F9
  Provisioning UDID: 00008103-001451A234DA001E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

### `cystack_7c8ec672`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`, `WD215I10`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: BD
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
  Time since boot: 9 days, 17 hours, 23 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: MacBookAir10,1
  Model Number: Z125000DLLL/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): FVFH536JQ6LT
  Hardware UUID: 35EA133D-6E6D-5E90-99CC-D05F1DA1828D
  Provisioning UDID: 00008103-000C1544223B001E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_807f3e69`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel HD Graphics 3000`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 14.7.6 (23H626)
  Kernel Version: Darwin 23.6.0
  Boot Volume: Macintosh HD1
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 4jours et 3 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro8,1
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 2,3 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 3 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 580.140.1~51
  SMC Version (system): 1.68f99
  Serial Number (system): C2VG5WN3DRJ7
[... truncated; full sample at ``sample.txt`` (approx. 28 more lines) ...]
```

### `cystack_887171ab`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1 Ultra`, `City`, `Country`, `DELL U2723QE`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: NZ
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
  Time since boot: 23 days, 23 hours, 39 minutes

Hardware:

Hardware Overview:

  Model Name: Mac Studio
  Model Identifier: Mac13,2
  Model Number: MJMW3X/A
  Chip: Apple M1 Ultra
  Total Number of Cores: 20 (16 performance and 4 efficiency)
  Memory: 64 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): V0VDJ0J4KL
  Hardware UUID: 8EC83772-0DFC-597C-91E4-3AB7DB01F0F9
  Provisioning UDID: 00006002-0012312621FBC01E
  Activation Lock Status: Disabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

### `cystack_8c35232d`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M2`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Smart TV`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: CZ
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
  Time since boot: 7 dn, 13 hodin a10 minut

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Mac14,3
  Model Number: MMFJ3CZ/A
  Chip: Apple M2
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 13822.<ip>
  OS Loader Version: 11881.140.96
  Serial Number (system): MQ9WY9D6L9
  Hardware UUID: 5CCAD06D-8DCB-54F2-9BF0-40C7BFE43B2B
  Provisioning UDID: 00008112-000605910145401E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_8c46cd9f`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel HD Graphics 6000`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: IN
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.4 (21F79)
  Kernel Version: Darwin 21.5.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 28 days 5:08

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: MacBookAir7,2
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 1.8 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 3 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 540.120.3~6
  SMC Version (system): 2.27f2
  Serial Number (system): FVFWR08EJ1WK
[... truncated; full sample at ``sample.txt`` (approx. 26 more lines) ...]
```

### `cystack_8e4aecf0`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon RX 580`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `T27D390`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: ES
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 11.7.10 (20G1427)
  Kernel Version: Darwin 20.6.0
  Boot Volume:   SSD 970 EVO 500
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 1:45

Hardware:

Hardware Overview:

  Model Name: Mac Pro
  Model Identifier: MacPro5,1
  Processor Name: 6-Core Intel Xeon
  Processor Speed: 3,46 GHz
  Number of Processors: 1
  Total Number of Cores: 6
  L2 Cache (per Core): 256 KB
  L3 Cache: 12 MB
  Hyper-Threading Technology: Enabled
  Memory: 24 GB
  System Firmware Version: 9999.<ip>
  SMC Version (system): 9.9999
  SMC Version (processor tray): 1.39f11
  Serial Number (system): CK1110C1HF7
[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

### `cystack_94207481`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `REALTEK`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.3.1 (24D70)
  Kernel Version: Darwin 24.3.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 17 minuti e 28 secondi

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Macmini9,1
  Model Number: Z12N0004VT/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.81.4
  OS Loader Version: 11881.81.4
  Serial Number (system): C07FC2Z3Q6NY
  Hardware UUID: 6EDE8F32-9B3B-5C34-9CD3-8A587C43BBF1
  Provisioning UDID: 00008103-0004186E02D1001E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

### `cystack_942d1db9`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Country`, `Debanks`, `Graphics/Displays`, `HP ZR2330w`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `NVIDIA GeForce GT 120`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: MU
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 10.13.6 (17G2208)
  Kernel Version: Darwin 17.7.0
  Boot Volume: SYST2
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 56 minutes

Hardware:

Hardware Overview:

  Model Name: Mac Pro
  Model Identifier: MacPro5,1
  Processor Name: 6-Core Intel Xeon
  Processor Speed: 2.4 GHz
  Number of Processors: 2
  Total Number of Cores: 12
  L2 Cache (per Core): 256 KB
  L3 Cache (per Processor): 12 MB
  Memory: 20 GB
  Boot ROM Version: MP51.0089.B00
  SMC Version (system): 1.39f11
  SMC Version (processor tray): 1.39f11
  Serial Number (system): C07KG0MHF4MD
  Serial Number (processor tray): J5312004NBH8C 
[... truncated; full sample at ``sample.txt`` (approx. 36 more lines) ...]
```

### `cystack_9732ef4d`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1 Pro`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `Studio Display`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AT
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
  Time since boot: 22 hours, 24 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro18,1
  Model Number: Z14W0014WD/A
  Chip: Apple M1 Pro
  Total Number of Cores: 10 (8 performance and 2 efficiency)
  Memory: 32 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): RRQ34GV25H
  Hardware UUID: 685A66F8-96C2-50C9-977A-4283AADA0E3D
  Provisioning UDID: 00006000-000C658C0E89801E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 26 more lines) ...]
```

### `cystack_97abd0d5`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `SAMSUNG`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: NL
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 14.5 (23F79)
  Kernel Version: Darwin 23.5.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 1 hour, 29 minutes

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Macmini9,1
  Model Number: MGNR3FN/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 10151.121.1
  OS Loader Version: 10151.121.1
  Serial Number (system): C07JX2HRQ6NV
  Hardware UUID: 5FE3D98E-EDCB-54F5-A928-BCD484948E89
  Provisioning UDID: 00008103-001C14592E40801E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

### `cystack_9b82e639`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel HD Graphics 4000`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 10.15.7 (19H2026)
  Kernel Version: Darwin 19.6.0
  Boot Volume: APFS
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 2:23

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro9,2
  Processor Name: Dual-Core Intel Core i7
  Processor Speed: 2,9 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 4 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  Boot ROM Version: <ip>.0
  SMC Version (system): 2.2f44
  Serial Number (system): C1MK36N9DTY4
  Hardware UUID: 9BD33BEC-AC1D-5420-947E-0DBD10EC89FB
[... truncated; full sample at ``sample.txt`` (approx. 26 more lines) ...]
```

### `cystack_a9896efb`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1 Pro`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `PA278QV`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: BD
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6 (24G84)
  Kernel Version: Darwin 24.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 8 hours, 58 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro18,1
  Model Number: MK193KS/A
  Chip: Apple M1 Pro
  Total Number of Cores: 10 (8 performance and 2 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): CFWDJJYW47
  Hardware UUID: E0365772-F9B2-5190-AE7F-2350D3BE8C28
  Provisioning UDID: 00006000-000A79282238801E
  Activation Lock Status: Disabled

Graphics/Displays:

[... truncated; full sample at ``sample.txt`` (approx. 23 more lines) ...]
```

### `cystack_adc800f0`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M3`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: IT
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 14.6.1 (23G93)
  Kernel Version: Darwin 23.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 25 giorni, 6 ore e 14 minuti

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: Mac15,4
  Model Number: MQRC3T/A
  Chip: Apple M3
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 10151.140.19
  OS Loader Version: 10151.140.19
  Serial Number (system): C9DJT21DVJ
  Hardware UUID: 2B1EF701-4F4D-50EB-974C-1C36DD1D7E41
  Provisioning UDID: 00008122-000A79091E00001C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_afcd54ef`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Plus Graphics 640`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6 (24G84)
  Kernel Version: Darwin 24.6.0
  Boot Volume: SSD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 5heures et 24 minutes

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac18,1
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 2,3 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 4 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 583~2210
  SMC Version (system): 2.39f40
  Serial Number (system): C02W92E0H7JY
[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

### `cystack_b12ddaf1`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel UHD Graphics 630`, `MetaMask Info`, `PHL 247E6`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.2 (21D49)
  Kernel Version: Darwin 21.3.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 9:31

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Macmini8,1
  Processor Name: 6-Core Intel Core i7
  Processor Speed: 3,2 GHz
  Number of Processors: 1
  Total Number of Cores: 6
  L2 Cache (per Core): 256 KB
  L3 Cache: 12 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: 1715.<ip> (iBridge: 19.16.10744.0.0,0)
  OS Loader Version: 540.80.2~11
  Serial Number (system): C07XX0EYJYVY
  Hardware UUID: 28E0F0DF-3687-5934-8D3A-62BF916860D1
[... truncated; full sample at ``sample.txt`` (approx. 28 more lines) ...]
```

### `cystack_b296ae1d`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M4`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AR
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
  Time since boot: 6 horas y 52 minutos

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: Mac16,2
  Model Number: MWUC3LL/A
  Chip: Apple M4
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): FDY59HWL61
  Hardware UUID: 8D506880-C9EA-572D-B5E4-5C68431FC974
  Provisioning UDID: 00008132-0009595901F9001C
  Activation Lock Status: Disabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_be75d7c7`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon R9 M395X`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: IT
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6 (24G84)
  Kernel Version: Darwin 24.6.0
  Boot Volume: SSD Blade
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 3 giorni, 1 ora e 55 minuti

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac17,1
  Processor Name: Quad-Core Intel Core i7
  Processor Speed: 4 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 8 MB
  Hyper-Threading Technology: Enabled
  Memory: 32 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 583~2210
  SMC Version (system): 2.34f3
  Serial Number (system): C02R900WGG82
[... truncated; full sample at ``sample.txt`` (approx. 30 more lines) ...]
```

### `cystack_c2db85fe`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon R9 M290`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: GB
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 11.7.10 (20G1427)
  Kernel Version: Darwin 20.6.0
  Boot Volume: disk0s2
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 6 minutes

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac15,1
  Processor Name: Quad-Core Intel Core i5
  Processor Speed: 3.3 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Memory: 16 GB
  System Firmware Version: <ip>.0
  SMC Version (system): 2.22f16
  Serial Number (system): DGKPK04SFY10
  Hardware UUID: 3F2A424F-1970-593B-A3C5-EAD879D16A83
  Provisioning UDID: 3F2A424F-1970-593B-A3C5-EAD879D16A83
[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

### `cystack_c405812f`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M3 Max`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


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
  Time since boot: 1 day, 1 hour, 51 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: Mac15,9
  Model Number: Z1AG00264B/A
  Chip: Apple M3 Max
  Total Number of Cores: 16 (12 performance and 4 efficiency)
  Memory: 48 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): M545Q1WHY0
  Hardware UUID: 04B72080-F5A1-5A6D-ACFD-5406ECF8AEA5
  Provisioning UDID: 00006031-000411600C44001C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_c4062a27`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Plus Graphics 640`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: DZ
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 13.7.2 (22H313)
  Kernel Version: Darwin 22.6.0
  Boot Volume: drapple
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 21jours, 23heures et 36 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro14,1
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 2,3 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 4 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 577.140.2~30
  SMC Version (system): 2.43f11
  Serial Number (system): C02W19A7HV22
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_c426f34d`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M2`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: BD
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
  System Integrity Protection: Disabled
  Time since boot: 21 minutes, 40 seconds

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: Mac14,2
  Model Number: MLXY3LL/A
  Chip: Apple M2
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): GHCPW904CD
  Hardware UUID: 0036C73B-6E9C-5DFE-8D68-49494EF068E6
  Provisioning UDID: 00008112-001508540C83A01E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_c632d977`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M3`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AU
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 14.6.1 (23G93)
  Kernel Version: Darwin 23.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 9 days, 19 hours

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: Mac15,12
  Model Number: MXCT3PP/A
  Chip: Apple M3
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 16 GB
  System Firmware Version: 10151.140.19
  OS Loader Version: 10151.140.19
  Serial Number (system): CFJ734MNXY
  Hardware UUID: A5BBC44E-D894-5B2A-8F4D-1F9136A3E08D
  Provisioning UDID: 00008122-000228841106001C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_c94ad68f`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M4 Max`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MSI MD271UL`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: GB
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.4 (24E248)
  Kernel Version: Darwin 24.4.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 1 hour, 42 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: Mac16,5
  Model Number: MX303B/A
  Chip: Apple M4 Max
  Total Number of Cores: 14 (10 performance and 4 efficiency)
  Memory: 36 GB
  System Firmware Version: 11881.101.1
  OS Loader Version: 11881.101.1
  Serial Number (system): LWX56L2G33
  Hardware UUID: CB5331B3-9922-5862-8684-C1B23102B21C
  Provisioning UDID: 00006041-000828A80260801C
  Activation Lock Status: Disabled

Graphics/Displays:

[... truncated; full sample at ``sample.txt`` (approx. 23 more lines) ...]
```

### `cystack_cfb6969f`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon R9 M370X`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Pro`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: CN
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.7.6 (21H1320)
  Kernel Version: Darwin 21.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 4:13

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro11,5
  Processor Name: Quad-Core Intel Core i7
  Processor Speed: 2.5 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Hyper-Threading Technology: Enabled
  Memory: 16 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 540.120.3~37
  SMC Version (system): 2.30f2
  Serial Number (system): C02QLA4XG8WP
[... truncated; full sample at ``sample.txt`` (approx. 44 more lines) ...]
```

### `cystack_e075b836`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel HD Graphics 630`, `MetaMask Info`, `Radeon Pro 555`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: IT
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 13.7.8 (22H730)
  Kernel Version: Darwin 22.6.0
  Boot Volume: VENTURA_SSD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Disabled
  Time since boot: 4 giorni, 22 ore e 21 minuti

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro14,3
  Processor Name: Quad-Core Intel Core i7
  Processor Speed: 2,8 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Hyper-Threading Technology: Enabled
  Memory: 16 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 577.140.2~30
  SMC Version (system): 2.45f5
  Serial Number (system): C02VF277HTDD
[... truncated; full sample at ``sample.txt`` (approx. 44 more lines) ...]
```

### `cystack_e47fc049`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon HD 6770M`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: FR
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 10.13.6 (17G14042)
  Kernel Version: Darwin 17.7.0
  Boot Volume: High Sierra
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 2 days 5:44

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac12,2
  Processor Name: Intel Core i5
  Processor Speed: 2,7 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Memory: 12 GB
  Boot ROM Version: <ip>.0
  SMC Version (system): 1.72f1
  Serial Number (system): C02FC0MYDHJP
  Hardware UUID: 52B11572-F60F-5858-87B1-3F4C406EC401

[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

### `cystack_e68b8a47`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `KG273`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: BR
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
  Time since boot: 4 horas e 56 minutos

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro17,1
  Model Number: MYD82LL/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): C02FJ0QMQ05D
  Hardware UUID: DF1FB436-7521-5970-A55D-F0F848ABEBDD
  Provisioning UDID: 00008103-000611581479001E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 24 more lines) ...]
```

### `cystack_ea2e8de7`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M4`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: CN
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
  Time since boot: 1 hour, 10 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: Mac16,1
  Model Number: MCX04CH/A
  Chip: Apple M4
  Total Number of Cores: 10 (4 performance and 6 efficiency)
  Memory: 24 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): H9Q374M2M4
  Hardware UUID: 99463954-C5B9-5FDE-9956-8482AB6036C3
  Provisioning UDID: 00008132-000068691E85801C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_ef0f7581`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `IP`, `MetaMask Info`, `Software`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: GB
IP: <redacted>
City: <redacted>
Software:

    System Software Overview:

      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 8 days, 13 hours, 13 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Air
      Model Identifier: Mac14,2
      Model Number: MC7X4B/A
      Chip: Apple M2
      Total Number of Cores: 8 (4 performance and 4 efficiency)
      Memory: 16 GB
      Serial Number (system): CMX0PQV33Q
      Hardware UUID: 79E58E0C-4334-53E1-9777-B55247E5F9AC
      Provisioning UDID: 00008112-0004516434FBA01E
      Activation Lock Status: Enabled

Graphics/Displays:

    Apple M2:

      Chipset Model: Apple M2
[... truncated; full sample at ``sample.txt`` (approx. 14 more lines) ...]
```

### `cystack_effa0efd`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Radeon Pro 580X`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: JP
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 13.6.3 (22G436)
  Kernel Version: Darwin 22.6.0
  Boot Volume: Macintosh SSD 4T
  Boot Mode: Normal
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 32 30b

Hardware:

Hardware Overview:

  Model Name: iMac
  Model Identifier: iMac19,1
  Processor Name: 6-Core Intel Core i5
  Processor Speed: 3.7 GHz
  Number of Processors: 1
  Total Number of Cores: 6
  L2 Cache (per Core): 256 KB
  L3 Cache: 9 MB
  Memory: 40 GB
  System Firmware Version: 1916.<ip>
  OS Loader Version: 577.140.2~22
  SMC Version (system): 2.46f13
  Serial Number (system): C02CG00HJV40
  Hardware UUID: 4D14D6F1-593B-58E7-8C7F-61DE40C3374C
  Provisioning UDID: 4D14D6F1-593B-58E7-8C7F-61DE40C3374C
[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

### `cystack_efff7d73`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Plus Graphics 645`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: JP
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.6 (24G84)
  Kernel Version: Darwin 24.6.0
  Boot Volume: apple
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 3 23 33

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro16,3
  Processor Name: Quad-Core Intel Core i5
  Processor Speed: 1.4 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: 2075.<ip> (iBridge: 22.16.16083.0.0,0)
  OS Loader Version: 583~2210
  Serial Number (system): FVFCW074P3YX
  Hardware UUID: 4D8F8973-DF57-5C3A-A44F-C793921FA146
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_f1d98937`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M4 Pro`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: CA
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.3 (24D60)
  Kernel Version: Darwin 24.3.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 29 days, 10 hours, 10 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: Mac16,8
  Model Number: MX2H3LL/A
  Chip: Apple M4 Pro
  Total Number of Cores: 12 (8 performance and 4 efficiency)
  Memory: 24 GB
  System Firmware Version: 11881.81.2
  OS Loader Version: 11881.81.2
  Serial Number (system): JQ2QJ0CVMG
  Hardware UUID: BAAEFB12-8872-5D9F-8288-AE25A4A9B6B1
  Provisioning UDID: 00006040-000E716E1E00801C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 19 more lines) ...]
```

### `cystack_f44a21ad`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1 Pro`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: DE
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
  Time since boot: 3 Tage, 23 Stunden und 21 Minuten

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro18,3
  Model Number: MKGT3D/A
  Chip: Apple M1 Pro
  Total Number of Cores: 10 (8 performance and 2 efficiency)
  Memory: 16 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): JXF66H9NKP
  Hardware UUID: 0D3ED589-1FAB-5B5A-AB3D-1E9EEB94BBF5
  Provisioning UDID: 00006000-001461911438801E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_f622df52`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1 Pro`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`, `Virtual Display`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: JP
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 26.0 (25A5349a)
  Kernel Version: Darwin 25.0.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 319Сʱ44

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro18,3
  Model Number: MKGP3CH/A
  Chip: Apple M1 Pro
  Total Number of Cores: 8 (6 performance and 2 efficiency)
  Memory: 16 GB
  System Firmware Version: 13822.1.2
  OS Loader Version: 13822.1.2
  Serial Number (system): DWC4LFTF2L
  Hardware UUID: 16DA6AEB-E573-59CF-9734-A1AECE31AAFC
  Provisioning UDID: 00006000-000A294E11C3401E
  Activation Lock Status: Disabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 24 more lines) ...]
```

### `cystack_f62fce78`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Country`, `Debanks`, `Display`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


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
  Time since boot: 4 days, 18 hours

Hardware:

Hardware Overview:

  Model Name: MacBook Air
  Model Identifier: MacBookAir10,1
  Model Number: MGN63HN/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): HXJMJEQW1WFV
  Hardware UUID: DEAE0061-B9BB-537B-B471-5E13DA0E55A6
  Provisioning UDID: 00008103-000E483C0AD9A01E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

### `cystack_f9a7b8dd`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M4 Pro`, `City`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `Studio Display`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: IT
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
  Time since boot: 1 giorno, 15 ore e 34 minuti

Hardware:

Hardware Overview:

  Model Name: Mac mini
  Model Identifier: Mac16,11
  Model Number: MCX44D/A
  Chip: Apple M4 Pro
  Total Number of Cores: 12 (8 performance and 4 efficiency)
  Memory: 24 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): M2V9VG4345
  Hardware UUID: D0C9FBDE-7E31-5ECC-A3F2-4EFF6A1406D8
  Provisioning UDID: 00006040-000469823C00801C
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 19 more lines) ...]
```

### `cystack_fbebf84e`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Pro`, `MetaMask Info`, `NVIDIA GeForce GT 750M`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: NG
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 11.7.10 (20G1427)
  Kernel Version: Darwin 20.6.0
  Boot Volume: Macintosh SSD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 9 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro11,3
  Processor Name: Quad-Core Intel Core i7
  Processor Speed: 2.5 GHz
  Number of Processors: 1
  Total Number of Cores: 4
  L2 Cache (per Core): 256 KB
  L3 Cache: 6 MB
  Hyper-Threading Technology: Enabled
  Memory: 16 GB
  System Firmware Version: <ip>.0
  SMC Version (system): 2.19f12
  Serial Number (system): C02NV9F0G3QD
  Hardware UUID: 22C0221E-3DAB-5E3A-89E6-C7FEF1E9E78D
[... truncated; full sample at ``sample.txt`` (approx. 41 more lines) ...]
```

### `cystack_ff62cc07`

**Attribution confidence:** `medium`

**Field keys:**
`Apple M1`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AR
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
  Time since boot: 5 das, 17 horas y 32 minutos

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro17,1
  Model Number: MYD82Y/A
  Chip: Apple M1
  Total Number of Cores: 8 (4 performance and 4 efficiency)
  Memory: 8 GB
  System Firmware Version: 11881.140.96
  OS Loader Version: 11881.140.96
  Serial Number (system): FVFG17CHQ05D
  Hardware UUID: A1306D39-BC2A-571A-8C49-9E59F0E9A317
  Provisioning UDID: 00008103-001629841439001E
  Activation Lock Status: Enabled

Graphics/Displays:
[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

## Detection

The line-anchored `MetaMask Info:` + `Debanks:` + `Userinfo:`
triple is unique to this AMOS panel render and does not collide
with the Cthulhu (`BuildID:` + `Hardware Overview:`) or MacSync
(`MacSync Stealer` banner) macOS forks the catalog tracks.
Family attribution rests on MalBeacon's `what-is-this-stealer`
community catalog mapping this exact `UserInformation.txt`
shape to Atomic Mac; the underlying AMOS family is curated-CTI
confirmed elsewhere but no vendor publishes a sample showing
this specific section-header layout, so the parser ships with
medium attribution confidence. Triaging an AMOS folder during
incident response: check for sibling `FileGrabber/`,
`BrowserVersion.txt`, `keychain.txt`, and `Passwords.txt`
artifacts in the same victim directory - the folder-level
AMOS detector fires on those names.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1555.001 Credentials from Password Stores: Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1217 Browser Information Discovery](https://attack.mitre.org/techniques/T1217/)

## Related families

- [`banshee-stealer`](../banshee_stealer/)
- [`cthulhu-stealer`](../cthulhu_stealer/)
- [`odyssey-stealer`](../odyssey_stealer/)
- [`poseidon-stealer`](../poseidon_stealer/)
- [`macsync`](../macsync/)

## References

- https://github.com/MalBeacon/what-is-this-stealer
- https://www.sentinelone.com/blog/atomic-stealer-threat-actor-spawns-second-variant-of-macos-malware-sold-on-telegram/
- https://www.esentire.com/blog/fake-deepseek-site-infects-mac-users-with-atomic-stealer
- https://www.picussecurity.com/resource/blog/atomic-stealer-amos-macos-threat-analysis
- https://moonlock.com/atomic-macos-stealer
- https://www.bleepingcomputer.com/news/security/new-atomic-macos-info-stealing-malware-targets-50-crypto-wallets/
- https://cyble.com/blog/threat-actor-selling-new-atomic-macos-amos-stealer-on-telegram/
