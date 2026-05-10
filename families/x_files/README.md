# XFiles

X-FILES (XFiles / DeerStealer) is a long-running C#-written
infostealer first observed on Russian hacker forums in March
2021. Later evolutions (2024+) are sold under the rebranded name
DeerStealer by the same actor on dark-web forums and Telegram
with a tiered subscription model. Targets Chromium and Gecko
browsers, 80+ browser-based crypto wallet extensions, plus
VPN, FTP, RDP, and messenger client data.

**Also known as:** `X-FILES`, `DeerStealer`, `X-Files Stealer`

**Variants observed:** 2
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies (Chromium and Gecko)
- 80+ browser-based crypto wallet extensions
- Crypto wallet desktop clients
- VPN, FTP, RDP client configs
- Messenger session data (Telegram, Discord, Steam)

## Variants

### `cystack_779697d2`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f/3a1e1069-b1b7-7b83-d388-1a36f6319473

IP: <redacted>
Country: AF (Afghanistan)
Operating System: Windows 11
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz
GPU (Display Devices): Intel(R) UHD Graphics 620
RAM (Memory): 
Screens: 1920x1080
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Secure System
   Registry
   smss.exe
   csrss.exe
   wininit.exe
   csrss.exe
   winlogon.exe
   services.exe
   LsaIso.exe
   lsass.exe
   svchost.exe
   fontdrvhost.exe
   fontdrvhost.exe
   WUDFHost.exe
   svchost.exe
   svchost.exe
   WUDFHost.exe
   dwm.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 286 more lines) ...]
```

### `cystack_c10789f1`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `Processed parts`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f/3a1e1069-b1b7-7b83-d388-1a36f6319473

IP: <redacted>
Country: AE (United Arab Emirates)
Operating System: Windows 10
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel(R) Xeon(R) CPU E5-2670 0 @ 2.60GHz
GPU (Display Devices): AMD Radeon HD 6800 Series
RAM (Memory): 
Screens: 1920x1080
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Registry
   smss.exe
   csrss.exe
   csrss.exe
   wininit.exe
   winlogon.exe
   services.exe
   lsass.exe
   svchost.exe
   fontdrvhost.exe
   fontdrvhost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   dwm.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

## Detection

XFiles `Information.txt` carries the panel banner together with
victim hardware and locale fields. Older 2021-2022 variants and
the rebranded 2024+ DeerStealer share the same field set so the
family rule covers both eras. An aggregator-stripped variant
redistributed via the Cloud WLFR project (`t.me/WichLoveFromR`,
`linktr.ee/WLFRcloud`, support `@AltairSupport`) drops the
`Operation ID:` panel-run identifier but keeps the rest of the
XFiles-canonical field set; the parser fingerprint covers both
shapes.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)

## References

- https://www.zscaler.com/blogs/security-research/x-files-stealer-evolution-analysis-and-comparison-study
- https://any.run/malware-trends/xfiles/
- https://www.esentire.com/blog/dont-get-caught-in-the-headlights-deerstealer-analysis
- https://cyberint.com/blog/research/xfiles-stealer-campaign-abusing-follina/
- https://www.bleepingcomputer.com/news/security/xfiles-info-stealing-malware-adds-support-for-follina-delivery/
