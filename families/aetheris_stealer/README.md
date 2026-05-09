# Aetheris Stealer

Aetheris Stealer is a Telegram-distributed info-stealer observed
inside `@BRADMAX`-style aggregator packs. Its `Information.txt`
opens with an ASCII-art banner spelling AETHERIS, then a
`Developer @sexyweekly` watermark, then five bracket-titled
sections.

**Also known as:** `Aetheris Stealer`

**Variants observed:** 1
**Total observations:** 42
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and clients
- System hardware and locale inventory

## Variants

### `cystack_0f67ab2e`

**Attribution confidence:** `high`

**Field keys:**
`CPU Name`, `Clipboard`, `Default Gateway`, `External IP`, `Hwid`, `Input ISO`, `Internal IP`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `Screen Resolution`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

                                          
 __  __           _                 
 \ \/ /___  _ __ (_)_   _ _ __ ___  
  \  // _ \| '__|| | | | | '_ ` _ \ 
  /  \ (_) | |   | | |_| | | | | | |
 /_/\_\___/|_|   |_|\__,_|_| |_| |_|
                                     
                               Developer @aesxor
[User Info]
User: Administrator
Machine: PC---13
Now: 2026-01-06 <ip>
Input ISO: en
Screen Resolution: 1440x1080
Hwid: <redacted>
Clipboard: Galaxy Swapper v3 GitHub

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Pro 2009
OS Build: 26200
OS Arch: x64
CPU Name: AMD Ryzen 7 9800X3D 8-Core Processor           
Logical Cores: 16
RAM Total (MB): 15317
RAM Available (MB): 5001

[Drives]
C: Fixed FS:NTFS Size:465GB Free:72GB

[GPU]
NVIDIA GeForce RTX 4070

[Basic]
User Domain: PC---13
```

## Detection

The AETHERIS ASCII-art banner combined with the
`Developer @sexyweekly` watermark is the cleanest fingerprint.
Either alone is enough to claim, but presence of both gives
highest confidence.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- @sexyweekly
