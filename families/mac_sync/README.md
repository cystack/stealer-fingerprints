# MacSync

MacSync is a macOS-targeted infostealer first observed in
November 2025 as a rebrand of the earlier Mac.c family. Its
AppleScript payload writes an `Information.txt` file into the
victim staging directory combining a malware self-identification
banner, captured account credentials, and the verbatim output of
`system_profiler`.

**Also known as:** `Mac.c`, `MacSync Stealer`

## Targets

- Browser saved credentials (Chrome, Safari, Firefox)
- Crypto wallet desktop clients (Electrum, Exodus, etc.)
- macOS Keychain entries
- Telegram and Discord session data on macOS
- System profile information for victim fingerprinting

## Variants

### `cystack_4897375d`

**Field keys:**
`Build Tag`, `Graphics/Displays`, `Hardware`, `Password`, `Software`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
MacSync Stealer

Build Tag: TestCloud

Username: <redacted>
Password:      

Software:

    System Software Overview:

      Boot Volume: Untitled
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 7 hours, 56 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Air
      Model Identifier: MacBookAir10,1
      Model Number: MGN63FN/A
      Chip: Apple M1
      Total Number of Cores: 8 (4 performance and 4 efficiency)
      Memory: 8 GB
      Serial Number (system): C02G9SQ5Q6L4
      Hardware UUID: 2EA339D4-5249-5EC2-952B-83A4010B1EDC
      Provisioning UDID: 00008103-001C11223487001E
      Activation Lock Status: Disabled

Graphics/Displays:

    Apple M1:

      Chipset Model: Apple M1
      Type: GPU
      Bus: Built-In
      Total Number of Cores: 7
      Vendor: Apple (0x106b)
      Metal Support: Metal 4
      Displays:
        Color LCD:
          Display Type: Built-In Retina LCD
          Resolution: 2560 x 1600 Retina
          Main Display: Yes
          Mirror: Off
          Online: Yes
          Automatically Adjust Brightness: Yes
          Connection Type: Internal
```

### `cystack_88fd83ff`

**Field keys:**
`Graphics/Displays`, `Hardware`, `Password`, `Software`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
MacSync Stealer


Username: <redacted>
Password: 3836

Software:

    System Software Overview:

      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 4 days, 9 hours, 37 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Air
      Model Identifier: MacBookAir10,1
      Model Number: MGN63HN/A
      Chip: Apple M1
      Total Number of Cores: 8 (4 performance and 4 efficiency)
      Memory: 8 GB
      Serial Number (system): HXJN1KVX1WFV
      Hardware UUID: B395CF45-7DE1-531E-9EE9-048F7D963D6E
      Provisioning UDID: 00008103-000225001403A01E
      Activation Lock Status: Enabled

Graphics/Displays:

    Apple M1:

      Chipset Model: Apple M1
      Type: GPU
      Bus: Built-In
      Total Number of Cores: 7
      Vendor: Apple (0x106b)
      Metal Support: Metal 4
      Displays:
        Color LCD:
          Display Type: Built-In Retina LCD
          Resolution: 2560 x 1600 Retina
          Main Display: Yes
          Mirror: Off
          Online: Yes
          Automatically Adjust Brightness: Yes
          Connection Type: Internal
```

## Detection

The `Information.txt` containing both a banner and verbatim
`system_profiler` output is unambiguous. Pair with macOS-specific
field values (Apple silicon CPU strings, macOS version) to
confirm.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.001 Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://www.cisecurity.org/insights/blog/macsync-stealer-campaign-impacting-us-sltt-macos-users
- https://www.jamf.com/blog/macsync-stealer-evolution-code-signed-swift-malware-analysis/
