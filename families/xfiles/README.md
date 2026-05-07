# XFiles

X-FILES (XFiles / DeerStealer) is a long-running C#-written
infostealer first observed on Russian hacker forums in March
2021. Later evolutions (2024+) are sold under the rebranded name
DeerStealer by the same actor on dark-web forums and Telegram
with a tiered subscription model. Targets Chromium and Gecko
browsers, 80+ browser-based crypto wallet extensions, plus
VPN, FTP, RDP, and messenger client data.

**Also known as:** `X-FILES`, `DeerStealer`, `X-Files Stealer`

## Targets

- Browser saved credentials and cookies (Chromium and Gecko)
- 80+ browser-based crypto wallet extensions
- Crypto wallet desktop clients
- VPN, FTP, RDP client configs
- Messenger session data (Telegram, Discord, Steam)

## Variants

### `cystack_fe611d56`

**Field keys:**
`Buy`, `CPU (Processor)`, `Computer Name`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `Processed parts`, `RAM (Memory)`, `Reserve Link`, `Screens`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```

│    [

The Best fresh logs and ULP Cloud

t.me/WichLoveFromR
t.me/WichLoveFromR
t.me/WichLoveFromR

Reserve Link: <url>
Buy: @AltairSupport


Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel Core Processor (Broadwell)
GPU (Display Devices): Standard VGA Graphics Adapter, RDPDD Chained DD, RDP Encoder Mirror Driver, RDP Reflector Display Driver
RAM (Memory): 2047.484375
Screens: 1280x720
Desktop Screenshot Taken: No
Windows Processes [
   System
   smss.exe
   csrss.exe
   wininit.exe
   csrss.exe
   winlogon.exe
   services.exe
   lsass.exe
   lsm.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   audiodg.exe
   svchost.exe
   svchost.exe
   spoolsv.exe
   svchost.exe
   taskhost.exe
   dwm.exe
   explorer.exe
   OSPPSVC.EXE
   WmiPrvSE.exe
   dllhost.exe
   svchost.exe
   sppsvc.exe
   Digi_V16.exe
   ParallelProfi.exe
]
Processed parts: [
   Total Time to process: <ip>.0635189
   Messengers: <ip>.0003320
   EmailClients: <ip>.0002927
   Games: <ip>.0007388
   Vpn: <ip>.0006133
   RemoteAdminControl: <ip>.0003565
   Vnc: <ip>.0005330
   Ftp: <ip>.0015727
   ChromiumBrowsers: <ip>.0160871
   GeckoBrowsers: <ip>.0400422
   FileGrabber: <ip>.0013524
   Hardware: <ip>.00C4SHFL0W PR3M1UM CL0UD L0G5 — fresh daily → t.me / +GnCJu3Wqao1jBhi2
]
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
