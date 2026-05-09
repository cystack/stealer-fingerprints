# Vidar

Vidar Stealer logs. Build 4.x emits a flat key-colon-value
`information.txt` opening with `Ip:`, `Country:`, `Version:`
followed by hardware, locale, and build identity blocks. Vidar
has been distributed since 2018 as a fork of Arkei and remains a
high-volume infostealer family in 2025+.

**Also known as:** `VidarStealer`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Telegram and Discord session data
- FTP, email, and VPN client configurations
- Documents and screenshots from the desktop

## Variants

### `cystack_2ea61e3e`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Miscrits`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: PH

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 11/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 24/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16293 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
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
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
dasHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
jhi_service.exe
nvcontainer.exe
MpDefenderCoreService.exe
IPROSetMonitor.exe
MsMpEng.exe
OfficeClickToRun.exe
LMS.exe
svchost.exe
svchost.exe
SearchIndexer.exe
svchost.exe
dllhost.exe
sihost.exe
AggregatorHost.exe
svchost.exe
svchost.exe
taskhostw.exe
taskhostw.exe
svchost.exe
svchost.exe
ctfmon.exe
explorer.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
RuntimeBroker.exe
svchost.exe
svchost.exe
nvcontainer.exe
nvcontainer.exe
SearchApp.exe
nvcontainer.exe
svchost.exe
dllhost.exe
nvsphelper64.exe
NVIDIA Overlay.exe
NisSrv.exe
NVIDIA Overlay.exe
NVIDIA Overlay.exe
NVIDIA Overlay.exe
NVIDIA Overlay.exe
RuntimeBroker.exe
TextInputHost.exe
SecurityHealthSystray.exe
SecurityHealthService.exe
vgtray.exe
OneDrive.exe
Discord.exe
RiotClientServices.exe
Discord.exe
RiotClientCrashHandler.exe
Discord.exe
dllhost.exe
Discord.exe
CompPkgSrv.exe
svchost.exe
TranslucentTB.exe
svchost.exe
RuntimeBroker.exe
Discord.exe
Discord.exe
M365Copilot.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
svchost.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
steam.exe
steamwebhelper.exe
steamservice.exe
steamwebhelper.exe
SystemSettings.exe
ApplicationFrameHost.exe
UserOOBEBroker.exe
steamwebhelper.exe
steamwebhelper.exe
steamwebhelper.exe
steamwebhelper.exe
Video.UI.exe
RuntimeBroker.exe
FileCoAuth.exe
steamwebhelper.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
chrome.exe
svchost.exe
WindowsPackageManagerServer.exe
svchost.exe
ShellExperienceHost.exe
RuntimeBroker.exe
audiodg.exe
chrome.exe
chrome.exe
steamwebhelper.exe
OneDrive.Sync.Service.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
smartscreen.exe
mshta.exe
svchost.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
rundll32.exe
MpCmdRun.exe
WmiPrvSE.exe
backgroundTaskHost.exe
cmd.exe
conhost.exe
powershell.exe
iCBh.exe
SearchProtocolHost.exe
SearchFilterHost.exe
37JWE.exe
svchost.exe

[Software]
Tauri Launcher 3.3.1 - 3.3.1
Microsoft Office LTSC Professional Plus 2024 - en-us - 16.0.17932.20130
Intel(R) Network Connections <ip> - <ip>
Riot Vanguard
Summoners War
Where Winds Meet
Miscrits: World of Creatures
Left 4 Dead 2
Dota 2
WinRAR 7.13 (64-bit) - 7.13.0
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
Microsoft Update Health Tools - <ip>
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
Windows PC Health Check - 3.6.2204.08001
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
Office 16 Click-to-Run Licensing Component - 16.0.17932.20130
Office 16 Click-to-Run Extensibility Component - 16.0.17932.20130
Intel(R) Network Connections <ip> - <ip>
NVIDIA Graphics Driver 580.88 - 580.88
NVIDIA App <ip> - <ip>
NVIDIA MessageBus 3 for NvApp - 3.16
NVIDIA Backend - <ip>
NvCpl - 1.0
NVIDIA PhysX System Software 9.23.1019 - 9.23.1019
NVIDIA FrameView SDK 1.5.11504.36206172 - 1.5.11504.36206172
NVIDIA HD Audio Driver <ip> - <ip>
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
CapCut - 7.3.0.2974
Discord - 1.0.9221
Microsoft OneDrive - 25.243.1211.0001
Riot Client 
VALORANT
Zoom Workplace - 6.6.6 (19875)
Telegram Desktop - 6.3.9
```

### `cystack_56d5cdde`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARAKA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: VN

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 24/01/2026 <ip>
TimeZone: 7

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16218 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
jhi_service.exe
FoxitPDFReaderUpdateService.exe
OfficeClickToRun.exe
svchost.exe
MpDefenderCoreService.exe
warp-svc.exe
svchost.exe
svchost.exe
svchost.exe
UltraViewer_Service.exe
WMIRegistrationService.exe
MsMpEng.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dllhost.exe
gamingservices.exe
gamingservicesnet.exe
SearchIndexer.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
AggregatorHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
SecurityHealthService.exe
svchost.exe
svchost.exe
SgrmBroker.exe
svchost.exe
MoUsoCoreWorker.exe
GameInputRedistService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
WUDFHost.exe
audiodg.exe
csrss.exe
winlogon.exe
fontdrvhost.exe
dwm.exe
NVDisplay.Container.exe
sihost.exe
svchost.exe
svchost.exe
taskhostw.exe
explorer.exe
svchost.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
SearchApp.exe
RuntimeBroker.exe
ctfmon.exe
RuntimeBroker.exe
TextInputHost.exe
taskhostw.exe
svchost.exe
SecurityHealthSystray.exe
RAVCpl64.exe
UniKeyNT.exe
steam.exe
SystemSettings.exe
ApplicationFrameHost.exe
steamwebhelper.exe
UserOOBEBroker.exe
steamservice.exe
steamwebhelper.exe
steamwebhelper.exe
steamwebhelper.exe
EpicGamesLauncher.exe
steamwebhelper.exe
EpicWebHelper.exe
steamwebhelper.exe
EpicWebHelper.exe
EpicWebHelper.exe
steamwebhelper.exe
XboxPcAppFT.exe
Cloudflare WARP.exe
OneDrive.exe
OneDrive.Sync.Service.exe
svchost.exe
svchost.exe
dllhost.exe
Discord.exe
Discord.exe
Discord.exe
Discord.exe
CompPkgSrv.exe
Discord.exe
Discord.exe
ShellExperienceHost.exe
RuntimeBroker.exe
svchost.exe
svchost.exe
smartscreen.exe
mshta.exe
svchost.exe
rundll32.exe
WmiPrvSE.exe
cmd.exe
conhost.exe
powershell.exe
aFpo3pu9.exe
consent.exe
SearchProtocolHost.exe
SearchFilterHost.exe

[Software]
Cheat Engine 7.6
Microsoft Office Professional Plus 2019 - en-us - 16.0.19127.20302
Ultimate Zombie Defense
NARAKA: BLADEPOINT
Stellar Blade?
Where Winds Meet
VLC media player - 3.0.12
WinRAR 5.71 (64-bit) - 5.71.0
PlayStation(R) PC SDK Runtime - 3.50.0011
Intel(R) Management Engine Components - <ip>
Intel(R) Management Engine Components - 2230.3.19.0
Microsoft Update Health Tools - <ip>
Intel(R) Chipset Device Software - 10.1.19199.8340
Intel(R) ME WMI Provider - <ip>
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
Cloudflare WARP - <ip>
Intel(R) Management Engine Driver - <ip>
UE Prerequisites (x64) - <ip>
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
Office 16 Click-to-Run Licensing Component - 16.0.19029.20208
Office 16 Click-to-Run Extensibility Component - 16.0.19127.20154
Office 16 Click-to-Run Localization Component - 16.0.10730.20102
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005 - 12.0.21005
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005 - 12.0.21005
NVIDIA Graphics Driver 552.12 - 552.12
NVIDIA GeForce Experience <ip> - <ip>
NVIDIA Optimus Update <ip> - <ip>
NVIDIA PhysX System Software 9.21.0713 - 9.21.0713
NVIDIA Update <ip> - <ip>
NVIDIA FrameView SDK 1.3.8513.32290073 - 1.3.8513.32290073
NVIDIA SHIELD Streaming - 7.1.32568680
NVIDIA GPX Common OSS binaries (POCO, OpenSSL, libprotobuf) - 7.1
NVIDIA HD Audio Driver <ip> - <ip>
NVIDIA Install Application - 2.1002.413.0
NVIDIA Backend - <ip>
NVIDIA Container - 1.37
NVIDIA TelemetryApi helper for NvContainer - 1.37
NVIDIA LocalSystem Container - 1.37
NVIDIA Message Bus for NvContainer - 1.34
NVIDIA NVAPI Monitor plugin for NvContainer - 1.0
NVIDIA NetworkService Container - 1.37
NVIDIA Session Container - 1.37
NVIDIA User Container - 1.37
NVIDIA NvModuleTracker - 6.14.25214.24630
NVIDIA NodeJS - <ip>
NVIDIA Watchdog Plugin for NvContainer - 1.37
NVIDIA Telemetry Client - <ip>
NVIDIA Virtual Host Controller - <ip>
Nvidia Share - <ip>
NVIDIA ShadowPlay <ip> - <ip>
NVIDIA SHIELD Wireless Controller Driver - <ip>
NVIDIA Update Core - <ip>
NVIDIA Virtual Audio <ip> - <ip>
Dynamic Application Loader Host Interface Service - <ip>
Update for x64-based Windows Systems (KB5001716) - <ip>
Microsoft GameInput - 10.1.26100.6879
FiveM
Discord - 1.0.9221
Microsoft OneDrive - 25.243.1211.0001
```

### `cystack_60542f84`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: GG
Date: 23/01/2026 <ip>
Path: <redacted>
Work Dir: In memory
Windows: Windows 10 Pro
Install Date: 07/11/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 23/01/2026 <ip>
TimeZone: 0
[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 16315 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti
[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
amdfendrsr.exe
svchost.exe
atiesrxx.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
atieclxx.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
WmiPrvSE.exe
svchost.exe
atkexComSvc.exe
armsvc.exe
svchost.exe
AsusFanControlService.exe
bgsvc.exe
svchost.exe
OfficeClickToRun.exe
svchost.exe
MpDefenderCoreService.exe
svchost.exe
svchost.exe
nvcontainer.exe
SafeConnect.ServiceHost.exe
RtkAudUService64.exe
svchost.exe
svchost.exe
WirelessKB850NotificationService.exe
svchost.exe
MsMpEng.exe
TeamViewer_Service.exe
XeroxPrintJobEventManagerService.exe
svchost.exe
svchost.exe
rundll32.exe
svchost.exe
dllhost.exe
NisSrv.exe
unsecapp.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
McCSPServiceHost.exe
svchost.exe
svchost.exe
SecurityHealthService.exe
svchost.exe
MoUsoCoreWorker.exe
svchost.exe
nvcontainer.exe
sihost.exe
svchost.exe
nvcontainer.exe
svchost.exe
DipAwayMode.exe
McUpdaterModule.exe
taskhostw.exe
AISuite3.exe
svchost.exe
SSScheduler.exe
GpuFanHelper.exe
svchost.exe
svchost.exe
ctfmon.exe
explorer.exe
NVIDIA Web Helper.exe
svchost.exe
conhost.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
svchost.exe
RuntimeBroker.exe
svchost.exe
RuntimeBroker.exe
TextInputHost.exe
File Transfer Server.exe
SecurityHealthSystray.exe
RtkAudUService64.exe
bgui.exe
unsecapp.exe
bgui.exe
bgui.exe
bgui.exe
DTAgent.exe
DiscSoftBusServiceLite.exe
Discord.exe
AdobeCollabSync.exe
AdobeCollabSync.exe
Discord.exe
MicrosoftSecurityApp.exe
Discord.exe
Discord.exe
WhatsApp.Root.exe
CompPkgSrv.exe
Discord.exe
AcrobatNotificationClient.exe
WiFileTransfer.exe
hpwuschd2.exe
RuntimeBroker.exe
jusched.exe
ATTray.exe
msedgewebview2.exe
ASUSRelayWS.exe
svchost.exe
msedgewebview2.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
Discord.exe
ShellExperienceHost.exe
RuntimeBroker.exe
msedgewebview2.exe
svchost.exe
svchost.exe
svchost.exe
nvsphelper64.exe
NVIDIA Share.exe
NVIDIA Share.exe
NVIDIA Share.exe
AsPowerBar.exe
XeroxCorp.PrintHelper.exe
SearchApp.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
RuntimeBroker.exe
McCHSvc.exe
jucheck.exe
AppVShNotify.exe
SearchIndexer.exe
dllhost.exe
ApplicationFrameHost.exe
UserOOBEBroker.exe
dllhost.exe
LockApp.exe
RuntimeBroker.exe
svchost.exe
msedgewebview2.exe
msedgewebview2.exe
olk.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
RuntimeBroker.exe
olkexthost.exe
WINWORD.EXE
aimgr.exe
ai.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
ai.exe
msedgewebview2.exe
XeroxCorp.PrintExperience.exe
RuntimeBroker.exe
msedgewebview2.exe
EXCEL.EXE
svchost.exe
splwow64.exe
msedgewebview2.exe
msedgewebview2.exe
mc-webview-cnt.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
svchost.exe
svchost.exe
DTShellHlp.exe
dasHost.exe
dasHost.exe
msedgewebview2.exe
dasHost.exe
dasHost.exe
dasHost.exe
taskhostw.exe
dasHost.exe
dasHost.exe
msedgewebview2.exe
dasHost.exe
icarus.exe
dasHost.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
dasHost.exe
dasHost.exe
dasHost.exe
dasHost.exe
ai.exe
dasHost.exe
msedgewebview2.exe
msedgewebview2.exe
Acrobat.exe
Acrobat.exe
AcroCEF.exe
AcroCEF.exe
AcroCEF.exe
AcroCEF.exe
AcroCEF.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
AcroCEF.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
Adobe Crash Processor.exe
servicehost.exe
uihost.exe
dasHost.exe
dasHost.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
cmd.exe
conhost.exe
browserhost.exe
chrome.exe
chrome.exe
chrome.exe
HPPrintScanDoctorService.exe
dasHost.exe
dasHost.exe
chrome.exe
dasHost.exe
chrome.exe
chrome.exe
dasHost.exe
dasHost.exe
dasHost.exe
AdobeARM.exe
OneDrive.exe
OneDrive.Sync.Service.exe
FileCoAuth.exe
dasHost.exe
chrome.exe
dasHost.exe
chrome.exe
chrome.exe
svchost.exe
SearchApp.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
dasHost.exe
dasHost.exe
chrome.exe
taskhostw.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
WmiPrvSE.exe
audiodg.exe
chrome.exe
PhoneExperienceHost.exe
svchost.exe
chrome.exe
chrome.exe
svchost.exe
svchost.exe
smartscreen.exe
mshta.exe
svchost.exe
chrome.exe
rundll32.exe
chrome.exe
WmiPrvSE.exe
svchost.exe
cmd.exe
conhost.exe
powershell.exe
pyO5V.exe
SearchProtocolHost.exe
SearchFilterHost.exe
eServiceHost.exe
svchost015.exe
[Software]
TuneFab Spotify Music Converter 3.1.10 - 3.1.10
AMD Software - 19.10.16
Avast BreachGuard - 25.9.2799.10342
DAEMON Tools Lite - 10.13.0.1387
Microsoft 365 - en-us - 16.0.19530.20074
Microsoft OneDrive - 25.243.1211.0001
Synaptics Pointing Device Driver - <ip>
Microsoft Visual C++ 2017 x64 Minimum Runtime - 14.14.26429 - 14.14.26429
Xerox Desktop Print Experience 8.5 - <ip>
Microsoft Update Health Tools - <ip>
HP Deskjet 2540 series Basic Device Software - 32.2.188.47710
Office 16 Click-to-Run Licensing Component - 16.0.19029.20184
Office 16 Click-to-Run Extensibility Component - 16.0.19426.20170
Office 16 Click-to-Run Localization Component - 16.0.14131.20278
Adobe Acrobat (64-bit) - 25.001.20997
Microsoft Visual C++ 2017 x64 Additional Runtime - 14.14.26429 - 14.14.26429
NVIDIA Graphics Driver 560.94 - 560.94
NVIDIA GeForce Experience <ip> - <ip>
NVIDIA Optimus Update <ip> - <ip>
NVIDIA PhysX System Software 9.19.0218 - 9.19.0218
NVIDIA Update <ip> - <ip>
NVIDIA FrameView SDK 1.1.4923.29214634 - 1.1.4923.29214634
NVIDIA SHIELD Streaming - 7.1.28968357
NVIDIA Install Application - 2.1002.418.0
NVIDIA ABHub - <ip>
NVIDIA Backend - <ip>
NVIDIA Container - 1.27
NVIDIA TelemetryApi helper for NvContainer - 1.27
NVIDIA LocalSystem Container - 1.27
NVIDIA Message Bus for NvContainer - 1.27
NVAPI Monitor plugin for NvContainer - 1.27
NVIDIA NetworkService Container - 1.27
NVIDIA Session Container - 1.27
NVIDIA User Container - 1.27
NvModuleTracker - 6.14.24033.38719
NVIDIA NodeJS - <ip>
NVIDIA Watchdog Plugin for NvContainer - 1.27
NVIDIA Telemetry Client - <ip>
NVIDIA Virtual Host Controller - <ip>
Nvidia Share - <ip>
NVIDIA ShadowPlay <ip> - <ip>
NVIDIA SHIELD Wireless Controller Driver - <ip>
NVIDIA Update Core - <ip>
NVIDIA Virtual Audio <ip> - <ip>
Update for x64-based Windows Systems (KB5001716) - <ip>
Product Improvement Study for HP Deskjet 2540 series - 32.2.188.47710
Discord - 1.0.9015
Roblox Player for peter collins
Roblox Studio for peter collins
```

### `cystack_6483cc60`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HIDDEN CATS`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: PH

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 24/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 65462 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
winlogon.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
CortexLauncherService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RazerCentralService.exe
logi_lamparray_service.exe
svchost.exe
Surfshark.Service.exe
GameManagerService3.exe
MpDefenderCoreService.exe
MsMpEng.exe
svchost.exe
svchost.exe
svchost.exe
dasHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
SearchIndexer.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
taskhostw.exe
AggregatorHost.exe
svchost.exe
explorer.exe
svchost.exe
CrossDeviceResume.exe
svchost.exe
svchost.exe
SearchHost.exe
StartMenuExperienceHost.exe
WidgetBoard.exe
svchost.exe
UserOOBEBroker.exe
svchost.exe
RuntimeBroker.exe
WidgetService.exe
svchost.exe
NisSrv.exe
svchost.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
MicrosoftStartFeedProvider.exe
msedgewebview2.exe
ctfmon.exe
PhoneExperienceHost.exe
SecurityHealthSystray.exe
SecurityHealthService.exe
vgtray.exe
RazerCortex.exe
Apprunner.exe
Apprunner.exe
Apprunner.exe
Razer Central.exe
TextInputHost.exe
CefSharp.BrowserSubprocess.exe
CefSharp.BrowserSubprocess.exe
steam.exe
steamwebhelper.exe
steamservice.exe
steamwebhelper.exe
steamwebhelper.exe
steamwebhelper.exe
steamwebhelper.exe
CefSharp.BrowserSubprocess.exe
CefSharp.BrowserSubprocess.exe
CefSharp.BrowserSubprocess.exe
steamwebhelper.exe
RiotClientServices.exe
RazerAppEngine.exe
RiotClientCrashHandler.exe
RazerAppEngine.exe
RazerAppEngine.exe
RazerAppEngine.exe
RzEngineMon.exe
steamwebhelper.exe
RazerAppEngine.exe
RazerAppEngine.exe
RazerAppEngine.exe
RazerAppEngine.exe
svchost.exe
razer_elevation_service.exe
Surfshark.exe
WmiApSrv.exe
OneDrive.exe
ms-teams.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
Apprunner.exe
EasyAsVPNgo.exe
conhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
ApplicationFrameHost.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Copilot.exe
Clipchamp.Widgets.exe
backgroundTaskHost.exe
SnippingTool.exe
AppActions.exe
svchost.exe
ShellExperienceHost.exe
RuntimeBroker.exe
Notepad.exe
RuntimeBroker.exe
svchost.exe
XboxPcAppFT.exe
svchost.exe
svchost.exe
ShellHost.exe
SystemSettings.exe
svchost.exe
svchost.exe
svchost.exe
smartscreen.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
chrome.exe
chrome.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
chrome.exe
audiodg.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
mshta.exe
backgroundTaskHost.exe
rundll32.exe
svchost.exe
cmd.exe
conhost.exe
OpenConsole.exe
WindowsTerminal.exe
powershell.exe
WmiPrvSE.exe
yNEh.exe
SearchProtocolHost.exe
ctfmon.exe

[Software]
7-Zip 22.01 (x64) - 22.01
Microsoft DirectX End-User Runtime - 9.29.1974
Microsoft DirectX Managed Assemblies - 1.1
Mozilla Firefox (x64 en-US) - 147.0.1
Mozilla Maintenance Service - 112.0
Razer Cortex - <ip>
Riot Vanguard
HIDDEN CATS: The last of cats
PEAK
Dota 2
Counter-Strike 2
Surfshark - 5.16.1999
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
Microsoft Update Health Tools - <ip>
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61135 - 11.0.61135
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 - 12.0.40664
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.7523 - 9.0.30729.7523
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
Microsoft Teams Meeting Add-in for Microsoft Office - 1.25.28902
Microsoft Visual C++ 2005 Redistributable (x64) - 8.0.61186
NVIDIA Graphics Driver 560.94 - 560.94
NVIDIA Install Application - 2.1002.418.0
Update for x64-based Windows Systems (KB5001716) - <ip>
Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61135 - 11.0.61135
Surfshark - 5.16.1999
Apprunner 1.1.6 - 1.1.6
Discord - 1.0.9201
Microsoft OneDrive - 25.238.1204.0001
League of Legends
Riot Client 
VALORANT
Roblox Player for PC 3
Roblox Studio for PC 3
Vysor - 5.0.7
```

### `cystack_65f37305`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: VN

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Vietnamese English
Local Time: 25/01/2026 <ip>
TimeZone: 7

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16236 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
winlogon.exe
LsaIso.exe
lsass.exe
svchost.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
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
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
jhi_service.exe
WMIRegistrationService.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
warp-svc.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
wlanext.exe
taskhostw.exe
svchost.exe
AggregatorHost.exe
svchost.exe
explorer.exe
ShellHost.exe
svchost.exe
CrossDeviceResume.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NgcIso.exe
svchost.exe
svchost.exe
svchost.exe
SearchHost.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
svchost.exe
backgroundTaskHost.exe
ShellExperienceHost.exe
dllhost.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
svchost.exe
svchost.exe
SearchIndexer.exe
svchost.exe
svchost.exe
CocCocCrashHandler.exe
CocCocCrashHandler64.exe
ctfmon.exe
PhoneExperienceHost.exe
smartscreen.exe
SecurityHealthSystray.exe
SecurityHealthService.exe
vgtray.exe
OneDrive.exe
svchost.exe
TextInputHost.exe
RiotClientServices.exe
RiotClientCrashHandler.exe
GoogleChrome.exe
McZEgNt.exe
conhost.exe
svchost.exe
explorer.exe
FileCoAuth.exe
svchost.exe
systemruntime.exe
2490f8e944.exe
GameBar.exe
svchost.exe
RuntimeBroker.exe
GameBarFTServer.exe
svchost.exe
taskhostw.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
Copilot.exe
RuntimeBroker.exe
M365Copilot.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
Cloudflare WARP.exe
sysmon32.exe
svchost.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
browser.exe
svchost.exe
browser.exe
browser.exe
browser.exe
browser.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RuntimeBroker.exe

[Software]
????3D:???? Uninstall - 5.0.0
Level Up 2.0.1 - 2.0.1
AntiCheatExpert - 24.3.2511.846
Honkai Star Rail - 3.8.0
HoYoPlay - <ip>
Riot Vanguard
Red Dead Redemption 2
The Witcher 3: Wild Hunt
Sublime Text
WinRAR 7.11 (64-bit) - 7.11.0
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
Logitech G HUB - 2025.5.730277
Traosk Utils Queue - 4.3.5
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
Cloudflare WARP - <ip>
Microsoft OneDrive - 25.243.1211.0001
League of Legends
Riot Client 
Where Winds Meet - 1.0.0
Zoom Workplace - 6.6.6 (19875)
```

### `cystack_8a58ae99`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sige77`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: PH

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 12/06/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: English
Local Time: 24/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: AMD A8-7680 Radeon R7, 10 Compute Cores 4C+6G  
Cores: 4
Threads: 4
RAM: 7641 MB
VideoCard: AMD Radeon R7 Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
QMEmulatorService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
atiesrxx.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
servicehost.exe
MsMpEng.exe
MpDefenderCoreService.exe
svchost.exe
OfficeClickToRun.exe
TeamViewer_Service.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dasHost.exe
svchost.exe
svchost.exe
svchost.exe
dllhost.exe
svchost.exe
WmiPrvSE.exe
SearchIndexer.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NisSrv.exe
AggregatorHost.exe
svchost.exe
svchost.exe
svchost.exe
SecurityHealthService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
MoUsoCoreWorker.exe
GooglePlayGamesServices.exe
crashpad_handler.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
csrss.exe
winlogon.exe
fontdrvhost.exe
dwm.exe
atieclxx.exe
sihost.exe
svchost.exe
svchost.exe
taskhostw.exe
explorer.exe
ctfmon.exe
svchost.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
svchost.exe
SearchApp.exe
svchost.exe
taskhostw.exe
svchost.exe
RuntimeBroker.exe
TextInputHost.exe
RuntimeBroker.exe
SecurityHealthSystray.exe
RAVCpl64.exe
OneDrive.exe
BlueStacksServices.exe
firefox.exe
crashhelper.exe
firefox.exe
BlueStacksServices.exe
firefox.exe
BlueStacksServices.exe
firefox.exe
CompPkgSrv.exe
firefox.exe
firefox.exe
BlueStacksServices.exe
M365Copilot.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
firefox.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
dllhost.exe
SearchApp.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
HD-MultiInstanceManager.exe
HD-Agent.exe
ShellExperienceHost.exe
RuntimeBroker.exe
firefox.exe
UserOOBEBroker.exe
svchost.exe
firefox.exe
firefox.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
firefox.exe
firefox.exe
firefox.exe
firefox.exe
chrome.exe
chrome.exe
firefox.exe
firefox.exe
chrome.exe
chrome.exe
Video.UI.exe
RuntimeBroker.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
firefox.exe
svchost.exe
svchost.exe
smartscreen.exe
mshta.exe
svchost.exe
rundll32.exe
MpCmdRun.exe
backgroundTaskHost.exe
RuntimeBroker.exe
WmiPrvSE.exe
svchost.exe
cmd.exe
conhost.exe
powershell.exe
d5mGcxOC.exe
WmiApSrv.exe

[Software]
BlueStacks App Player - 4.280.1.1002
BlueStacks - 5.22.70.1039
Google Play Games - <ip>
Mozilla Firefox (x64 en-US) - 147.0.1
Mozilla Maintenance Service - 126.0.1
Microsoft OneDrive - 24.216.1027.0002
Microsoft Project Professional 2019 - en-us - 16.0.17126.20132
Microsoft Office Professional Plus 2019 - en-us - 16.0.17126.20132
TeamViewer - 15.54.5
TikTok LIVE Studio - 0.71.2
Microsoft Visio Professional 2019 - en-us - 16.0.17126.20132
Microsoft Visio LTSC Professional 2021 - en-us - 16.0.17126.20132
VLC media player - 3.0.21
WinRAR 7.01 (64-bit) - 7.01.0
Microsoft Update Health Tools - <ip>
VirtualDJ 2025 - 8.5.8528.0
Microsoft Visual C++ 2019 X64 Additional Runtime - 14.29.30139 - 14.29.30139
Office 16 Click-to-Run Licensing Component - 16.0.17126.20132
Office 16 Click-to-Run Extensibility Component - 16.0.17126.20132
Google Chrome - 143.0.7499.193
Microsoft Visual C++ 2019 X64 Minimum Runtime - 14.29.30139 - 14.29.30139
Update for x64-based Windows Systems (KB5001716) - <ip>
ACEPH - 1.0
YouTube - 1.0
SZ777.com - Bingo Tongits Game - 1.0
Facebook - 1.0
VIPPH - 1.0
Copilot - 1.0
RA777 - 1.0
BlueStacks Services - 3.0.9
Sige77: Safest Online Betting Platform in Philippines.|Slots|Games|Play|Jili|Super Ace|PG|Wild Bounty - 1.0
ACEPH - 1.0
Roblox Player for Admin
Roblox Studio for Admin
ScreenRec - <ip>
Telegram Desktop - 6.4.1
```

### `cystack_9f34461e`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fish Tycoon 2`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: PH

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: English English
Local Time: 24/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16337 MB
VideoCard: Radeon RX 590 Series

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spaceman.exe
svchost.exe
amdfendrsr.exe
atiesrxx.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
GamingApp_Service.exe
svchost.exe
svchost.exe
AudioDeviceService.exe
MsMpEng.exe
MysticLight2_Service.exe
MpDefenderCoreService.exe
MSI_ActiveX_Service.exe
ChargeService.exe
GamingHotkey_Service.exe
InstallAssistService.exe
RtkAudUService64.exe
AppManager_Service.exe
MSIControlService.exe
MSI_LiveUpdate_Service.exe
svchost.exe
dasHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
gamingservices.exe
gamingservicesnet.exe
cmd.exe
conhost.exe
AtiFlash.exe
svchost.exe
svchost.exe
AggregatorHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NisSrv.exe
svchost.exe
SearchIndexer.exe
svchost.exe
SecurityHealthService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
WmiPrvSE.exe
WmiPrvSE.exe
svchost.exe
csrss.exe
winlogon.exe
fontdrvhost.exe
dwm.exe
atieclxx.exe
svchost.exe
svchost.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
muachost.exe
MSIToastServer.exe
taskhostw.exe
VideoCardMonitorII.exe
EyeRest.exe
TriggerModeMonitor.exe
explorer.exe
ShellHost.exe
GamingHotkey.exe
CrossDeviceResume.exe
LEDKeeper.exe
svchost.exe
SearchHost.exe
StartMenuExperienceHost.exe
svchost.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
ctfmon.exe
SecurityHealthSystray.exe
TextInputHost.exe
RtkAudUService64.exe
vgtray.exe
TranslucentTB.exe
RuntimeBroker.exe
RadeonSoftware.exe
CPUMetricsServer.exe
cncmd.exe
cmd.exe
conhost.exe
AMDRSServ.exe
amdow.exe
ApplicationFrameHost.exe
svchost.exe
UserOOBEBroker.exe
firefox.exe
crashhelper.exe
firefox.exe
firefox.exe
firefox.exe
firefox.exe
firefox.exe
firefox.exe
firefox.exe
RuntimeBroker.exe
svchost.exe
svchost.exe
svchost.exe
EdgeGameAssist.exe
XboxPcAppFT.exe
AMDRSSrcExt.exe
SystemSettings.exe
firefox.exe
firefox.exe
svchost.exe
svchost.exe
ShellExperienceHost.exe
RuntimeBroker.exe
audiodg.exe
firefox.exe
svchost.exe
firefox.exe
Telegram.exe
firefox.exe
svchost.exe
firefox.exe
firefox.exe
firefox.exe
smartscreen.exe
svchost.exe
mshta.exe
svchost.exe
rundll32.exe
mshta.exe
rundll32.exe
WmiPrvSE.exe
cmd.exe
conhost.exe
OpenConsole.exe
WindowsTerminal.exe
powershell.exe
AG0ol.exe
SearchProtocolHost.exe

[Software]
AMD Software - 25.8.1
Mozilla Firefox (x64 en-US) - 147.0.1
Mozilla Maintenance Service - 74.0
Riot Vanguard
Source SDK Base 2007
The Witcher 3: Wild Hunt
Heartopia
Aim Lab
Fish Tycoon 2: Virtual Aquarium
VLC media player - 3.0.21
WinRAR 7.11 (64-bit) - 7.11.0
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
Patriot Viper M2 SSD RGB - 1.00.04
RyzenMasterSDK - <ip>
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.42.34438 - 14.42.34438
AMD DVR64 - 1.0.2
ENE_EHD_M2_HAL - 1.00.04
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030 - 11.0.61030
RyzenMasterSDK - <ip>
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
Branding64 - 1.00.0009
Speedtest by Ookla - <ip>
AMD WVR64 - 1.0.2
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 - 12.0.40664
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161 - 9.0.30729.6161
Microsoft .NET Host FX Resolver - 5.0.4 (x64) - 40.16.29816
AMD WVR64 - 1.0.2
AMD DVR64 - 1.0.2
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17 - 9.0.30729
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
Microsoft .NET Runtime - 5.0.4 (x64) - 40.16.29816
Microsoft Windows Desktop Runtime - 5.0.4 (x64) - 40.16.29817
Revo Uninstaller 2.5.7 - 2.5.7
Microsoft Visual C++ 2005 Redistributable (x64) - 8.0.61000
ENE RGB HAL - 1.00.15
AMD Settings - 2025.0306.1536.1996
ENE_DRAM_RGB_AURA42 - 1.00.02
AMD Settings - 2025.0701.0345.1996
Microsoft Update Health Tools - <ip>
Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030 - 11.0.61030
UE4 Prerequisites (x64) - <ip>
AMD Ryzen Master SDK - 2.1.0.1236
Microsoft .NET Host - 5.0.4 (x64) - 40.16.29816
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.42.34438 - 14.42.34438
Microsoft GameInput - 10.1.26100.6879
Discord - 1.0.9187
Microsoft OneDrive - 25.238.1204.0001
Opera GX Stable 126.0.5750.56 - 126.0.5750.56
BUFF - <ip>
Valorant Tracker - 1.30.0
Riot Client 
VALORANT
Telegram Desktop - 6.4.2
REDlauncher
```

### `cystack_9fc6963c`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: IN

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 22/01/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English
Local Time: 24/01/2026 <ip>
TimeZone: 5

[Hardware]
Processor: Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GHz
Cores: 8
Threads: 8
RAM: 8043 MB
VideoCard: Intel(R) HD Graphics 630

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
IntelCpHDCPSvc.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
IntelCpHeciSvc.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RegAsm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
QMEmulatorService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
igfxCUIService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dasHost.exe
svchost.exe
svchost.exe
RtkAudioService64.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
WmiPrvSE.exe
WmiPrvSE.exe
svchost.exe
conhost.exe
AdminService.exe
svchost.exe
esif_uf.exe
svchost.exe
Dell.TechHub.exe
svchost.exe
OneApp.IGCC.WinService.exe
svchost.exe
jhi_service.exe
svchost.exe
KillerAnalyticsService.exe
mfemms.exe
MpDefenderCoreService.exe
ModuleCoreService.exe
nvcontainer.exe
NvTelemetryContainer.exe
PEFService.exe
QcomWlanSrvx64.exe
svchost.exe
RstMwService.exe
VidocScrobbler.exe
svchost.exe
WavesSysSvc64.exe
WsAppService.exe
MsMpEng.exe
DriverInstall.exe
svchost.exe
svchost.exe
svchost.exe
KillerNetworkService.exe
svchost.exe
mfevtps.exe
MMSSHOST.exe
mfevtps.exe
ProtectedModuleHost.exe
dllhost.exe
mfefire.exe
PresentationFontCache.exe
svchost.exe
svchost.exe
svchost.exe
SearchIndexer.exe
NisSrv.exe
svchost.exe
mcapexe.exe
MfeAVSvc.exe
McCSPServiceHost.exe
mcshield.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Dell.CoreServices.Client.exe
Dell.TechHub.Analytics.SubAgent.exe
Dell.Update.SubAgent.exe
conhost.exe
Dell.TechHub.DataManager.SubAgent.exe
conhost.exe
Dell.TechHub.Diagnostics.SubAgent.exe
conhost.exe
Dell.TechHub.Instrumentation.SubAgent.exe
conhost.exe
conhost.exe
svchost.exe
DellSupportAssistRemedationService.exe
ServiceShell.exe
DeliveryService.exe
IAStorDataMgrSvc.exe
SupportAssistAgent.exe
svchost.exe
SecurityHealthService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
MoUsoCoreWorker.exe
DiscSoftBusServiceLite.exe
McVulCtr.exe
servicehost.exe
svchost.exe
HPPrintScanDoctorService.exe
csrss.exe
winlogon.exe
fontdrvhost.exe
dwm.exe
NVDisplay.Container.exe
svchost.exe
dptf_helper.exe
uihost.exe
RAVBg64.exe
Dell.TechHub.Instrumentation.UserProcess.exe
nvcontainer.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
igfxEM.exe
taskhostw.exe
McUpdaterModule.exe
SSScheduler.exe
explorer.exe
ctfmon.exe
svchost.exe
NVIDIA Web Helper.exe
conhost.exe
StartMenuExperienceHost.exe
svchost.exe
RuntimeBroker.exe
SearchApp.exe
RuntimeBroker.exe
RuntimeBroker.exe
TextInputHost.exe
WavesSvc64.exe
SystemSettings.exe
ApplicationFrameHost.exe
UserOOBEBroker.exe
ModuleCoreService.exe
conhost.exe
mc-webview-cnt.exe
rundll32.exe
SDXHelperBgt.exe
mcafee-security.exe
RuntimeBroker.exe
mcafee-security-ft.exe
ShellExperienceHost.exe
RuntimeBroker.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
SearchApp.exe
CompPkgSrv.exe
chrome.exe
Code.exe
Code.exe
Code.exe
Code.exe
Code.exe
Code.exe
Code.exe
Code.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
Code.exe
conhost.exe
powershell.exe
Code.exe
LockApp.exe
RuntimeBroker.exe
StoreDesktopExtension.exe
dllhost.exe
dasHost.exe
dasHost.exe
rundll32.exe
chrome.exe
svchost.exe
svchost.exe
taskhostw.exe
dasHost.exe
dasHost.exe
dasHost.exe
audiodg.exe
McUICnt.exe
dllhost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
chrome.exe
svchost.exe
svchost.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
smartscreen.exe
mshta.exe
svchost.exe
rundll32.exe
chrome.exe
WmiPrvSE.exe
cmd.exe
conhost.exe
powershell.exe
D55JcE6.exe
SearchProtocolHost.exe
SearchFilterHost.exe
chrome.exe

[Software]
PokerBaazi - Online Poker 4.24.0 - 4.24.0
DAEMON Tools Lite - 11.0.0.1946
MetaTrader 5 - 5.00
Riot Vanguard
Counter-Strike: Global Offensive
VLC media player - 3.0.1
WinRAR 6.00 (64-bit) - 6.00.0
Dell SupportAssist - 4.10.6.48716
Update for Windows 10 for x64-based Systems (KB4480730) - <ip>
Dell Update for Windows Universal - 5.2.0
Intel(R) Management Engine Components - 2105.15.0.2157
Microsoft Update Health Tools - <ip>
Synaptics Fingerprint Reader(WBF) - 5.1.3214.26
Maxx Audio Installer (x64) - 2.7.12253.1
Intel(R) Management Engine Driver - <ip>
Microsoft .NET Host - 8.0.11 (x64) - 64.44.23191
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030 - 11.0.61030
Intel(R) Rapid Storage Technology - 16.8.3.1004
Intel(R) Rapid Storage Technology - 16.8.3.1004
Microsoft Windows Desktop Runtime - 6.0.28 (x64) - 48.112.10435
Microsoft Visual C++ 2019 X64 Minimum Runtime - 14.28.29914 - 14.28.29914
Intel? Optane? Pinning Explorer Extensions - 16.8.3.1003
Microsoft .NET Runtime - 6.0.28 (x64) - 48.112.10439
Windows Setup Remediations (x64) (KB4023057)
Microsoft Visual C++ 2019 X64 Additional Runtime - 14.28.29914 - 14.28.29914
Microsoft .NET Runtime - 5.0.17 (x64) - 40.68.31213
Qualcomm Atheros Bluetooth Installer (64) - <ip>
Windows PC Health Check - 3.6.2204.08001
Microsoft .NET Runtime - 6.0.20 (x64) - 48.83.63169
Dell SupportAssist OS Recovery Plugin for Dell Update - <ip>
Microsoft Visual Studio Installer - 1.18.1089.1204
UpdateAssistant - <ip>
Microsoft .NET Host FX Resolver - 6.0.20 (x64) - 48.83.63169
Microsoft .NET Host FX Resolver - 6.0.28 (x64) - 48.112.10439
Intel(R) Chipset Device Software - <ip>
Microsoft .NET Host FX Resolver - 5.0.17 (x64) - 40.68.31213
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005 - 12.0.21005
Microsoft .NET Runtime - 8.0.11 (x64) - 64.44.23191
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005 - 12.0.21005
Intel(R) Management Engine Components - <ip>
Intel(R) Management Engine Components - <ip>
NVIDIA Graphics Driver 528.79 - 528.79
NVIDIA GeForce Experience <ip> - <ip>
NVIDIA Optimus Update <ip> - <ip>
NVIDIA PhysX System Software 9.20.0221 - 9.20.0221
NVIDIA Update <ip> - <ip>
NVIDIA SHIELD Streaming - 7.1.0405
NVIDIA Install Application - 2.1002.382.0
NVIDIA Backend - <ip>
NVIDIA Container - 1.10
NVIDIA TelemetryApi helper for NvContainer - 1.10
NVIDIA LocalSystem Container - 1.10
NVIDIA Message Bus for NvContainer - 1.10
NVIDIA NetworkService Container - 1.10
NVIDIA Session Container - 1.10
NVIDIA User Container - 1.10
NVIDIA NodeJS - <ip>
NVIDIA Watchdog Plugin for NvContainer - 1.10
NVIDIA Telemetry Client - <ip>
NVIDIA Telemetry Container - <ip>
NVIDIA Virtual Host Controller - <ip>
Nvidia Share - <ip>
NVIDIA ShadowPlay <ip> - <ip>
NVIDIA SHIELD Wireless Controller Driver - <ip>
NVIDIA Update Core - <ip>
NVIDIA Virtual Audio 4.04.0 - 4.04.0
Update for x64-based Windows Systems (KB5001716) - <ip>
Microsoft Windows Desktop Runtime - 8.0.11 (x64) - 64.44.23253
Intel(R) Trusted Connect Service Client x64 - <ip>
Microsoft .NET Host - 6.0.28 (x64) - 48.112.10439
Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030 - 11.0.61030
Dell SupportAssist Remediation - <ip>
Microsoft .NET Host - 5.0.17 (x64) - 40.68.31213
Microsoft .NET Host FX Resolver - 8.0.11 (x64) - 64.44.23191
DSC/AA Factory Installer - 2.0.6875.402
Epic Games Launcher Prerequisites (x64) - <ip>
Microsoft VC++ redistributables repacked. - <ip>
JioCinema - 1.0
CodeBlocks - 17.12
Discord - 1.0.9001
Microsoft OneDrive - 25.238.1204.0001
Opera Stable 126.0.5750.43 - 126.0.5750.43
Opera Stable 83.0.4254.27 - 83.0.4254.27
Opera GX Stable 114.0.5282.202 - 114.0.5282.202
League of Legends
Riot Client 
VALORANT
Microsoft Teams - 1.4.00.26376
uTorrent Web - 1.5.0
Zoom - 5.7.0 (522)
Telegram Desktop - 5.6.3
Microsoft Visual Studio Code (User) - 1.83.1
```

### `cystack_a303f120`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: JO

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/09/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 24/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 14557 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
QMEmulatorService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
PnkBstrA.exe
RtkAudUService64.exe
svchost.exe
nvcontainer.exe
GooglePlayGamesServices.exe
jhi_service.exe
WMIRegistrationService.exe
MsMpEng.exe
MpDefenderCoreService.exe
svchost.exe
dasHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dllhost.exe
svchost.exe
crashpad_handler.exe
gamingservicesnet.exe
gamingservices.exe
SearchIndexer.exe
svchost.exe
svchost.exe
AggregatorHost.exe
svchost.exe
svchost.exe
svchost.exe
NisSrv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
SecurityHealthService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
MoUsoCoreWorker.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
servicehost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
audiodg.exe
csrss.exe
winlogon.exe
fontdrvhost.exe
dwm.exe
NVDisplay.Container.exe
uihost.exe
nvcontainer.exe
nvcontainer.exe
sihost.exe
svchost.exe
svchost.exe
taskhostw.exe
svchost.exe
taskhostw.exe
explorer.exe
svchost.exe
SearchApp.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
RuntimeBroker.exe
SearchApp.exe
ctfmon.exe
LockApp.exe
RuntimeBroker.exe
NVIDIA Web Helper.exe
conhost.exe
TextInputHost.exe
SecurityHealthSystray.exe
nvsphelper64.exe
NVIDIA Share.exe
NVIDIA Share.exe
AppleMobileDeviceProcess.exe
CompPkgSrv.exe
NVIDIA Share.exe
RuntimeBroker.exe
nvfvsdksvc_x64.exe
PresentMon_x64.exe
conhost.exe
PresentMon_x64.exe
conhost.exe
nvrla.exe
ShellExperienceHost.exe
RuntimeBroker.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
cmd.exe
conhost.exe
browserhost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
UserOOBEBroker.exe
TabTip.exe
svchost.exe
svchost.exe
taskhostw.exe
Jo Academy.exe
Jo Academy.exe
Jo Academy.exe
Jo Academy.exe
Jo Academy.exe
Jo Academy.exe
chrome.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
smartscreen.exe
mshta.exe
svchost.exe
svchost.exe
svchost.exe
rundll32.exe
WmiPrvSE.exe
cmd.exe
conhost.exe
powershell.exe
Qgr7hr.exe
cmd.exe
conhost.exe
nircmd.exe
consent.exe
SearchProtocolHost.exe
SearchFilterHost.exe
consent.exe

[Software]
HisasOnline-Study-App 2.2.0 - 2.2.0
PictoBlox 6.1.0 - 6.1.0
Construct 2 r280 - <ip>
Google Play Games beta - <ip>
Microsoft Visual J# 2.0 Redistributable Package - SE (x64)
Red Dead Redemption 2
Muck
One-armed robber
Dark Hours: Prologue
WinRAR 6.11 (64-bit) - 6.11.0
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
SharpKeys - 3.9.4000
Allgemeine Runtime Files (x86) - <ip>
Microsoft Update Health Tools - <ip>
Java 8 Update 251 (64-bit) - 8.0.2510.8
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61135 - 11.0.61135
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 - 12.0.40664
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.7523 - 9.0.30729.7523
Windows PC Health Check - 3.6.2204.08001
Google Drive - <ip>
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
RLBotGUI - 1.4.0
QuickSFV - 3.0.0
Microsoft Silverlight - 5.1.50918.0
Microsoft Office Office 64-bit Components 2007 - 12.0.4518.1014
Microsoft Office Shared 64-bit MUI (Arabic) 2007 - 12.0.4518.1014
Microsoft Office Shared 64-bit MUI (English) 2007 - 12.0.4518.1014
Microsoft Visual C++ 2005 Redistributable (x64) - 8.0.61186
Microsoft Visual J# 2.0 Redistributable Package - SE (x64) - 2.0.50728
Quick CPU x64 - <ip>
NVIDIA Graphics Driver 560.94 - 560.94
NVIDIA GeForce Experience <ip> - <ip>
NVIDIA Optimus Update <ip> - <ip>
NVIDIA PhysX System Software 9.21.0713 - 9.21.0713
NVIDIA Update <ip> - <ip>
NVIDIA FrameView SDK 1.3.8513.32290073 - 1.3.8513.32290073
NVIDIA SHIELD Streaming - 7.1.33903191
NVIDIA GPX Common OSS binaries (POCO, OpenSSL, libprotobuf) - 7.1
NVIDIA Install Application - 2.1002.418.0
NVIDIA Backend - <ip>
NVIDIA Container - 1.40
NVIDIA TelemetryApi helper for NvContainer - 1.40
NVIDIA LocalSystem Container - 1.40
NVIDIA Message Bus for NvContainer - 1.34
NVIDIA NVAPI Monitor plugin for NvContainer - 1.0
NVIDIA NetworkService Container - 1.40
NVIDIA Session Container - 1.40
NVIDIA User Container - 1.40
NVIDIA NvModuleTracker - 6.14.26040.64835
NVIDIA NodeJS - <ip>
NVIDIA Watchdog Plugin for NvContainer - 1.40
NVIDIA Telemetry Client - <ip>
NVIDIA Virtual Host Controller - <ip>
Nvidia Share - <ip>
NVIDIA ShadowPlay <ip> - <ip>
NVIDIA SHIELD Wireless Controller Driver - <ip>
NVIDIA Update Core - <ip>
NVIDIA Virtual Audio <ip> - <ip>
Google Chrome - 144.0.7559.60
Update for x64-based Windows Systems (KB5001716) - <ip>
Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61135 - 11.0.61135
Microsoft GameInput - 10.1.26100.6879
Epic Games Launcher Prerequisites (x64) - <ip>
YouTube - 1.0
Jo Academy 2.0.1 - 2.0.1
Jo Academy 1.4.1 - 1.4.1
?????? ????????? - 1.0
YouTube - 1.0
Google Drive - 1.0
??????? - 1.0
YouTube - 1.0
Scratch 3 3.29.1 - 3.29.1
CurseForge 1.296.4-30607 - 1.296.4-30607
Google Drive - 1.0
Discord - 1.0.9221
Gmail - 1.0
Google Drive - 1.0
Zoom Workplace - 6.6.6 (19875)
REDlauncher
```

### `cystack_a7d3f5e5`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/06/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 25/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
LsaIso.exe
lsass.exe
winlogon.exe
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
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
CompatTelRunner.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
WmiPrvSE.exe
svchost.exe
conhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
mDNSResponder.exe
svchost.exe
svchost.exe
svchost.exe
armsvc.exe
svchost.exe
GooglePlayGamesServices.exe
Etapslmt.exe
nvcontainer.exe
OfficeClickToRun.exe
RtkAudUService64.exe
net_updater32.exe
RtkBtManServ.exe
svchost.exe
sqlwriter.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
updater.exe
updater.exe
SearchIndexer.exe
warp-svc.exe
updater.exe
svchost.exe
updater.exe
updater.exe
updater.exe
svchost.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
SearchProtocolHost.exe
SearchFilterHost.exe
updater.exe
taskhostw.exe
rundll32.exe
taskhostw.exe
svchost.exe
dllhost.exe
svchost.exe
ctfmon.exe
explorer.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
crashpad_handler.exe
svchost.exe
svchost.exe
svchost.exe
AggregatorHost.exe
updater.exe
svchost.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
SearchApp.exe
NVIDIA Web Helper.exe
conhost.exe
RuntimeBroker.exe
nvcontainer.exe
nvcontainer.exe
svchost.exe
svchost.exe
dllhost.exe
svchost.exe
MoUsoCoreWorker.exe
TrustedInstaller.exe
LockApp.exe
RuntimeBroker.exe
RuntimeBroker.exe
TiWorker.exe
nvsphelper64.exe
NVIDIA Share.exe
NVIDIA Share.exe
NVIDIA Share.exe
svchost.exe
TextInputHost.exe
svchost.exe
svchost.exe
PhoneExperienceHost.exe
jusched.exe
svchost.exe
GameBar.exe
svchost.exe
GameBarFTServer.exe
RuntimeBroker.exe
svchost.exe
AdobeCollabSync.exe
AdobeCollabSync.exe
Transsioner.exe
MP3Cutter.exe
Transsioner.exe
Transsioner.exe
Transsioner.exe
Transsioner.exe
Transsioner.exe
39d0b5c783.exe
Transsioner.exe
Transsioner.exe
CompPkgSrv.exe
AcrobatNotificationClient.exe
Cloudflare WARP.exe
svchost.exe
Applicator.<ip>.exe
conhost.exe
Transsioner.exe
Transsioner.exe
eServiceHost.exe
ApplicationFrameHost.exe
eServiceHost.exe
svchost.exe
chrome.exe
Microsoft.Media.Player.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
RuntimeBroker.exe
ShellExperienceHost.exe
svchost.exe
SystemSettings.exe
svchost.exe
updater.exe
updater.exe
updater.exe
updater.exe
HPE-<ip>-CIP.exe
7zr.exe
conhost.exe
CompatTelRunner.exe

[Software]
Google Play Games - <ip>
iVCam 7.0 - 7.0.0
MATLAB R2023b - 23.2
Mozilla Firefox (x64 en-US) - 147.0.1
Mozilla Maintenance Service - 89.0.1
Polyspace R2020a - 3.2
PotPlayer-64 bit - 210428
Microsoft Office Professional Plus 2019 - en-us - 16.0.10373.20050
Call of Duty: Black Ops III Update 17 - 1
WinRAR 6.02 (64-bit) - 6.02.0
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030 - 11.0.61030
Microsoft SQL Server 2012 Native Client  - 11.2.5058.0
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 - 12.0.40664
Bonjour - <ip>
Windows PC Health Check - 3.6.2204.08001
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.17 - 9.0.30729
Virtual Audio Cable (lite) - 4.70
Microsoft Update Health Tools - <ip>
Office 16 Click-to-Run Licensing Component - 16.0.10373.20050
Office 16 Click-to-Run Extensibility Component - 16.0.10373.20050
Office 16 Click-to-Run Localization Component - 16.0.10373.20050
Microsoft Visual C++ 2019 X64 Additional Runtime - 14.23.27820 - 14.23.27820
Microsoft Visual C++ 2019 X64 Minimum Runtime - 14.23.27820 - 14.23.27820
Adobe Acrobat (64-bit) - 25.001.20997
NVIDIA Graphics Driver 560.94 - 560.94
NVIDIA GeForce Experience <ip> - <ip>
NVIDIA Optimus Update <ip> - <ip>
NVIDIA PhysX System Software 9.19.0218 - 9.19.0218
NVIDIA Update <ip> - <ip>
NVIDIA FrameView SDK 1.3.8513.32290073 - 1.3.8513.32290073
NVIDIA SHIELD Streaming - 7.1.33903191
NVIDIA GPX Common OSS binaries (POCO, OpenSSL, libprotobuf) - 7.1
NVIDIA Install Application - 2.1002.418.0
NVIDIA Backend - <ip>
NVIDIA Container - 1.40
NVIDIA TelemetryApi helper for NvContainer - 1.40
NVIDIA LocalSystem Container - 1.40
NVIDIA Message Bus for NvContainer - 1.34
NVIDIA NVAPI Monitor plugin for NvContainer - 1.0
NVIDIA NetworkService Container - 1.40
NVIDIA Session Container - 1.40
NVIDIA User Container - 1.40
NVIDIA NvModuleTracker - 6.14.26040.64835
NVIDIA NodeJS - <ip>
NVIDIA Watchdog Plugin for NvContainer - 1.40
NVIDIA Telemetry Client - <ip>
NVIDIA Virtual Host Controller - <ip>
Nvidia Share - <ip>
NVIDIA ShadowPlay <ip> - <ip>
NVIDIA SHIELD Wireless Controller Driver - <ip>
NVIDIA Update Core - <ip>
NVIDIA Virtual Audio <ip> - <ip>
Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030 - 11.0.61030
Cloudflare WARP - <ip>
Update for x64-based Windows Systems (KB5001716) - <ip>
Microsoft SQL Server 2012 Express LocalDB  - 11.2.5058.0
blender - 2.93.4
RealVNC Viewer 7.6.0 - 7.6.0.50657
Sheets - 1.0
Google Drive - 1.0
Gmail - 1.0
YouTube - 1.0
Slides - 1.0
Sheets - 1.0
Gmail - 1.0
YouTube - 1.0
Slides - 1.0
Slides - 1.0
YouTube - 1.0
Google Drive - 1.0
Gmail - 1.0
Google Drive - 1.0
EarnApp - 1.505.158
Docs - 1.0
Sheets - 1.0
Docs - 1.0
Docs - 1.0
Transsioner - 7.36.0
Free MP3 Cutter 3.9.4.4090
Microsoft OneDrive - 25.238.1204.0001
Zoom Workplace - 6.6.6 (19875)
```

### `cystack_b8ee9197`

**Field keys:**
`ACD/Labs 2023 Freeware in C`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: IN

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 30/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English English
Local Time: 24/01/2026 <ip>
TimeZone: 5

[Hardware]
Processor: Intel(R) Core(TM) i3-1005G1 CPU @ 1.20GHz
Cores: 4
Threads: 4
RAM: 3863 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
winlogon.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
IntelCpHDCPSvc.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
igfxCUIServiceN.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
AdminService.exe
svchost.exe
svchost.exe
svchost.exe
OneApp.IGCC.WinService.exe
esif_uf.exe
jhi_service.exe
svchost.exe
svchost.exe
MpDefenderCoreService.exe
RstMwService.exe
RtkAudUService64.exe
svchost.exe
QcomWlanSrvx64.exe
svchost.exe
WMIRegistrationService.exe
svchost.exe
MsMpEng.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
igfxEMN.exe
svchost.exe
taskhostw.exe
AggregatorHost.exe
explorer.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RtkAudUService64.exe
CrossDeviceResume.exe
SearchIndexer.exe
svchost.exe
svchost.exe
StartMenuExperienceHost.exe
SearchHost.exe
svchost.exe
Widgets.exe
msedgewebview2.exe
msedgewebview2.exe
WidgetService.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
ctfmon.exe
svchost.exe
svchost.exe
TextInputHost.exe
NisSrv.exe
SecurityHealthService.exe
SecurityHealthSystray.exe
WavesSvc64.exe
RtkAudUService64.exe
svchost.exe
kboost.exe
ms-teams.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
AppActions.exe
AudioTagEditor.exe
o7Hjuu7.exe
runtime-servece.exe
conhost.exe
svchost.exe
taskmanager.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
ID3TagEditor.exe
CrossDeviceService.exe
RuntimeBroker.exe
svchost.exe
SystemSettings.exe
ApplicationFrameHost.exe
svchost.exe
svchost.exe
UserOOBEBroker.exe
svchost.exe
WhatsApp.exe
RuntimeBroker.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
OSPPSVC.EXE
svchost.exe
svchost.exe
RuntimeBroker.exe
msedgewebview2.exe
backgroundTaskHost.exe
OneDrive.exe
OneDrive.Sync.Service.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
ShellHost.exe
PhoneExperienceHost.exe
EXCEL.EXE
FileCoAuth.exe
splwow64.exe
0eswohsq.p0q.exe
svchost.exe
audiodg.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
svchost.exe
1e5845ee43.exe

[Software]
ACD/Labs 2023 Freeware in C:\Program Files\ACD64FREE\ - v14.00, FREE
BIOVIA License Pack (x64) 2021 - 21.1.0
Microsoft Office Office 64-bit Components 2010 - 14.0.4763.1000
Microsoft Office Shared 64-bit MUI (English) 2010 - 14.0.4763.1000
Microsoft Office Shared 64-bit Setup Metadata MUI (English) 2010 - 14.0.4763.1000
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.21005 - 12.0.21005
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.21005 - 12.0.21005
Microsoft Teams Meeting Add-in for Microsoft Office - 1.25.24601
BIOVIA Discovery Studio 2021 Client - 21.1.0
Microsoft Update Health Tools - <ip>
Snapchat - 1.0
Gmail - 1.0
Audio Tag Editor 3.11.2.4209
Fast Audio Converter 9.9.29.4221
ID3 Tag Editor 4.5.2.4149
Microsoft OneDrive - 25.238.1204.0001
OpenBabel-2.4.1
Zoom - 5.17.7 (31859)
Typing Master 11 - 11.00
Telegram Desktop - 5.15.4
```

### `cystack_c400694d`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: IN

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 12/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English English English
Local Time: 25/01/2026 <ip>
TimeZone: 5

[Hardware]
Processor: AMD Ryzen 3 3250U with Radeon Graphics         
Cores: 4
Threads: 4
RAM: 6094 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
winlogon.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
amdfendrsr.exe
svchost.exe
svchost.exe
atiesrxx.exe
svchost.exe
svchost.exe
dasHost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
AsusOptimization.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RtkAudUService64.exe
AppleMobileDeviceService.exe
AlmoristicsService.exe
AsusAppService.exe
AsusPTPService.exe
AsusSoftwareManager.exe
AsusSwitch.exe
mDNSResponder.exe
AsusSystemDiagnosis.exe
AsusSystemAnalysis.exe
svchost.exe
svchost.exe
svchost.exe
ELANFPService.exe
OfficeClickToRun.exe
svchost.exe
mc-fw-host.exe
ibtsiva.exe
servicehost.exe
svchost.exe
RtkAudUService64.exe
BulletService.exe
MpDefenderCoreService.exe
OBUpdateService.exe
svchost.exe
turbo_vpn-service.exe
svchost.exe
MsMpEng.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
wlanext.exe
Intel_PIE_Service.exe
AggregatorHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
SecurityHealthService.exe
unsecapp.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
atieclxx.exe
svchost.exe
svchost.exe
uihost.exe
AsusOptimizationStartupTask.exe
mc-fw-host.exe
sihost.exe
AlmoristicsApp.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
taskhostw.exe
explorer.exe
svchost.exe
CrossDeviceResume.exe
svchost.exe
RtkAudUService64.exe
ctfmon.exe
svchost.exe
StartMenuExperienceHost.exe
WidgetBoard.exe
RuntimeBroker.exe
svchost.exe
WidgetService.exe
UserOOBEBroker.exe
svchost.exe
TextInputHost.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
SearchHost.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
AsusOSD.exe
MicrosoftStartFeedProvider.exe
smartscreen.exe
SecurityHealthSystray.exe
svchost.exe
AsusSoftwareManagerAgent.exe
OneDrive.exe
FileSyncHelper.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
ms-teams.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
FileCoAuth.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
OneDrive.Sync.Service.exe
svchost.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
AppActions.exe
audiodg.exe
msedge.exe
AppVShNotify.exe
svchost.exe
mshta.exe
svchost.exe
msiexec.exe
SearchIndexer.exe
ShellHost.exe
rundll32.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
TrustedInstaller.exe
TiWorker.exe
powershell.exe
conhost.exe
chrome.exe
PaKkJ.exe
cmd.exe
cmd.exe
conhost.exe
conhost.exe
browserhost.exe
mc-extn-browserhost.exe
SearchProtocolHost.exe
chrome.exe
chrome.exe

[Software]
AlmoristicsApplication - <ip>
Microsoft Office Home and Student 2021 - en-us - 16.0.19530.20184
McAfee - <ip>
Microsoft OneDrive - 25.243.1211.0001
Microsoft OneNote - en-us - 16.0.19530.20184
Stumble Guys
Pixel Gun 3D: PC Edition
VLC media player - 3.0.20
WinRAR 7.11 (64-bit) - 7.11.0
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.38.33130 - 14.38.33130
Apple Mobile Device Support - <ip>
Bonjour - <ip>
Google Drive - <ip>
iTunes - <ip>
Office 16 Click-to-Run Licensing Component - 16.0.19029.20208
Office 16 Click-to-Run Extensibility Component - 16.0.19426.20170
UE Prerequisites (x64) - <ip>
Microsoft Teams Meeting Add-in for Microsoft Office - 1.24.19202
Samsung Recovery Service - 8.1.52
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.38.33130 - 14.38.33130
Microsoft Update Health Tools - <ip>
Instagram - 1.0
Canva - 1.117.1
Chess - Play & Learn - 1.0
Duolingo - 1.0
Brave - <ip>
Spotify - 1.0
Physics Wallah - 1.0
Microsoft Visual Studio Code (User) - 1.93.0
```

### `cystack_c6052cdf`

**Field keys:**
`AV`, `Batman`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: IN

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English English
Local Time: 25/01/2026 <ip>
TimeZone: 5

[Hardware]
Processor: Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz
Cores: 8
Threads: 8
RAM: 8072 MB
VideoCard: Intel(R) UHD Graphics 620

[Processes]
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
WUDFHost.exe
fontdrvhost.exe
fontdrvhost.exe
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
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
TouchpointAnalyticsClientService.exe
AppHelperCap.exe
DiagsCap.exe
NetworkCap.exe
SysInfoCap.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
audiodg.exe
svchost.exe
WmiPrvSE.exe
unsecapp.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
MonectServerService.exe
svchost.exe
svchost.exe
gamingservices.exe
gamingservicesnet.exe
wlanext.exe
svchost.exe
svchost.exe
AggregatorHost.exe
MonectServer.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
BridgeCommunication.exe
svchost.exe
svchost.exe
svchost.exe
taskhostw.exe
HPSEUH~1.EXE
svchost.exe
eServiceHost.exe
svchost.exe
ShellHost.exe
svchost.exe
explorer.exe
msiexec.exe
svchost.exe
ctfmon.exe
taskhostw.exe
svchost.exe
Widgets.exe
SearchHost.exe
StartMenuExperienceHost.exe
TextInputHost.exe
svchost.exe
RuntimeBroker.exe
UserOOBEBroker.exe
svchost.exe
SearchIndexer.exe
svchost.exe
svchost.exe
SYSTEM~1.EXE
svchost.exe
svchost.exe
svchost.exe
smartscreen.exe
MoUsoCoreWorker.exe
svchost.exe
svchost.exe
svchost.exe
powershell.exe
conhost.exe
svchost.exe
TrustedInstaller.exe
TiWorker.exe
Lively.exe
chrome.exe
C6F1E3~1.EXE
Lively.Watchdog.exe
mpv.exe
utweb.exe
helper.exe
chrome.exe
GoogleChrome.exe
RuntimeBroker.exe
svchost.exe
backgroundTaskHost.exe
backgroundTaskHost.exe
StoreDesktopExtension.exe
RuntimeBroker.exe
backgroundTaskHost.exe
IGCC.exe
StoreDesktopExtension.exe
svchost015.exe
chrome.exe
chrome.exe
RuntimeBroker.exe
chrome.exe
cmd.exe
conhost.exe
OpenConsole.exe
WindowsTerminal.exe
svchost.com

[Software]
BlueStacks - 5.22.125.1001
Microsoft .NET Framework 1.1 SP1
PC Remote Receiver 7.8.1 - 7.8.1
Proton VPN - 4.3.5
Grand Theft Auto: San Andreas
Batman: Arkham City GOTY
SteamTools
WinRAR 7.13 (64-bit) - 7.13.0
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
Allgemeine Runtime Files (x86) - <ip>
Microsoft Update Health Tools - <ip>
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030 - 11.0.61030
Microsoft .NET Host FX Resolver - 9.0.8 (x64) - 72.32.37563
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.44.35211 - 14.44.35211
Microsoft .NET Host - 9.0.8 (x64) - 72.32.37563
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 - 12.0.40664
Proton Drive - 1.11.5
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161 - 9.0.30729.6161
Java 8 Update 401 (64-bit) - 8.0.4010.10
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.44.35211 - 14.44.35211
Microsoft Windows Desktop Runtime - 9.0.8 (x64) - 72.32.37601
Microsoft Silverlight - 5.1.20913.0
Microsoft Visual C++ 2005 Redistributable (x64) - 8.0.61000
Update for x64-based Windows Systems (KB5001716) - <ip>
jjsploit - 8.14.4
Microsoft .NET Framework 1.1 SP1
Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61030 - 11.0.61030
Microsoft GameInput - 10.1.26100.6879
Microsoft .NET Runtime - 9.0.8 (x64) - 72.32.37563
BlueStacks Services - 3.0.9
Proton Pass - 1.32.10
Proton Mail - 1.9.1
Roblox Player for rehan
?Torrent - 3.6.0.47224
uTorrent Web - 1.4.0
Wand - 12.4.1
Proton Drive - 1.11.5
SKlauncher 3.2 - <ip>
Lively Wallpaper version <ip> - <ip>
```

### `cystack_cfb61d69`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: IN

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 25/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x960
Keyboard Languages: English English
Local Time: 24/01/2026 <ip>
TimeZone: 5

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12500H
Cores: 16
Threads: 16
RAM: 16077 MB
VideoCard: Intel(R) Iris(R) Xe Graphics

[Processes]
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
dwm.exe
WUDFHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
IntelCpHDCPSvc.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
AsusOptimization.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dasHost.exe
NgcIso.exe
svchost.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
AsusSwitch.exe
AsusSoftwareManager.exe
AsusSystemAnalysis.exe
AsusAppService.exe
svchost.exe
AsusSystemDiagnosis.exe
OfficeClickToRun.exe
svchost.exe
svchost.exe
DtsApo4Service.exe
ELANFPService.exe
GlideXNearService.exe
GlideXService.exe
ipfsvc.exe
GlideXServiceExt.exe
GlideXRemoteService.exe
OneApp.IGCC.WinService.exe
IntelAudioService.exe
svchost.exe
jhi_service.exe
WsNativePushService.exe
servicehost.exe
ipf_uf.exe
RstMwService.exe
RtkAudUService64.exe
RtkBtManServ.exe
svchost.exe
svchost.exe
WMIRegistrationService.exe
WUDFHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RtkAudUService64.exe
svchost.exe
WmiPrvSE.exe
svchost.exe
gamingservices.exe
gamingservicesnet.exe
MSPCManagerService.exe
AggregatorHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
unsecapp.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
SearchIndexer.exe
MsMpEng.exe
MpDefenderCoreService.exe
svchost.exe
svchost.exe
NisSrv.exe
svchost.exe
svchost.exe
SecurityHealthService.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
sppsvc.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
TrustedInstaller.exe
TiWorker.exe
svchost.exe
uihost.exe
AsusOptimizationStartupTask.exe
ipf_helper.exe
sihost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
taskhostw.exe
svchost.exe
explorer.exe
ShellHost.exe
svchost.exe
CrossDeviceResume.exe
svchost.exe
SearchProtocolHost.exe
svchost.exe
SearchHost.exe
StartMenuExperienceHost.exe
Widgets.exe
svchost.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
backgroundTaskHost.exe
backgroundTaskHost.exe
backgroundTaskHost.exe
backgroundTaskHost.exe
RuntimeBroker.exe
backgroundTaskHost.exe
svchost.exe
ctfmon.exe
RuntimeBroker.exe
RuntimeBroker.exe
smartscreen.exe
msedge.exe
msedge.exe
TextInputHost.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
PhoneExperienceHost.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedgewebview2.exe
svchost.exe
msedge.exe
msedge.exe
msedge.exe
audiodg.exe
msedge.exe
msedge.exe
OneDrive.exe
RtkAudUService64.exe
2656e39777.exe
msedge.exe
svchost.exe
RegSvcs.exe
svchost.exe
msedge.exe

[Software]
Microsoft Office Home and Student 2021 - en-us - 16.0.19426.20218
Microsoft OneDrive - 25.238.1204.0001
Microsoft OneNote - en-us - 16.0.19426.20218
UNDEFEATED
PUBG: BATTLEGROUNDS
Microsoft Visual C++ 2022 X64 Additional Runtime - 14.38.33135 - 14.38.33135
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 - 10.0.40219
Microsoft .NET Host FX Resolver - 8.0.5 (x64) - 64.20.13583
Microsoft .NET Runtime - 8.0.5 (x64) - 64.20.13583
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.4148 - 9.0.30729.4148
Microsoft .NET Host - 8.0.5 (x64) - 64.20.13583
Office 16 Click-to-Run Licensing Component - 16.0.19029.20208
Office 16 Click-to-Run Extensibility Component - 16.0.19426.20170
GlideX Service Installer - <ip>
Microsoft Teams Meeting Add-in for Microsoft Office - 1.25.04401
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.38.33135 - 14.38.33135
Microsoft Update Health Tools - <ip>
Microsoft Windows Desktop Runtime - 8.0.5 (x64) - 64.20.13589
Microsoft GameInput - 10.1.26100.6879
Epic Games Launcher Prerequisites (x64) - <ip>
Wondershare Filmora 15(Build 15.0.12.16430)
Wondershare NativePush(Build <ip>)
```

### `cystack_dbf0dc61`

**Field keys:**
`AV`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD
Date: 23/01/2026 <ip>
Path: <redacted>
Windows: Windows 10 Pro
Install Date: 16/12/2025 <ip>
AV: Windows Defender
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: English
Local Time: 23/01/2026 <ip>
TimeZone: 6
[Hardware]
Processor: Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 8080 MB
VideoCard: Intel(R) HD Graphics
[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
MpDefenderCoreService.exe
MsMpEng.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dllhost.exe
SearchIndexer.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
AggregatorHost.exe
svchost.exe
svchost.exe
NisSrv.exe
SecurityHealthService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
MoUsoCoreWorker.exe
svchost.exe
csrss.exe
winlogon.exe
fontdrvhost.exe
dwm.exe
sihost.exe
svchost.exe
svchost.exe
taskhostw.exe
taskhostw.exe
explorer.exe
svchost.exe
svchost.exe
svchost.exe
RuntimeBroker.exe
ctfmon.exe
StartMenuExperienceHost.exe
RuntimeBroker.exe
SearchApp.exe
UserOOBEBroker.exe
LockApp.exe
RuntimeBroker.exe
RuntimeBroker.exe
TextInputHost.exe
SecurityHealthSystray.exe
hkcmd.exe
igfxpers.exe
OneDrive.exe
WhatsApp.Root.exe
RuntimeBroker.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
msedgewebview2.exe
CompPkgSrv.exe
ShellExperienceHost.exe
RuntimeBroker.exe
PhoneExperienceHost.exe
svchost.exe
OneDrive.Sync.Service.exe
Video.UI.exe
FileCoAuth.exe
RuntimeBroker.exe
RuntimeBroker.exe
svchost.exe
SystemSettingsBroker.exe
dllhost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
msedgewebview2.exe
svchost.exe
ApplicationFrameHost.exe
svchost.exe
audiodg.exe
dllhost.exe
svchost.exe
svchost.exe
dasHost.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
msedge.exe
chrome.exe
chrome.exe
WmiPrvSE.exe
chrome.exe
chrome.exe
chrome.exe
smartscreen.exe
mshta.exe
rundll32.exe
svchost.exe
svchost.exe
WmiPrvSE.exe
cmd.exe
conhost.exe
powershell.exe
vOIYmb6.exe
SearchProtocolHost.exe
SearchFilterHost.exe
eServiceHost.exe
svchost015.exe
[Software]
Microsoft OneDrive - 25.238.1204.0001
Microsoft Update Health Tools - <ip>
Update for x64-based Windows Systems (KB5001716) - <ip>
Facebook - 1.0
CapCut - 7.7.0.3143
Facebook - 1.0
```

### `cystack_f85be4d7`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: EG

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 20/01/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Arabic
Local Time: 25/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-3337U CPU @ 1.80GHz
Cores: 4
Threads: 4
RAM: 3971 MB
VideoCard: Intel(R) HD Graphics 4000

[Processes]
System
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
atiesrxx.exe
atieclxx.exe
svchost.exe
svchost.exe
Memory Compression
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
igfxCUIService.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RtkAudioService64.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
RAVBg64.exe
RAVBg64.exe
svchost.exe
spoolsv.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
WsNativePushService.exe
SynTPEnhService.exe
svchost.exe
net_updater64.exe
svchost.exe
svchost.exe
svchost.exe
SecurityHealthService.exe
SU10Guard.exe
MsMpEng.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
sedlauncher.exe
svchost.exe
conhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
SynTPEnh.exe
sihost.exe
explorer.exe
WsToastNotification.exe
conhost.exe
ShellExperienceHost.exe
SearchUI.exe
RuntimeBroker.exe
RuntimeBroker.exe
RuntimeBroker.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
ctfmon.exe
SynTPHelper.exe
taskhostw.exe
SkypeBackgroundHost.exe
SettingSyncHost.exe
PresentationFontCache.exe
SearchIndexer.exe
MSASCuiL.exe
RtkNGUI64.exe
RAVBg64.exe
OneDrive.exe
igfxEM.exe
RAVBg64.exe
igfxHK.exe
igfxTray.exe
ALLUpdate.exe
svchost.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
brightdata.exe
conhost.exe
sedsvc.exe
chrome.exe
WmiPrvSE.exe
svchost.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
chrome.exe
svchost.exe
svchost.exe
backgroundTaskHost.exe
svchost.exe
smartscreen.exe
RuntimeBroker.exe
svchost.exe
svchost.exe
svchost.exe
SearchProtocolHost.exe
SearchFilterHost.exe
audiodg.exe
WmiPrvSE.exe
KvAG.exe
svchost.exe
eHWDfCu.exe
Install.exe
config.exe
MEyr.exe
WmiPrvSE.exe
dllhost.exe
systemhelper.exe

[Software]
BlueStacks - 5.21.651.1003
Mozilla Firefox (x64 en-US) - 147.0.1
Mozilla Maintenance Service - 145.0.2
Dell Touchpad - <ip>
VLC media player - 3.0.21
Update for Windows 10 for x64-based Systems (KB4480730) - <ip>
Messenger Plus version 1.5 - 1.5
Google Chrome - 143.0.7499.193
Maxx Audio Installer (x64) - 2.6.6168.9
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.4148 - 9.0.30729.4148
4DDiG File Repair <ip> - <ip>
Microsoft Visual C++ 2015 x64 Minimum Runtime - 14.0.24215 - 14.0.24215
ALLPlayer version 9.4 - 9.4
Format Factory - <ip>
Update for Windows 10 for x64-based Systems (KB4023057) - <ip>
Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215 - 14.0.24215
VSPlayer - <ip>
BlueStacks Services - 3.0.9
Microsoft Edge WebView2 Runtime - 144.0.3719.82
Microsoft OneDrive - 25.243.1211.0001
Wondershare NativePush(Build <ip>)
```

## Detection

Distinctive header trio `Ip:` + `Country:` + `Version:` at the
top of `information.txt`. Build banners reference the operator's
Telegram channel.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- @Clik_Start
- https://usrlnk.io/vidar
- https://www.kaspersky.com/resource-center/threats/vidar-stealer
