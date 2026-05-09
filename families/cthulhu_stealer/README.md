# Cthulhu Stealer

Cthulhu Stealer is a Go-written macOS infostealer that
exfiltrates a custom `Userinfo.txt` written to
`/Users/Shared/NW/`. The body opens with `IP:` and `Country:`
fields and continues with macOS hardware and account inventory.
Observed in `@bugatti_cloud` aggregator packs.

**Also known as:** `Cthulhu macOS Stealer`

**Variants observed:** 1
**Total observations:** 28
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials on macOS
- Crypto wallet desktop clients
- macOS Keychain entries
- Telegram session data
- System inventory and hardware fingerprint

## Variants

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
