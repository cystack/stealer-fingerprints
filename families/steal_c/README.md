# StealC

StealC info-stealer logs. Writes a sectioned `system_info.txt`
with header lines like `Network Info:`, `System Summary:`, and
tab-indented `- Key: Value` records under each. First documented
in early 2023, StealC has remained an active commodity stealer
with the v2 rewrite tracked through 2024.

**Also known as:** `StealC v1`, `StealC v2`

**Variants observed:** 37
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- FTP, email, VPN, RDP client configs
- Discord and Telegram session data
- Custom file grabber configurable per-build

## Variants

### `cystack_0092c07b`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Current User`, `Device Name`, `Device String`, `Installed Apps`, `MTA`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- Country: BR
System Summary:
- HWID: 3B3843C8-CC47-86BC-C310-5FC41BD8F74C
- OS: Windows 10
- Architecture: x64
- UserName: Pichau
- Computer Name: DESKTOP-BEHLR5Q
- Local Time: 2025-05-20 <ip>
- UTC: -3
- Language: pt-BR
- Keyboards: Português (Brasil)
- Laptop: FALSE
- Running Path: C:\Users\<user>\Downloads\QuantumHacks\QuantumHacks\QuantumLoader v3.82.exe
- CPU: Intel(R) Core(TM) i3-8100T CPU @ 3.10GHz
- Cores: 4
- Threads: 4
- RAM: 16 GB
- Display Resolution:
Device Name: \\.\DISPLAY1
Device String: Radeon RX550/550 Series
Resolution: 1024x768
Color Depth: 32 bits per pixel
- GPU:
Process count: 141
Process List:
[System Process] [0]
System [4]
Registry [108]
smss.exe [448]
csrss.exe [636]
wininit.exe [776]
csrss.exe [784]
services.exe [848]
lsass.exe [856]
svchost.exe [980]
fontdrvhost.exe [1008]
svchost.exe [500]
svchost.exe [708]
winlogon.exe [368]
[... truncated; full sample at ``sample.txt`` (approx. 163 more lines) ...]
```

### `cystack_067d56e3`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Device Name`, `Device String`, `Installed Apps`, `Kingdom Come`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- IP: <ip>
- Country: ES
System Summary:
- HWID: EAECA037-720C-1533-E04F-148BA8E79C63
- OS: Windows 11
- Architecture: x64
- UserName: desktop
- Computer Name: DESKTOP-6QB6031
- Local Time: 2025-05-26 <ip>
- UTC: 1
- Language: es-ES
- Keyboards: Spanish (Spain, International Sort) / English (United States)
- Laptop: FALSE
- Running Path: C:\Users\<user>\AppData\Local\fdrjr7jh6466wgwtredyh5t6qehi5w5h4t39tjdakdh2juwkhu.exe
- CPU: 12th Gen Intel(R) Core(TM) i7-12700H
- Cores: 14
- Threads: 20
- RAM: 32 GB
- Display Resolution:
Monitor 1
Device Name: \\.\DISPLAY1
Device String: NVIDIA GeForce RTX 3080
Resolution: 3840x2160
Color Depth: 32 bits per pixel
- GPU:
-NVIDIA GeForce RTX 3080
Process count: 190
Process List:
[System Process] [0]
System [4]
Registry [320]
smss.exe [860]
csrss.exe [1084]
wininit.exe [1180]
services.exe [1256]
lsass.exe [1276]
svchost.exe [1408]
WUDFHost.exe [1440]
fontdrvhost.exe [1448]
[... truncated; full sample at ``sample.txt`` (approx. 355 more lines) ...]
```

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

### `cystack_1f8e4d74`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Installed Apps`, `Network Info`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```


Network Info:
	- IP: <ip>
	- Country: AR

System Summary:
	- HWID: 8BZGZEW2EO397UH6UFIHLX
	- OS: Windows 8.1 Single Language
	- Architecture: x64
	- UserName: pc
	- Computer Name: EXO
	- Local Time: 2025/7/9 <ip>
	- UTC: -3
	- Language: en-US
	- Keyboards: Espa?ol (Espa?a, internacional)
	- Laptop: FALSE
	- Running Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\BRADLOGS.exe
	- CPU: Intel(R) Core(TM) i7-4790S CPU @ 3.20GHz
	- Cores: 4
	- Threads: 8
	- RAM: 8061 MB
	- Display Resolution: 1920x1080
	- GPU:
		-Intel(R) HD Graphics 4600

Installed Apps:
All Users:
	Microsoft Edge - <ip>
	WebView2 Runtime de Microsoft Edge - 109.0.1518.140
	Microsoft Office Professional Plus 2010 - 14.0.7015.1000
	Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.21005 - 12.0.21005
	Java 8 Update 101 - 8.0.1010.13
	Java 8 Update 91 - <ip>
	Java Auto Updater - <ip>
	Microsoft Visual C++ 2022 X86 Minimum Runtime - 14.42.34438 - 14.42.34438
	Microsoft Visual C++ 2005 Redistributable - 8.0.61001
	Realtek Ethernet Controller Driver - 8.31.423.2014
	Microsoft Office Professional Plus 2010 - 14.0.7015.1000
	Security Update for Microsoft Office 2010 (KB2956063) 32-Bit Edition
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_2301cf8a`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Device Name`, `Device String`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- IP: <ip>
System Summary:
- HWID: F891CA52-7235-31F6-417A-EDDE39222546
- OS: Windows 11
- Architecture: x64
- UserName: wathu
- Computer Name: DESKTOP-APCQR2V
- Local Time: 2025-05-20 <ip>
- UTC: 1
- Language: fr-BE
- Keyboards: Français (France) / Anglais (États-Unis)
- Laptop: FALSE
- Running Path: C:\Users\<user>\Downloads\QuantumHacks\QuantumLoader v3.82.exe
- CPU: AMD Ryzen 5 5600 6-Core Processor
- Cores: 6
- Threads: 12
- RAM: 16 GB
- Display Resolution:
Device Name: \\.\DISPLAY1
Device String: NVIDIA GeForce RTX 4060 Ti
Resolution: 1920x1080
Color Depth: 32 bits per pixel
- GPU:
Process count: 201
Process List:
[System Process] [0]
System [4]
Secure System [188]
Registry [232]
smss.exe [688]
csrss.exe [952]
wininit.exe [716]
csrss.exe [712]
services.exe [956]
LsaIso.exe [1040]
lsass.exe [1048]
winlogon.exe [1120]
svchost.exe [1252]
fontdrvhost.exe [1284]
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_27cecfc2`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Channel with contacts`, `Commission split`, `Current User`, `Installed Apps`, `Network Info`, `System Summary`, `Telegram`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```

ㅤ______     ______   ______     ______     __         ______
/\  ___\   /\__  _\ /\  ___\   /\  __ \   /\ \       /\  ___\
\ \___  \  \/_/\ \/ \ \  __\   \ \  __ \  \ \ \____  \ \ \____
 \/\_____\    \ \_\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_____\
  \/_____/     \/_/   \/_____/   \/_/\/_/   \/_____/   \/_____/

                       stealc stealer

powerful native stealer based on C lang

forum topics:
	- <url>
	- <url>

buy:
	- jabber: <email>
        - tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538

----------------------------------------------------------------

.--------------. .--------------. .--------------. .--------------. .--------------. 
| ____    ____ | |      __      | |     _____    | |  _________   | |  _________   | 
||_   \  /   _|| |     /  \     | |    |_   _|   | | |_   ___  |  | | |_   ___  |  | 
|  |   \/   |  | |    / /\ \    | |      | |     | |   | |_  \_|  | |   | |_  \_|  | 
|  | |\  /| |  | |   / ____ \   | |      | |     | |   |  _|      | |   |  _|  _   | 
| _| |_\/_| |_ | | _/ /    \ \_ | |     _| |_    | |  _| |_       | |  _| |___/ |  | 
||_____||_____|| ||____|  |____|| |    |_____|   | | |_____|      | | |_________|  | 
|              | |              | |              | |              | |              | 
'--------------' '--------------' '--------------' '--------------' '--------------' 
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)

• We have been withdrawing cryptocurrency from logs for over 4 years, with a total amount withdrawn exceeding $15.000.000
• Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
• In addition to manual work, we use a powerful ML model we created and trained as an auxiliary tool. It has been trained on over 1.000.000 logs, allowing us to speed up the process and improve the accuracy of password cracking.

[... truncated; full sample at ``sample.txt`` (approx. 423 more lines) ...]
```

### `cystack_28e64ef1`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Channel with contacts`, `Commission split`, `Current User`, `Installed Apps`, `Network Info`, `System Summary`, `Telegram`, `User Agents`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```

 ______     ______   ______     ______     __         ______
/\  ___\   /\__  _\ /\  ___\   /\  __ \   /\ \       /\  ___\
\ \___  \  \/_/\ \/ \ \  __\   \ \  __ \  \ \ \____  \ \ \____
 \/\_____\    \ \_\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_____\
  \/_____/     \/_/   \/_____/   \/_/\/_/   \/_____/   \/_____/

                       stealc stealer

powerful native stealer based on C lang

forum topics:
	- <url>
	- <url>

buy:
	- jabber: <email>
        - tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538

----------------------------------------------------------------

.--------------. .--------------. .--------------. .--------------. .--------------. 
| ____    ____ | |      __      | |     _____    | |  _________   | |  _________   | 
||_   \  /   _|| |     /  \     | |    |_   _|   | | |_   ___  |  | | |_   ___  |  | 
|  |   \/   |  | |    / /\ \    | |      | |     | |   | |_  \_|  | |   | |_  \_|  | 
|  | |\  /| |  | |   / ____ \   | |      | |     | |   |  _|      | |   |  _|  _   | 
| _| |_\/_| |_ | | _/ /    \ \_ | |     _| |_    | |  _| |_       | |  _| |___/ |  | 
||_____||_____|| ||____|  |____|| |    |_____|   | | |_____|      | | |_________|  | 
|              | |              | |              | |              | |              | 
'--------------' '--------------' '--------------' '--------------' '--------------' 
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)

â¢ We have been withdrawing cryptocurrency from logs for over 4 years, with a total amount withdrawn exceeding $15.000.000
â¢ Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
â¢ In addition to manual work, we use a powerful ML model we created and trained as an auxiliary tool. It has been trained on over 1.000.000 logs, allowing us to speed up the process and improve the accuracy of password cracking.

[... truncated; full sample at ``sample.txt`` (approx. 343 more lines) ...]
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

### `cystack_2f35dc10`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Installed Apps`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    672]
	CCleaner.exe [10580]
	explorer.exe [11252]
	svchost.exe [14564]
	StartMenuExperienceHost.exe [132]
	nvWmi64.exe [13772]
	RAVBg64.exe [9480]
	RuntimeBroker.exe [14940]
	SearchApp.exe [18460]
	RuntimeBroker.exe [27596]
	svchost.exe [27164]
	svchost.exe [24864]
	ctfmon.exe [14420]
	LockApp.exe [4676]
	RuntimeBroker.exe [8832]
	taskhostw.exe [19332]
	WUDFHost.exe [8400]
	RuntimeBroker.exe [22868]
	TextInputHost.exe [17392]
	SecurityHealthSystray.exe [27212]
	RAVCpl64.exe [3452]
	ACDSeeCommanderUltimate18.exe [15844]
	uTorrent.exe [14704]
	utorrentie.exe [9476]
	utorrentie.exe [17256]
	AdobeCollabSync.exe [10364]
	msedgewebview2.exe [21884]
	AdobeCollabSync.exe [9088]
	msedgewebview2.exe [12488]
	msedgewebview2.exe [2204]
	msedgewebview2.exe [12744]
	msedgewebview2.exe [10424]
	msedgewebview2.exe [10764]
	msedgewebview2.exe [9556]
	CompPkgSrv.exe [28860]
	AnyDesk.exe [12156]
	helper.exe [27208]
	SearchApp.exe [5916]
	msedgewebview2.exe [12300]
	msedgewebview2.exe [6508]
[... truncated; full sample at ``sample.txt`` (approx. 135 more lines) ...]
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

### `cystack_361f1a5b`

**Attribution confidence:** `high`

**Field keys:**
`Network Info`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```

***********************************************
*         _   _   _   _   _   _   _           *
*        / \ / \ / \ / \ / \ / \ / \          *
*       ( O | T | T | O | M | A | N )         *
*        \_/ \_/ \_/ \_/ \_/ \_/ \_/          *
*                                             *
*  Telegram : <url>  *
***********************************************

│    [  CLÓUD @OttoSup - Buy daily fresh logs @OttoSup - Buy daily fresh logsuy daily fresh logs ]     [ SUPPORT - @OttoSup - Buy daily fresh logs Buy daily fresh logs ]                          │
[... 3 blank lines ...]
│    [  CLÓUD @OttoSup - Buy daily fresh logs @OttoSup - Buy daily fresh logsuy daily fresh logs ]     [ SUPPORT - @OttoSup - Buy daily fresh logs Buy daily fresh logs ]                          │

  >=>>=>   >==>    >=>       >>       >===>>=====>     >=>    >=>    >=>          >>               
>=>    >=> >> >=>  >=>      >>=>           >=>      >=>   >=> >=>    >=>        >=>>=>             
 >=>       >=> >=> >=>     >> >=>          >=>     >=>        >=>    >=>       >=>                 
   >=>     >=>  >=>>=>    >=>  >=>         >=>     >=>        >=====>>=>        >==>               
      >=>  >=>   > >=>   >=====>>=>        >=>     >=>        >=>    >=>       >=>                 
>=>    >=> >=>    >>=>  >=>      >=>       >=>      >=>   >=> >=>    >=>        >=>>=>             
  >=>>=>   >=>     >=> >=>        >=>      >=>        >===>   >=>    >=>          >>               
                                                                                                   
>=>    >=> >=>     >=> >=>>=>                                                                      
>=>    >=> >=>     >=> >>   >=>                                                                    
>=>    >=> >=>     >=> >>    >=>                                                                   
>=====>>=> >=>     >=> >==>>=>                                                                     
[... truncated; full sample at ``sample.txt`` (approx. 397 more lines) ...]
```

### `cystack_4b30cd7a`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Device Name`, `Device String`, `Installed Apps`, `MTA`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
System Summary:
- HWID: 7A1434DB-4118-9EB7-8CB3-60CF940B2867
- OS: Windows 11
- Architecture: x64
- UserName: Usuario
- Computer Name: DESKTOP-QUI1CNM
- Local Time: 2025-05-19 <ip>
- UTC: -3
- Language: pt-BR
- Keyboards: Português (Brasil) / Português (Brasil)
- Laptop: FALSE
- Running Path: C:\Users\<user>\AppData\Local\Temp\Rar$EXb13440.1669.rartemp\QuantumHacks\QuantumLoader v3.82.exe
- CPU: AMD Ryzen 5 4600G with Radeon Graphics
- Cores: 6
- Threads: 12
- RAM: 15 GB
- Display Resolution:
Device Name: \\.\DISPLAY1
Device String: AMD Radeon(TM) Graphics
Resolution: 1920x1080
Color Depth: 32 bits per pixel
- GPU:
-AMD Radeon(TM) Graphics
Process count: 186
Process List:
[System Process] [0]
System [4]
Registry [172]
smss.exe [632]
csrss.exe [884]
wininit.exe [1016]
csrss.exe [376]
services.exe [1028]
winlogon.exe [1060]
lsass.exe [1120]
svchost.exe [1248]
fontdrvhost.exe [1276]
fontdrvhost.exe [1284]
svchost.exe [1384]
[... truncated; full sample at ``sample.txt`` (approx. 233 more lines) ...]
```

### `cystack_51a2d2fa`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Device Name`, `Device String`, `Imperator`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- IP: <ip>
- Country: BE
System Summary:
- HWID: 277ED79D-C56E-1069-32D5-D6E15A8DBED9
- OS: Windows 11
- Architecture: x64
- UserName: idris
- Computer Name: WO6YE2LD
- Local Time: 2025-05-22 <ip>
- UTC: 1
- Language: fr-BE
- Keyboards: Français (France) / Français (France)
- Laptop: FALSE
- Running Path: C:\Users\<user>\AppData\Local\Temp\tgihtesi1d2tdr5894qu1eywgkgu2aii9feqe7ktie3hejt663.exe
- CPU: AMD Ryzen 7 5800X 8-Core Processor
- Cores: 8
- Threads: 16
- RAM: 32 GB
- Display Resolution:
Monitor 1
Device Name: \\.\DISPLAY1
Device String: AMD Radeon RX 6700 XT
Resolution: 3840x1200
Color Depth: 32 bits per pixel
- GPU:
-AMD Radeon RX 6700 XT
Process count: 159
Process List:
[System Process] [0]
System [4]
Registry [204]
smss.exe [644]
csrss.exe [980]
wininit.exe [1088]
csrss.exe [1096]
services.exe [1192]
winlogon.exe [1200]
lsass.exe [1264]
svchost.exe [1392]
[... truncated; full sample at ``sample.txt`` (approx. 213 more lines) ...]
```

### `cystack_5b246782`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Device Name`, `Device String`, `Installed Apps`, `Microsoft Age of Empires II`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- IP: <ip>
- Country: HR
System Summary:
- HWID: 726DBAC8-E947-C5BC-C310-5FC41BD8F74C
- OS: Windows 10
- Architecture: x64
- UserName: mcepu
- Computer Name: DESKTOP-7PF5044
- Local Time: 2025-06-08 <ip>
- UTC: 1
- Language: hr-HR
- Keyboards: Croatian (Croatia) / English (United States)
- Laptop: FALSE
- Running Path: C:\ProgramData\driver1.exe
- CPU: AMD Ryzen 3 2200G with Radeon Vega Graphics
- Cores: 4
- Threads: 4
- RAM: 7 GB
- Display Resolution:
Monitor 1
Device Name: \\.\DISPLAY1
Device String: AMD Radeon(TM) Vega 8 Graphics
Resolution: 1680x1050
Color Depth: 32 bits per pixel
- GPU:
-AMD Radeon(TM) Vega 8 Graphics
Process count: 183
Process List:
[System Process] [0]
System [4]
Registry [108]
smss.exe [928]
csrss.exe [892]
wininit.exe [1108]
services.exe [1256]
lsass.exe [1264]
svchost.exe [1396]
fontdrvhost.exe [1428]
svchost.exe [1524]
[... truncated; full sample at ``sample.txt`` (approx. 252 more lines) ...]
```

### `cystack_678bd448`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Channel with contacts`, `Commission split`, `Current User`, `Installed Apps`, `Network Info`, `Process List`, `System Summary`, `Telegram`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```

ㅤ______     ______   ______     ______     __         ______
/\  ___\   /\__  _\ /\  ___\   /\  __ \   /\ \       /\  ___\
\ \___  \  \/_/\ \/ \ \  __\   \ \  __ \  \ \ \____  \ \ \____
 \/\_____\    \ \_\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_____\
  \/_____/     \/_/   \/_____/   \/_/\/_/   \/_____/   \/_____/

                       stealc stealer

powerful native stealer based on C lang

forum topics:
	- <url>
	- <url>

buy:
	- jabber: <email>
        - tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538

----------------------------------------------------------------

.--------------. .--------------. .--------------. .--------------. .--------------. 
| ____    ____ | |      __      | |     _____    | |  _________   | |  _________   | 
||_   \  /   _|| |     /  \     | |    |_   _|   | | |_   ___  |  | | |_   ___  |  | 
|  |   \/   |  | |    / /\ \    | |      | |     | |   | |_  \_|  | |   | |_  \_|  | 
|  | |\  /| |  | |   / ____ \   | |      | |     | |   |  _|      | |   |  _|  _   | 
| _| |_\/_| |_ | | _/ /    \ \_ | |     _| |_    | |  _| |_       | |  _| |___/ |  | 
||_____||_____|| ||____|  |____|| |    |_____|   | | |_____|      | | |_________|  | 
|              | |              | |              | |              | |              | 
'--------------' '--------------' '--------------' '--------------' '--------------' 
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)

• We have been withdrawing cryptocurrency from logs for over 4 years, with a total amount withdrawn exceeding $15.000.000
• Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
• In addition to manual work, we use a powerful ML model we created and trained as an auxiliary tool. It has been trained on over 1.000.000 logs, allowing us to speed up the process and improve the accuracy of password cracking.

[... truncated; full sample at ``sample.txt`` (approx. 348 more lines) ...]
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

### `cystack_7ecc3719`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Channel with contacts`, `Commission split`, `Current User`, `Installed Apps`, `Network Info`, `Process List`, `System Summary`, `Telegram`, `User Agents`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
powerful native stealer based on C lang
forum topics:
- jabber: <email>
- tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)
â¢ Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
Commission split: 70/30 in your favor
Wallets accepted with a balance of at least $10.000
Telegram: @m2fa_brute
Channel with contacts: @maife2fa
<url> | (3 BTC DEP)
<url> | (2 BTC DEP)
<url> | (2.000$ DEP)
Network Info:
- Country: BR
System Summary:
- HWID: E9BCF30F89543207603164
- OS: Windows 10 Pro
- Architecture: x64
- UserName: joao
- Computer Name: DESKTOP-V4981QE
- Local Time: 2025/3/14 <ip>
- UTC: -3
- Language: pt-BR
- Keyboards: Português (Brasil)
- Laptop: FALSE
- Running Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe
- CPU: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
- Cores: 4
- Threads: 4
- RAM: 8068 MB
- Display Resolution: 1280x1024
- GPU:
-Intel(R) HD Graphics
-Intel(R) HD Graphics
-Intel(R) HD Graphics
User Agents:
Google Chrome - Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.6998.89 Safari/537.36
Installed Apps:
All Users:
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_8a9e646a`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Call of Duty`, `Color Depth`, `Device Name`, `Device String`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- Country: PK
System Summary:
- HWID: 877BACE3-8170-6A7F-243B-3817AC13802F
- OS: Windows 10
- Architecture: x64
- UserName: ASAD ARSLAN
- Computer Name: DESKTOP-2U5QJQJ
- Local Time: 2025-05-20 <ip>
- UTC: 5
- Language: en-US
- Keyboards: English (United States)
- Laptop: FALSE
- Running Path: C:\Users\<user>\AppData\Local\Temp\Rar$EXb9620.32820\QuantumHacks\QuantumLoader v3.82.exe
- CPU: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
- Cores: 4
- Threads: 4
- RAM: 8 GB
- Display Resolution:
Device Name: \\.\DISPLAY1
Device String: NVIDIA Quadro K620
Resolution: 1600x900
Color Depth: 32 bits per pixel
- GPU:
Process count: 192
Process List:
[System Process] [0]
System [4]
Registry [108]
smss.exe [404]
csrss.exe [584]
wininit.exe [672]
csrss.exe [684]
services.exe [748]
lsass.exe [764]
winlogon.exe [820]
svchost.exe [972]
fontdrvhost.exe [996]
fontdrvhost.exe [1000]
svchost.exe [8]
[... truncated; full sample at ``sample.txt`` (approx. 339 more lines) ...]
```

### `cystack_9adca1a9`

**Attribution confidence:** `high`

**Field keys:**
`Color Depth`, `Device Name`, `Device String`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- Country: DZ
System Summary:
- HWID: 20757F7C-F903-26D0-9F84-5B98370C33E0
- OS: Windows 11
- Architecture: x64
- UserName: بنادم
- Computer Name: DESKTOP-0NLUSSE
- Local Time: 2025-06-02 <ip>
- UTC: 1
- Language: en-US
- Keyboards: English (United States) / English (United States) / French (France) / Arabic (Algeria)
- Laptop: FALSE
- Running Path: C:\Users\<user>\AppData\Local\Microsoft\ryryqdg91e14awyjrrei7jrd9utka6dafh8g723dujytreyfj4.exe
- CPU: Intel(R) Core(TM) i3-6100 CPU @ 3.70GHz
- Cores: 2
- Threads: 4
- RAM: 8 GB
- Display Resolution:
Device Name: \\.\DISPLAY1
Device String: Intel(R) HD Graphics 530
Resolution: 1366x768
Color Depth: 32 bits per pixel
- GPU:
-Intel(R) HD Graphics 530
Process count: 201
Process List:
[System Process] [0]
System [4]
Registry [124]
smss.exe [496]
csrss.exe [816]
csrss.exe [896]
wininit.exe [920]
winlogon.exe [996]
services.exe [800]
lsass.exe [900]
svchost.exe [1060]
WUDFHost.exe [1104]
svchost.exe [1160]
[... truncated; full sample at ``sample.txt`` (approx. 223 more lines) ...]
```

### `cystack_a52d3ec9`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Channel with contacts`, `Commission split`, `Installed Apps`, `Network Info`, `System Summary`, `Telegram`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```

ㅤ______     ______   ______     ______     __         ______
/\  ___\   /\__  _\ /\  ___\   /\  __ \   /\ \       /\  ___\
\ \___  \  \/_/\ \/ \ \  __\   \ \  __ \  \ \ \____  \ \ \____
 \/\_____\    \ \_\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_____\
  \/_____/     \/_/   \/_____/   \/_/\/_/   \/_____/   \/_____/

                       stealc stealer

powerful native stealer based on C lang

forum topics:
	- <url>
	- <url>

buy:
	- jabber: <email>
        - tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538

----------------------------------------------------------------

.--------------. .--------------. .--------------. .--------------. .--------------. 
| ____    ____ | |      __      | |     _____    | |  _________   | |  _________   | 
||_   \  /   _|| |     /  \     | |    |_   _|   | | |_   ___  |  | | |_   ___  |  | 
|  |   \/   |  | |    / /\ \    | |      | |     | |   | |_  \_|  | |   | |_  \_|  | 
|  | |\  /| |  | |   / ____ \   | |      | |     | |   |  _|      | |   |  _|  _   | 
| _| |_\/_| |_ | | _/ /    \ \_ | |     _| |_    | |  _| |_       | |  _| |___/ |  | 
||_____||_____|| ||____|  |____|| |    |_____|   | | |_____|      | | |_________|  | 
|              | |              | |              | |              | |              | 
'--------------' '--------------' '--------------' '--------------' '--------------' 
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)

• We have been withdrawing cryptocurrency from logs for over 4 years, with a total amount withdrawn exceeding $15.000.000
• Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
• In addition to manual work, we use a powerful ML model we created and trained as an auxiliary tool. It has been trained on over 1.000.000 logs, allowing us to speed up the process and improve the accuracy of password cracking.

[... truncated; full sample at ``sample.txt`` (approx. 295 more lines) ...]
```

### `cystack_a7a7748a`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Channel with contacts`, `Commission split`, `Installed Apps`, `MTA`, `Network Info`, `System Summary`, `Telegram`, `User Agents`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
powerful native stealer based on C lang
forum topics:
- jabber: <email>
- tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)
â¢ Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
Commission split: 70/30 in your favor
Wallets accepted with a balance of at least $10.000
Telegram: @m2fa_brute
Channel with contacts: @maife2fa
<url> | (3 BTC DEP)
<url> | (2 BTC DEP)
<url> | (2.000$ DEP)
Network Info:
- IP: <ip>
- Country: DE
System Summary:
- HWID: B61FD3D9D0021225686314
- OS: Windows 10 Home
- Architecture: x64
- UserName: eviny
- Computer Name: DESKTOP-C9LDU22
- Local Time: 2025/3/15 <ip>
- UTC: 1
- Language: de-DE
- Keyboards: Deutsch (Deutschland)
- Laptop: FALSE
- Running Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe
- CPU: AMD Ryzen 5 3600 6-Core Processor
- Cores: 6
- Threads: 12
- RAM: 16285 MB
- Display Resolution: 1920x1080
- GPU:
User Agents:
Google Chrome - Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.6778.205 Safari/537.36
Installed Apps:
All Users:
60 Seconds <ip> - <ip>
AirDroid <ip> - <ip>
[... truncated; full sample at ``sample.txt`` (approx. 351 more lines) ...]
```

### `cystack_a7c37e02`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Detroit`, `Device Name`, `Device String`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- IP: <ip>
- Country: BR
System Summary:
- HWID: 10E686BB-65B8-1197-2C93-00AF34EBC847
- OS: Windows 10
- Architecture: x64
- UserName: elpic
- Computer Name: DESKTOP-JL66IMT
- Local Time: 2025-05-31 <ip>
- UTC: -3
- Language: pt-BR
- Keyboards: Português (Brasil)
- Laptop: FALSE
- Running Path: C:\Users\<user>\AppData\Local\Microsoft\e91st7djjs291h21f8rh14rwrt15sr5f5kfrj49wj8kq5e6gti.exe
- CPU: Intel(R) Pentium(R) CPU G4560 @ 3.50GHz
- Cores: 2
- Threads: 4
- RAM: 12 GB
- Display Resolution:
Monitor 1
Device Name: \\.\DISPLAY1
Device String: NVIDIA GeForce GTX 950
Resolution: 1920x1080
Color Depth: 32 bits per pixel
- GPU:
-NVIDIA GeForce GTX 950
Process count: 169
Process List:
[System Process] [0]
System [4]
Registry [100]
smss.exe [424]
csrss.exe [604]
wininit.exe [700]
services.exe [772]
lsass.exe [780]
svchost.exe [988]
fontdrvhost.exe [1020]
svchost.exe [712]
[... truncated; full sample at ``sample.txt`` (approx. 230 more lines) ...]
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

### `cystack_aac2df00`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Color Depth`, `Current User`, `Device Name`, `Device String`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- IP: <ip>
System Summary:
- HWID: 5DDF2051-812A-D57D-0E49-D2B576C1FA6D
- OS: Windows 10
- Architecture: x64
- UserName: Xenon
- Computer Name: DESKTOP-ET58Q4F
- Local Time: 2025-05-20 <ip>
- UTC: 6
- Language: en-US
- Keyboards: English (United States)
- Laptop: FALSE
- Running Path: C:\Users\<user>\Downloads\QuantumHacks\QuantumLoader v3.82.exe
- CPU: AMD Ryzen 5 8500G w/ Radeon 740M Graphics
- Cores: 6
- Threads: 12
- RAM: 15 GB
- Display Resolution:
Device Name: \\.\DISPLAY1
Device String: Ryzen 5
Resolution: 1366x768
Color Depth: 32 bits per pixel
- GPU:
-Ryzen 5
Process count: 101
Process List:
[System Process] [0]
System [4]
Registry [148]
smss.exe [444]
csrss.exe [620]
wininit.exe [100]
csrss.exe [472]
services.exe [692]
lsass.exe [776]
svchost.exe [912]
fontdrvhost.exe [932]
svchost.exe [524]
winlogon.exe [1084]
[... truncated; full sample at ``sample.txt`` (approx. 126 more lines) ...]
```

### `cystack_b76da4f7`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Network Info`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```

**************************************************************
*                                                            *
*          ______                   _ ___  ___               *
*    ____  | ___ \                 | ||  \/  |               *
*   / __ \ | |_/ / _ __   __ _   __| || .  . |  __ _ __  __  *
*  / / _` || ___ \| '__| / _` | / _` || |\/| | / _` |\ \/ /  *
* | | (_| || |_/ /| |   | (_| || (_| || |  | || (_| | >  <   *
*  \ \__,_|\____/ |_|    \__,_| \__,_|\_|  |_/ \__,_|/_/\_\  *
*   \____/                                                   *
*                                                            *
*            Telegram: <url>        *
*                        t.me/BRADLOGS                       *
**************************************************************
Network Info:
	- IP: <ip>
	- Country: AL

System Summary:
	- HWID: RNY4VPR73GNOTX6VRJJ782
	- OS: Windows 10 Pro
	- Architecture: x64
	- UserName: user
	- Computer Name: DESKTOP-D2C695V
	- Local Time: 2025/7/9 <ip>
	- UTC: 1
	- Language: en-US
	- Keyboards: English (United States)
	- Laptop: FALSE
	- Running Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe
	- CPU: Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz
	- Cores: 4
	- Threads: 8
	- RAM: 16270 MB
	- Display Resolution: 1366x768
	- GPU:
		-Intel(R) UHD Graphics 620

Installed Apps:
All Users:
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
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

### `cystack_b8ed4e31`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Network Info`, `Process List`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```


Network Info:
	- IP: <ip>
	- Country: AE

System Summary:
	- HWID: HLEHN2R6QQUAO6J5DKONMU
	- OS: Windows 11
	- Architecture: x64
	- UserName: HP
	- Computer Name: DESKTOP-946CS9H
	- Local Time: 2025/7/13 <ip>
	- UTC: 4
	- Language: en-US
	- Keyboards: English (United States)
	- Laptop: FALSE
	- Running Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\BRADLOGS.exe
	- CPU: Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz
	- Cores: 4
	- Threads: 8
	- RAM: 8094 MB
	- Display Resolution: 1536x864
	- GPU:
		-Intel(R) UHD Graphics 620

Installed Apps:
All Users:
	Microsoft Edge - 138.0.3351.83
	Microsoft Edge WebView2 Runtime - 138.0.3351.83
	Windows TubeMate 5
	SanDisk Security - <ip>
	Microsoft Visual C++ 2010  x86 Redistributable - 10.0.30319 - 10.0.30319
	Microsoft Visual C++ 2015-2019 Redistributable (x86) - 14.28.29914 - 14.28.29914.0
	Microsoft Bing Service - <ip>
	SanDisk Security - <ip>
	Microsoft Visual C++ 2019 X86 Minimum Runtime - 14.28.29914 - 14.28.29914
	Microsoft Visual C++ 2015-2019 Redistributable (x64) - 14.28.29914 - 14.28.29914.0
	Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161 - 9.0.30729.6161
	Microsoft Visual C++ 2019 X86 Additional Runtime - 14.28.29914 - 14.28.29914
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_c06bf4de`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Channel with contacts`, `Commission split`, `Installed Apps`, `Network Info`, `System Summary`, `Telegram`, `User Agents`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
powerful native stealer based on C lang
forum topics:
buy:
- jabber: <email>
- tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)
â¢ Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
Commission split: 70/30 in your favor
Wallets accepted with a balance of at least $10.000
Telegram: @m2fa_brute
Channel with contacts: @maife2fa
<url> | (3 BTC DEP)
<url> | (2 BTC DEP)
<url> | (2.000$ DEP)
Network Info:
- IP: <ip>
- Country: SG
System Summary:
- HWID: 04B7E3A278A51915334237
- OS: Windows 11
- Architecture: x64
- UserName: Varian Tan
- Computer Name: DESKTOP-2PD7EPK
- Local Time: 2025/3/13 <ip>
- UTC: 8
- Language: en-SG
- Keyboards: English (United States) / Chinese (Simplified, China) / English (Singapore)
- Laptop: TRUE
- Running Path: C:\Users\<user>\AppData\Local\Temp\831991\Thirty.com
- CPU: Intel(R) Core(TM) i7-14700HX
- Cores: 20
- Threads: 28
- RAM: 16087 MB
- Display Resolution: 1707x960
- GPU:
-Intel(R) UHD Graphics
-Intel(R) UHD Graphics
-Intel(R) UHD Graphics
-Intel(R) UHD Graphics
User Agents:
[... truncated; full sample at ``sample.txt`` (approx. 392 more lines) ...]
```

### `cystack_d8d785c2`

**Attribution confidence:** `high`

**Field keys:**
`Color Depth`, `Device Name`, `Device String`, `Network Info`, `Process List`, `Process count`, `Resolution`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
- IP: <ip>
System Summary:
- HWID: 449F535A-6D8D-06BE-D902-C526512A7D0E
- OS: Windows 10
- Architecture: x64
- UserName: Pichau
- Computer Name: DESKTOP-M81U9SG
- Local Time: 2025-05-19 <ip>
- UTC: -3
- Language: pt-BR
- Keyboards: Português (Brasil) / Português (Brasil)
- Laptop: FALSE
- Running Path: C:\Users\<user>\Downloads\QuantumHacks\QuantumHacks\QuantumLoader v3.82.exe
- CPU: Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
- Cores: 4
- Threads: 8
- RAM: 15 GB
- Display Resolution:
Device Name: \\.\DISPLAY1
Device String: NVIDIA GeForce GT 730
Resolution: 1280x882
Color Depth: 32 bits per pixel
Device Name: \\.\DISPLAY2
Device String: NVIDIA GeForce GT 730
Resolution: 1280x1024
Color Depth: 32 bits per pixel
- GPU:
Process count: 246
Process List:
[System Process] [0]
System [4]
Registry [124]
smss.exe [436]
csrss.exe [608]
wininit.exe [816]
csrss.exe [828]
services.exe [900]
lsass.exe [908]
winlogon.exe [632]
[... truncated; full sample at ``sample.txt`` (approx. 311 more lines) ...]
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

### `cystack_e1caec1c`

**Attribution confidence:** `high`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Network Info`, `System Summary`, `User Agents`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
[... 3 blank lines ...]
Network Info:
	- IP: <ip>
	- Country: MX

System Summary:
	- HWID: F6CDC77DB40E1845150070
	- OS: Windows 10 Pro
	- Architecture: x64
	- UserName: Celex
	- Computer Name: DESKTOP-ELRN5V3
	- Local Time: 2024/8/2 <ip>
	- UTC: -6
	- Language: es-MX
	- Keyboards: Español (México)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\1000029002\7b0afc85da.exe
	- CPU: 11th Gen Intel(R) Core(TM) i5-11400 @ 2.60GHz
	- Cores: 6
	- Threads: 12
	- RAM: 16149 MB
	- Display Resolution: 1360x768
	- GPU:
		-Intel(R) UHD Graphics 730
		-Intel(R) UHD Graphics 730
		-Intel(R) UHD Graphics 730

User Agents:
	Google Chrome - Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6533.89 Safari/537.36

Installed Apps:
All Users:
	z3x shell 4.8.3
	Flip PDF Plus Pro - 4.26.19
	3uTools(32bit) - 3.02.012
	Samsung Tool PRO 45.14
	Abarrotes Punto de Venta  2.12
	Antaris Media Player 1.3.3
	AnyDesk - ad 8.0.10
	Brave - <ip>
[... truncated; full sample at ``sample.txt`` (approx. 345 more lines) ...]
```

### `cystack_e1cdaf8a`

**Attribution confidence:** `high`

**Field keys:**
`Age of Empires II`, `All Users`, `Channel with contacts`, `Commission split`, `Current User`, `Installed Apps`, `Network Info`, `Process List`, `System Summary`, `Telegram`, `WireGuard Installer`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
stealc stealer
powerful native stealer based on C lang
forum topics:
- <url>
- <url>
buy:
- jabber: <email>
- tox: 1FCCEA0D37D99894B958C0FCEAC66034FE3580B193C335745D632A19F8E6053C34DFEAAE2538
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)
• We have been withdrawing cryptocurrency from logs for over 4 years, with a total amount withdrawn exceeding $15.000.000
• Our total deposit on forums exceeds 5 BTC (over $300.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
• In addition to manual work, we use a powerful ML model we created and trained as an auxiliary tool. It has been trained on over 1.000.000 logs, allowing us to speed up the process and improve the accuracy of password cracking.
Commission split: 70/30 in your favor
Wallets accepted with a balance of at least $10.000
Telegram: @m2fa_brute
Channel with contacts: @maife2fa
<url> | (3 BTC DEP)
<url> | (2 BTC DEP)
<url> | (2.000$ DEP)
Network Info:
- IP: <ip>
- Country: ZA
System Summary:
- HWID: OV62TND8PVH9SMR3L337FM
- OS: Windows 11
- Architecture: x64
- UserName: louis
- Computer Name: LAPTOP-KHFN6VIB
- Local Time: 2025/5/28 <ip>
- UTC: 2
- Language: en-US
- Keyboards: English (South Africa) / English (United States) / English (United Kingdom) / English (Australia)
- Laptop: FALSE
- Running Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe
- CPU: Intel(R) Core(TM) i5-8300H CPU @ 2.30GHz
- Cores: 4
- Threads: 8
- RAM: 16258 MB
- Display Resolution: 1536x864
- GPU:
[... truncated; full sample at ``sample.txt`` (approx. 361 more lines) ...]
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
