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

**Variants observed:** 12
**Top attribution confidence:** `medium`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions (MetaMask, Phantom, Coin98, Trust Wallet, 50+ targeted)
- Desktop crypto wallets (Electrum, Exodus, Atomic, Wasabi, Ledger Live, Trezor Suite)
- macOS Keychain database and login password (AppleScript prompt)
- Apple Notes content and Telegram session files
- Documents and Desktop file grabber (.txt, .pdf, .docx, .wallet, .key)

## Variants

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
