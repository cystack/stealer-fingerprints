# Aetheris Stealer

Aetheris Stealer is a Telegram-distributed info-stealer observed
inside `@BRADMAX`-style aggregator packs. Its `Information.txt`
opens with an ASCII-art banner spelling AETHERIS, then a
`Developer @sexyweekly` watermark, then five bracket-titled
sections.

**Also known as:** `Aetheris Stealer`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and clients
- System hardware and locale inventory

## Variants

### `cystack_5f8f9b68`

**Field keys:**
`CPU Name`, `Clipboard`, `Default Gateway`, `External IP`, `Hwid`, `Input ISO`, `Internal IP`, `Logical Cores`, `Machine`, `Now`, `OS Arch`, `OS Build`, `OS Product`, `RAM Available (MB)`, `RAM Total (MB)`, `User`, `User Domain`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

                                          
 █████  ███████ ████████ ██   ██ ███████ ██████  ██ ███████ 
██   ██ ██         ██    ██   ██ ██      ██   ██ ██ ██      
███████ █████      ██    ███████ █████   ██████  ██ ███████ 
██   ██ ██         ██    ██   ██ ██      ██   ██ ██      ██ 
██   ██ ███████    ██    ██   ██ ███████ ██   ██ ██ ███████ 
[... 3 blank lines ...]
                               Developer @sexyweekly
[User Info]
User: fomki
Machine: DESKTOP-OB2IQSR
Now: 2026-02-15 <ip>
Input ISO: ru
Hwid: <redacted>
Clipboard: @toooolsss

[Network]
External IP: <redacted>
Internal IP: <ip>
Default Gateway: <ip>

[System]
OS Product: Windows 10 Home 2009
OS Build: 19045
OS Arch: x64
CPU Name: Intel(R) Core(TM) i3-2310M CPU @ 2.10GHz
Logical Cores: 4
RAM Total (MB): 4003
RAM Available (MB): 301

[Drives]
C: Fixed FS:NTFS Size:232GB Free:110GB

[GPU]
Intel(R) HD Graphics 3000

[Basic]
User Domain: DESKTOP-OB2IQSR
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
