# Redline

Canonical Redline Stealer logs. UserInformation.txt files emitting
the family's typo'd `Operation System:` field together with a full
identity, locale, and hardware block. Build banners typically frame
the panel name (Octopus Cloud Logs and similar resellers) above
the field block.

**Also known as:** `RedLine`, `RedLineStealer`

## Targets

- Browser saved credentials
- Browser cookies and session storage
- Crypto wallet desktop clients and browser extensions
- FTP and VPN client configs
- Discord and Telegram session tokens

## Variants

### `cystack_7d94dffd`

**Field keys:**
`Anti-Viruses`, `Available KeyboardLayouts`, `Country`, `Current Language`, `FileLocation`, `HWID`, `Hardwares`, `IP`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `UserName`, `Zip Code`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
░▄▀▄░█░█░▀█▀░█▀▄░▀▀█░█▀▀░█░░░█▀█░█░█░█▀▄
░█▀▀░█▀▄░░█░░█▀▄░░▀▄░█░░░█░░░█░█░█░█░█░█
░░▀░░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀░                                                                                                                                   
@𝗸𝗶𝗿𝟯𝗰𝗹𝗼𝘂𝗱 -- @𝗸𝗶𝗿𝟯𝗼𝘄𝗻𝗲𝗿 @̲k̲i̲r̲3̲c̲l̲o̲u̲d̲ ̲-̲-̲ ̲@̲k̲i̲r̲3̲o̲w̲n̲e̲r̲ －－ ＠ｋｉｒ３ｃｌｏｕｄ －－ ＠ｋｉｒ３ｏｗｎｅｒ  

IP: <redacted>
FileLocation: <redacted>
UserName: <redacted>
Country: UNKNOWN
Zip Code: <redacted>
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width = 1536,Height = 864}TimeZone: (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi
Operation System: Windows 10 Home Single Language x64
Process Elevation: True
Available KeyboardLayouts: 
English (India)
English (United States)
Hardwares: 
Name: AMD Ryzen 7 7735HS with Radeon Graphics        , 8 Cores
Name: AMD Radeon(TM) Graphics, 536870912 bytes
Name: Total of RAM, 15557.48 MB or 16313200640 bytes
Anti-Viruses: 
Windows Defender
McAfee
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
