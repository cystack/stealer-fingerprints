# Cthulhu Stealer

Cthulhu Stealer is a Go-written macOS infostealer that
exfiltrates a custom `Userinfo.txt` written to
`/Users/Shared/NW/`. The body opens with `IP:` and `Country:`
fields and continues with macOS hardware and account inventory.
Observed in `@bugatti_cloud` aggregator packs.

**Also known as:** `Cthulhu macOS Stealer`

**Variants observed:** 5
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials on macOS
- Crypto wallet desktop clients
- macOS Keychain entries
- Telegram session data
- System inventory and hardware fingerprint

## Variants

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
