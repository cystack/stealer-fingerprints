# StealC

StealC info-stealer logs. Writes a sectioned `system_info.txt`
with header lines like `Network Info:`, `System Summary:`, and
tab-indented `- Key: Value` records under each. First documented
in early 2023, StealC has remained an active commodity stealer
with the v2 rewrite tracked through 2024.

**Also known as:** `StealC v1`, `StealC v2`

**Variants observed:** 12
**Total observations:** 150,384
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- FTP, email, VPN, RDP client configs
- Discord and Telegram session data
- Custom file grabber configurable per-build

## Variants

### `cystack_1a6c3169`

**Attribution confidence:** `high`

**Field keys:**
`System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: LK

System Summary:
	- HWID: 591A17A0-6E8F-57D4-CB68-275CA3B03F64
	- OS: Windows 10
	- Architecture: x64
	- UserName: User
	- Computer Name: DESKTOP-ISGJ8N8
	- Local Time: 2026-01-08 <ip>
	- UTC: -8
	- Language: en-US
[... truncated; full sample at ``sample.txt`` (approx. 263 more lines) ...]
```

### `cystack_2eb9685e`

**Attribution confidence:** `high`

**Field keys:**
`Installed Apps`, `Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AU

System Summary:
	- HWID: 584E9D0C-EE33-E6F0-4F14-8BA8E79C63F0
	- OS: Windows 10
	- Architecture: x64
	- UserName: Callan
	- Computer Name: COM_N_2708
	- Local Time: 2026-01-21 <ip>
	- UTC: 10
	- Language: en-US
	- Keyboards: en-US
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\AppData\Local\Temp\xsxc6s.exe
	- CPU: Intel(R) Core(TM) i9-10850K CPU @ 3.60GHz
	- Cores: 10
	- Threads: 20
	- RAM: 32 GB
	- Display Resolution:
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device type String: Intel(R) UHD Graphics 650
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) UHD Graphics 650

Process count: 26
Process List: 
	System Idle Process [0]
	System [4]
	smss.exe [209]
	wininit.exe [439]
	csrss.exe [532]
	csrss.exe [547]
	winlogon.exe [531]
	lsass.exe [465]
	lsm.exe [452]
[... truncated; full sample at ``sample.txt`` (approx. 122 more lines) ...]
```

### `cystack_3028b0ca`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Installed Apps`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: AO

System Summary:
	- HWID: B4F7E575-E5B6-4B81-3A2D-9E79E26506F1
	- OS: Windows 10
	- Architecture: x64
	- UserName: ferna
	- Computer Name: DESKTOP-8JH7R45
	- Local Time: 2026-01-18 <ip>
	- UTC: 1
	- Language: pt-BR
	- Keyboards: Português (Portugal) / Português (Portugal)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\Downloads\SoftHub\SoftHub\Setup.exe
	- CPU: Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz
	- Cores: 4
	- Threads: 4
	- RAM: 12 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) HD Graphics 4600
			Resolution: 1360x768
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) HD Graphics 4600

Process count: 137
Process List: 
	[System Process] [0]
	System [4]
	Registry [108]
	smss.exe [420]
	csrss.exe [648]
	wininit.exe [756]
	csrss.exe [776]
	services.exe [836]
	lsass.exe [844]
[... truncated; full sample at ``sample.txt`` (approx. 286 more lines) ...]
```

### `cystack_68dce857`

**Attribution confidence:** `high`

**Field keys:**
`Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: AE

System Summary:
	- HWID: E731053A-B22D-D99E-79E2-6506F10A1DEE
	- OS: Windows 11
	- Architecture: x64
	- UserName: HP
	- Computer Name: DESKTOP-KCPM3RD
	- Local Time: 2026-01-19 <ip>
	- UTC: 4
	- Language: en-US
	- Keyboards: English (United States)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\Downloads\Licеnce.Lоadеr(РA$$.- 2025)\Licence_Version_Loader.exe
	- CPU: 12th Gen Intel(R) Core(TM) i5-1235U
	- Cores: 10
	- Threads: 12
	- RAM: 16 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) Iris(R) Xe Graphics
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) Iris(R) Xe Graphics

Process count: 408
Process List: 
	[System Process] [0]
	System [4]
	Secure System [188]
	Registry [232]
	smss.exe [724]
	csrss.exe [744]
	wininit.exe [1056]
	csrss.exe [1064]
	winlogon.exe [1156]
[... truncated; full sample at ``sample.txt`` (approx. 425 more lines) ...]
```

### `cystack_6afce0a1`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Network Info`, `Process List`, `System Summary`, `User Agents`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: BD

System Summary:
	- HWID: FB25AF6279E5845770397
	- OS: Windows 10 Home Single Language
	- Architecture: x64
	- UserName: HUAWEI
	- Computer Name: LAPTOP-IQN95I2F
	- Local Time: 2024/3/18 <ip>
	- UTC: 6
	- Language: en-US
	- Keyboards: English (United States)
	- Laptop: TRUE
	- Running Path: C:\Users\<user>\Mp3tag.exe
	- CPU: 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz
	- Cores: 4
	- Threads: 8
	- RAM: 7991 MB
	- Display Resolution: 1920x1080
	- GPU:
		-Intel(R) Iris(R) Xe Graphics
		-Intel(R) Iris(R) Xe Graphics
		-Intel(R) Iris(R) Xe Graphics
		-Intel(R) Iris(R) Xe Graphics
		-Virtual Display Device

User Agents:
	Google Chrome - Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.129 Safari/537.36

Installed Apps:
All Users:
	Adobe Creative Cloud - <ip>
	Adobe Genuine Service - <ip>
	Avro Keyboard 5.6.0 - 5.6.0
	Brave - <ip>
	Link Now - <ip>
	FastStone Image Viewer 7.7 - 7.7
	Google Chrome - 122.0.6261.129
[... truncated; full sample at ``sample.txt`` (approx. 295 more lines) ...]
```

### `cystack_771cd779`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Installed Apps`, `Network Info`, `Process Count`, `Process List`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: CH

System Summary:
	- HWID: 11FBE7D8-EE9C-6B37-65E4-3F27DBCF7F1C
	- OS: Unknown
	- Architecture: x64
	- UserName: system
	- Computer Name: DEPT-OPS-v2lsU
	- Local Time: 2026-01-24  <ip>
	- UTC: +05
	- Language: 7194
	- Keyboards: English (United States)
	- Laptop: TRUE
	- Running Path: C:\Users\<user>\Download\nxw.exe
	- CPU: Intel(R) Core(TM) i7-6500U CPU @ 2.50GHz
	- Cores: 6
	- Threads: 3
	- RAM: 20 GB GB
	- Display Resolution: 1200x700
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Microsoft Basic Display Adapter
			Resolution: 1200x700
			Color Depth: 32 bits per pixel
		Monitor 2
			Device Name: \\.\DISPLAY2
			Device String: Microsoft Basic Display Adapter
			Resolution: 1200x700
			Color Depth: 32 bits per pixel

Process Count: 96
Process List:
	System [4]
	wininit.exe [48087]
	explorer.exe [30567]
	winlogon.exe [23394]
	smss.exe [71503]
	csrss.exe [90551]
[... truncated; full sample at ``sample.txt`` (approx. 203 more lines) ...]
```

### `cystack_7a8ccb6e`

**Attribution confidence:** `high`

**Field keys:**
`Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AE

System Summary:
	- HWID: 67EF455A-D38D-68BE-D902-C526512A7D0E
	- OS: Windows 11
	- Architecture: x64
	- UserName: ryocg
	- Computer Name: YOGI-PC
	- Local Time: 2026-01-20 <ip>
	- UTC: 4
	- Language: en-AE
	- Keyboards: English (United States) / English (United States)
	- Laptop: TRUE
	- Running Path: C:\Windows\SysWOW64\rundll32.exe
	- CPU: Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz
	- Cores: 6
	- Threads: 12
	- RAM: 16 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) UHD Graphics
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) UHD Graphics
		-NVIDIA GeForce GTX 1650 Ti

Process count: 292
Process List: 
	[System Process] [0]
	System [4]
	Registry [224]
	smss.exe [700]
	csrss.exe [880]
	wininit.exe [1120]
	services.exe [1196]
	lsass.exe [1204]
[... truncated; full sample at ``sample.txt`` (approx. 338 more lines) ...]
```

### `cystack_7a949b1d`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AE

System Summary:
	- HWID: 634B8C8B-15A8-70E7-9C63-F0FFA4BBB897
	- OS: Windows 11
	- Architecture: x64
	- UserName: LORIS
	- Computer Name: LUNA
	- Local Time: 2026-01-06 <ip>
	- UTC: 3
	- Language: en-US
	- Keyboards: English (United States) / Persian (Iran)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\Downloads\Fling-Standalone28.006.71710\Fling-Standalone58.594.1518.exe
	- CPU: 12th Gen Intel(R) Core(TM) i5-12400F
	- Cores: 6
	- Threads: 12
	- RAM: 32 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: NVIDIA GeForce RTX 3070
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-NVIDIA GeForce RTX 3070

Process count: 189
Process List: 
	[System Process] [0]
	System [4]
	Secure System [140]
	Registry [200]
	smss.exe [688]
	csrss.exe [964]
	wininit.exe [892]
	services.exe [816]
	LsaIso.exe [908]
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_a867f3f5`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AF

System Summary:
	- HWID: 096622BC-BCC3-D010-5FC4-1BD8F74CF320
	- OS: Windows 10
	- Architecture: x64
	- UserName: musa
	- Computer Name: DESKTOP-DLPN2HM
	- Local Time: 2026-01-20 <ip>
	- UTC: -8
	- Language: en-US
	- Keyboards: English (United States)
	- Laptop: TRUE
	- Running Path: C:\Windows\SysWOW64\explorer.exe
	- CPU: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
	- Cores: 4
	- Threads: 8
	- RAM: 16 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) UHD Graphics 620
			Resolution: 1366x768
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) UHD Graphics 620

Process count: 172
Process List: 
	[System Process] [0]
	System [4]
	Registry [124]
	smss.exe [408]
	csrss.exe [576]
	wininit.exe [748]
	csrss.exe [756]
	winlogon.exe [852]
	services.exe [892]
[... truncated; full sample at ``sample.txt`` (approx. 176 more lines) ...]
```

### `cystack_b7b299ef`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: BD

System Summary:
	- HWID: FEC9B946-12B1-0B4A-DD2E-A9F21596211A
	- OS: Windows 11
	- Architecture: x64
	- UserName: User
	- Computer Name: ADI-JOD444
	- Local Time: 2026-01-10 <ip>
	- UTC: -8
	- Language: en-UG
	- Keyboards: English (United States)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\Downloads\Licеnce.Lоadеr(РA$$.- 2025)\Licence_Version_Loader.exe
	- CPU: Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz
	- Cores: 6
	- Threads: 12
	- RAM: 8 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) UHD Graphics 630
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) UHD Graphics 630

Process count: 97
Process List: 
	[System Process] [0]
	System [4]
	Registry [172]
	smss.exe [652]
	csrss.exe [788]
	wininit.exe [880]
	csrss.exe [888]
	services.exe [960]
	winlogon.exe [988]
[... truncated; full sample at ``sample.txt`` (approx. 116 more lines) ...]
```

### `cystack_da422d08`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Installed Apps`, `Network Info`, `System Summary`, `User Agents`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
[... 3 blank lines ...]
Network Info:
	- IP: <ip>
	- Country: CA

System Summary:
	- HWID: FFB47EE1415A1361495298
	- OS: Windows 10 Home
	- Architecture: x64
	- UserName: joyal
	- Computer Name: JOYAL
	- Local Time: 2024/5/10 <ip>
	- UTC: -4
	- Language: en-US
	- Keyboards: English (Canada) / English (United States)
	- Laptop: TRUE
	- Running Path: C:\Users\<user>\Downloads\Telegram Desktop\EA FC 24\EA FC 24\EA FC 24.exe
	- CPU: 11th Gen Intel(R) Core(TM) i5-11400H @ 2.70GHz
	- Cores: 6
	- Threads: 12
	- RAM: 16021 MB
	- Display Resolution: 1536x864
	- GPU:
		-Intel(R) UHD Graphics
		-Intel(R) UHD Graphics
		-Intel(R) UHD Graphics
		-Intel(R) UHD Graphics
		-NVIDIA GeForce RTX 3050 Laptop GPU

User Agents:
	Google Chrome - Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.158 Safari/537.36

Installed Apps:
All Users:
	Adobe Creative Cloud - <ip>
	Bandicam MPEG-1 Decoder
	Google Chrome - 124.0.6367.158
	Sage 50 Accounting Version 2023 - 30.00.1001
	Microsoft Edge - 124.0.2478.80
	Microsoft Edge Update - <ip>
[... truncated; full sample at ``sample.txt`` (approx. 420 more lines) ...]
```

### `cystack_e460e932`

**Attribution confidence:** `high`

**Field keys:**
`Installed Apps`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: BD

System Summary:
	- HWID: 226155E7-509C-5563-F0FF-A4BBB8972C93
	- OS: Windows 10
	- Architecture: x64
	- UserName: FAIZA
	- Computer Name: DESKTOP-NSK1QK1
	- Local Time: 2026-01-19 <ip>
	- UTC: -8
	- Language: en-US
	- Keyboards: English (United States)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\Downloads\Licеnce.Lоadеr(РA$$.- 2025)\Licence_Version_Loader.exe
	- CPU: Intel(R) Core(TM) i3-2350M CPU @ 2.30GHz
	- Cores: 2
	- Threads: 4
	- RAM: 8 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) HD Graphics 3000
			Resolution: 1366x768
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) HD Graphics 3000

Process count: 187
Process List: 
	[System Process] [0]
	System [4]
	Registry [100]
	smss.exe [368]
	csrss.exe [496]
	wininit.exe [620]
	csrss.exe [628]
	winlogon.exe [720]
	services.exe [764]
[... truncated; full sample at ``sample.txt`` (approx. 310 more lines) ...]
```

## Detection

Distinctive sectioned layout with `Network Info:` and
`System Summary:` parent headers and tab-indented field lines.
Distributed via multiple Telegram resellers; the
`@stealerboss` channel is one of the larger redistributors.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://www.zscaler.com/blogs/security-research/i-stealc-you-tracking-rapid-changes-stealc
- https://mssplab.github.io/threat-hunting/2023/11/23/malware-analysis-stealc-2.html
