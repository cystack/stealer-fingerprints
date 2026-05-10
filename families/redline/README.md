# Redline

Canonical Redline Stealer logs. UserInformation.txt files emitting
the family's typo'd `Operation System:` field together with a full
identity, locale, and hardware block. Build banners typically frame
the panel name (Octopus Cloud Logs and similar resellers) above
the field block.

**Also known as:** `RedLine`, `RedLineStealer`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials
- Browser cookies and session storage
- Crypto wallet desktop clients and browser extensions
- FTP and VPN client configs
- Discord and Telegram session tokens

## Variants

### `cystack_65b17882`

**Attribution confidence:** `high`

**Field keys:**
`Available KeyboardLayouts`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Location`, `Log date`, `MachineName`, `Name`, `Operation System`, `ScreenSize`, `TimeZone`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
[... 9 blank lines ...]
* *
* *

IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
MachineName: DESKTOP-QFQ4FGM
Country: BD
Zip Code: <redacted>
Location: Dhaka, Dhaka
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width=1536, Height=864}
TimeZone: (UTC+06:00) Dhaka
Operation System: Windows 11 Pro x64
Log date: 15/01/2026 <ip>

Available KeyboardLayouts: 
English (United States)

Hardwares: 
Name: Total of RAM, 7896.49 Mb or 8280072192 bytes
Name: 12th Gen Intel(R) Core(TM) i3-1215U, 6 Cores
Name: Intel(R) UHD Graphics, 134217728 bytes
cuspe 
ccwfe 
ljwecfxxs Anti-Viruses:
odkwhnnrc Windows Defender
```

## Detection

High-confidence trigger: the typo'd `Operation System:` field
paired with `FileLocation:`. Stripped variants without
`FileLocation:` are tracked separately as `RedlineLike Stealer`.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redlinelike-stealer`](../redlinelike_stealer/)
- [`metastealer`](../metastealer/)

## References

- @redline_market_bot
- https://flare.io/learn/resources/blog/redline-stealer-malware/
