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

### `cystack_2eb9685e`

**Field keys:**
`Installed Apps`, `Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AU

System Summary:
	- HWID: 350DD8C3-0410-E75F-C41B-D8F74CF3200F
	- OS: Windows 11
	- Architecture: x64
	- UserName: bhara
	- Computer Name: BHARATH
	- Local Time: 2025-12-27 <ip>
	- UTC: 5
	- Language: en-IN
	- Keyboards: English (United States) / English (India)
	- Laptop: TRUE
	- Running Path: C:\Windows\SysWOW64\rundll32.exe
	- CPU: AMD Ryzen 5 3500C with Radeon Vega Mobile Gfx  
	- Cores: 4
	- Threads: 8
	- RAM: 16 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: AMD Radeon(TM) Vega 8 Graphics 
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-AMD Radeon(TM) Vega 8 Graphics 

Process count: 193
Process List: 
	[System Process] [0]
	System [4]
	Registry [140]
	smss.exe [552]
	csrss.exe [848]
	wininit.exe [988]
	services.exe [1032]
	lsass.exe [1060]
	svchost.exe [1188]
	fontdrvhost.exe [1220]
	WUDFHost.exe [1312]
	svchost.exe [1392]
	svchost.exe [1440]
	svchost.exe [1520]
	svchost.exe [1524]
	svchost.exe [1536]
	svchost.exe [1620]
	svchost.exe [1628]
	svchost.exe [1756]
	svchost.exe [1760]
	svchost.exe [1800]
	svchost.exe [1864]
	svchost.exe [1888]
	svchost.exe [1976]
	svchost.exe [2008]
	svchost.exe [2036]
	svchost.exe [1384]
	svchost.exe [2080]
	svchost.exe [2224]
	amdfendrsr.exe [2436]
	atiesrxx.exe [2444]
	svchost.exe [2456]
	svchost.exe [2580]
	svchost.exe [2672]
	svchost.exe [2848]
	svchost.exe [2960]
	svchost.exe [3100]
	svchost.exe [3212]
	svchost.exe [3292]
	svchost.exe [3300]
	svchost.exe [3308]
	Memory Compression [3396]
	svchost.exe [3436]
	svchost.exe [3464]
	svchost.exe [3472]
	svchost.exe [3620]
	svchost.exe [3668]
	svchost.exe [3676]
	svchost.exe [3672]
	svchost.exe [3868]
	svchost.exe [4016]
	svchost.exe [4044]
	spoolsv.exe [3284]
	svchost.exe [2076]
	svchost.exe [4128]
	svchost.exe [4316]
	svchost.exe [4324]
	svchost.exe [4332]
	svchost.exe [4344]
	svchost.exe [4372]
	svchost.exe [4408]
	svchost.exe [4520]
	svchost.exe [4536]
	svchost.exe [4544]
	svchost.exe [4560]
	svchost.exe [5684]
	AggregatorHost.exe [5816]
	svchost.exe [6192]
	svchost.exe [6704]
	SearchIndexer.exe [6896]
	svchost.exe [6940]
	svchost.exe [6372]
	svchost.exe [9516]
	svchost.exe [9800]
	svchost.exe [7228]
	MoUsoCoreWorker.exe [6268]
	svchost.exe [6892]
	svchost.exe [8980]
	svchost.exe [9844]
	svchost.exe [3036]
	svchost.exe [9868]
	svchost.exe [9828]
	svchost.exe [7616]
	SecurityHealthService.exe [11140]
	svchost.exe [11568]
	svchost.exe [12464]
	svchost.exe [11912]
	MpDefenderCoreService.exe [3204]
	MsMpEng.exe [1780]
	NisSrv.exe [5944]
	svchost.exe [9904]
	svchost.exe [160]
	vpn-unlimited-daemon.exe [3152]
	svchost.exe [8752]
	svchost.exe [3060]
	turbo_vpn-service.exe [8148]
	svchost.exe [1488]
	audiodg.exe [14904]
	svchost.exe [9360]
	svchost.exe [10796]
	SearchProtocolHost.exe [11580]
	csrss.exe [7048]
	winlogon.exe [18072]
	fontdrvhost.exe [5972]
	dwm.exe [14528]
	atieclxx.exe [16420]
	svchost.exe [10036]
	svchost.exe [11740]
	sihost.exe [8512]
	svchost.exe [13940]
	svchost.exe [14168]
	svchost.exe [17440]
	svchost.exe [10748]
	taskhostw.exe [17808]
	MicrosoftEdgeUpdate.exe [14380]
	svchost.exe [4796]
	explorer.exe [18348]
	svchost.exe [18564]
	SearchHost.exe [16996]
	StartMenuExperienceHost.exe [9340]
	Widgets.exe [14368]
	RuntimeBroker.exe [10472]
	RuntimeBroker.exe [17012]
	WidgetService.exe [2904]
	svchost.exe [7520]
	ShellExperienceHost.exe [8876]
	dllhost.exe [6764]
	dllhost.exe [18024]
	ctfmon.exe [7164]
	TabTip.exe [7816]
	PhoneExperienceHost.exe [8]
	smartscreen.exe [17768]
	TextInputHost.exe [13108]
	rundll32.exe [9552]
	rundll32.exe [15280]
	svchost.exe [14160]
	chrome.exe [3948]
	chrome.exe [6232]
	chrome.exe [9940]
	chrome.exe [10592]
	chrome.exe [17028]
	svchost.exe [8440]
	chrome.exe [15720]
	TurboVPN.exe [11132]
	msedgewebview2.exe [15792]
	msedgewebview2.exe [5032]
	msedgewebview2.exe [10704]
	msedgewebview2.exe [18080]
	msedgewebview2.exe [14112]
	msedgewebview2.exe [4584]
	msedgewebview2.exe [18264]
	svchost.exe [3560]
	chrome.exe [8316]
	chrome.exe [18132]
	msedgewebview2.exe [17468]
	msedgewebview2.exe [16044]
	msedgewebview2.exe [10584]
	msedgewebview2.exe [11120]
	msedgewebview2.exe [18872]
	msedgewebview2.exe [16668]
	svchost.exe [7928]
	SearchFilterHost.exe [19064]
	SystemSettings.exe [2452]
	ApplicationFrameHost.exe [6912]
	svchost.exe [6052]
	chrome.exe [14220]
	ssrxray.exe [10228]
	conhost.exe [16444]
	xray.exe [17484]
	conhost.exe [3232]
	tun2socks.exe [8208]
	conhost.exe [6164]
	msedgewebview2.exe [18204]
	msedgewebview2.exe [10252]
	msedgewebview2.exe [7232]
	msedgewebview2.exe [308]
	CapCut.exe [10652]
	msedgewebview2.exe [9832]
	CapCut.exe [6856]
	WmiPrvSE.exe [17176]
	parfait_crash_handler.exe [3148]
	msedgewebview2.exe [14804]
	CapCut.exe [1860]
	CapCut.exe [6552]
	CapCut.exe [8156]
	CapCut.exe [6156]
	CapCut.exe [17456]
	CapCut.exe [1460]
	msedgewebview2.exe [13536]
	CapCut.exe [9848]
	CapCut.exe [12916]
	CapCut.exe [712]
	rundll32.exe [13604]

Installed Apps:
All Users:
	AMD Chipset Software - <ip>
	CoolStar Audio AutoSwitch
	Google Chrome - 143.0.7499.170
	Microsoft Edge WebView2 Runtime - 143.0.3650.96
	TurboVPN <ip> - <ip>
	Microsoft Edge - 143.0.3650.96
	AMD_Chipset_Drivers - <ip>
	AMD UART Driver - <ip>
	Microsoft Visual C++ 2005 Redistributable - 8.0.61187
	Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40664 - 12.0.40664
	Microsoft Visual C++ 2022 X86 Additional Runtime - 14.36.32522 - 14.36.32522
	AMD PSP Driver - <ip>
	Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.7523 - 9.0.30729.7523
	AMD Ryzen Balanced Driver - <ip>
	AMD SFH Driver - <ip>
	AMD SBxxx SMBus Driver - <ip>
	Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61135 - 11.0.61135
	AMD I2C Driver - <ip>
	Microsoft Visual C++ 2015-2022 Redistributable (x64) - 14.42.34438 - 14.42.34438.0
	Microsoft Windows Desktop Runtime - 8.0.11 (x64) - 8.0.11.34221
	Microsoft Visual C++ 2012 x86 Minimum Runtime - 11.0.61135 - 11.0.61135
	Microsoft Visual C++ 2002-2003 Runtime (x86) - 1.2.0
	Microsoft Visual C++ 2013 x86 Additional Runtime - 12.0.40664 - 12.0.40664
	Microsoft Visual C++ 2022 X86 Minimum Runtime - 14.36.32522 - 14.36.32522
	Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219 - 10.0.40219
Current User:
	CapCut - 7.3.0.2974
```

### `cystack_3028b0ca`

**Field keys:**
`All Users`, `Installed Apps`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: BO
System Summary:
	- HWID: AB02DE42-1D85-7E66-116A-3D4E091275B6
	- OS: Windows 10
	- Architecture: x64
	- UserName: Harold
	- Computer Name: DESKTOP-V9IED46
	- Local Time: 2026-02-06 <ip>
	- UTC: -4
	- Language: es-BO
	- Keyboards: Español (España, internacional) / Español (Bolivia)
	- Laptop: FALSE
	- Running Path: C:\ProgramData\beautyswan\AvastSvc.exe
	- CPU: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
	- Cores: 6
	- Threads: 12
	- RAM: 16 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: NVIDIA GeForce RTX 2060
			Resolution: 1920x1080
			Color Depth: 32 bits per pixel
	- GPU:
		-NVIDIA GeForce RTX 2060
Process count: 172
Process List: 
	[System Process] [0]
	System [4]
	Registry [148]
	smss.exe [556]
	csrss.exe [704]
	wininit.exe [792]
	services.exe [864]
	lsass.exe [884]
	svchost.exe [648]
	fontdrvhost.exe [692]
	svchost.exe [1068]
	svchost.exe [1112]
	svchost.exe [1204]
	svchost.exe [1220]
	svchost.exe [1376]
	svchost.exe [1444]
	svchost.exe [1584]
	svchost.exe [1612]
	svchost.exe [1644]
	svchost.exe [1652]
	svchost.exe [1696]
	svchost.exe [1760]
	svchost.exe [1816]
	NVDisplay.Container.exe [1912]
	svchost.exe [1948]
	svchost.exe [1984]
	svchost.exe [1520]
	svchost.exe [2088]
	AsusCertService.exe [2136]
	svchost.exe [2172]
	svchost.exe [2176]
	svchost.exe [2188]
	svchost.exe [2268]
	Memory Compression [2292]
	svchost.exe [2328]
	svchost.exe [2336]
	svchost.exe [2504]
	atkexComSvc.exe [2548]
	svchost.exe [2680]
	svchost.exe [2788]
	svchost.exe [2844]
	svchost.exe [2120]
	svchost.exe [3140]
	WmiPrvSE.exe [3336]
	svchost.exe [3548]
	svchost.exe [3676]
	svchost.exe [3684]
	svchost.exe [3724]
	spoolsv.exe [3836]
	svchost.exe [3860]
	svchost.exe [4000]
	svchost.exe [4100]
	svchost.exe [4112]
	svchost.exe [4124]
	svchost.exe [4132]
	ArmouryCrate.Service.exe [4148]
	svchost.exe [4156]
	svchost.exe [4164]
	svchost.exe [4172]
	svchost.exe [4180]
	svchost.exe [4188]
	svchost.exe [4196]
	svchost.exe [4204]
	GameSDK.exe [4212]
	AsusFanControlService.exe [4220]
	nvcontainer.exe [4228]
	MsMpEng.exe [4252]
	MpDefenderCoreService.exe [4260]
	WMIRegistrationService.exe [4284]
	jhi_service.exe [4292]
	LightingService.exe [4316]
	svchost.exe [4732]
	dasHost.exe [4828]
	svchost.exe [4808]
	SearchIndexer.exe [5868]
	svchost.exe [6484]
	unsecapp.exe [6664]
	dllhost.exe [6840]
	svchost.exe [5360]
	AggregatorHost.exe [5136]
	NisSrv.exe [7728]
	svchost.exe [7400]
	svchost.exe [7436]
	svchost.exe [5672]
	svchost.exe [8552]
	svchost.exe [9968]
	svchost.exe [11076]
	svchost.exe [11712]
	SecurityHealthService.exe [3240]
	svchost.exe [10600]
	svchost.exe [6004]
	svchost.exe [10872]
	svchost.exe [4740]
	MoUsoCoreWorker.exe [1508]
	svchost.exe [8188]
	svchost.exe [13884]
	ROGLiveService.exe [11452]
	GameInputSvc.exe [4404]
	GooglePlayGamesServices.exe [9064]
	crashpad_handler.exe [11488]
	svchost.exe [9232]
	svchost.exe [12152]
	svchost.exe [18364]
	svchost.exe [10064]
	csrss.exe [3472]
	winlogon.exe [6276]
	fontdrvhost.exe [14432]
	dwm.exe [17496]
	GameInputSvc.exe [18216]
	NVDisplay.Container.exe [12524]
	nvcontainer.exe [11724]
	svchost.exe [8040]
	nvcontainer.exe [17220]
	sihost.exe [14108]
	svchost.exe [8116]
	svchost.exe [17000]
	AcPowerNotification.exe [17488]
	ArmourySocketServer.exe [13564]
	taskhostw.exe [3076]
	explorer.exe [4424]
	ctfmon.exe [9720]
	asus_framework.exe [9040]
	svchost.exe [17752]
	StartMenuExperienceHost.exe [3176]
	RuntimeBroker.exe [12648]
	SearchApp.exe [11448]
	RuntimeBroker.exe [15848]
	taskhostw.exe [6060]
	PhoneExperienceHost.exe [17012]
	asus_framework.exe [16876]
	asus_framework.exe [5328]
	ArmouryCrate.UserSessionHelper.exe [4668]
	conhost.exe [9364]
	TextInputHost.exe [4120]
	RuntimeBroker.exe [5772]
	SecurityHealthSystray.exe [12452]
	ApplicationFrameHost.exe [15184]
	Video.UI.exe [1432]
	svchost.exe [12160]
	audiodg.exe [13332]
	CompPkgSrv.exe [12180]
	vgtray.exe [15264]
	UserOOBEBroker.exe [16100]
	taskhostw.exe [13208]
	chrome.exe [11668]
	chrome.exe [4304]
	chrome.exe [13476]
	chrome.exe [8416]
	chrome.exe [9816]
	chrome.exe [11640]
	chrome.exe [16060]
	chrome.exe [10032]
	chrome.exe [12060]
	chrome.exe [11216]
	chrome.exe [11524]
	chrome.exe [11236]
	WindowsPackageManagerServer.exe [15940]
	FileCoAuth.exe [16376]
	AutoClicker-3.1.1.exe [14476]
	svchost.exe [8704]
	svchost.exe [7936]
	svchost.exe [7012]
	TrustedInstaller.exe [10652]
	TiWorker.exe [18340]
	chrome.exe [9700]
	SearchProtocolHost.exe [14184]
	SearchFilterHost.exe [3136]
	svchost.exe [16748]
	smartscreen.exe [15132]
	RuntimeBroker.exe [13048]
	WmiPrvSE.exe [1240]
	AvastSvc.exe [3112]
Installed Apps:
All Users:
	Google Play Games - <ip>
	Riot Vanguard
	Brawlhalla
	Left 4 Dead 2
	Counter-Strike 2
	WinRAR 7.01 (64-bit) - 7.01.0
	Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
	Microsoft Update Health Tools - <ip>
	ROG Live Service - <ip>
	Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.60610 - 11.0.60610
	Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
	Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 - 12.0.40664
	Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.60610 - 11.0.60610
	Paradox Launcher v2 - 2.4.0
	Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
	NVIDIA Controlador de gr￡ficos 581.80 - 581.80
	NVIDIA App <ip> - <ip>
	NVIDIA MessageBus 3 for NvApp - 3.16
	NVIDIA Backend - <ip>
	NvCpl - 1.0
	NVIDIA Software del sistema PhysX 9.23.1019 - 9.23.1019
	NVIDIA FrameView SDK 1.5.11504.36206172 - 1.5.11504.36206172
	NVIDIA Controlador de audio HD <ip> - <ip>
	NVIDIA Install Application - 2.1002.438.0
	NVIDIA Container - 1.44
	NVIDIA AIUser Container - 1.44
	NVIDIA LocalSystem Container - 1.44
	NVIDIA Session Container - 1.44
	NVIDIA User Container - 1.44
	NVIDIA NvDLISR - 1.0
	NVIDIA Watchdog Plugin for NvContainer - 1.44
	NVIDIA Telemetry Client - <ip>
	NVIDIA ShadowPlay <ip> - <ip>
	NVIDIA USBC Driver <ip> - <ip>
	NVIDIA Virtual Audio <ip> - <ip>
	Update for x64-based Windows Systems (KB5001716) - <ip>
	EA app - 13.631.0.6144
	AURA lighting effect add-on x64 - 0.0.44
	ASUS Aura SDK - 3.04.46
	ARMOURY CRATE Lite Service - 5.9.14
	Epic Games Launcher Prerequisites (x64) - <ip>
Current User:
	Discord - 1.0.9223
	Microsoft OneDrive - 26.002.0105.0001
	League of Legends
	VALORANT
	Roblox Player for Harold
	Roblox Studio for Harold
```

### `cystack_68dce857`

**Field keys:**
`Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: AR
System Summary:
	- HWID: 876FE24F-9114-828B-A8E7-9C63F0FFA4BB
	- OS: Windows 11
	- Architecture: x64
	- UserName: Ponce Computacion
	- Computer Name: DESKTOP-68OMVQ5
	- Local Time: 2026-02-06 <ip>
	- UTC: -3
	- Language: es-AR
	- Keyboards: Español (España, internacional) / Español (Argentina) / Inglés (Estados Unidos)
	- Laptop: FALSE
	- Running Path: C:\ProgramData\beautyswan\AvastSvc.exe
	- CPU: AMD Ryzen 5 3400G with Radeon Vega Graphics    
	- Cores: 4
	- Threads: 8
	- RAM: 14 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: NVIDIA GeForce RTX 2060
			Resolution: 1600x900
			Color Depth: 32 bits per pixel
	- GPU:
		-NVIDIA GeForce RTX 2060
Process count: 223
Process List: 
	[System Process] [0]
	System [4]
	Registry [176]
	smss.exe [632]
	csrss.exe [916]
	wininit.exe [1004]
	csrss.exe [1012]
	services.exe [600]
	winlogon.exe [760]
	lsass.exe [1064]
	svchost.exe [1196]
	fontdrvhost.exe [1228]
	fontdrvhost.exe [1232]
	svchost.exe [1324]
	svchost.exe [1388]
	dwm.exe [1440]
	svchost.exe [1620]
	svchost.exe [1628]
	svchost.exe [1700]
	svchost.exe [1708]
	svchost.exe [1728]
	svchost.exe [1812]
	svchost.exe [1820]
	svchost.exe [1876]
	svchost.exe [1948]
	svchost.exe [2000]
	NVDisplay.Container.exe [2072]
	svchost.exe [2172]
	svchost.exe [2212]
	amdfendrsr.exe [2220]
	atiesrxx.exe [2228]
	svchost.exe [2376]
	svchost.exe [2480]
	svchost.exe [2596]
	svchost.exe [2608]
	svchost.exe [2616]
	Memory Compression [2796]
	svchost.exe [2836]
	svchost.exe [2868]
	svchost.exe [2876]
	svchost.exe [2968]
	svchost.exe [3016]
	svchost.exe [2704]
	svchost.exe [2916]
	svchost.exe [3144]
	svchost.exe [3244]
	spoolsv.exe [3348]
	svchost.exe [3408]
	svchost.exe [3468]
	svchost.exe [3560]
	svchost.exe [3680]
	svchost.exe [3688]
	svchost.exe [3696]
	svchost.exe [3700]
	svchost.exe [3720]
	svchost.exe [3752]
	nvcontainer.exe [3784]
	svchost.exe [3804]
	MpDefenderCoreService.exe [3812]
	WeatherZeroService.exe [3840]
	svchost.exe [3852]
	MsMpEng.exe [3860]
	svchost.exe [3884]
	svchost.exe [3904]
	svchost.exe [4052]
	svchost.exe [4072]
	dasHost.exe [4392]
	warp-svc.exe [5044]
	svchost.exe [5228]
	svchost.exe [6052]
	WmiPrvSE.exe [7000]
	svchost.exe [6608]
	gamingservices.exe [6580]
	gamingservicesnet.exe [6564]
	sihost.exe [7568]
	svchost.exe [7628]
	svchost.exe [7692]
	svchost.exe [7748]
	taskhostw.exe [7888]
	svchost.exe [7952]
	svchost.exe [4108]
	explorer.exe [8092]
	svchost.exe [8248]
	AggregatorHost.exe [8316]
	svchost.exe [8488]
	svchost.exe [9316]
	svchost.exe [9588]
	svchost.exe [9756]
	SearchHost.exe [10180]
	StartMenuExperienceHost.exe [10188]
	RuntimeBroker.exe [10140]
	SearchIndexer.exe [8736]
	svchost.exe [10284]
	svchost.exe [10888]
	msedgewebview2.exe [11056]
	msedgewebview2.exe [11156]
	svchost.exe [11172]
	msedgewebview2.exe [11520]
	msedgewebview2.exe [11632]
	msedgewebview2.exe [11752]
	msedgewebview2.exe [12132]
	nvfvsdksvc_x64.exe [12352]
	FvContainer.System.exe [11896]
	PresentMon_x64.exe [5788]
	ctfmon.exe [10052]
	TextInputHost.exe [13432]
	svchost.exe [13760]
	NisSrv.exe [1512]
	PresentationFontCache.exe [14084]
	svchost.exe [14700]
	svchost.exe [14844]
	SecurityHealthService.exe [4596]
	OneDrive.exe [1656]
	svchost.exe [8740]
	taskhostw.exe [16676]
	svchost.exe [8848]
	svchost.exe [14544]
	svchost.exe [3184]
	svchost.exe [15604]
	svchost.exe [14156]
	ModernFlyoutsHost.exe [17492]
	RuntimeBroker.exe [17628]
	svchost.exe [17780]
	svchost.exe [17568]
	svchost.exe [18020]
	svchost.exe [18184]
	svchost.exe [18192]
	svchost.exe [18288]
	Cloudflare WARP.exe [14920]
	jusched.exe [3768]
	ApplicationFrameHost.exe [16660]
	UserOOBEBroker.exe [15872]
	AppActions.exe [4164]
	backgroundTaskHost.exe [6868]
	RuntimeBroker.exe [9152]
	RuntimeBroker.exe [7832]
	RuntimeBroker.exe [17692]
	svchost.exe [16004]
	svchost.exe [14480]
	svchost.exe [8580]
	dllhost.exe [14132]
	GameInputRedistService.exe [14388]
	WWAHost.exe [14028]
	RuntimeBroker.exe [12696]
	NVDisplay.Container.exe [18216]
	nvcontainer.exe [19208]
	LockApp.exe [16292]
	RuntimeBroker.exe [18760]
	nvcontainer.exe [5736]
	nvcontainer.exe [16624]
	WidgetService.exe [15448]
	EpicGamesLauncher.exe [7736]
	EpicWebHelper.exe [19388]
	EpicWebHelper.exe [17040]
	EpicWebHelper.exe [7284]
	svchost.exe [13932]
	XboxPcAppFT.exe [13284]
	EpicWebHelper.exe [16416]
	SystemSettings.exe [14432]
	RobloxPlayerBeta.exe [5144]
	RobloxCrashHandler.exe [3764]
	GameBarPresenceWriter.exe [16396]
	svchost.exe [8164]
	audiodg.exe [3848]
	svchost.exe [17252]
	msedge.exe [6300]
	msedge.exe [12680]
	msedge.exe [6744]
	msedge.exe [9328]
	msedge.exe [10004]
	Xeno.exe [14448]
	msedgewebview2.exe [5704]
	msedgewebview2.exe [9272]
	msedgewebview2.exe [14040]
	msedgewebview2.exe [13196]
	msedgewebview2.exe [5472]
	msedgewebview2.exe [14428]
	msedge.exe [16804]
	msedge.exe [11000]
	svchost.exe [15880]
	WhatsApp.Root.exe [6452]
	RuntimeBroker.exe [12192]
	msedgewebview2.exe [17920]
	msedgewebview2.exe [12624]
	msedgewebview2.exe [5224]
	msedgewebview2.exe [18684]
	msedgewebview2.exe [17996]
	msedgewebview2.exe [16212]
	ShellHost.exe [3912]
	msedge.exe [14860]
	svchost.exe [13248]
	svchost.exe [8612]
	OneDrive.Sync.Service.exe [15868]
	CHXSmartScreen.exe [8236]
	RuntimeBroker.exe [18604]
	chrome.exe [11916]
	chrome.exe [9816]
	chrome.exe [15784]
	chrome.exe [13700]
	chrome.exe [1596]
	chrome.exe [8888]
	chrome.exe [11600]
	chrome.exe [11544]
	chrome.exe [4212]
	svchost.exe [3952]
	chrome.exe [6708]
	Discord.exe [7172]
	Discord.exe [18344]
	Discord.exe [7644]
	Discord.exe [9820]
	Discord.exe [11756]
	Discord.exe [18480]
	chrome.exe [5684]
	chrome.exe [6792]
	chrome.exe [17828]
	chrome.exe [832]
	SearchProtocolHost.exe [15624]
	SearchFilterHost.exe [10320]
	smartscreen.exe [14572]
	WmiPrvSE.exe [16424]
	SearchFilterHost.exe [5508]
	svchost.exe [5512]
	AvastSvc.exe [2328]
Installed Apps:
All Users:
	CPUID CPU-Z 2.16 - 2.16
	CPUID HWMonitor 1.58 - 1.58
	Denuvo Anti-Cheat - 6.8.2.1790
	Microsoft Office Professional Plus 2016 - 16.0.4266.1001
	eFootballﾙ
	Garry's Mod
	WinRAR 7.12 (64-bit) - 7.12.0
	Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
	Java 8 Update 51 (64-bit) - 8.0.510
	Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030 - 11.0.61030
	Microsoft .NET Runtime - 8.0.20 (x64) - 64.80.39230
	Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
	Cloudflare WARP - <ip>
	Microsoft Windows Desktop Runtime - 6.0.36 (x64) - 48.144.23186
	Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
	Microsoft Office Professional Plus 2016 - 16.0.4266.1001
	Microsoft Access MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Excel MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft PowerPoint MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Publisher MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Outlook MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Word MUI (Spanish) 2016 - 16.0.4266.1001
	Eines de correcci￳ del Microsoft Office 2016: catal￠ - 16.0.4266.1001
	Microsoft Office Proofing Tools 2016 - English - 16.0.4266.1001
	Revisores de Texto do Microsoft Office 2016 ﾖ Portugu￪s (Brasil) - 16.0.4266.1001
	Microsoft Office zuzenketa-tresnak 2016 - Euskara - 16.0.4266.1001
	Ferramentas de verificaci￳n de Microsoft Office 2016 - Galego - 16.0.4266.1001
	Herramientas de correcci￳n de Microsoft Office 2016: espa￱ol - 16.0.4266.1001
	Microsoft Office Proofing (Spanish) 2016 - 16.0.4266.1001
	Microsoft InfoPath MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Office Shared MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft DCF MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft OneNote MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Groove MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Office 32-bit Components 2016 - 16.0.4266.1001
	Microsoft Office Shared 32-bit MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Office OSM MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Office OSM UX MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Skype for Business MUI (Spanish) 2016 - 16.0.4266.1001
	Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005 - 12.0.21005
	Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005 - 12.0.21005
	Microsoft .NET Host FX Resolver - 6.0.36 (x64) - 48.144.23141
	NVIDIA Controlador de gr￡ficos 580.88 - 580.88
	NVIDIA App <ip> - <ip>
	NVIDIA MessageBus 3 for NvApp - 3.20
	NVIDIA Backend - <ip>
	NvCpl - 1.0
	NVIDIA Software del sistema PhysX 9.23.1019 - 9.23.1019
	NVIDIA FrameView SDK 1.5.11821.36727370 - 1.5.11821.36727370
	NVIDIA Controlador de audio HD <ip> - <ip>
	NVIDIA Install Application - 2.1002.438.0
	NVIDIA Container - 1.48
	NVIDIA AIUser Container - 1.48
	NVIDIA LocalSystem Container - 1.48
	NVIDIA Session Container - 1.48
	NVIDIA User Container - 1.48
	NVIDIA NvDLISR - 1.0
	NVIDIA Watchdog Plugin for NvContainer - 1.48
	NVIDIA Telemetry Client - <ip>
	NVIDIA ShadowPlay <ip> - <ip>
	NVIDIA USBC Driver <ip> - <ip>
	NVIDIA Virtual Audio <ip> - <ip>
	Microsoft .NET Host FX Resolver - 8.0.20 (x64) - 64.80.39230
	Microsoft .NET Runtime - 6.0.36 (x64) - 48.144.23141
	Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030 - 11.0.61030
	Microsoft Windows Desktop Runtime - 8.0.20 (x64) - 64.80.39251
	Microsoft .NET Host - 6.0.36 (x64) - 48.144.23141
	Epic Games Launcher Prerequisites (x64) - <ip>
	Microsoft .NET Host - 8.0.20 (x64) - 64.80.39230
	Microsoft GameInput - 10.1.26100.6879
Current User:
	Canva - 1.112.0
	Discord - 1.0.9211
	Fishstrap - <ip>
	LabyMod Launcher - 2.1.15
	Microsoft OneDrive - 26.007.0112.0002
	Roblox Player for Ponce Computacion
	Roblox Studio for Ponce Computacion
```

### `cystack_7a8ccb6e`

**Field keys:**
`Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AE

System Summary:
	- HWID: E3375275-94B6-D081-3A2D-9E79E26506F1
	- OS: Windows 11
	- Architecture: x64
	- UserName: ehab8
	- Computer Name: LAPTOP-EH8AK1RV
	- Local Time: 2026-01-27 <ip>
	- UTC: 2
	- Language: ar-LY
	- Keyboards: العربية (ليبيا)‏ / الإنجليزية (الولايات المتحدة)‏
	- Laptop: TRUE
	- Running Path: C:\Users\<user>\AppData\Local\Temp\Rockstar_Games\Setup.exe
	- CPU: 12th Gen Intel(R) Core(TM) i5-1235U
	- Cores: 10
	- Threads: 12
	- RAM: 16 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) Iris(R) Xe Graphics
			Resolution: 1366x768
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) Iris(R) Xe Graphics

Process count: 288
Process List: 
	[System Process] [0]
	System [4]
	Secure System [188]
	Registry [232]
	smss.exe [808]
	csrss.exe [1060]
	wininit.exe [1148]
	services.exe [1296]
	LsaIso.exe [1304]
	lsass.exe [1324]
	svchost.exe [1460]
	fontdrvhost.exe [1496]
	WUDFHost.exe [1536]
	svchost.exe [1628]
	svchost.exe [1688]
	WUDFHost.exe [1740]
	svchost.exe [1944]
	svchost.exe [1952]
	svchost.exe [1992]
	svchost.exe [2040]
	svchost.exe [1140]
	svchost.exe [1388]
	svchost.exe [2108]
	svchost.exe [2148]
	WUDFHost.exe [2156]
	svchost.exe [2304]
	svchost.exe [2312]
	svchost.exe [2320]
	svchost.exe [2328]
	svchost.exe [2336]
	svchost.exe [2424]
	svchost.exe [2520]
	svchost.exe [2640]
	svchost.exe [2768]
	svchost.exe [2820]
	svchost.exe [2888]
	svchost.exe [2976]
	svchost.exe [3020]
	svchost.exe [3152]
	svchost.exe [3156]
	svchost.exe [3324]
	SynTPEnhService.exe [3476]
	svchost.exe [3552]
	svchost.exe [3608]
	svchost.exe [3616]
	svchost.exe [3624]
	svchost.exe [3756]
	Memory Compression [3776]
	svchost.exe [3880]
	svchost.exe [3888]
	TouchpointAnalyticsClientService.exe [3960]
	NetworkCap.exe [3976]
	AppHelperCap.exe [3988]
	DiagsCap.exe [3996]
	SysInfoCap.exe [4008]
	svchost.exe [4016]
	svchost.exe [3920]
	svchost.exe [4228]
	svchost.exe [4316]
	svchost.exe [4564]
	unsecapp.exe [4780]
	WmiPrvSE.exe [4892]
	svchost.exe [4136]
	svchost.exe [5048]
	svchost.exe [5136]
	spoolsv.exe [5168]
	svchost.exe [5208]
	svchost.exe [5280]
	armsvc.exe [5468]
	svchost.exe [5476]
	svchost.exe [5484]
	OneApp.IGCC.WinService.exe [5508]
	HPPrintScanDoctorService.exe [5516]
	jhi_service.exe [5524]
	HPSIsvc.exe [5532]
	ipfsvc.exe [5492]
	ipf_uf.exe [5540]
	svchost.exe [5548]
	svchost.exe [5556]
	svchost.exe [5564]
	svchost.exe [5572]
	WMIRegistrationService.exe [5588]
	windowsnetservicehelper.exe [5596]
	OfficeClickToRun.exe [5604]
	IntelCpHDCPSvc.exe [5620]
	IntelAudioService.exe [5640]
	RtkAudUService64.exe [5652]
	DtsApo4Service.exe [5692]
	node.exe [6380]
	svchost.exe [6724]
	svchost.exe [6868]
	svchost.exe [6576]
	svchost.exe [6504]
	wlanext.exe [3132]
	svchost.exe [7732]
	svchost.exe [7792]
	NgcIso.exe [7832]
	svchost.exe [8016]
	svchost.exe [7256]
	conhost.exe [8480]
	svchost.exe [8512]
	svchost.exe [9160]
	svchost.exe [9228]
	node.exe [9464]
	AggregatorHost.exe [9504]
	svchost.exe [9828]
	svchost.exe [4684]
	SearchIndexer.exe [11136]
	svchost.exe [12572]
	svchost.exe [4372]
	svchost.exe [10760]
	SecurityHealthService.exe [8412]
	svchost.exe [14420]
	svchost.exe [15024]
	svchost.exe [15336]
	svchost.exe [15656]
	dasHost.exe [16156]
	dasHost.exe [16260]
	svchost.exe [16240]
	svchost.exe [9988]
	svchost.exe [11748]
	svchost.exe [4028]
	svchost.exe [7284]
	svchost.exe [15568]
	svchost.exe [12392]
	svchost.exe [12692]
	MpDefenderCoreService.exe [4396]
	MsMpEng.exe [10816]
	hp-one-agent-service.exe [4064]
	csrss.exe [14512]
	winlogon.exe [5628]
	fontdrvhost.exe [13072]
	dwm.exe [15500]
	ipf_helper.exe [9964]
	sihost.exe [8576]
	svchost.exe [5876]
	svchost.exe [3488]
	svchost.exe [5768]
	svchost.exe [9932]
	taskhostw.exe [5708]
	explorer.exe [3532]
	CrossDeviceResume.exe [3204]
	RtkAudUService64.exe [16440]
	svchost.exe [7624]
	SynTPEnh.exe [13892]
	SearchHost.exe [13616]
	StartMenuExperienceHost.exe [13032]
	RuntimeBroker.exe [12596]
	svchost.exe [13076]
	Widgets.exe [12104]
	WidgetService.exe [13784]
	msedgewebview2.exe [9276]
	msedgewebview2.exe [13980]
	msedgewebview2.exe [928]
	msedgewebview2.exe [5580]
	msedgewebview2.exe [7896]
	msedgewebview2.exe [8116]
	TextInputHost.exe [1212]
	svchost.exe [8740]
	svchost.exe [11672]
	ctfmon.exe [9516]
	TabTip.exe [12292]
	ApplicationFrameHost.exe [16104]
	SecurityHealthSystray.exe [6152]
	HPSystemEventUtilityBackground.exe [13848]
	unsecapp.exe [17036]
	HPSystemEventUtilityHost.exe [13564]
	HPMediaNetwork.exe [7416]
	RtkAudUService64.exe [7184]
	UserOOBEBroker.exe [5728]
	msedgewebview2.exe [5256]
	msedgewebview2.exe [4828]
	msedgewebview2.exe [13692]
	msedgewebview2.exe [13340]
	msedgewebview2.exe [14632]
	msedgewebview2.exe [13132]
	svchost.exe [15404]
	OneDrive.exe [10456]
	backgroundTaskHost.exe [16736]
	WhatsApp.exe [16804]
	ms-teams.exe [7504]
	RuntimeBroker.exe [15348]
	msedgewebview2.exe [776]
	msedgewebview2.exe [4484]
	msedgewebview2.exe [15208]
	msedgewebview2.exe [10284]
	msedgewebview2.exe [13308]
	msedgewebview2.exe [15052]
	PhoneExperienceHost.exe [8964]
	svchost.exe [12616]
	RuntimeBroker.exe [5400]
	RuntimeBroker.exe [11928]
	svchost.exe [15260]
	CrossDeviceService.exe [17580]
	RuntimeBroker.exe [18232]
	DesktopExtension.exe [8164]
	HP.myHP.exe [2992]
	Telegram.exe [10640]
	WWAHost.exe [10604]
	RuntimeBroker.exe [16664]
	dllhost.exe [17180]
	AccountsControlHost.exe [15740]
	svchost.exe [16896]
	svchost.exe [18400]
	svchost.exe [9924]
	FileCoAuth.exe [396]
	CHXSmartScreen.exe [18740]
	RuntimeBroker.exe [4448]
	adb.exe [1572]
	msedge.exe [21388]
	msedge.exe [5148]
	msedge.exe [19800]
	msedge.exe [11428]
	msedge.exe [11396]
	msedge.exe [18580]
	msedge.exe [19972]
	AdobeCollabSync.exe [11304]
	AdobeCollabSync.exe [9520]
	msedge.exe [13276]
	dllhost.exe [7104]
	ShellExperienceHost.exe [19356]
	RuntimeBroker.exe [8232]
	RuntimeBroker.exe [17416]
	RunCat 365.exe [21248]
	RuntimeBroker.exe [21156]
	chrome.exe [17732]
	chrome.exe [19288]
	chrome.exe [1144]
	chrome.exe [11968]
	chrome.exe [12328]
	chrome.exe [10524]
	chrome.exe [5800]
	chrome.exe [10532]
	chrome.exe [19904]
	chrome.exe [15944]
	chrome.exe [15464]
	chrome.exe [17712]
	chrome.exe [11876]
	chrome.exe [20004]
	chrome.exe [11388]
	chrome.exe [20572]
	chrome.exe [3036]
	chrome.exe [19836]
	chrome.exe [21336]
	chrome.exe [21812]
	chrome.exe [21928]
	chrome.exe [21860]
	chrome.exe [12444]
	chrome.exe [21544]
	MoUsoCoreWorker.exe [11960]
	svchost.exe [21896]
	backgroundTaskHost.exe [1220]
	chrome.exe [6228]
	ShellHost.exe [2752]
	LockApp.exe [5036]
	RuntimeBroker.exe [19116]
	audiodg.exe [12396]
	wuaucltcore.exe [2488]
	svchost.exe [11820]
	vds.exe [14484]
	smartscreen.exe [9224]
	backgroundTaskHost.exe [4104]
	TrustedInstaller.exe [19784]
	svchost.exe [22188]
	TiWorker.exe [17284]
	WmiPrvSE.exe [18112]
	RuntimeBroker.exe [15608]
	svchost.exe [3364]
	svchost.exe [12496]
	svchost.exe [17468]
	mcafee-security.exe [21128]
	RuntimeBroker.exe [21308]
	mcafee-security-ft.exe [10600]
	SecHealthUI.exe [18828]
	SecurityHealthHost.exe [16204]
	taskhostw.exe [21412]
	svchost.exe [8304]
	chrome.exe [15364]
	RuntimeBroker.exe [11476]
	SecurityHealthHost.exe [2556]
	explorer.exe [9780]
	powershell.exe [22060]
	conhost.exe [4944]
	svchost.exe [10984]
	TFT Unlock.exe [18540]
	WmiPrvSE.exe [20888]
	tftunlock.exe  [18096]
	Setup.exe [2296]

Installed Apps:
All Users:
	HP LaserJet Professional P1100-P1560-P1600 Series
	Mozilla Firefox (x64 en-US) - 145.0.1
	Mozilla Maintenance Service - 117.0
	Microsoft OneDrive - 25.243.1211.0001
	PotPlayer-64 bit - 1.7.10667
	Microsoft Office LTSC Professional Plus 2021 - ar-sa - 16.0.14334.20296
	VLC media player - 3.0.3
	WinRAR 5.60 (64-bit) - 5.60.0
	Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.42.34433 - 14.42.34433
	HP One Agent - 1.2.7.1708
	Office 16 Click-to-Run Licensing Component - 16.0.14334.20296
	Office 16 Click-to-Run Extensibility Component 64-bit Registration - 16.0.14334.20090
	Google Chrome - 144.0.7559.97
	Adobe Acrobat (64-bit) - 25.001.21111
	HP One Agent - 1.2.007.1708
	Microsoft Visual C++ 2022 X64 Additional Runtime - 14.42.34433 - 14.42.34433
Current User:
	Messenger 75.4.124 - 75.4.124
	Opera Stable 126.0.5750.59 - 126.0.5750.59
	Viber - <ip>
	Telegram Desktop - 4.9.9
```

### `cystack_7a949b1d`

**Field keys:**
`All Users`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AE

System Summary:
	- HWID: 0EB20445-A8A6-7BD1-AAFD-8EC95235F641
	- OS: Windows 10
	- Architecture: x64
	- UserName: hp
	- Computer Name: DESKTOP-4VMJA7R
	- Local Time: 2026-01-28 <ip>
	- UTC: 4
	- Language: id-ID
	- Keyboards: English (United Kingdom)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\AppData\Local\Temp\Rockstar_Games\Setup.exe
	- CPU: Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz
	- Cores: 2
	- Threads: 4
	- RAM: 8 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) HD Graphics Family
			Resolution: 1366x768
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) HD Graphics Family

Process count: 172
Process List: 
	[System Process] [0]
	System [4]
	Registry [100]
	smss.exe [416]
	csrss.exe [580]
	wininit.exe [732]
	services.exe [804]
	lsass.exe [824]
	svchost.exe [944]
	fontdrvhost.exe [972]
	WUDFHost.exe [508]
	svchost.exe [528]
	svchost.exe [384]
	svchost.exe [1152]
	svchost.exe [1188]
	svchost.exe [1244]
	svchost.exe [1268]
	svchost.exe [1632]
	svchost.exe [1648]
	svchost.exe [1664]
	svchost.exe [1688]
	svchost.exe [1708]
	svchost.exe [1732]
	svchost.exe [1740]
	svchost.exe [1756]
	svchost.exe [1764]
	svchost.exe [1792]
	Memory Compression [1960]
	svchost.exe [2032]
	svchost.exe [1088]
	svchost.exe [1384]
	svchost.exe [1460]
	igfxCUIService.exe [2092]
	svchost.exe [2172]
	svchost.exe [2184]
	svchost.exe [2200]
	svchost.exe [2336]
	svchost.exe [2364]
	svchost.exe [2492]
	svchost.exe [2592]
	svchost.exe [2600]
	svchost.exe [2608]
	svchost.exe [2752]
	svchost.exe [2836]
	svchost.exe [2916]
	spoolsv.exe [3032]
	svchost.exe [3064]
	svchost.exe [2380]
	svchost.exe [2300]
	AppleMobileDeviceService.exe [3308]
	mDNSResponder.exe [3316]
	svchost.exe [3344]
	svchost.exe [3376]
	svchost.exe [3400]
	svchost.exe [3412]
	fpCSEvtSvc.exe [3432]
	svchost.exe [3508]
	servicehost.exe [3528]
	p2penhance.exe [3572]
	MpDefenderCoreService.exe [3588]
	svchost.exe [3640]
	svchost.exe [3648]
	svchost.exe [3684]
	SynTPEnhService.exe [3704]
	dasHost.exe [3732]
	valWBFPolicyService.exe [3752]
	MsMpEng.exe [3804]
	svchost.exe [3812]
	svchost.exe [3820]
	svchost.exe [3864]
	svchost.exe [3948]
	SearchIndexer.exe [4384]
	svchost.exe [4580]
	dllhost.exe [7672]
	svchost.exe [8140]
	AggregatorHost.exe [7236]
	svchost.exe [2984]
	NisSrv.exe [2668]
	svchost.exe [4504]
	svchost.exe [8604]
	svchost.exe [8696]
	svchost.exe [8816]
	svchost.exe [8920]
	svchost.exe [7892]
	SecurityHealthService.exe [4532]
	svchost.exe [4120]
	svchost.exe [600]
	svchost.exe [8588]
	svchost.exe [6872]
	svchost.exe [10888]
	svchost.exe [10704]
	svchost.exe [9888]
	svchost.exe [2080]
	svchost.exe [11884]
	MoUsoCoreWorker.exe [7420]
	svchost.exe [4872]
	csrss.exe [1240]
	winlogon.exe [8380]
	fontdrvhost.exe [1568]
	dwm.exe [8544]
	svchost.exe [8348]
	SynTPEnh.exe [8452]
	uihost.exe [14664]
	ctfmon.exe [14712]
	sihost.exe [11356]
	svchost.exe [4596]
	svchost.exe [12692]
	taskhostw.exe [12012]
	explorer.exe [12672]
	igfxHK.exe [3636]
	SynTPHelper.exe [14840]
	igfxTray.exe [13872]
	svchost.exe [6516]
	SearchApp.exe [11636]
	StartMenuExperienceHost.exe [5300]
	RuntimeBroker.exe [13640]
	svchost.exe [4440]
	dllhost.exe [11464]
	RuntimeBroker.exe [5368]
	SearchApp.exe [11256]
	TextInputHost.exe [10220]
	msedgewebview2.exe [8392]
	msedgewebview2.exe [4944]
	RuntimeBroker.exe [12272]
	LockApp.exe [11560]
	RuntimeBroker.exe [15312]
	msedgewebview2.exe [1148]
	msedgewebview2.exe [13212]
	msedgewebview2.exe [8756]
	msedgewebview2.exe [8872]
	SecurityHealthSystray.exe [12128]
	RtsCM64.exe [11784]
	FAHWindow64.exe [10724]
	OneDrive.exe [7852]
	eld3.exe [11608]
	eld3.exe [12924]
	WzPreloader.exe [2372]
	M365Copilot.exe [12884]
	svchost.exe [3356]
	RuntimeBroker.exe [4632]
	msedgewebview2.exe [1304]
	msedgewebview2.exe [14280]
	msedgewebview2.exe [6380]
	msedgewebview2.exe [6024]
	msedgewebview2.exe [9100]
	msedgewebview2.exe [8340]
	PhoneExperienceHost.exe [8688]
	SystemSettings.exe [14260]
	ApplicationFrameHost.exe [8904]
	UserOOBEBroker.exe [9176]
	msedgewebview2.exe [6640]
	CompPkgSrv.exe [1224]
	ShellExperienceHost.exe [4984]
	RuntimeBroker.exe [11176]
	msedge.exe [6084]
	msedge.exe [928]
	msedge.exe [8476]
	msedge.exe [7032]
	msedge.exe [2796]
	msedge.exe [15328]
	msedge.exe [13992]
	WmiPrvSE.exe [5032]
	UnlockTool-2026-01-20-0.exe [9032]
	WmiPrvSE.exe [9732]
	smartscreen.exe [9252]
	audiodg.exe [13404]
	BestFlashTool.exe [14808]
	WmiPrvSE.exe [10732]
	powershell.exe [8272]
	conhost.exe [5884]
	TFT Unlock.exe [14580]
	Setup.exe [15040]

Installed Apps:
All Users:
	Windows Driver Package - Google, Inc. (WinUSB) AndroidUsbDeviceClass  (02/02/2015 4.0.0000.00001) - 02/02/2015 4.0.0000.00001
	Windows Driver Package - DriverCoding Corporation (vcom_modem) Modem  (04/10/2014 <ip>) - 04/10/2014 <ip>
	LibUSB-Win32-<ip> - <ip>
	Synaptics Pointing Device Driver - <ip>
	WinRAR 7.20 beta 2 (64-bit) - 7.20.2
	Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
	Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
	Microsoft Update Health Tools - <ip>
	Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.32.31332 - 14.32.31332
	Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61135 - 11.0.61135
	Microsoft Visual Studio 2010 Tools for Office Runtime (x64) - 10.0.60833
	Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 - 12.0.40664
	Bonjour - <ip>
	Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.7523 - 9.0.30729.7523
	Apple Mobile Device Support - <ip>
	iTunes - <ip>
	Microsoft Visual C++ 2005 Redistributable (x64) - 8.0.61186
	Update for x64-based Windows Systems (KB5001716) - <ip>
	WinZip 77.0 - 77.0.16478
	Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61135 - 11.0.61135
	WinUSB Drivers x64 - 2012.17.1.239
	Microsoft Visual C++ 2022 X64 Additional Runtime - 14.32.31332 - 14.32.31332
	OPPO?????? 2.0.1 - <ip>
Current User:
	Microsoft OneDrive - 25.243.1211.0001
```

### `cystack_a867f3f5`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Network Info`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Network Info:
	- IP: <ip>
	- Country: AE

System Summary:
	- HWID: 7EBDE087-257C-1B03-D09F-845B98370C33
	- OS: Windows 10
	- Architecture: x64
	- UserName: golden planet
	- Computer Name: DESKTOP-7PJGQIR
	- Local Time: 2026-01-30 <ip>
	- UTC: 4
	- Language: en-US
	- Keyboards: English (United States)
	- Laptop: FALSE
	- Running Path: C:\Users\<user>\AppData\Local\Temp\Rockstar_Games\Setup.exe
	- CPU: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
	- Cores: 4
	- Threads: 4
	- RAM: 6 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) HD Graphics
			Resolution: 1024x768
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) HD Graphics

Process count: 158
Process List: 
	[System Process] [0]
	System [4]
	Registry [108]
	smss.exe [440]
	csrss.exe [532]
	csrss.exe [632]
	wininit.exe [656]
	winlogon.exe [704]
	services.exe [776]
	lsass.exe [796]
	svchost.exe [920]
	fontdrvhost.exe [948]
	fontdrvhost.exe [956]
	svchost.exe [468]
	svchost.exe [556]
	svchost.exe [808]
	svchost.exe [1080]
	dwm.exe [1176]
	svchost.exe [1240]
	svchost.exe [1248]
	svchost.exe [1260]
	Memory Compression [1312]
	svchost.exe [1388]
	svchost.exe [1432]
	svchost.exe [1440]
	svchost.exe [1448]
	svchost.exe [1528]
	svchost.exe [1568]
	svchost.exe [1608]
	svchost.exe [1616]
	svchost.exe [1716]
	svchost.exe [1744]
	svchost.exe [1848]
	svchost.exe [1872]
	svchost.exe [1944]
	svchost.exe [1972]
	svchost.exe [2024]
	svchost.exe [2032]
	svchost.exe [2040]
	svchost.exe [1964]
	svchost.exe [2136]
	spoolsv.exe [2188]
	svchost.exe [2232]
	svchost.exe [2264]
	svchost.exe [2332]
	svchost.exe [2448]
	svchost.exe [2508]
	AppleMobileDeviceService.exe [2560]
	svchost.exe [2568]
	svchost.exe [2584]
	svchost.exe [2592]
	svchost.exe [2664]
	svchost.exe [2736]
	svchost.exe [2748]
	UltraViewer_Service.exe [2756]
	svchost.exe [2792]
	svchost.exe [2800]
	svchost.exe [2848]
	MsMpEng.exe [2960]
	svchost.exe [3048]
	svchost.exe [1656]
	MpDefenderCoreService.exe [3100]
	AudioCopyPlugin.exe [3140]
	svchost.exe [3184]
	svchost.exe [3232]
	svchost.exe [3656]
	svchost.exe [3996]
	svchost.exe [3580]
	dllhost.exe [4760]
	AggregatorHost.exe [5108]
	svchost.exe [4260]
	svchost.exe [3700]
	dialer.exe [4620]
	dialer.exe [4556]
	NisSrv.exe [3504]
	WmiPrvSE.exe [3860]
	svchost.exe [1132]
	sihost.exe [640]
	svchost.exe [928]
	svchost.exe [4884]
	taskhostw.exe [5144]
	dopwjo.exe [5412]
	svchost.exe [5480]
	ctfmon.exe [5520]
	svchost.exe [5564]
	svchost.exe [5680]
	svchost.exe [5816]
	svchost.exe [6016]
	svchost.exe [1224]
	explorer.exe [1988]
	svchost.exe [5196]
	StartMenuExperienceHost.exe [3960]
	svchost.exe [7540]
	RuntimeBroker.exe [7796]
	TextInputHost.exe [8120]
	svchost.exe [7768]
	eServiceHost.exe [4956]
	svchost.exe [720]
	svchost.exe [5000]
	svchost.exe [1504]
	PhoneExperienceHost.exe [8004]
	SecurityHealthSystray.exe [7236]
	SecurityHealthService.exe [6208]
	igfxtray.exe [6636]
	hkcmd.exe [6548]
	igfxpers.exe [6928]
	OneDrive.exe [6188]
	eld3.exe [7260]
	svchost.exe [4488]
	eld3.exe [3420]
	M365Copilot.exe [1512]
	RuntimeBroker.exe [7104]
	msedgewebview2.exe [6464]
	msedgewebview2.exe [6552]
	msedgewebview2.exe [4452]
	msedgewebview2.exe [3848]
	msedgewebview2.exe [2808]
	WmiPrvSE.exe [3588]
	ShellExperienceHost.exe [1284]
	RuntimeBroker.exe [4328]
	explorer.exe [3520]
	svchost.exe [5028]
	taskhostw.exe [6788]
	svchost.exe [4084]
	svchost.exe [7116]
	svchost.exe [6828]
	dasHost.exe [1596]
	msedgewebview2.exe [4952]
	svchost.exe [2844]
	backgroundTaskHost.exe [5920]
	postman.exe [4356]
	postman.exe [8892]
	svchost.exe [2460]
	UserOOBEBroker.exe [6036]
	smartscreen.exe [5688]
	svchost.exe [4736]
	svchost.exe [4980]
	chrome.exe [4916]
	svchost.exe [68]
	chrome.exe [6052]
	svchost.exe [6652]
	svchost.exe [2328]
	updater.exe [7868]
	updater.exe [9000]
	updater.exe [7900]
	updater.exe [7648]
	updater.exe [8520]
	updater.exe [3540]
	updater.exe [7908]
	updater.exe [5984]
	audiodg.exe [2692]
	powershell.exe [6768]
	conhost.exe [1332]
	TFT Unlock.exe [7212]
	WmiPrvSE.exe [7140]
	updater.exe [8700]
	updater.exe [8132]
	Setup.exe [4420]

Installed Apps:
All Users:
	LibUSB-Win32-<ip> - <ip>
	WinRAR 7.13 (64-bit) - 7.13.0
	iTunes - <ip>
	Microsoft Update Health Tools - <ip>
	WinUSB Drivers x64 - 2011.44.1.182
	Update for x64-based Windows Systems (KB5001716) - <ip>
	Apple Mobile Device Support - <ip>
Current User:
	Audio Copy 3.8.8.4109
	Microsoft OneDrive - 25.243.1211.0001
```

### `cystack_b7b299ef`

**Field keys:**
`All Users`, `Current User`, `Installed Apps`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: AR
System Summary:
	- HWID: 94472D5A-CB8D-10BE-D902-C526512A7D0E
	- OS: Windows 10
	- Architecture: x64
	- UserName: mrobot
	- Computer Name: DESKTOP-GG7HIMH
	- Local Time: 2026-02-06 <ip>
	- UTC: -3
	- Language: es-AR
	- Keyboards: Español (Argentina) / Español (España, internacional)
	- Laptop: FALSE
	- Running Path: C:\ProgramData\beautyswan\AvastSvc.exe
	- CPU: AMD A6-7400K Radeon R5, 6 Compute Cores 2C+4G  
	- Cores: 1
	- Threads: 2
	- RAM: 15 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: AMD Radeon(TM) R5 Graphics
			Resolution: 1366x768
			Color Depth: 32 bits per pixel
	- GPU:
		-AMD Radeon(TM) R5 Graphics
Process count: 134
Process List: 
	[System Process] [0]
	System [4]
	Registry [88]
	smss.exe [368]
	csrss.exe [472]
	wininit.exe [584]
	services.exe [652]
	lsass.exe [660]
	svchost.exe [848]
	fontdrvhost.exe [868]
	svchost.exe [968]
	svchost.exe [1012]
	svchost.exe [520]
	svchost.exe [960]
	svchost.exe [1120]
	svchost.exe [1176]
	svchost.exe [1216]
	svchost.exe [1252]
	svchost.exe [1264]
	svchost.exe [1280]
	svchost.exe [1308]
	svchost.exe [1420]
	svchost.exe [1476]
	atiesrxx.exe [1508]
	svchost.exe [1644]
	svchost.exe [1704]
	svchost.exe [1756]
	svchost.exe [1780]
	svchost.exe [1796]
	svchost.exe [1804]
	Memory Compression [1924]
	svchost.exe [1936]
	svchost.exe [1964]
	svchost.exe [1972]
	svchost.exe [2172]
	svchost.exe [2312]
	svchost.exe [2388]
	svchost.exe [2396]
	svchost.exe [2436]
	svchost.exe [2468]
	spoolsv.exe [2584]
	svchost.exe [2640]
	svchost.exe [2684]
	svchost.exe [2728]
	svchost.exe [2928]
	svchost.exe [2936]
	svchost.exe [2948]
	svchost.exe [2980]
	MpDefenderCoreService.exe [3004]
	svchost.exe [3012]
	svchost.exe [3068]
	svchost.exe [1620]
	svchost.exe [2264]
	svchost.exe [2288]
	MsMpEng.exe [2268]
	svchost.exe [3172]
	svchost.exe [3216]
	svchost.exe [3320]
	svchost.exe [3396]
	dllhost.exe [3748]
	SearchIndexer.exe [3920]
	svchost.exe [4124]
	svchost.exe [4252]
	svchost.exe [4472]
	AggregatorHost.exe [4616]
	svchost.exe [4852]
	svchost.exe [5176]
	BraveCrashHandler.exe [6408]
	BraveCrashHandler64.exe [6420]
	svchost.exe [6844]
	svchost.exe [3376]
	svchost.exe [6576]
	svchost.exe [7704]
	svchost.exe [5772]
	svchost.exe [5148]
	SecurityHealthService.exe [1588]
	svchost.exe [4132]
	svchost.exe [5696]
	svchost.exe [7996]
	audiodg.exe [3972]
	svchost.exe [6908]
	svchost.exe [1052]
	csrss.exe [5796]
	winlogon.exe [4232]
	dwm.exe [1668]
	fontdrvhost.exe [2508]
	svchost.exe [832]
	atieclxx.exe [7600]
	svchost.exe [5820]
	svchost.exe [3968]
	sihost.exe [3960]
	svchost.exe [2220]
	svchost.exe [2880]
	taskhostw.exe [5708]
	MicrosoftEdgeUpdate.exe [4716]
	explorer.exe [3224]
	ctfmon.exe [7684]
	svchost.exe [2408]
	StartMenuExperienceHost.exe [5592]
	SearchApp.exe [5832]
	SystemSettings.exe [5728]
	ApplicationFrameHost.exe [3496]
	UserOOBEBroker.exe [1296]
	brave.exe [5684]
	brave.exe [5512]
	brave.exe [7380]
	brave.exe [7508]
	brave.exe [1212]
	brave.exe [1568]
	brave.exe [3148]
	brave.exe [6164]
	brave.exe [4440]
	brave.exe [4904]
	svchost.exe [4812]
	CompPkgSrv.exe [4956]
	WmiPrvSE.exe [7556]
	TextInputHost.exe [812]
	dllhost.exe [7432]
	smartscreen.exe [5636]
	svchost.exe [3236]
	svchost.exe [4556]
	svchost.exe [6692]
	svchost.exe [1116]
	SearchProtocolHost.exe [4908]
	smss.exe [3628]
	svchost.exe [7308]
	svchost.exe [5408]
	RuntimeBroker.exe [1664]
	brave.exe [3488]
	brave.exe [7880]
	SearchFilterHost.exe [1368]
	RuntimeBroker.exe [2608]
	WmiPrvSE.exe [6984]
	AvastSvc.exe [5256]
Installed Apps:
All Users:
	WinRAR 7.20 beta 1 (64-bit) - 7.20.1
	PCSX2 - 2.4.0
	Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.50.35719 - 14.50.35719
	Java 8 Update 401 (64-bit) - 8.0.4010.10
	Microsoft Visual C++ 2022 X64 Additional Runtime - 14.50.35719 - 14.50.35719
	Update for x64-based Windows Systems (KB5001716) - <ip>
Current User:
	Microsoft OneDrive - 26.002.0105.0001
	Roblox Player for mrobot
```

### `cystack_e460e932`

**Field keys:**
`Installed Apps`, `Process List`, `Process count`, `System Summary`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    Network Info:
	- IP: <ip>
	- Country: BR
System Summary:
	- HWID: 48C53D43-D590-67DF-449B-5877CC73A08F
	- OS: Windows 10
	- Architecture: x64
	- UserName: maxwe
	- Computer Name: DESKTOP-5QRCJB7
	- Local Time: 2026-02-06 <ip>
	- UTC: -3
	- Language: pt-BR
	- Keyboards: Português (Brasil)
	- Laptop: FALSE
	- Running Path: C:\ProgramData\beautyswan\AvastSvc.exe
	- CPU: Intel(R) Core(TM) i3-10100 CPU @ 3.60GHz
	- Cores: 4
	- Threads: 8
	- RAM: 8 GB
	- Display Resolution: 
		Monitor 1
			Device Name: \\.\DISPLAY1
			Device String: Intel(R) UHD Graphics 630
			Resolution: 1440x900
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) UHD Graphics 630
Process count: 191
Process List: 
	[System Process] [0]
	System [4]
	Registry [124]
	smss.exe [504]
	csrss.exe [624]
	wininit.exe [708]
	services.exe [824]
	lsass.exe [876]
	svchost.exe [1004]
	fontdrvhost.exe [432]
	svchost.exe [916]
	svchost.exe [1044]
	svchost.exe [1152]
	svchost.exe [1160]
	svchost.exe [1316]
	IntelCpHDCPSvc.exe [1332]
	svchost.exe [1448]
	IntelCpHeciSvc.exe [1524]
	svchost.exe [1556]
	svchost.exe [1592]
	svchost.exe [1676]
	svchost.exe [1712]
	svchost.exe [1764]
	svchost.exe [1860]
	svchost.exe [1864]
	svchost.exe [1876]
	svchost.exe [1956]
	svchost.exe [2008]
	Memory Compression [2044]
	igfxCUIService.exe [1396]
	svchost.exe [2096]
	svchost.exe [2160]
	svchost.exe [2168]
	svchost.exe [2324]
	svchost.exe [2332]
	svchost.exe [2428]
	svchost.exe [2432]
	svchost.exe [2444]
	svchost.exe [2480]
	svchost.exe [2584]
	spoolsv.exe [2804]
	svchost.exe [2840]
	svchost.exe [2896]
	svchost.exe [2948]
	svchost.exe [2996]
	svchost.exe [2512]
	svchost.exe [2560]
	svchost.exe [616]
	svchost.exe [2972]
	svchost.exe [3076]
	svchost.exe [3092]
	svchost.exe [3100]
	svchost.exe [3112]
	OneApp.IGCC.WinService.exe [3160]
	DSAUpdateService.exe [3168]
	DSAService.exe [3176]
	MsMpEng.exe [3184]
	MpDefenderCoreService.exe [3196]
	jhi_service.exe [3204]
	LMS.exe [3412]
	svchost.exe [3472]
	svchost.exe [3592]
	svchost.exe [3620]
	svchost.exe [3652]
	svchost.exe [3724]
	dllhost.exe [4312]
	SearchIndexer.exe [4964]
	PresentationFontCache.exe [4568]
	svchost.exe [4688]
	svchost.exe [5236]
	svchost.exe [5572]
	svchost.exe [5660]
	AggregatorHost.exe [5900]
	svchost.exe [6016]
	svchost.exe [6320]
	NisSrv.exe [6744]
	svchost.exe [7528]
	svchost.exe [7980]
	svchost.exe [9876]
	svchost.exe [5784]
	SecurityHealthService.exe [9676]
	svchost.exe [10616]
	svchost.exe [10656]
	svchost.exe [2892]
	svchost.exe [9340]
	svchost.exe [8148]
	svchost.exe [1660]
	svchost.exe [784]
	svchost.exe [11868]
	conhost.exe [2960]
	esrv.exe [2352]
	svchost.exe [7796]
	MoUsoCoreWorker.exe [7048]
	svchost.exe [4772]
	svchost.exe [9388]
	csrss.exe [15032]
	winlogon.exe [6980]
	dwm.exe [14736]
	fontdrvhost.exe [1800]
	sihost.exe [2024]
	svchost.exe [9840]
	svchost.exe [5452]
	igfxEM.exe [14132]
	taskhostw.exe [10288]
	taskhostw.exe [16116]
	explorer.exe [9488]
	svchost.exe [3436]
	svchost.exe [11812]
	ctfmon.exe [11108]
	svchost.exe [14540]
	SearchApp.exe [1112]
	StartMenuExperienceHost.exe [5800]
	RuntimeBroker.exe [10372]
	RuntimeBroker.exe [12120]
	SearchApp.exe [2644]
	msedgewebview2.exe [12840]
	msedgewebview2.exe [9028]
	svchost.exe [13112]
	LockApp.exe [6328]
	msedgewebview2.exe [4796]
	msedgewebview2.exe [2504]
	RuntimeBroker.exe [1632]
	msedgewebview2.exe [9552]
	msedgewebview2.exe [12904]
	RuntimeBroker.exe [11452]
	SecurityHealthSystray.exe [10036]
	vgtray.exe [12176]
	RiotClientServices.exe [9940]
	RiotClientCrashHandler.exe [1276]
	steam.exe [11376]
	steamwebhelper.exe [13640]
	IGCCTray.exe [3604]
	steamservice.exe [10292]
	steamwebhelper.exe [12764]
	steamwebhelper.exe [11160]
	steamwebhelper.exe [7740]
	steamwebhelper.exe [14256]
	IGCC.exe [5908]
	steamwebhelper.exe [5700]
	M365Copilot.exe [6156]
	RuntimeBroker.exe [14676]
	msedgewebview2.exe [11224]
	msedgewebview2.exe [15620]
	msedgewebview2.exe [12844]
	msedgewebview2.exe [632]
	msedgewebview2.exe [5316]
	msedgewebview2.exe [15448]
	steamwebhelper.exe [4072]
	ApplicationFrameHost.exe [10004]
	PaintStudio.View.exe [14628]
	RuntimeBroker.exe [8412]
	SystemSettings.exe [9068]
	UserOOBEBroker.exe [14932]
	Video.UI.exe [2544]
	chrome.exe [10592]
	chrome.exe [13940]
	chrome.exe [5056]
	chrome.exe [8920]
	chrome.exe [15868]
	chrome.exe [10204]
	TextInputHost.exe [2064]
	chrome.exe [10096]
	chrome.exe [7392]
	chrome.exe [288]
	CompPkgSrv.exe [9392]
	chrome.exe [14392]
	chrome.exe [7520]
	chrome.exe [6968]
	svchost.exe [15220]
	MuMuNxMain.exe [4696]
	crashpad_handler.exe [4012]
	svchost.exe [15684]
	chrome.exe [9268]
	Xeno-v1.3.20.exe [14128]
	Xeno.exe [11276]
	Xeno.exe [11116]
	Xeno.exe [4212]
	Xeno.exe [10356]
	chrome.exe [14892]
	Xeno.exe [11256]
	audiodg.exe [12940]
	chrome.exe [12152]
	WmiPrvSE.exe [8416]
	chrome.exe [2092]
	SearchProtocolHost.exe [4264]
	SearchFilterHost.exe [10208]
	SearchProtocolHost.exe [13056]
	svchost.exe [4968]
	smartscreen.exe [7384]
	RuntimeBroker.exe [3004]
	AvastSvc.exe [12924]
Installed Apps:
All Users:
	MuMuPlayer - 5.21.3.3067
	Riot Vanguard
	Left 4 Dead
	WinRAR 7.13 (64-bit) - 7.13.0
	Microsoft .NET Host - 8.0.14 (x64) - 64.56.29490
	PCSX2 - 2.6.2
	Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
	Microsoft Update Health Tools - <ip>
	Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
	Intel(R) Computing Improvement Program - 2.4.11085
	Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161 - 9.0.30729.6161
	Microsoft .NET Runtime - 8.0.14 (x64) - 64.56.29490
	Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
	Microsoft .NET Host FX Resolver - 8.0.14 (x64) - 64.56.29490
	Update for x64-based Windows Systems (KB5001716) - <ip>
Current User:
	CapCut - 8.0.1.3366
	Microsoft OneDrive - 26.002.0105.0001
	League of Legends
	Riot Client 
	VALORANT
	Roblox Player for maxwe
	Roblox Studio for maxwe
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
