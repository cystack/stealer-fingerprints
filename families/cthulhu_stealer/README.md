# Cthulhu Stealer

Cthulhu Stealer is a Go-written macOS infostealer that
exfiltrates a custom `Userinfo.txt` written to
`/Users/Shared/NW/`. The body opens with `IP:` and `Country:`
fields and continues with macOS hardware and account inventory.
Observed in `@bugatti_cloud` aggregator packs.

**Also known as:** `Cthulhu macOS Stealer`

## Targets

- Browser saved credentials on macOS
- Crypto wallet desktop clients
- macOS Keychain entries
- Telegram session data
- System inventory and hardware fingerprint

## Variants

### `cystack_0525ee66`

**Field keys:**
`BuildID`, `Graphics/Displays`, `Hardware`, `Software`, `Timezone`, `Zipcode`

**Filenames:** `userinfo.txt`

**Sample (sanitized):**

```
 
Zipcode: 81278
Timezone: -07:00
BuildID: anon
Software:

    System Software Overview:

      System Version: macOS 26.3.1 (a) (25D771280a)
      Kernel Version: Darwin 25.3.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 9 days, 7 hours, 25 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: MacBookPro18,3
      Model Number: MKGR3LL/A
      Chip: Apple M1 Pro
      Total Number of Cores: 8 (6 Performance and 2 Efficiency)
      Memory: 16 GB
      System Firmware Version: 13822.81.10
      OS Loader Version: 13822.81.10
      Serial Number (system): G1CMFQC770
      Hardware UUID: 1E1C356B-A710-5E7F-8745-E9CE4266D876
      Provisioning UDID: 00006000-000420293E92401E
      Activation Lock Status: Enabled

Graphics/Displays:

    Apple M1 Pro:

      Chipset Model: Apple M1 Pro
      Type: GPU
      Bus: Built-In
      Total Number of Cores: 14
      Vendor: Apple (0x106b)
      Metal Support: Metal 4
      Displays:
        Color LCD:
          Display Type: Built-in Liquid Retina XDR Display
          Resolution: 3024 x 1964 Retina
          Main Display: Yes
          Mirror: Off
          Online: Yes
          Automatically Adjust Brightness: Yes
          Connection Type: Internal
```

### `cystack_9862de74`

**Field keys:**
`BuildID`, `City`, `Country`, `Country Code`, `Graphics/Displays`, `Hardware`, `IP`, `Latitude`, `Longitude`, `Region`, `Software`, `Timezone`, `Zipcode`

**Filenames:** `userinfo.txt`

**Sample (sanitized):**

```
 
IP: <redacted>
Country: Mexico
Country Code: MX
Region: Sinaloa
City: <redacted>
Latitude: <redacted>
Longitude: <redacted>
Zipcode: 81278
Timezone: -07:00

BuildID: anon

Software:

    System Software Overview:

      System Version: macOS 26.3.1 (a) (25D771280a)
      Kernel Version: Darwin 25.3.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 9 days, 7 hours, 25 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: MacBookPro18,3
      Model Number: MKGR3LL/A
      Chip: Apple M1 Pro
      Total Number of Cores: 8 (6 Performance and 2 Efficiency)
      Memory: 16 GB
      System Firmware Version: 13822.81.10
      OS Loader Version: 13822.81.10
      Serial Number (system): G1CMFQC770
      Hardware UUID: 1E1C356B-A710-5E7F-8745-E9CE4266D876
      Provisioning UDID: 00006000-000420293E92401E
      Activation Lock Status: Enabled

Graphics/Displays:

    Apple M1 Pro:

      Chipset Model: Apple M1 Pro
      Type: GPU
      Bus: Built-In
      Total Number of Cores: 14
      Vendor: Apple (0x106b)
      Metal Support: Metal 4
      Displays:
        Color LCD:
          Display Type: Built-in Liquid Retina XDR Display
          Resolution: 3024 x 1964 Retina
          Main Display: Yes
          Mirror: Off
          Online: Yes
          Automatically Adjust Brightness: Yes
          Connection Type: Internal
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
