# AuraStealer

Aura Stealer (a.k.a. AuraStealer) is a C++ infostealer-as-a-
service advertised on underground forums from July 2025 by
the threat actor AuraCorp. Subscription tiers ship a builder
plus a web panel that aggregates harvested logs. Microsoft
Threat Intelligence catalogues it under the detection name
`Trojan:MSIL/AuraStealer.AUKB!MTB`; Malpedia tracks it as
`win.aurastealer`.

The on-wire exfil is JSON, GZIP-compressed and Base64-encoded
to the C2. The artifact this parser claims is the operator-
facing panel render written as `System.txt` inside each per-
victim folder. The render opens with an `AURA v<x.y.z>` build
banner, then a top block of identity fields (`HWID:`, the
`Launched at:` local/UTC pair, `Location:`, the elevation
flags), then four square-bracket sections in order: `[System
Info]`, `[Hardware]`, `[Processes List]`, `[Installed
Software]`. The `Location:` field carries the process-hollowing
target, usually `C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\RegAsm.exe`
per the injection chain documented by Chen Aviani and Foresiet.

**Also known as:** `Aura Stealer`, `AuraStealer`

**Variants observed:** 2
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill (110+ browsers)
- Crypto wallet extensions and desktop clients (250+ extensions)
- Authenticator and 2FA app data (70+ apps)
- System hardware and installed-software inventory

## Variants

### `cystack_7146b159`

**Attribution confidence:** `high`

**Field keys:**
`HWID`, `Launched at`, `Location`, `Run as Admin`, `Running on`, `User in Admins group`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
AURA v1.5.2

HWID: <redacted>
Launched at: 
   Local time: 2025-10-26 <ip>
   UTC time: 2025-10-26 <ip>
Location: C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe
Run as Admin: No
User in Admins group: Yes
Running on: Desktop PC

[System Info]
   OS Name: Windows 10 Pro
   Edition: Professional
   Version: 10.0.22621/1/x64
   Build Number: 22621
   Build Lab: 22621.ni_release.220506-1250
   Install Date: May 30 2025 <ip>
   Product Id: 00330-80000-00000-AA052
   Architecture: x64
   Language: id-ID
   Keyboard Layouts: en-US
   Time Zone: Asia/Dubai UTC+04:00
   Computer Name: <redacted>
   User Name: <redacted>
   Screen resolution: 1440x900

[Hardware]
   CPU: Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz (4 cores)
   RAM: 8110 MB (Used 5923 MB)
   GPUs: Intel(R) HD Graphics 4400 

[Processes List]
   [System Process] [0]
   System [4]
   Registry [104]
   smss.exe [504]
   csrss.exe [716]
   wininit.exe [808]
   csrss.exe [816]
[... truncated; full sample at ``sample.txt`` (approx. 226 more lines) ...]
```

### `cystack_e35cafcc`

**Attribution confidence:** `high`

**Field keys:**
`Launched at`, `Location`, `Run as Admin`, `Running on`, `User in Admins group`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
AURA v1.5.2

Launched at: 
   Local time: 2025-11-13 <ip>
   UTC time: 2025-11-13 <ip>
Location: C:\WINDOWS\SysWOW64\WindowsPowerShell\v1.0\powershell.exe
Run as Admin: No
User in Admins group: Yes
Running on: Laptop

[System Info]
   OS Name: Windows 10 Enterprise
   Edition: Enterprise
   Version: 10.0.19045/1/x64
   Build Number: 19045
   Build Lab: 19041.vb_release.191206-1406
   Install Date: Nov 02 2024 <ip>
   Product Id: 00329-00000-00003-AA737
   Architecture: x64
   Language: fr-FR
   Keyboard Layouts: fr-CI, fr-FR, fr-CA
   Time Zone: Africa/Abidjan UTC+00:00
   Computer Name: <redacted>
   User Name: <redacted>
   Screen resolution: 1366x768

[Hardware]
   CPU: Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz (4 cores)
   RAM: 8017 MB (Used 5229 MB)
   GPUs: Intel(R) HD Graphics 520 

[Processes List]
   [System Process] [0]
   System [4]
   Registry [100]
   smss.exe [396]
   csrss.exe [576]
   wininit.exe [664]
   csrss.exe [672]
   winlogon.exe [768]
[... truncated; full sample at ``sample.txt`` (approx. 223 more lines) ...]
```

## Detection

The line-anchored `AURA v<digits>` banner on the opening line
is the cleanest fingerprint and is the panel's own self-
identifier. The `[System Info]` + `[Hardware]` + `[Processes
List]` + `[Installed Software]` bracket-section quartet with
this exact spelling is unique to Aura. False-positive risk
is negligible: prose that quotes the banner phrase will fail
the bracket-section + `HWID:` guard.

When triaging a panel-render log, treat `Location:` ending in
`RegAsm.exe` as the injection-host signal. The on-wire JSON
transport is not captured by this parser; pair host telemetry
on RegAsm.exe outbound HTTPS with the relevant Aura C2
domains listed in Intrinsec's 340-IOC report.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)
- [T1518 Software Discovery](https://attack.mitre.org/techniques/T1518/)
- [T1055.012 Process Injection: Process Hollowing](https://attack.mitre.org/techniques/T1055/012/)

## Related families

- [`lumma`](../lumma/)

## References

- https://www.microsoft.com/en-us/wdsi/threats/malware-encyclopedia-description?Name=Trojan:MSIL/AuraStealer.AUKB!MTB&ThreatID=2147957435
- https://malpedia.caad.fkie.fraunhofer.de/details/win.aurastealer
- https://www.gendigital.com/blog/insights/research/defeating-aurastealer-obfuscation
- https://www.intrinsec.com/en/analysis-of-aurastealer-an-emerging-infostealer/
