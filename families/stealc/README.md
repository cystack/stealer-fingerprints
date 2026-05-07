# StealC

StealC info-stealer logs. Writes a sectioned `system_info.txt`
with header lines like `Network Info:`, `System Summary:`, and
tab-indented `- Key: Value` records under each. First documented
in early 2023, StealC has remained an active commodity stealer
with the v2 rewrite tracked through 2024.

**Also known as:** `StealC v1`, `StealC v2`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- FTP, email, VPN, RDP client configs
- Discord and Telegram session data
- Custom file grabber configurable per-build

## Variants

### `cystack_17febd38`

**Field keys:**
`Architecture`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot   <url>      Subscribe    ArtHouse
[... 28 blank lines ...]
Bot @arthouse_full_bot

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
IP: <redacted>
Country: PK
HWID: <redacted>
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 26/03/2026 <ip>
UTC: -6
Language: en-US
Keyboards: English (United States)
Laptop: TRUE
Cores: 2
Threads: 4
RAM: 4 GB
Display Resolution:
Device String: Intel(R) HD Graphics
Resolution: 1366x768
GPU:
```

### `cystack_2f93db51`

**Field keys:**
`Architecture`, `CPU`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
__________________________________________________________
|                                                                                                                                                        |
|             .d8888888b.  8888888b. 8888888 88b   d88P 8888888888 888      .d8888b.   .d8888b.  888      .d88888b.  888     888 8888888b.              |
|            d88P"   "88b 888   88b  888    88b d88P  888        888     d88P  88b d88P  88b 888     d88P" "88b 888     888 888  "88b             |
|            888  d8b  888 888    888  888     88o88P   888        888     88b.      888    888 888     888     888 888     888 888    888             |
|            888  888  888 888   d88P  888      888P    8888888    888      "888b.   888        888     888     888 888     888 888    888             |
|            888  888bd88P 8888888P"   888      d888b    888        888         "88b. 888        888     888     888 888     888 888    888             |
|            888  8888P"  888         888     d88888b   888        888           "888 888    888 888     888     888 888     888 888    888             |
|            88b.     .d8 888         888    d88P 88b  888        888     88b  d88P 88b  d88P 888     88b. .d88P 88b. .d88P 888  .d88P             |
|             "88888888P" 888       8888888 d88P   88b 8888888888 88888888 "8888P"   "8888P"  88888888 "88888P"   "88888P"  8888888P"              |
|                                                                                                                                                        |
|                                                                    JOIN OUR CHANNEL!                                                                   |
|                                                                                                                                                        |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|_________________________________________________________|

IP: <redacted>
Country: GB
HWID: <redacted>
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 26/03/2026 <ip>
UTC: -2
Language: en-GB
Keyboards: English (United Kingdom)
Laptop: TRUE
CPU: AMD Ryzen 7 4700U with Radeon Graphics
Cores: 8
Threads: 8
RAM: 15 GB
Display Resolution:
Device String: AMD Radeon(TM) Graphics
Resolution: 1920x1080
GPU:
```

### `cystack_32366ff6`

**Field keys:**
`Architecture`, `CPU`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot       @cloud_arthouse       Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 28 blank lines ...]
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
IP: <redacted>
Country: NP
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 2026-03-20 <ip>
UTC: 5
Language: en-IN
Keyboards: English (United States) / Nepali (Nepal) / Nepali (Nepal)
Laptop: TRUE
CPU: 13th Gen Intel(R) Core(TM) i7-1355U
Cores: 10
Threads: 12
RAM: 16 GB
Display Resolution:
Device String: Intel(R) Iris(R) Xe Graphics
Resolution: 1920x1080
GPU:
```

### `cystack_374303d1`

**Field keys:**
`Architecture`, `Cores`, `Device String`, `Display Resolution`, `HWID`, `Keyboards`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************
*          New subscribers here:              *
*          <url>               *
*          <url>               *
*          <url>               *
***********************************************

HWID: <redacted>
OS: Windows 11
Architecture: x32
UserName: <redacted>
Local Time: 26/03/2026 <ip>
UTC: -1
Keyboards: Saint Pierre and Miquelon (Saint Pierre and Miquelon)
Laptop: FALSE
Cores: 6
Threads: 7
RAM: 54 GB
Display Resolution:
Device String: Microsoft Basic Display Adapter
Resolution: 1920x1080
```

### `cystack_3a34a244`

**Field keys:**
`Architecture`, `CPU`, `Computer Name`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
__________________________________________________________
|                                                                                                                                                        |
|             .d8888888b.  8888888b. 8888888 88b   d88P 8888888888 888      .d8888b.   .d8888b.  888      .d88888b.  888     888 8888888b.              |
|            d88P"   "88b 888   88b  888    88b d88P  888        888     d88P  88b d88P  88b 888     d88P" "88b 888     888 888  "88b             |
|            888  d8b  888 888    888  888     88o88P   888        888     88b.      888    888 888     888     888 888     888 888    888             |
|            888  888  888 888   d88P  888      888P    8888888    888      "888b.   888        888     888     888 888     888 888    888             |
|            888  888bd88P 8888888P"   888      d888b    888        888         "88b. 888        888     888     888 888     888 888    888             |
|            888  8888P"  888         888     d88888b   888        888           "888 888    888 888     888     888 888     888 888    888             |
|            88b.     .d8 888         888    d88P 88b  888        888     88b  d88P 88b  d88P 888     88b. .d88P 88b. .d88P 888  .d88P             |
|             "88888888P" 888       8888888 d88P   88b 8888888888 88888888 "8888P"   "8888P"  88888888 "88888P"   "88888P"  8888888P"              |
|                                                                                                                                                        |
|                                                                    JOIN OUR CHANNEL!                                                                   |
|                                                                                                                                                        |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|_________________________________________________________|

IP: <redacted>
Country: IN
OS: Windows 11
Architecture: x64
UserName: <redacted>
Computer Name: <redacted>
Local Time: 2026-03-16 <ip>
UTC: 5
Language: en-US
Keyboards: English (United States) / English (India)
Laptop: FALSE
CPU: AMD Ryzen 7 7700X 8-Core Processor
Cores: 8
Threads: 16
RAM: 31 GB
Display Resolution:
Device String: NVIDIA GeForce RTX 4060
Resolution: 3840x2160
GPU:
```

### `cystack_3dbb2ef5`

**Field keys:**
`Architecture`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `IP`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 28 blank lines ...]
<url>          @arthouse_full_bot       @cloud_arthouse       Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
IP: <redacted>
Country: IN
HWID: <redacted>
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 28/03/2026 <ip>
UTC: 4
Language: en-IN
Laptop: TRUE
Cores: 4
Threads: 8
RAM: 12 GB
Display Resolution:
Device String: Intel(R) Iris(R) Xe Graphics
Resolution: 1920x1080
GPU:
```

### `cystack_3e5aeb50`

**Field keys:**
`Architecture`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 28 blank lines ...]
<url>          @arthouse_full_bot       @cloud_arthouse       Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 14 blank lines ...]
IP: <redacted>
Country: PH
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 2026-03-18 <ip>
UTC: 8
Language: en-US
Keyboards: English (United States)
Laptop: TRUE
Cores: 4
Threads: 8
RAM: 8 GB
Display Resolution:
Device String: Intel(R) Iris(R) Xe Graphics
Resolution: 1920x1080
GPU:
```

### `cystack_5a3cdc62`

**Field keys:**
`Architecture`, `Cores`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************
*          New subscribers here:              *
*          <url>               *
*          <url>               *
*          <url>               *
***********************************************

HWID: <redacted>
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 27/03/2026 <ip>
UTC: 7
Language: en-US
Keyboards: English (United States)
Laptop: FALSE
Cores: 6
Threads: 6
RAM: 16 GB
Display Resolution:
Device String: Intel(R) UHD Graphics 630
Resolution: 1920x1080
GPU:
```

### `cystack_769e0ade`

**Field keys:**
`Architecture`, `Computer Name`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `Path`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
__________________________________________________________
|                                                                                                                                                        |
|             .d8888888b.  8888888b. 8888888 88b   d88P 8888888888 888      .d8888b.   .d8888b.  888      .d88888b.  888     888 8888888b.              |
|            d88P"   "88b 888   88b  888    88b d88P  888        888     d88P  88b d88P  88b 888     d88P" "88b 888     888 888  "88b             |
|            888  d8b  888 888    888  888     88o88P   888        888     88b.      888    888 888     888     888 888     888 888    888             |
|            888  888  888 888   d88P  888      888P    8888888    888      "888b.   888        888     888     888 888     888 888    888             |
|            888  888bd88P 8888888P"   888      d888b    888        888         "88b. 888        888     888     888 888     888 888    888             |
|            888  8888P"  888         888     d88888b   888        888           "888 888    888 888     888     888 888     888 888    888             |
|            88b.     .d8 888         888    d88P 88b  888        888     88b  d88P 88b  d88P 888     88b. .d88P 88b. .d88P 888  .d88P             |
|             "88888888P" 888       8888888 d88P   88b 8888888888 88888888 "8888P"   "8888P"  88888888 "88888P"   "88888P"  8888888P"              |
|                                                                                                                                                        |
|                                                                    JOIN OUR CHANNEL!                                                                   |
|                                                                                                                                                        |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|_________________________________________________________|

IP: <redacted>
Country: IN
OS: Windows 11
Architecture: x64
UserName: <redacted>
Computer Name: <redacted>
Local Time: 2026-03-19 <ip>
UTC: 5
Language: en-IN
Keyboards: English (India) / English (United States) / English (United Kingdom)
Laptop: TRUE
Path: <redacted>
Cores: 2
Threads: 4
RAM: 8 GB
Display Resolution:
Device String: Intel(R) HD Graphics 620
Resolution: 1920x1080
GPU:
```

### `cystack_7a8ccb6e`

**Field keys:**
`Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 28 blank lines ...]
<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
Network Info:
	- IP: <ip>
	- Country: PL
System Summary:
	- OS: Windows 11
	- Architecture: x64
	- UserName: nvoth
	- Local Time: 2026-01-29 <ip>
	- UTC: 1
	- Language: en-US
	- Keyboards: Polish (Poland) / English (United States) / English (United States)
	- Laptop: FALSE
	- CPU: AMD Ryzen 5 5600 6-Core Processor              
	- Cores: 6
	- Threads: 12
	- RAM: 16 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLA1
			Device String: NVIDIA GeForce GTX 1660
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
		Monitor 2
			Device Name: \\.\DISPLA2
			Device String: NVIDIA GeForce GTX 1660
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-NVIDIA GeForce GTX 1660
Process count: 192
Process List: 
	[System Process] [0]
	System [4]
	Registry [224]
	smss.exe [792]
	csrss.exe [780]
	wininit.exe [1096]
	csrss.exe [1104]
	services.exe [1184]
	winlogon.exe [1212]
	lsass.exe [1260]
	svchost.exe [1404]
	fontdrvhost.exe [1440]
	fontdrvhost.exe [1436]
	svchost.exe [1532]
	dwm.exe [1624]
	svchost.exe [1720]
	svchost.exe [1728]
	svchost.exe [1788]
	svchost.exe [1956]
	svchost.exe [1988]
	svchost.exe [2016]
	svchost.exe [1576]
	NVDisplay.Container.exe [2192]
	svchost.exe [2252]
	svchost.exe [2412]
	svchost.exe [2468]
	Memory Compression [2476]
	svchost.exe [2628]
	svchost.exe [2700]
	svchost.exe [2708]
	spoolsv.exe [2864]
	svchost.exe [2936]
	svchost.exe [2972]
	svchost.exe [2768]
	svchost.exe [2104]
	svchost.exe [3272]
	svchost.exe [3280]
	svchost.exe [3288]
	AnyDesk.exe [3380]
	HTTPDebuggerSvc.exe [3388]
	nvcontainer.exe [3396]
	MsMpEng.exe [3404]
	logi_lamparray_service.exe [3420]
	MpDefenderCoreService.exe [3428]
	MBAMService.exe [3696]
	NVDisplay.Container.exe [4372]
	svchost.exe [4508]
	svchost.exe [5300]
	svchost.exe [5440]
	svchost.exe [5448]
	gamingservicesnet.exe [5548]
	gamingservices.exe [5556]
	sihost.exe [6100]
	svchost.exe [5224]
	svchost.exe [2452]
	taskhostw.exe [1764]
	MicrosoftEdgeUpdate.exe [1712]
	nvcontainer.exe [5648]
	nvcontainer.exe [1296]
	AggregatorHost.exe [6260]
	WmiPrvSE.exe [6356]
	svchost.exe [7004]
	explorer.exe [6592]
	ShellHost.exe [7212]
	CrossDeviceResume.exe [7336]
	svchost.exe [7944]
	svchost.exe [8052]
	NisSrv.exe [8500]
	SearchHost.exe [8868]
	Widgets.exe [8876]
	StartMenuExperienceHost.exe [8884]
	svchost.exe [9204]
	RuntimeBroker.exe [3336]
	SearchIndexer.exe [8644]
	Malwarebytes.exe [9240]
	WidgetService.exe [9544]
	msedgewebview2.exe [9916]
	msedgewebview2.exe [10088]
	msedgewebview2.exe [9940]
	msedgewebview2.exe [10356]
	msedgewebview2.exe [10604]
	msedgewebview2.exe [10824]
	TextInputHost.exe [9872]
	ctfmon.exe [11660]
	LockApp.exe [12076]
	RuntimeBroker.exe [11640]
	svchost.exe [12188]
	BraveCrashHandler.exe [12624]
	BraveCrashHandler64.exe [12648]
	svchost.exe [12756]
	vgtray.exe [12892]
	LWEMon.exe [12944]
	figma_agent.exe [10320]
	uTorrent.exe [13980]
	jusched.exe [7904]
	utorrentie.exe [8092]
	utorrentie.exe [2620]
	msedgewebview2.exe [2796]
	msedgewebview2.exe [8964]
	msedgewebview2.exe [14432]
	msedgewebview2.exe [14448]
	msedgewebview2.exe [14476]
	msedgewebview2.exe [14700]
	msedgewebview2.exe [14776]
	msedgewebview2.exe [6084]
	msedgewebview2.exe [2780]
	msedgewebview2.exe [9888]
	msedgewebview2.exe [4944]
	msedgewebview2.exe [10460]
	msedgewebview2.exe [13756]
	helper.exe [16100]
	svchost.exe [13080]
	svchost.exe [5464]
	svchost.exe [6788]
	brave.exe [5524]
	brave.exe [6036]
	brave.exe [13924]
	brave.exe [6572]
	brave.exe [12016]
	brave.exe [15224]
	brave.exe [9396]
	brave.exe [1668]
	brave.exe [6476]
	brave.exe [1616]
	brave.exe [6324]
	brave.exe [6536]
	brave.exe [3664]
	brave.exe [5696]
	brave.exe [13868]
	brave.exe [11880]
	brave.exe [2648]
	brave.exe [12796]
	brave.exe [996]
	SecurityHealthService.exe [13100]
	ShellExperienceHost.exe [16940]
	RuntimeBroker.exe [13764]
	jucheck.exe [1528]
	svchost.exe [17864]
	mDNSResponder.exe [12872]
	AppleMobileDeviceService.exe [2008]
	InstallAssistService.exe [17632]
	ElevationService.exe [18400]
	WsidService.exe [18048]
	DrFoneToolKit.exe [1000]
	svchost.exe [14212]
	brave.exe [19508]
	brave.exe [20408]
	brave.exe [2540]
	brave.exe [14172]
	brave.exe [6876]
	Discord.exe [568]
	Discord.exe [12680]
	Discord.exe [20252]
	Discord.exe [17140]
	Discord.exe [19564]
	Discord.exe [6400]
	dc-unlocker2client.exe [4276]
	WUDFHost.exe [11080]
	adb.exe [14092]
	brave.exe [16632]
	brave.exe [19640]
	brave.exe [17516]
	brave.exe [16648]
	smartscreen.exe [16880]
	brave.exe [1132]
	brave.exe [16888]
	brave.exe [17096]
	brave.exe [12684]
	brave.exe [15636]
	brave.exe [19880]
	brave.exe [16740]
	brave.exe [1912]
	brave.exe [17888]
	SearchProtocolHost.exe [12920]
	DataExchangeHost.exe [7552]
	SearchFilterHost.exe [2888]
	audiodg.exe [17824]
	brave.exe [6648]
	CompatTelRunner.exe [5620]
	conhost.exe [18844]
	powershell.exe [7304]
	conhost.exe [2980]
	TFT Unlock.exe [5156]
	ApplicationFrameHost.exe [12216]
	SecHealthUI.exe [14272]
	SecurityHealthHost.exe [13832]
	svchost.exe [18712]
	WmiPrvSE.exe [12540]
	WmiPrvSE.exe [11132]
	svchost.exe [7364]
	Setup.exe [8716]
	ctfmon.exe [368]
Installed Apps:
All Users:
	7-Zip 25.01 (x64) - 25.01
	Feather Launcher - 2.6.5-d
	Cheat Engine 7.6
	CPUID HWMonitor 1.60 - 1.60
	DroidKit - <ip>
	Git - 2.51.2
	HxD Hex Editor 2.5 - 2.5
	IDA Free 9.2 - 9.2
	Riot Vanguard
	Assetto Corsa
	Grand Theft Auto V Legacy
	Spacewar
	Counter-Strike 2
	Phasmophobia
	WinRAR 7.13 (64-bitowy) - 7.13.0
	XAMPP - 8.2.12-0
	Logitech Gaming Software 5.10 - 5.10.127
	vs_minshellinteropx64msi - 18.0.11101
	icecap_collection_x64 - 18.0.11101
	Windows App Certification Kit Native Components - 10.1.26100.7175
	Node.js - 24.11.1
	DiagnosticsHub_CollectionService - 18.0.36317
	Microsoft System CLR Types for SQL Server 2019 - 15.0.2000.5
	Windows SDK DirectX x64 Remote - 10.1.26100.7175
	Application Verifier x64 External Package (OnecoreUAP) - 10.1.26100.7175
	VS JIT Debugger - <ip>
	Microsoft Visual C++ 2005 Redistributable (x64) - 8.0.59192
	icecap_collection_x64 - 17.14.36015
	Bonjour - <ip>
	Microsoft Visual Studio Installer - 4.0.2168.39045
	PCMark 10 - 2.2.2737.0
	Universal CRT Tools x64 - 10.1.26100.7175
	vs_minshellx64msi - 18.0.11101
	vs_Graphics_Singletonx64 - 18.0.11104
	vs_communityx64msi - 18.1.11312
	NVIDIA Graphics Driver 581.80 - 581.80
	NVIDIA MessageBus 3 for NvApp - 3.20
	NVIDIA Backend - <ip>
	NvCpl - 1.0
	NVIDIA Install Application - 2.1002.438.0
	NVIDIA Container - 1.48
	NVIDIA AIUser Container - 1.48
	NVIDIA LocalSystem Container - 1.48
	NVIDIA Session Container - 1.48
	NVIDIA User Container - 1.48
	NVIDIA NvDLISR - 1.0
	NVIDIA Watchdog Plugin for NvContainer - 1.48
	NVIDIA Telemetry Client - <ip>
	Epic Games Launcher - <ip>
	Application Verifier x64 External Package (DesktopEditions) - 10.1.26100.7175
	vs_devenx64vmsi - 18.0.11101
	Microsoft GameInput - 10.1.26100.6879
	VS Script Debugging Common - <ip>
	IntelliTraceProfilerProxy - 15.0.21225.01
Current User:
	Hydra - 3.7.5
	CapCut - 7.7.0.3143
	FiveM
	Discord - 1.0.9222
	Discord Canary - 1.0.814
	Figma - 125.11.6
	Figma Agent - 126.0.4
	GitHub Desktop - 3.5.4
	Proton Mail - 1.10.1
	League of Legends
	Riot Client 
	VALORANT
	Roblox Player for nvoth
	Roblox Studio for nvoth
	ﾵTorrent - 3.6.0.47224
	MSS2 - 20251213
	REDlauncher
	Microsoft Visual Studio Code (User) - 1.108.2
```

### `cystack_8b3c31f9`

**Field keys:**
`Architecture`, `CPU`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
__________________________________________________________
|                                                                                                                                                        |
|             .d8888888b.  8888888b. 8888888 88b   d88P 8888888888 888      .d8888b.   .d8888b.  888      .d88888b.  888     888 8888888b.              |
|            d88P"   "88b 888   88b  888    88b d88P  888        888     d88P  88b d88P  88b 888     d88P" "88b 888     888 888  "88b             |
|            888  d8b  888 888    888  888     88o88P   888        888     88b.      888    888 888     888     888 888     888 888    888             |
|            888  888  888 888   d88P  888      888P    8888888    888      "888b.   888        888     888     888 888     888 888    888             |
|            888  888bd88P 8888888P"   888      d888b    888        888         "88b. 888        888     888     888 888     888 888    888             |
|            888  8888P"  888         888     d88888b   888        888           "888 888    888 888     888     888 888     888 888    888             |
|            88b.     .d8 888         888    d88P 88b  888        888     88b  d88P 88b  d88P 888     88b. .d88P 88b. .d88P 888  .d88P             |
|             "88888888P" 888       8888888 d88P   88b 8888888888 88888888 "8888P"   "8888P"  88888888 "88888P"   "88888P"  8888888P"              |
|                                                                                                                                                        |
|                                                                    JOIN OUR CHANNEL!                                                                   |
|                                                                                                                                                        |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|_________________________________________________________|

Country: IN
HWID: <redacted>
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 27/03/2026 <ip>
UTC: 7
Language: en-IN
Laptop: TRUE
CPU: AMD Ryzen 7 7445HS w/ Radeon 740M Graphics
Cores: 6
Threads: 12
RAM: 31 GB
Display Resolution:
Device String: AMD Radeon 740M Graphics
Resolution: 1920x1080
GPU:
```

### `cystack_9e89f04b`

**Field keys:**
`Architecture`, `Computer Name`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
***********************************************
*                                             *
*   ____  _____ ____  _     ___ _   _ _____   *
*  |  _ \| ____|  _ \| |   |_ _| \ | | ____|  *
*  | |_) |  _| | | | | |    | ||  \| |  _|    *
*  |  _ <| |___| |_| | |___ | || |\  | |___   *
*  |_| \_|_____|____/|_____|___|_| \_|_____|  *
*                                             *
*                                             *
***********************************************
*          New subscribers here:              *
*          <url>               *
*          <url>               *
*          <url>               *
***********************************************

IP: <redacted>
Country: BR
OS: Windows 10
Architecture: x64
UserName: <redacted>
Computer Name: <redacted>
Local Time: 2026-03-18 <ip>
UTC: -3
Language: pt-BR
Keyboards: Português (Brasil)
Laptop: FALSE
Cores: 4
Threads: 4
RAM: 8 GB
Display Resolution:
Device String: Intel(R) HD Graphics
Resolution: 1366x768
GPU:
```

### `cystack_a9654ba8`

**Field keys:**
`Architecture`, `CPU`, `Cores`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
__________________________________________________________
|                                                                                                                                                        |
|             .d8888888b.  8888888b. 8888888 88b   d88P 8888888888 888      .d8888b.   .d8888b.  888      .d88888b.  888     888 8888888b.              |
|            d88P"   "88b 888   88b  888    88b d88P  888        888     d88P  88b d88P  88b 888     d88P" "88b 888     888 888  "88b             |
|            888  d8b  888 888    888  888     88o88P   888        888     88b.      888    888 888     888     888 888     888 888    888             |
|            888  888  888 888   d88P  888      888P    8888888    888      "888b.   888        888     888     888 888     888 888    888             |
|            888  888bd88P 8888888P"   888      d888b    888        888         "88b. 888        888     888     888 888     888 888    888             |
|            888  8888P"  888         888     d88888b   888        888           "888 888    888 888     888     888 888     888 888    888             |
|            88b.     .d8 888         888    d88P 88b  888        888     88b  d88P 88b  d88P 888     88b. .d88P 88b. .d88P 888  .d88P             |
|             "88888888P" 888       8888888 d88P   88b 8888888888 88888888 "8888P"   "8888P"  88888888 "88888P"   "88888P"  8888888P"              |
|                                                                                                                                                        |
|                                                                    JOIN OUR CHANNEL!                                                                   |
|                                                                                                                                                        |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|_________________________________________________________|

HWID: <redacted>
OS: Windows 10
Architecture: x64
UserName: <redacted>
Local Time: 27/03/2026 <ip>
UTC: -4
Language: pt-BR
Laptop: FALSE
CPU: AMD Ryzen 5 4500 6-Core Processor
Cores: 6
Threads: 12
RAM: 16 GB
Display Resolution:
Device String: NVIDIA GeForce RTX 2060
Resolution: 2560x1080
GPU:
```

### `cystack_c1d935a4`

**Field keys:**
`Architecture`, `Cores`, `Country`, `Device String`, `Display Resolution`, `HWID`, `IP`, `Keyboards`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 28 blank lines ...]
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
IP: <redacted>
Country: NL
HWID: <redacted>
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 27/03/2026 <ip>
UTC: -1
Keyboards: Niger (Niger)
Laptop: FALSE
Cores: 7
Threads: 4
RAM: 63 GB
Display Resolution:
Device String: Microsoft Basic Display Adapter
Resolution: 1920x1080
```

### `cystack_db7c0462`

**Field keys:**
`Architecture`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot       @cloud_arthouse       Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 28 blank lines ...]
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 14 blank lines ...]
Country: PL
HWID: <redacted>
OS: Windows 11
Architecture: x64
UserName: <redacted>
Local Time: 27/03/2026 <ip>
UTC: 0
Language: pl-PL
Keyboards: Polski (Polska)
Laptop: FALSE
Cores: 4
Threads: 4
RAM: 8 GB
Display Resolution:
Device String: NVIDIA GeForce RTX 2060
Resolution: 1920x1080
GPU:
```

### `cystack_dd9953b8`

**Field keys:**
`Architecture`, `Cores`, `Country`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `Language`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
__________________________________________________________
|                                                                                                                                                        |
|             .d8888888b.  8888888b. 8888888 88b   d88P 8888888888 888      .d8888b.   .d8888b.  888      .d88888b.  888     888 8888888b.              |
|            d88P"   "88b 888   88b  888    88b d88P  888        888     d88P  88b d88P  88b 888     d88P" "88b 888     888 888  "88b             |
|            888  d8b  888 888    888  888     88o88P   888        888     88b.      888    888 888     888     888 888     888 888    888             |
|            888  888  888 888   d88P  888      888P    8888888    888      "888b.   888        888     888     888 888     888 888    888             |
|            888  888bd88P 8888888P"   888      d888b    888        888         "88b. 888        888     888     888 888     888 888    888             |
|            888  8888P"  888         888     d88888b   888        888           "888 888    888 888     888     888 888     888 888    888             |
|            88b.     .d8 888         888    d88P 88b  888        888     88b  d88P 88b  d88P 888     88b. .d88P 88b. .d88P 888  .d88P             |
|             "88888888P" 888       8888888 d88P   88b 8888888888 88888888 "8888P"   "8888P"  88888888 "88888P"   "88888P"  8888888P"              |
|                                                                                                                                                        |
|                                                                    JOIN OUR CHANNEL!                                                                   |
|                                                                                                                                                        |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|_________________________________________________________|

Country: CZ
HWID: <redacted>
OS: Windows 10
Architecture: x64
UserName: <redacted>
Local Time: 27/03/2026 <ip>
UTC: 0
Language: es-ES
Laptop: TRUE
Cores: 6 [B3840]
Threads: 12
RAM: 32 GB
Display Resolution:
Device String: Intel(R) UHD Graphics
Resolution: 1920x1080
GPU:
```

### `cystack_f95c1aaa`

**Field keys:**
`Architecture`, `Cores`, `Country`, `Device String`, `Display Resolution`, `HWID`, `Keyboards`, `Laptop`, `Local Time`, `OS`, `RAM`, `Resolution`, `Threads`, `UTC`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot   <url>      Subscribe    ArtHouse
[... 28 blank lines ...]
<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 5 blank lines ...]
🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
[... 3 blank lines ...]
Country: JP
HWID: <redacted>
OS: Windows 11
Architecture: x32
UserName: <redacted>
Local Time: 27/03/2026 <ip>
UTC: 4
Keyboards: Haiti (Haiti)
Laptop: FALSE
Cores: 7
Threads: 5
RAM: 18 GB
Display Resolution:
Device String: Microsoft Basic Display Adapter
Resolution: 1920x1080
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
