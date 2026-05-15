# Aetheris Stealer

Aetheris Stealer is a Telegram-distributed info-stealer observed
inside `@BRADMAX`-style aggregator packs. Its `Information.txt`
opens with an ASCII-art banner spelling AETHERIS, then a
`Developer @sexyweekly` watermark, then five bracket-titled
sections.

**Also known as:** `Aetheris Stealer`

**Variants observed:** 6
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

### `cystack_2052a4d3`

**Attribution confidence:** `high`

**Field keys:**
`CLR Version`, `CPU Name`, `Clipboard`, `Default Gateway`, `External IP`, `Hwid`, `Input ISO`, `Internal IP`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Xorium
                               coded by @aesxor
[User Info]
User: user
Machine: DESKTOP-9DOF55B
Now: 2025-11-23 <ip>
Input ISO: ko
Hwid: <redacted>
Clipboard:

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Pro 2009
OS Build: 26200
OS Arch: x64
CPU Name: 12th Gen Intel(R) Core(TM) i5-1235U
Logical Cores: 12
RAM Total (MB): 16055
RAM Available (MB): 11313

[Drives]
C: Fixed FS:NTFS Size:470GB Free:419GB

[GPU]
Intel(R) Iris(R) Xe Graphics

[Basic]
User Domain: DESKTOP-9DOF55B
CLR Version: 4.0.30319.42000
```

### `cystack_3e0869cd`

**Attribution confidence:** `high`

**Field keys:**
`Buildtag`, `CPU Name`, `Clipboard`, `Country`, `Default Gateway`, `External IP`, `FileLocation`, `Hwid`, `Input ISO`, `Internal IP`, `Keyboard`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `Screensize`, `System Language`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
~~Banshee v1.4 Report (2025-12-20 00:34)
Buildtag: cherry147


[User Info]
User: Administrator
Machine: WIN-IP66DBD0FTN
Now: 2025-12-20 <ip>
FileLocation: <redacted>
Country: United Kingdom
Input ISO: pt
Hwid: <redacted>
Clipboard:

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Pro 2004
OS Build: 19041
OS Arch: x64
CPU Name: AMD Ryzen 5 9600X 6-Core Processor 
Logical Cores: 12
RAM Total (MB): 31849
RAM Available (MB): 25940
Screensize: 1920x1080
Keyboard: pt-PT
System Language: en-US

[Drives]
C: Fixed FS:NTFS Size:476GB Free:364GB
D: Removable FS:FAT32 Size:28GB Free:28GB

[GPU]
NVIDIA GeForce RTX 5060 Ti
AMD Radeon(TM) Graphics

[Basic]
[... truncated; full sample at ``sample.txt`` (approx. 1 more lines) ...]
```

### `cystack_5f8f9b68`

**Attribution confidence:** `high`

**Field keys:**
`CPU Name`, `Clipboard`, `Default Gateway`, `External IP`, `Hwid`, `Input ISO`, `Internal IP`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

  
 __  __   _ 
 \ \/ /___  _ __ (_)_   _ _ __ ___  
  \  // _ \| '__|| | | | | '_ ` _ \ 
  /  \ (_) | |   | | |_| | | | | | |
 /_/\_\___/|_|   |_|\__,_|_| |_| |_|
 
   Developer @aesxor
[User Info]
User: Administrator
Machine: DESKTOP-GC2KJGF
Now: 2025-12-27 <ip>
Input ISO: ko
Hwid: <redacted>
Clipboard:

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Pro 2009
OS Build: 19045
OS Arch: x64
CPU Name: Intel(R) Core(TM) i5-9600KF CPU @ 3.70GHz
Logical Cores: 6
RAM Total (MB): 16326
RAM Available (MB): 9908

[Drives]
C: Fixed FS:NTFS Size:465GB Free:54GB

[GPU]
NVIDIA GeForce RTX 2060

[Basic]
User Domain: DESKTOP-GC2KJGF
```

### `cystack_7d0668ba`

**Attribution confidence:** `high`

**Field keys:**
`CPU Name`, `Clipboard`, `Default Gateway`, `External IP`, `Hwid`, `Input ISO`, `Internal IP`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `Screen Resolution`, `Step 2`, `Step 3`, `Step 4`, `Step 5`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
[User Info]
User: Admin
Machine: SAGAR
Now: 2025-12-27 <ip>
Input ISO: en
Screen Resolution: 1920x1080
Hwid: <redacted>
Clipboard: Step 1: Install Prerequisites - Ensure your system meets requirements (Windows 10/11, MacOS 10.14+, 4GB RAM).
Step 2: Load the Resources - Place files in the application directory and launch Filmora.
Step 3: Access Interface - Use the main menu to explore AI and editing tools.
Step 4: Create Videos - Start with templates or edit your clips.
Step 5: Export Projects - Save in 4K or share on social media.

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Home Single Language 2009
OS Build: 19045
OS Arch: x64
CPU Name: Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz
Logical Cores: 8
RAM Total (MB): 8058
RAM Available (MB): 4447

[Drives]
C: Fixed FS:NTFS Size:237GB Free:136GB
D: Fixed FS:NTFS Size:145GB Free:109GB
E: Fixed FS:NTFS Size:196GB Free:168GB
F: Fixed FS:NTFS Size:196GB Free:123GB
G: Fixed FS:NTFS Size:196GB Free:165GB
H: Fixed FS:NTFS Size:196GB Free:194GB

[GPU]
Intel(R) UHD Graphics 620

[Basic]
User Domain: SAGAR
```

### `cystack_ae6f6dd2`

**Attribution confidence:** `high`

**Field keys:**
`CLR Version`, `CPU Name`, `Clipboard`, `Default Gateway`, `External IP`, `Hwid`, `Input ISO`, `Internal IP`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `Undertale au arena`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Xorium
                               coded by @aesxor
[User Info]
User: comet
Machine: MSI
Now: 2025-11-23 <ip>
Input ISO: ko
Hwid: <redacted>
Clipboard: 
Undertale au arena:multiverse destruction

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Home 2009
OS Build: 19045
OS Arch: x64
CPU Name: 11th Gen Intel(R) Core(TM) i7-11800H @ 2.30GHz
Logical Cores: 16
RAM Total (MB): 65238
RAM Available (MB): 40584

[Drives]
C: Fixed FS:NTFS Size:930GB Free:301GB
D: Fixed FS:NTFS Size:1907GB Free:1404GB

[GPU]
Intel(R) UHD Graphics
NVIDIA GeForce RTX 3070 Laptop GPU

[Basic]
User Domain: MSI
CLR Version: 4.0.30319.42000
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
