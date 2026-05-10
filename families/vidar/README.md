# Vidar

Vidar Stealer logs. Build 4.x emits a flat key-colon-value
`information.txt` opening with `Ip:`, `Country:`, `Version:`
followed by hardware, locale, and build identity blocks. Vidar
has been distributed since 2018 as a fork of Arkei and remains a
high-volume infostealer family in 2025+.

**Also known as:** `VidarStealer`

**Variants observed:** 800
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Telegram and Discord session data
- FTP, email, and VPN client configurations
- Documents and screenshots from the desktop

## Variants

### `cystack_00399060`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Skul`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/06/2025 <ip>
AV: 
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Spanish
Local Time: 25/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Pentium(R) CPU B940 @ 2.00GHz
Cores: 2
Threads: 2
RAM: 4009 MB
VideoCard: Intel(R) HD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 116 more lines) ...]
```

### `cystack_0083b8ff`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Seafarer`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i3-13100F
Cores: 8
Threads: 8
RAM: 16197 MB
VideoCard: NVIDIA GeForce RTX 4060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 360 more lines) ...]
```

### `cystack_0096e844`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Road Food Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 11/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 27/12/2025 <ip>
TimeZone: 6

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400
Cores: 12
Threads: 12
RAM: 24336 MB
VideoCard: Intel(R) UHD Graphics 730

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
IntelCpHDCPSvc.exe
[... truncated; full sample at ``sample.txt`` (approx. 345 more lines) ...]
```

### `cystack_01a99347`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `SPLITGATE`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32682 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 341 more lines) ...]
```

### `cystack_020ce240`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Half-Life 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 12/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 16304 MB
VideoCard: NVIDIA GeForce GTX 980 Ti

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 332 more lines) ...]
```

### `cystack_023fa874`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires II`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 09/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 16/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 32661 MB
VideoCard: NVIDIA GeForce RTX 5060

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
[... truncated; full sample at ``sample.txt`` (approx. 285 more lines) ...]
```

### `cystack_024c375e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `METAL GEAR RISING`, `Path`, `Processor`, `RAM`, `SCP`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/07/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-9600KF CPU @ 3.70GHz
Cores: 6
Threads: 6
RAM: 16326 MB
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
svchost.exe
winlogon.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 235 more lines) ...]
```

### `cystack_02a96b9e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `In Sink`, `Install Date`, `Insurgency`, `Ip`, `Kebab Simulator`, `Keyboard Languages`, `Local Time`, `Motor Town`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `Truck World`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 04/08/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-4460  CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 16321 MB
VideoCard: NVIDIA GeForce GTX 960

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
WUDFHost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_03dd47c9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires II`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 07/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Portuguese English
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor 
Cores: 16
Threads: 16
RAM: 24498 MB
VideoCard: NVIDIA GeForce RTX 3070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_040526e4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/06/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x960
Keyboard Languages: English Arabic
Local Time: 16/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM)2 Duo CPU     E7500  @ 2.93GHz
Cores: 2
Threads: 2
RAM: 8123 MB
VideoCard: NVIDIA GeForce GT 710

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
[... truncated; full sample at ``sample.txt`` (approx. 225 more lines) ...]
```

### `cystack_0431c022`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Police Simulator`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 04/02/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x1200
Keyboard Languages: Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 14802 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 347 more lines) ...]
```

### `cystack_043f4b1d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `White Day`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EC

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/06/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz
Cores: 12
Threads: 12
RAM: 16177 MB
VideoCard: NVIDIA GeForce GTX 1650 Ti

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
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 409 more lines) ...]
```

### `cystack_045b0d73`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mafia`, `Path`, `Processor`, `RAM`, `There is no game`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 22/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 18/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-1155G7 @ 2.50GHz
Cores: 8
Threads: 8
RAM: 7834 MB
VideoCard: Intel(R) Iris(R) Xe Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_0474536e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Ghostbane`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `STALCRAFT`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 23/11/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Portuguese Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2670 v3 @ 2.30GHz
Cores: 48
Threads: 48
RAM: 32641 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 209 more lines) ...]
```

### `cystack_0501dc8e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English English English
Local Time: 18/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz
Cores: 8
Threads: 8
RAM: 8006 MB
VideoCard: Intel(R) UHD Graphics 620

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
svchost.exe
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 244 more lines) ...]
```

### `cystack_05a04f25`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 18/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 2700X Eight-Core Processor         
Cores: 16
Threads: 16
RAM: 16334 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
WUDFHost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 247 more lines) ...]
```

### `cystack_05c215f8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 02/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12450H
Cores: 12
Threads: 12
RAM: 16088 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_05c64d79`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 04/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 04/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i7-8665U CPU @ 1.90GHz
Cores: 8
Threads: 8
RAM: 16165 MB
VideoCard: Intel(R) UHD Graphics 620

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_06357cbd`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 24/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3300X 4-Core Processor             
Cores: 8
Threads: 8
RAM: 16309 MB
VideoCard: NVIDIA GeForce GTX 1660 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 309 more lines) ...]
```

### `cystack_0645304c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fast Food Simulator`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Taxi Life`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz
Cores: 20
Threads: 20
RAM: 32649 MB
VideoCard: NVIDIA GeForce RTX 4070 SUPER

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 338 more lines) ...]
```

### `cystack_06c57dc1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Subnautica`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/01/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD FX(tm)-8150 Eight-Core Processor           
Cores: 8
Threads: 8
RAM: 16276 MB
VideoCard: NVIDIA GeForce GTX 1070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 288 more lines) ...]
```

### `cystack_070494f4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Batman`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARAKA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: DO

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 18/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 26/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 32710 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 263 more lines) ...]
```

### `cystack_071da7c4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stormworks`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 18/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2752x1152
Keyboard Languages: English English
Local Time: 12/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 7 9700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 31801 MB
VideoCard: AMD Radeon RX 9070 XT

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 286 more lines) ...]
```

### `cystack_073b12bb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NVIDIA Pilote audio HD`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: RE

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: French
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz
Cores: 4
Threads: 4
RAM: 8064 MB
VideoCard: NVIDIA GeForce GT 630

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 205 more lines) ...]
```

### `cystack_07e1a6a5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: FR

Date: 22/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/08/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French English
Local Time: 22/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-10700K CPU @ 3.80GHz
Cores: 16
Threads: 16
RAM: 32689 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 281 more lines) ...]
```

### `cystack_07efcbc6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto IV`, `HWID`, `Half-Life 2`, `Half-Life Deathmatch`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Viscera Cleanup Detail`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 18/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz
Cores: 12
Threads: 12
RAM: 16221 MB
VideoCard: NVIDIA GeForce RTX 3070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 337 more lines) ...]
```

### `cystack_08a7477f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARAKA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1080
Keyboard Languages: Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 8137 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 339 more lines) ...]
```

### `cystack_09414739`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Kill It With Fire`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `RISK`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 22/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 8093 MB
VideoCard: Intel(R) HD Graphics 530

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
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_09b22679`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `War Planet Online`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 08/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i7-13700K
Cores: 24
Threads: 24
RAM: 16125 MB
VideoCard: NVIDIA GeForce RTX 4070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 323 more lines) ...]
```

### `cystack_0a31027a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 11/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese English
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: NVIDIA GeForce RTX 3070

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 261 more lines) ...]
```

### `cystack_0b3e2cc4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `CPUCores`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11300H @ 3.10GHz
Cores: 8
Threads: 8
RAM: 7991 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 272 more lines) ...]
```

### `cystack_0b69807a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bum`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AT

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 16212 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 171 more lines) ...]
```

### `cystack_0b98531d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Anonymous Hacker Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 01/01/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4600G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 15762 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_0c70d378`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Demo de Monster Hunter Rise`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: DO

Date: 21/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 28/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1024x768
Keyboard Languages: Spanish Spanish Spanish Spanish
Local Time: 21/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 7893 MB
VideoCard: NVIDIA GeForce GT 710

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_0d895f82`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 04/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i3-7100 CPU @ 3.90GHz
Cores: 4
Threads: 4
RAM: 8057 MB
VideoCard: Intel(R) HD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_0e487853`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Uncrashed`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `World of Guns`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 25/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i9-14900
Cores: 32
Threads: 32
RAM: 65309 MB
VideoCard: Intel(R) UHD Graphics 770

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 324 more lines) ...]
```

### `cystack_0e4f3849`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Ages of Conflict`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: English
Local Time: 18/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31893 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 354 more lines) ...]
```

### `cystack_0e55801b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Prison Escape Simulator`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CN

Date: 28/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/07/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Chinese (S
Local Time: 28/12/2025 <ip>
TimeZone: 8

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i9-11900K @ 3.50GHz
Cores: 16
Threads: 16
RAM: 32600 MB
VideoCard: NVIDIA GeForce RTX 3080

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
[... truncated; full sample at ``sample.txt`` (approx. 334 more lines) ...]
```

### `cystack_0e76ea15`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 11/03/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Russian Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-6006U CPU @ 2.00GHz
Cores: 4
Threads: 4
RAM: 12162 MB
VideoCard: Intel(R) HD Graphics 520

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
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_0e943371`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Offroad Mechanic Simulator`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 11/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian Bulgarian Bulgarian English English English
Local Time: 20/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16225 MB
VideoCard: NVIDIA GeForce RTX 3050

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
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 303 more lines) ...]
```

### `cystack_0eb160c9`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-10700F CPU @ 2.90GHz
Cores: 16
Threads: 16
RAM: 32676 MB
VideoCard: Radeon RX 5500 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 327 more lines) ...]
```

### `cystack_0ed12593`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 04/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i7-8665U CPU @ 1.90GHz
Cores: 8
Threads: 8
RAM: 16165 MB
VideoCard: Intel(R) UHD Graphics 620

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 258 more lines) ...]
```

### `cystack_0ef4ae62`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 26/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-10105 CPU @ 3.70GHz
Cores: 8
Threads: 8
RAM: 8042 MB
VideoCard: Intel(R) UHD Graphics 630

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 207 more lines) ...]
```

### `cystack_0efb3f26`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `The Walking Dead`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-7100 CPU @ 3.90GHz
Cores: 4
Threads: 4
RAM: 16298 MB
VideoCard: Intel(R) HD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_0efe58d5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 06/12/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Arabic
Local Time: 31/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 3984 MB
VideoCard: Intel(R) HD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 165 more lines) ...]
```

### `cystack_0f206e55`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SuchArt`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 31/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD A4-4000 APU with Radeon(tm) HD Graphics    
Cores: 2
Threads: 2
RAM: 3510 MB
VideoCard: AMD Radeon HD 7480D

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
[... truncated; full sample at ``sample.txt`` (approx. 135 more lines) ...]
```

### `cystack_0f658ea0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Half-Life 2`, `Hello Neighbor`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 25/03/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Czech
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3500 6-Core Processor              
Cores: 6
Threads: 6
RAM: 16331 MB
VideoCard: NVIDIA GeForce RTX 2070

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
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_0f98b305`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sniper Elite`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 27/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: English
Local Time: 12/01/2026 <ip>
TimeZone: 4294967290

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i7-13700F
Cores: 24
Threads: 24
RAM: 16102 MB
VideoCard: NVIDIA GeForce RTX 3070

[Processes][Software]
SideQuest 0.10.42 - 0.10.42
Alienware FX Display Smart Installer (<ip>) - <ip>
BlueStacks - 5.22.153.1026
Denuvo Anti-Cheat - 6.8.2.1790
Google Play Games - <ip>
McAfee - <ip>
Mozilla Firefox (x64 en-US) - 146.0.1
Mozilla Maintenance Service - 146.0.1
Microsoft 365 - en-us - 16.0.19426.20218
Oculus - 1.103.0
Microsoft OneNote - en-us - 16.0.19426.20218
Farming Simulator 22
Gorilla Tag
Sniper Elite: Resistance
[... truncated; full sample at ``sample.txt`` (approx. 122 more lines) ...]
```

### `cystack_1023b402`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 10/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2650 v3 @ 2.30GHz
Cores: 20
Threads: 20
RAM: 16287 MB
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
svchost.exe
winlogon.exe
fontdrvhost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_104263e7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 05/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-10105 CPU @ 3.70GHz
Cores: 8
Threads: 8
RAM: 16322 MB
VideoCard: Radeon RX550/550 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 241 more lines) ...]
```

### `cystack_1077dc0d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 16/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 1600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16307 MB
VideoCard: AMD Radeon RX 580 2048SP

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
[... truncated; full sample at ``sample.txt`` (approx. 302 more lines) ...]
```

### `cystack_107bcc3d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Deed`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Arabic
Local Time: 02/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM)2 Duo CPU     E8400  @ 3.00GHz
Cores: 2
Threads: 2
RAM: 8123 MB
VideoCard: AMD Radeon HD 7000 series

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
[... truncated; full sample at ``sample.txt`` (approx. 255 more lines) ...]
```

### `cystack_10953bb5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Infestation`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_112413d3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Disciples`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 03/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/12/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 03/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10500 CPU @ 3.10GHz
Cores: 12
Threads: 12
RAM: 16096 MB
VideoCard: Intel(R) UHD Graphics 630

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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 209 more lines) ...]
```

### `cystack_11f97972`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: French
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31861 MB
VideoCard: AMD Radeon RX 6950 XT

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_121c254d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Education
Install Date: 23/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16334 MB
VideoCard: NVIDIA GeForce GTX 1060 3GB

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
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 257 more lines) ...]
```

### `cystack_124dc0e1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 13/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Xeon(R) CPU E3-1231 v3 @ 3.40GHz
Cores: 8
Threads: 8
RAM: 12216 MB
VideoCard: Intel(R) UHD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 294 more lines) ...]
```

### `cystack_12556f65`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DPET`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FI

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1707x960
Keyboard Languages: English Russian
Local Time: 02/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i7-13620H
Cores: 16
Threads: 16
RAM: 16104 MB
VideoCard: NVIDIA GeForce RTX 4070 Laptop GPU

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_12e76294`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `Time Survivors`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 18/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16265 MB
VideoCard: NVIDIA GeForce RTX 3070

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 359 more lines) ...]
```

### `cystack_13786e78`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Only Up`, `Path`, `Prison Escape Simulator`, `Processor`, `RAM`, `SCP`, `Sleeping Dogs`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 14127 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 348 more lines) ...]
```

### `cystack_1383522e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 01/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 6072 MB
VideoCard: AMD Radeon(TM) RX Vega 11 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 318 more lines) ...]
```

### `cystack_1492c049`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sky`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 01/11/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian Bulgarian English English
Local Time: 08/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i3-7100 CPU @ 3.90GHz
Cores: 4
Threads: 4
RAM: 12247 MB
VideoCard: AMD Radeon (TM) R9 200 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 248 more lines) ...]
```

### `cystack_158d86b9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mesh Agent - 2025-03-06 22`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 29/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro Education
Install Date: 03/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French Arabic
Local Time: 29/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Pentium(R) CPU G4400 @ 3.30GHz
Cores: 2
Threads: 2
RAM: 8099 MB
VideoCard: Intel(R) HD Graphics 510

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 192 more lines) ...]
```

### `cystack_15d60733`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Subnautica`, `Supermarket Simulator`, `Threads`, `TimeZone`, `Tobacco Shop Simulator`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FI

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 22/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Finnish
Local Time: 14/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12600K
Cores: 16
Threads: 16
RAM: 16125 MB
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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 333 more lines) ...]
```

### `cystack_15d6e08c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 25/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 16252 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 324 more lines) ...]
```

### `cystack_160cc844`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 14/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 18/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English English
Local Time: 14/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31850 MB
VideoCard: AMD Radeon RX 9070 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_16d2ee2c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Darkest Hour`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Men of War`, `Motor Town`, `Path`, `Processor`, `RAM`, `Rising Storm 2`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 05/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz
Cores: 12
Threads: 12
RAM: 16318 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 273 more lines) ...]
```

### `cystack_1733e41b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Kill It With Fire`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/07/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Bangla Bangla English
Local Time: 19/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: Intel(R) Core(TM) i5-4460  CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 3996 MB
VideoCard: Intel(R) HD Graphics 4600

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 187 more lines) ...]
```

### `cystack_17365ccb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sider`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 28/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 19/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: French Arabic English
Local Time: 28/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
Cores: 4
Threads: 4
RAM: 8079 MB
VideoCard: Intel(R) HD Graphics 520

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
[... truncated; full sample at ``sample.txt`` (approx. 214 more lines) ...]
```

### `cystack_17560243`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Prison Escape Simulator`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 09/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i7-12700K
Cores: 20
Threads: 20
RAM: 16165 MB
VideoCard: Intel(R) UHD Graphics 770

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 272 more lines) ...]
```

### `cystack_17b8b82d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `NARUTO TO BORUTO`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 23/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 16339 MB
VideoCard: Radeon RX550/550 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 223 more lines) ...]
```

### `cystack_17ee010b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Wild Terra 2`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 23/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Dutch Dutch English
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32694 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 307 more lines) ...]
```

### `cystack_1844a61d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `G-Switch 4`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 17/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-2450M CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 4077 MB
VideoCard: NVIDIA GeForce 410M

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
[... truncated; full sample at ``sample.txt`` (approx. 251 more lines) ...]
```

### `cystack_1847fede`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Half-Life Deathmatch`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CY

Date: 31/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/01/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Greek English Greek
Local Time: 31/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16322 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 297 more lines) ...]
```

### `cystack_1881599f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `XERA`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 23/09/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 03/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz
Cores: 12
Threads: 12
RAM: 8127 MB
VideoCard: NVIDIA GeForce GTX 1070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 247 more lines) ...]
```

### `cystack_18915899`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Monster Hunter Stories 2`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-2600K CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16365 MB
VideoCard: NVIDIA GeForce GTX 970

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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_19bfa275`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SpongeBob SquarePants`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CY

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Greek English
Local Time: 09/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-10700K CPU @ 3.80GHz
Cores: 16
Threads: 16
RAM: 32615 MB
VideoCard: AMD Radeon RX 9060 XT

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 290 more lines) ...]
```

### `cystack_19f3ebb4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 20/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 9 5950X 16-Core Processor            
Cores: 32
Threads: 32
RAM: 65459 MB
VideoCard: AMD Radeon RX 6950 XT

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_1a5b20ed`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Crime Simulator`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German Polish Polish
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_1a6fad1b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/06/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 14229 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 303 more lines) ...]
```

### `cystack_1add0b3e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bum`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16251 MB
VideoCard: NVIDIA GeForce GTX 1070

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
[... truncated; full sample at ``sample.txt`` (approx. 312 more lines) ...]
```

### `cystack_1af320cc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Contraband Police`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 19/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: German
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Pentium(R) Gold 7505 @ 2.00GHz
Cores: 4
Threads: 4
RAM: 7991 MB
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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 219 more lines) ...]
```

### `cystack_1b526b61`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Halo`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 11/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Spanish Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 7520U with Radeon Graphics         
Cores: 8
Threads: 8
RAM: 7412 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 252 more lines) ...]
```

### `cystack_1be0a639`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 05/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Czech English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3550H with Radeon Vega Mobile Gfx  
Cores: 8
Threads: 8
RAM: 8001 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 329 more lines) ...]
```

### `cystack_1c02f42c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call to Arms - Gates of Hell`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 12/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 12/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12600KF
Cores: 12
Threads: 12
RAM: 32606 MB
VideoCard: AMD Radeon RX 6600

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
[... truncated; full sample at ``sample.txt`` (approx. 290 more lines) ...]
```

### `cystack_1c3e7d72`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Prison Escape Simulator`, `Processor`, `RAM`, `Supremacy`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 17/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i7-11700F @ 2.50GHz
Cores: 16
Threads: 16
RAM: 16154 MB
VideoCard: NVIDIA GeForce RTX 3070

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 353 more lines) ...]
```

### `cystack_1cc96eab`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blackjack 21`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 04/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz
Cores: 12
Threads: 12
RAM: 24407 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 291 more lines) ...]
```

### `cystack_1cf517ae`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DRAGON BALL`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MELTY BLOOD`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 20385 MB
VideoCard: NVIDIA GeForce GTX 1050

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
[... truncated; full sample at ``sample.txt`` (approx. 335 more lines) ...]
```

### `cystack_1d19be11`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `Danganronpa V3`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 24/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz
Cores: 8
Threads: 8
RAM: 24424 MB
VideoCard: Intel(R) UHD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 265 more lines) ...]
```

### `cystack_1d459167`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2697 v3 @ 2.60GHz
Cores: 28
Threads: 28
RAM: 16290 MB
VideoCard: AMD Radeon RX 7600

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
[... truncated; full sample at ``sample.txt`` (approx. 212 more lines) ...]
```

### `cystack_1d6c0c3d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bendy`, `Bum`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Slapshot`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Polish
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Xeon(R) W-2125 CPU @ 4.00GHz
Cores: 8
Threads: 8
RAM: 65263 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 293 more lines) ...]
```

### `cystack_1dea28b5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Among Us 3D`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2666 v3 @ 2.90GHz
Cores: 10
Threads: 10
RAM: 32675 MB
VideoCard: NVIDIA GeForce RTX 3050

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 408 more lines) ...]
```

### `cystack_1ebf602f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 20/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Enterprise
Install Date: 21/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 20/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15720 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 249 more lines) ...]
```

### `cystack_1f4f3865`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARUTO SHIPPUDEN`, `PUBG`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 09/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: French English
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16294 MB
VideoCard: NVIDIA GeForce GTX 1660

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
[... truncated; full sample at ``sample.txt`` (approx. 249 more lines) ...]
```

### `cystack_1f7754fa`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Jacksmith`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Plague Inc`, `Processor`, `RAM`, `Sword Art Online`, `Threads`, `Time Walker`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 24/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1707x960
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i9-10900KF CPU @ 3.70GHz
Cores: 20
Threads: 20
RAM: 32670 MB
VideoCard: NVIDIA GeForce RTX 3090

[Processes][Software]
Vortex - 1.14.11
Armoury Crate Service - 6.1.18
Audacity 3.7.3 - 3.7.3
BlueStacks App Player - 5.21.301.1005
Cheat Engine 7.5
CPUID CPU-Z 2.16 - 2.16
Maxon Cinema 4D 2025 - 2025.3.3
Microsoft 365 Apps for enterprise - en-us - 16.0.19426.20218
Oculus - <3
Microsoft OneDrive - 25.222.1112.0002
Adventure Climb VR
[... truncated; full sample at ``sample.txt`` (approx. 242 more lines) ...]
```

### `cystack_1f7ff9d7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `BBQ Simulator`, `Camping Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 20/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-9700 CPU @ 3.00GHz
Cores: 8
Threads: 8
RAM: 16299 MB
VideoCard: NVIDIA GeForce GTX 1660

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
[... truncated; full sample at ``sample.txt`` (approx. 356 more lines) ...]
```

### `cystack_1f83ff1a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Skyrim Special Edition`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 09/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 11/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 09/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 7 3800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32697 MB
VideoCard: NVIDIA GeForce GTX 1080 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 284 more lines) ...]
```

### `cystack_1fd19cc3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sherlock Holmes`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 15/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3500X 6-Core Processor             
Cores: 6
Threads: 6
RAM: 8128 MB
VideoCard: Radeon RX 560 Series

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 227 more lines) ...]
```

### `cystack_208652e4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto IV`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-10105F CPU @ 3.70GHz
Cores: 8
Threads: 8
RAM: 16237 MB
VideoCard: NVIDIA GeForce GTX 1650

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
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 362 more lines) ...]
```

### `cystack_20d7094b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Seven Knights Re`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CI

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: French
Local Time: 07/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: Intel(R) Core(TM) i3-4150 CPU @ 3.50GHz
Cores: 4
Threads: 4
RAM: 16302 MB
VideoCard: Intel(R) HD Graphics 4400

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
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_2122982c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `COMBAT ARMS`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 26/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3450S CPU @ 2.80GHz
Cores: 4
Threads: 4
RAM: 12162 MB
VideoCard: Intel(R) HD Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 211 more lines) ...]
```

### `cystack_21303e5d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Unreal Development Kit`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 14/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16237 MB
VideoCard: NVIDIA GeForce RTX 3060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 324 more lines) ...]
```

### `cystack_216ff2df`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Seven Deadly Sins`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 15/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32676 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 315 more lines) ...]
```

### `cystack_219e4bc2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 20/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 03/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 5 3500X 6-Core Processor             
Cores: 6
Threads: 6
RAM: 16315 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 269 more lines) ...]
```

### `cystack_21b3217b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Nova-Life`, `Path`, `Processor`, `RAM`, `The Planet Crafter`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 32046 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_21c68dd2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Seven Deadly Sins`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 25/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese Portuguese
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-1005G1 CPU @ 1.20GHz
Cores: 4
Threads: 4
RAM: 5157 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 218 more lines) ...]
```

### `cystack_220058d9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Deep Race`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 22/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 800x600
Keyboard Languages: Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Celeron(R) N4000 CPU @ 1.10GHz
Cores: 2
Threads: 2
RAM: 3918 MB
VideoCard: Intel(R) UHD Graphics 600

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
[... truncated; full sample at ``sample.txt`` (approx. 198 more lines) ...]
```

### `cystack_2273dc41`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Police Simulator`, `Processor`, `RAM`, `Sunset Motel`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 27/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor 
Cores: 16
Threads: 16
RAM: 32694 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_229bdefe`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires IV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro for Workstations
Install Date: 11/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16316 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 293 more lines) ...]
```

### `cystack_22d0d6a2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Survivors`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 IoT Enterprise LTSC 2021
Install Date: 15/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 16344 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 285 more lines) ...]
```

### `cystack_22ea9328`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto IV`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 09/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16273 MB
VideoCard: Radeon RX 570 Series

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 259 more lines) ...]
```

### `cystack_2335d98b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto IV`, `HWID`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mafia III`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```

Ip: <redacted>
Country: BR

Date: 21/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 20/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 21/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 8043 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 211 more lines) ...]
```

### `cystack_2373b894`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher 2`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 02/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700                               
Cores: 16
Threads: 16
RAM: 32661 MB
VideoCard: AMD Radeon RX 5700 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 290 more lines) ...]
```

### `cystack_2418a187`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16170 MB
VideoCard: AMD Radeon RX 580 2048SP

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 261 more lines) ...]
```

### `cystack_243a48b2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `STALCRAFT`, `Schedule I`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 2700X Eight-Core Processor         
Cores: 16
Threads: 16
RAM: 16312 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_244b5426`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `RISK`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro Education
Install Date: 22/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1568x1080
Keyboard Languages: Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16216 MB
VideoCard: NVIDIA GeForce RTX 3050

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 260 more lines) ...]
```

### `cystack_24517901`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mafia`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Enterprise
Install Date: 04/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 08/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16333 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 303 more lines) ...]
```

### `cystack_2510a9d8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Black Myth`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `FTL`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-10700F CPU @ 2.90GHz
Cores: 16
Threads: 16
RAM: 32637 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 378 more lines) ...]
```

### `cystack_255c86bc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: English Portuguese Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16233 MB
VideoCard: Radeon RX550/550 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 260 more lines) ...]
```

### `cystack_25781e04`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 3700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32721 MB
VideoCard: NVIDIA GeForce RTX 3060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_259ae734`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Gunsmith Simulator`, `Install Date`, `Ip`, `JDM`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `World of Guns`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise
Install Date: 14/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 32599 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_2604167d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Black Myth`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 30/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 4800H with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 32125 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_260b8b8f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Metal`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 31/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Dutch Dutch English
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800XT 8-Core Processor            
Cores: 16
Threads: 16
RAM: 16269 MB
VideoCard: Intel(R) Arc(TM) B580 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 264 more lines) ...]
```

### `cystack_262996bf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Century`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 04/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 18/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 7520U with Radeon Graphics         
Cores: 8
Threads: 8
RAM: 7455 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_2692d9d4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Operation Lovecraft`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 15/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 04/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English French Arabic
Local Time: 15/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz
Cores: 12
Threads: 12
RAM: 16200 MB
VideoCard: NVIDIA GeForce GTX 1660 Ti

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 198 more lines) ...]
```

### `cystack_28751af9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Portuguese Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15720 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 271 more lines) ...]
```

### `cystack_2900bfda`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 28/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Danish English
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 24513 MB
VideoCard: NVIDIA GeForce GTX 1660 Ti

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 229 more lines) ...]
```

### `cystack_296045b8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HFSQL`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CI
Version: 17.5

Date: 18/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: French
Local Time: 18/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
Cores: 4
Threads: 4
RAM: 8088 MB
VideoCard: Intel(R) HD Graphics 520

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
[... truncated; full sample at ``sample.txt`` (approx. 374 more lines) ...]
```

### `cystack_29b9faf0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DE`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31861 MB
VideoCard: NVIDIA GeForce RTX 5070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 399 more lines) ...]
```

### `cystack_29c27fab`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `First Cut`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 7600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 31864 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_29f8c2a5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro Education
Install Date: 16/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Spanish Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 15663 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_2a61390c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Seven Deadly Sins`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 14275 MB
VideoCard: AMD Radeon RX 580 2048SP

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
[... truncated; full sample at ``sample.txt`` (approx. 262 more lines) ...]
```

### `cystack_2af82cb9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/09/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 13201 MB
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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 163 more lines) ...]
```

### `cystack_2b4e6bc3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `GUID`, `Grand Theft Auto`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 23/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Arabic English
Local Time: 01/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16232 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_2bc8a098`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Miscrits`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 24/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 2400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 16311 MB
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
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 309 more lines) ...]
```

### `cystack_2bdff4c0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Nightmare House`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 01/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13400
Cores: 16
Threads: 16
RAM: 32538 MB
VideoCard: Intel(R) UHD Graphics 730

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
winlogon.exe
lsass.exe
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_2be55076`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Death Squared`, `Display Resolution`, `FreeStyle 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Passpartout 2`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Tatari`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16236 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 339 more lines) ...]
```

### `cystack_2caf98fe`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Ben 10`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `WriteHuman AI Humanizer Tool`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 30/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: English
Local Time: 30/12/2025 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz
Cores: 8
Threads: 8
RAM: 16198 MB
VideoCard: Intel(R) UHD Graphics 620

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 215 more lines) ...]
```

### `cystack_2d2ae957`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Xilinx DocNav (C`, `Xilinx Information Center (C`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: DZ

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: French Arabic
Local Time: 25/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 PRO 5675U with Radeon Graphics     
Cores: 12
Threads: 12
RAM: 6958 MB
VideoCard: AMD Radeon (TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 274 more lines) ...]
```

### `cystack_2dc94903`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stronghold Crusader`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 22/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: English Arabic
Local Time: 12/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: AMD Radeon R7 200 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
```

### `cystack_2ddc6dd2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
[... 7 blank lines ...]
Ip: <redacted>
Country: BR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese Portuguese
Local Time: 16/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
Cores: 4
Threads: 4
RAM: 8156 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 380 more lines) ...]
```

### `cystack_2ea61e3e`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 266 more lines) ...]
```

### `cystack_2ecdf88c`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Batman`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 12/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32693 MB
VideoCard: NVIDIA GeForce RTX 4060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
winlogon.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 261 more lines) ...]
```

### `cystack_2ee8e0cc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Mythology`, `Alice`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Star Wars`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warlocks 2`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 17/03/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x1200
Keyboard Languages: Spanish Spanish Spanish
Local Time: 16/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16294 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_2f4d2b87`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fallout`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `State of Decay`, `The Binding of Isaac`, `The Walking Dead`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 27/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Japanese Portuguese Thai Spanish Spanish Portuguese Uzbek (Cyr English Arabic Arabic
Local Time: 18/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 8071 MB
VideoCard: Intel(R) HD Graphics 620

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 316 more lines) ...]
```

### `cystack_2f8cd866`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Project Reality`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4600G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 12180 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 218 more lines) ...]
```

### `cystack_30882881`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Evony`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 14/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic English
Local Time: 14/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz
Cores: 8
Threads: 8
RAM: 16051 MB
VideoCard: Intel(R) Iris(R) Xe Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

### `cystack_30f26716`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Gym Manager`, `Install Date`, `Ip`, `Kebab Simulator`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 22/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Spanish
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 3800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16310 MB
VideoCard: Radeon RX 580 Series

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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 284 more lines) ...]
```

### `cystack_31003ef2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sonic Racing`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 12/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 06/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 12/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-4440 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 16284 MB
VideoCard: NVIDIA GeForce GTX 970

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
[... truncated; full sample at ``sample.txt`` (approx. 285 more lines) ...]
```

### `cystack_3136285b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Vampire`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: DZ

Date: 28/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1680x1050
Keyboard Languages: English Arabic
Local Time: 28/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 14229 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 244 more lines) ...]
```

### `cystack_31f51166`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Lord of the Rings`, `Threads`, `TimeZone`, `User Name`, `Valiant Hearts`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz
Cores: 12
Threads: 12
RAM: 32605 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 251 more lines) ...]
```

### `cystack_32272eec`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 15/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16326 MB
VideoCard: NVIDIA GeForce GTX 1070

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
[... truncated; full sample at ``sample.txt`` (approx. 312 more lines) ...]
```

### `cystack_323e48b2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 01/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
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
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_329b1639`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blue Protocol`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16329 MB
VideoCard: AMD Radeon RX 580 2048SP

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 340 more lines) ...]
```

### `cystack_32c5134d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Only Climb`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/12/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor 
Cores: 16
Threads: 16
RAM: 16310 MB
VideoCard: NVIDIA GeForce RTX 3050

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 329 more lines) ...]
```

### `cystack_331d1b30`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Conflict of Nations`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Rubber Bandits`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 06/04/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3500X 6-Core Processor             
Cores: 6
Threads: 6
RAM: 16310 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 287 more lines) ...]
```

### `cystack_336339bb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i7-11700K @ 3.60GHz
Cores: 8
Threads: 8
RAM: 29565 MB
VideoCard: Intel(R) UHD Graphics 630

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 303 more lines) ...]
```

### `cystack_34af15e6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 16/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-1235U
Cores: 12
Threads: 12
RAM: 7893 MB
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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 316 more lines) ...]
```

### `cystack_34e172ca`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 11/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 8112 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_351b990b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Tomb Raider`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 17/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French French
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16137 MB
VideoCard: NVIDIA GeForce RTX 3050 OEM

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
winlogon.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 407 more lines) ...]
```

### `cystack_356758be`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stronghold`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 11/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Romanian
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-4440 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 16340 MB
VideoCard: NVIDIA GeForce GTX 1070

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
[... truncated; full sample at ``sample.txt`` (approx. 273 more lines) ...]
```

### `cystack_356f7c34`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 30/11/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: NVIDIA GeForce GTX 1660 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 334 more lines) ...]
```

### `cystack_3574061b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Half-Life`, `Half-Life Deathmatch`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 28/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 28/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i7-11700F @ 2.50GHz
Cores: 16
Threads: 16
RAM: 32637 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 331 more lines) ...]
```

### `cystack_364e6884`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schoolboy Escape 2`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 17/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i3-8145U CPU @ 2.10GHz
Cores: 4
Threads: 4
RAM: 3969 MB
VideoCard: Intel(R) UHD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_3670b6f5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Vampire`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 23/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 06/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 23/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2660 v3 @ 2.60GHz
Cores: 20
Threads: 20
RAM: 16222 MB
VideoCard: Radeon RX 580 Series

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
[... truncated; full sample at ``sample.txt`` (approx. 345 more lines) ...]
```

### `cystack_36d13b89`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 26/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16273 MB
VideoCard: NVIDIA GeForce GT 740

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 314 more lines) ...]
```

### `cystack_37f49c0a`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 20/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 20/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-4690K CPU @ 3.50GHz
Cores: 4
Threads: 4
RAM: 8143 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_38cbe165`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BO

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/06/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Chinese (T Spanish Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD 3020e with Radeon Graphics                 
Cores: 2
Threads: 2
RAM: 6086 MB
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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_39016034`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Kebab Simulator`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Stronghold Crusader`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 31/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-7600 CPU @ 3.50GHz
Cores: 4
Threads: 4
RAM: 16342 MB
VideoCard: Radeon RX 570 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 248 more lines) ...]
```

### `cystack_39401f93`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Magic`, `Path`, `Processor`, `RAM`, `The Walking Dead`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 09/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i7-13620H
Cores: 16
Threads: 16
RAM: 16087 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 325 more lines) ...]
```

### `cystack_397b9451`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Car Dealer Simulator`, `Computer Name`, `Contraband Police`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DK

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 02/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 16289 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 298 more lines) ...]
```

### `cystack_39eecb30`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Spanish Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-10100F CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 32639 MB
VideoCard: Radeon(TM) RX 460 Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 262 more lines) ...]
```

### `cystack_3a4ac7e2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Schedule I`, `Slapshot`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 19/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 16328 MB
VideoCard: NVIDIA GeForce GTX 1060 3GB

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
[... truncated; full sample at ``sample.txt`` (approx. 304 more lines) ...]
```

### `cystack_3ac9ad6f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Mythology`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 02/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: French French
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16264 MB
VideoCard: NVIDIA GeForce RTX 3070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 273 more lines) ...]
```

### `cystack_3b2945e6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 11/06/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-7100 CPU @ 3.90GHz
Cores: 4
Threads: 4
RAM: 11977 MB
VideoCard: Intel(R) HD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 222 more lines) ...]
```

### `cystack_3b53eb7d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DEVOUR`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 18/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese
Local Time: 16/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16337 MB
VideoCard: NVIDIA GeForce GT 730

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
[... truncated; full sample at ``sample.txt`` (approx. 273 more lines) ...]
```

### `cystack_3b937729`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 11/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 32560 MB
VideoCard: AMD Radeon RX 6600

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 199 more lines) ...]
```

### `cystack_3bd9052d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Magic`, `Path`, `Processor`, `RAM`, `Summoners War`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 32680 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 308 more lines) ...]
```

### `cystack_3ca9839d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Expedition`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 10/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 11/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 7 3700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16335 MB
VideoCard: NVIDIA GeForce GTX 1660

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 304 more lines) ...]
```

### `cystack_3d162a21`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Anno 117`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16315 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 221 more lines) ...]
```

### `cystack_3d847988`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Love n Life`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16277 MB
VideoCard: NVIDIA GeForce RTX 3050

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 290 more lines) ...]
```

### `cystack_3da31dc3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SWAT Commander`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro N
Install Date: 20/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian English English
Local Time: 17/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16322 MB
VideoCard: NVIDIA GeForce GTX 1650

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_3de89785`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 11/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3317U CPU @ 1.70GHz
Cores: 4
Threads: 4
RAM: 8091 MB
VideoCard: Intel(R) HD Graphics Family

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
[... truncated; full sample at ``sample.txt`` (approx. 221 more lines) ...]
```

### `cystack_3e95cc1d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Isekai`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 28/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German Russian Ukrainian English
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 3700U with Radeon Vega Mobile Gfx  
Cores: 8
Threads: 8
RAM: 14273 MB
VideoCard: AMD Radeon(TM) RX Vega 10 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 282 more lines) ...]
```

### `cystack_3ea061fb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3337U CPU @ 1.80GHz
Cores: 4
Threads: 4
RAM: 5590 MB
VideoCard: NVIDIA GeForce GTX 650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 139 more lines) ...]
```

### `cystack_3f013109`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 23/01/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-7600K CPU @ 3.80GHz
Cores: 4
Threads: 4
RAM: 32727 MB
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
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 317 more lines) ...]
```

### `cystack_3f4c49ae`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Asphalt 9`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 03/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz
Cores: 4
Threads: 4
RAM: 8057 MB
VideoCard: Intel(R) HD Graphics 4000

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
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 208 more lines) ...]
```

### `cystack_3fa96099`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `ONE PIECE`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 21/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 9 7950X3D 16-Core Processor          
Cores: 32
Threads: 32
RAM: 64629 MB
VideoCard: NVIDIA GeForce RTX 4070

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 281 more lines) ...]
```

### `cystack_400c1d26`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Banker Simulator`, `Bum`, `Cafe Owner Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Deconstruction Simulator`, `Display Resolution`, `Factory Outlet Simulator`, `Garage Flipper`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Neighbors`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Sunset Motel`, `Threads`, `TimeZone`, `Tobacco Shop Simulator`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 08/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French French
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 2700 Eight-Core Processor          
Cores: 16
Threads: 16
RAM: 16337 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_4059ebb3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Animal Shelter 2`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: RE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 18/03/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 08/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 8126 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 358 more lines) ...]
```

### `cystack_40627da3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `SCP`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian English
Local Time: 02/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz
Cores: 12
Threads: 12
RAM: 8029 MB
VideoCard: Intel(R) UHD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 213 more lines) ...]
```

### `cystack_410fa2be`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 15/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English English
Local Time: 12/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: Intel(R) Core(TM) i9-14900KF
Cores: 32
Threads: 32
RAM: 16196 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_4117b4d6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto IV`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NieR`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 27/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 13/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-10300H CPU @ 2.50GHz
Cores: 8
Threads: 8
RAM: 16215 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_42030725`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French French English
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-9600KF CPU @ 3.70GHz
Cores: 6
Threads: 6
RAM: 16320 MB
VideoCard: NVIDIA GeForce RTX 4060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 267 more lines) ...]
```

### `cystack_4251ceac`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Escape Memoirs`, `Fast Food Simulator`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Ori and the Blind Forest`, `Path`, `Processor`, `RAM`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 22/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i3-1215U
Cores: 8
Threads: 8
RAM: 7865 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 205 more lines) ...]
```

### `cystack_42b15d80`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Alien`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 17/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 32636 MB
VideoCard: NVIDIA Quadro P4000

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 344 more lines) ...]
```

### `cystack_432952e7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DYNASTY WARRIORS`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BN

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 22/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 7573 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_437dd060`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR
Version: 17.6

Date: 19/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 8500G w/ Radeon 740M Graphics      
Cores: 12
Threads: 12
RAM: 15527 MB
VideoCard: AMD Radeon 740M Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 234 more lines) ...]
```

### `cystack_43b72389`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 14/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 14246 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_442cbb7e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `MachineID`, `Path`, `Processor`, `Punch Club 2`, `RAM`, `The Elder Scrolls V`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/11/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31861 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

[Processes][Software]
Hydra - 3.7.1
Pacote de Driver do Windows - SAMSUNG Electronics Co., Ltd.  (WinUSB) AndroidUsbDeviceClass  (12/02/2015 <ip>) - 12/02/2015 <ip>
Pacote de Driver do Windows - SAMSUNG Electronics Co., Ltd.  (dg_ssudbus) USB  (12/02/2015 <ip>) - 12/02/2015 <ip>
Pacote de Driver do Windows - SAMSUNG Electronics Co., Ltd.  (ssudmdm) Modem  (12/02/2015 <ip>) - 12/02/2015 <ip>
Armoury Crate Service - <ip>
Autodesk Identity Manager - <ip>
Pacote de Driver do Windows - Google, Inc. (WinUSB) AndroidUsbDeviceClass  (08/27/2012 7.0.0000.00004) - 08/27/2012 7.0.0000.00004
BlueStacks - 5.22.130.2003
Cheat Engine 7.6
GIGABYTE SSD Firmware Update Tool - <ip>
GBT_MB_Update - <ip>
[... truncated; full sample at ``sample.txt`` (approx. 138 more lines) ...]
```

### `cystack_4447a7ba`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD
Version: 17.3

Date: 09/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 15/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English
Local Time: 09/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: AMD Ryzen 7 7435HS                             
Cores: 16
Threads: 16
RAM: 24260 MB
VideoCard: NVIDIA GeForce RTX 4050 Laptop GPU

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 258 more lines) ...]
```

### `cystack_445286ec`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `ENDER LILIES`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `Operation Lovecraft`, `Path`, `Processor`, `RAM`, `STORY OF SEASONS`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 04/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz
Cores: 8
Threads: 8
RAM: 20371 MB
VideoCard: Intel(R) UHD Graphics 620

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_448e3db4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/12/2024 <ip>
AV: 
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i3-12100
Cores: 8
Threads: 8
RAM: 5933 MB
VideoCard: Intel(R) UHD Graphics 730

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
[... truncated; full sample at ``sample.txt`` (approx. 171 more lines) ...]
```

### `cystack_450a1bcf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Factory Outlet Simulator`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Schedule I`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 26/08/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English Arabic
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32697 MB
VideoCard: NVIDIA GeForce RTX 2070 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 394 more lines) ...]
```

### `cystack_45379a9e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mafia II`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 PRO 4650G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 15662 MB
VideoCard: NVIDIA GeForce GTX 1050

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
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 251 more lines) ...]
```

### `cystack_45391c0c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Gmail`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 13/01/2026 <ip>
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
Display Resolution: 1366x768
Keyboard Languages: English Arabic
Local Time: 13/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i3-2330M CPU @ 2.20GHz
Cores: 4
Threads: 4
RAM: 16281 MB
VideoCard: Intel(R) HD Graphics 3000

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
winlogon.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 247 more lines) ...]
```

### `cystack_4563e5e0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Microsoft Flight Simulator X`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
Cores: 8
Threads: 8
RAM: 32715 MB
VideoCard: NVIDIA GeForce GTX 1070

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 379 more lines) ...]
```

### `cystack_4590cebb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Complex`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15740 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 209 more lines) ...]
```

### `cystack_45dcdd4a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `GUID`, `HWID`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: FR

Date: 24/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: French
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13400F
Cores: 16
Threads: 16
RAM: 32577 MB
VideoCard: NVIDIA GeForce RTX 4070

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
[... truncated; full sample at ``sample.txt`` (approx. 365 more lines) ...]
```

### `cystack_45e0aa06`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 06/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x1200
Keyboard Languages: German English
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i9-11900KF @ 3.50GHz
Cores: 16
Threads: 16
RAM: 16249 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 394 more lines) ...]
```

### `cystack_45f4ad75`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `ENA`, `GUID`, `HWID`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16305 MB
VideoCard: NVIDIA GeForce RTX 2060 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 312 more lines) ...]
```

### `cystack_4646ee35`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DPET`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BD

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise N
Install Date: 02/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 27/12/2025 <ip>
TimeZone: 6

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400
Cores: 12
Threads: 12
RAM: 7933 MB
VideoCard: Intel(R) UHD Graphics 730

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 161 more lines) ...]
```

### `cystack_464dc4d3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Spanish Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 6077 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 216 more lines) ...]
```

### `cystack_46c91fe1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FI

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 09/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: Finnish English
Local Time: 06/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13600K
Cores: 20
Threads: 20
RAM: 32509 MB
VideoCard: NVIDIA GeForce RTX 4070

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_477dfb69`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Escape Memoirs`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Monster Hunter`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 11/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 4600G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 16179 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_48013bdc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Granny`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 10/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz
Cores: 12
Threads: 12
RAM: 32709 MB
VideoCard: NVIDIA GeForce RTX 2070

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 357 more lines) ...]
```

### `cystack_480689a3`

**Attribution confidence:** `high`

**Field keys:**
`ARIDA`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher`, `The Witcher 2`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 14/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2650 v4 @ 2.20GHz
Cores: 24
Threads: 24
RAM: 16225 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 297 more lines) ...]
```

### `cystack_4854ffb2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Granny`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 25/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz
Cores: 4
Threads: 4
RAM: 8084 MB
VideoCard: Intel(R) HD Graphics Family

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_488c6faf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `BACKROOMS`, `Backrooms`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Predator`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 20/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
winlogon.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 336 more lines) ...]
```

### `cystack_49072603`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 13/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Turkish
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i9-12900F
Cores: 24
Threads: 24
RAM: 16193 MB
VideoCard: NVIDIA GeForce RTX 3070 Ti

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
winlogon.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 269 more lines) ...]
```

### `cystack_4910587a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Yugo`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 15766 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 291 more lines) ...]
```

### `cystack_4a3b06c2`

**Attribution confidence:** `high`

**Field keys:**
`ARCADE GAME SERIES`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `ONE PIECE`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32690 MB
VideoCard: NVIDIA GeForce RTX 3050

[Processes][Software]
7-Zip 25.01 (x64) - 25.01
Android Studio - 2025.2
AutoHotkey <ip> - <ip>
Avast Free Antivirus - 25.12.10659.3321
Avast SecureLine VPN - 25.12.12124.16698
BlueStacks - 5.22.153.1026
CCleaner 7 - 7.3.1120.1339
Google Play Games - <ip>
Mozilla Firefox (x64 pt-BR) - 147.0.1
Mozilla Maintenance Service - 147.0
MuMuPlayer - 5.7.1.1860
Microsoft 365 - pt-br - 16.0.19426.20218
Microsoft OneDrive - 25.238.1204.0001
Razer Cortex - <ip>
[... truncated; full sample at ``sample.txt`` (approx. 92 more lines) ...]
```

### `cystack_4a469016`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD
Version: 17.6

Date: 26/01/2026 <ip>
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
Local Time: 26/01/2026 <ip>
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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_4a54a5ad`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Evony`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: EG

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 18/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Arabic
Local Time: 03/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz
Cores: 4
Threads: 4
RAM: 3950 MB
VideoCard: AMD Mobility Radeon HD 5000 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 152 more lines) ...]
```

### `cystack_4a6b5173`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `STALCRAFT`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: EE

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: English Russian
Local Time: 27/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 16172 MB
VideoCard: NVIDIA GeForce RTX 5060 Ti

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
winlogon.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 358 more lines) ...]
```

### `cystack_4aa9fc12`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 30/09/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz
Cores: 4
Threads: 4
RAM: 8057 MB
VideoCard: Intel(R) HD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_4ac18952`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 06/05/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1024x768
Keyboard Languages: Spanish Spanish
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 2400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 13511 MB
VideoCard: AMD Radeon(TM) RX Vega 11 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 261 more lines) ...]
```

### `cystack_4b590f66`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DRAGON QUEST XI S`, `Date`, `Display Resolution`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 22/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz
Cores: 12
Threads: 12
RAM: 16221 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 358 more lines) ...]
```

### `cystack_4b61a361`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 04/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 04/12/2025 <ip>
TimeZone: 4

[Hardware]
Processor: Intel(R) Core(TM) i9-9900 CPU @ 3.10GHz
Cores: 16
Threads: 16
RAM: 65359 MB
VideoCard: NVIDIA GeForce RTX 2080 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_4c07b228`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ID

Date: 20/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 28/11/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English
Local Time: 20/01/2026 <ip>
TimeZone: 7

[Hardware]
Processor: Intel(R) Core(TM) i3-10110U CPU @ 2.10GHz
Cores: 4
Threads: 4
RAM: 3933 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 255 more lines) ...]
```

### `cystack_4c786c95`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Volleyborne`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15660 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 303 more lines) ...]
```

### `cystack_4daa8297`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SWAT Commander`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Chinese (T English Arabic
Local Time: 31/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-14400F
Cores: 16
Threads: 16
RAM: 16237 MB
VideoCard: NVIDIA GeForce RTX 5060

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
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_4ea82e8e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sonic Colors`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 19/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 08/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32694 MB
VideoCard: NVIDIA GeForce RTX 2060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 236 more lines) ...]
```

### `cystack_4ec70acd`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hardspace`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 14/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English English
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 9 5900X 12-Core Processor            
Cores: 24
Threads: 24
RAM: 32695 MB
VideoCard: NVIDIA GeForce RTX 3080

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 316 more lines) ...]
```

### `cystack_4eeb6186`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Entropy`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 07/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German Polish English
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-6700K CPU @ 4.00GHz
Cores: 8
Threads: 8
RAM: 32695 MB
VideoCard: NVIDIA GeForce GTX 970

[Processes]
System
Secure System
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
[... truncated; full sample at ``sample.txt`` (approx. 277 more lines) ...]
```

### `cystack_4f49273c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 22/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 22/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2650 v4 @ 2.20GHz
Cores: 24
Threads: 24
RAM: 14242 MB
VideoCard: AMD Radeon RX 580 2048SP

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
[... truncated; full sample at ``sample.txt`` (approx. 250 more lines) ...]
```

### `cystack_4f572fe2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Unreal Development Kit`, `User Name`, `VideoCard`, `Viscera Cleanup Detail`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/10/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 32701 MB
VideoCard: Radeon RX550/550 Series

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
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 286 more lines) ...]
```

### `cystack_4f5ced1c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Russian
Local Time: 09/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 32613 MB
VideoCard: NVIDIA GeForce RTX 4060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 275 more lines) ...]
```

### `cystack_4f902aa0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Vampire`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 10/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 PRO 2400G with Radeon Vega Graphics
Cores: 8
Threads: 8
RAM: 15315 MB
VideoCard: AMD Radeon RX 580 2048SP

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 321 more lines) ...]
```

### `cystack_4fad70ac`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Half-Life`, `Half-Life 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Portuguese
Local Time: 09/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 6066 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 259 more lines) ...]
```

### `cystack_5058e1c3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Remnant`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16319 MB
VideoCard: NVIDIA GeForce GTX 1050

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_505a26cb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Halo`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Monster Hunter`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CO

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 10/02/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 2400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 14267 MB
VideoCard: AMD Radeon(TM) RX Vega 11 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 339 more lines) ...]
```

### `cystack_50f562ee`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Police Simulator`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 09/09/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-10700F CPU @ 2.90GHz
Cores: 16
Threads: 16
RAM: 16244 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 397 more lines) ...]
```

### `cystack_51d4c130`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16215 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 291 more lines) ...]
```

### `cystack_5239d9db`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Duck Life`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 22/12/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 09/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-4590T CPU @ 2.00GHz
Cores: 4
Threads: 4
RAM: 8109 MB
VideoCard: Intel(R) HD Graphics 4600

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
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

### `cystack_526407ea`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bum`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RUSH`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 29/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16307 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 265 more lines) ...]
```

### `cystack_52d02a50`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `ONE PIECE`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 13/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600H with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15710 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 348 more lines) ...]
```

### `cystack_5468806d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Avatar`, `Computer Name`, `Cores`, `Country`, `Crime Boss`, `Date`, `Display Resolution`, `Firefighting Simulator`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz
Cores: 12
Threads: 12
RAM: 16295 MB
VideoCard: NVIDIA GeForce GTX 1080 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 332 more lines) ...]
```

### `cystack_54947cb2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires IV`, `Company of Heroes`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Zen Chess`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-9400 CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 32713 MB
VideoCard: Intel(R) UHD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 347 more lines) ...]
```

### `cystack_549ae889`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Halo`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3330 CPU @ 3.00GHz
Cores: 4
Threads: 4
RAM: 8135 MB
VideoCard: NVIDIA GeForce GTX 750

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
[... truncated; full sample at ``sample.txt`` (approx. 210 more lines) ...]
```

### `cystack_559c371e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Garten of Banban 8`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French French English
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16296 MB
VideoCard: NVIDIA GeForce RTX 3070

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 282 more lines) ...]
```

### `cystack_55b0f121`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Age of Mythology`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Walking Dead`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16251 MB
VideoCard: NVIDIA GeForce RTX 2060 SUPER

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 369 more lines) ...]
```

### `cystack_55d755b4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cafe Owner Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Schedule I`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 26/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German German English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 8124 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 261 more lines) ...]
```

### `cystack_55fa9f0c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `CPUCores`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2021
Install Date: 25/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 01/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
Cores: 4
Threads: 4
RAM: 8106 MB
VideoCard: Intel(R) HD Graphics 630

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 188 more lines) ...]
```

### `cystack_5686c57e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 IoT Enterprise LTSC 2024
Install Date: 27/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Russian
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32678 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 167 more lines) ...]
```

### `cystack_568aac10`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Maurice`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16307 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
winlogon.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 293 more lines) ...]
```

### `cystack_56910e13`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Chrono Gear`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DO

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/09/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: English Spanish Spanish Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i3-9100 CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 8099 MB
VideoCard: Intel(R) UHD Graphics 630

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 218 more lines) ...]
```

### `cystack_56d5cdde`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_570f9240`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 28/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 07/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16174 MB
VideoCard: AMD Radeon RX 6600

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
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 359 more lines) ...]
```

### `cystack_573efffe`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: EG

Date: 30/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 06/12/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Arabic
Local Time: 30/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 3984 MB
VideoCard: Intel(R) HD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 180 more lines) ...]
```

### `cystack_5761b29f`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Skyrim Special Edition`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 7700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 31894 MB
VideoCard: NVIDIA GeForce RTX 4060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 344 more lines) ...]
```

### `cystack_57a37c80`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Stick Fight`, `Tanks`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 19/02/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: German
Local Time: 15/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 1600X Six-Core Processor           
Cores: 12
Threads: 12
RAM: 32697 MB
VideoCard: NVIDIA GeForce GTX 1070

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 372 more lines) ...]
```

### `cystack_57c64be4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Resident Evil 7 Teaser`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 29/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 29/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16197 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_57d33d23`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Double Action`, `Hobo`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CZ

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: Czech
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
Cores: 6
Threads: 6
RAM: 16345 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_581ebfa2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CL

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 07/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 29770 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 276 more lines) ...]
```

### `cystack_5821667a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires II`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 11/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Arabic
Local Time: 18/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i7-12650H
Cores: 16
Threads: 16
RAM: 16087 MB
VideoCard: NVIDIA GeForce RTX 4050 Laptop GPU

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 331 more lines) ...]
```

### `cystack_5862c7e4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Ant Colony`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EE

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 25/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Chinese (T English Russian Arabic
Local Time: 19/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 5625U with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 7488 MB
VideoCard: AMD Radeon (TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 320 more lines) ...]
```

### `cystack_58fa0cf4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Viscera Cleanup Detail`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 08/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD FX(tm)-8350 Eight-Core Processor           
Cores: 8
Threads: 8
RAM: 32667 MB
VideoCard: NVIDIA GeForce GTX 970

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 417 more lines) ...]
```

### `cystack_59b3fc78`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Lord of the Rings`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 21/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Spanish Spanish
Local Time: 24/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx  
Cores: 8
Threads: 8
RAM: 6020 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 250 more lines) ...]
```

### `cystack_5a2a3817`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 27/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English Spanish Spanish
Local Time: 27/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16303 MB
VideoCard: Radeon RX 570 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 259 more lines) ...]
```

### `cystack_5a840b60`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Nioh`, `Path`, `Processor`, `RAM`, `Sky`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EC

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish
Local Time: 10/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400
Cores: 12
Threads: 12
RAM: 16125 MB
VideoCard: Intel(R) UHD Graphics 730

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
[... truncated; full sample at ``sample.txt`` (approx. 279 more lines) ...]
```

### `cystack_5a877b62`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Cities`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Half-Life`, `Half-Life 2`, `Half-Life Deathmatch`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15742 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 264 more lines) ...]
```

### `cystack_5a900b86`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Granny`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i9-12900H
Cores: 20
Threads: 20
RAM: 28959 MB
VideoCard: Intel(R) Iris(R) Xe Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 246 more lines) ...]
```

### `cystack_5b45f80f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Retail Company Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 26/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 26/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 14279 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 184 more lines) ...]
```

### `cystack_5bf4a2e6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Motor Town`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `SCP`, `Stormworks`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 11/05/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD A12-9800 RADEON R7, 12 COMPUTE CORES 4C+8G 
Cores: 4
Threads: 4
RAM: 16330 MB
VideoCard: NVIDIA GeForce GTX 1050

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
[... truncated; full sample at ``sample.txt`` (approx. 277 more lines) ...]
```

### `cystack_5c4696ce`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 28/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 16/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz
Cores: 4
Threads: 4
RAM: 10173 MB
VideoCard: Intel(R) HD Graphics 620

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 192 more lines) ...]
```

### `cystack_5ca55db0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Car Dealer Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 13/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500U with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15755 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 221 more lines) ...]
```

### `cystack_5cf5c5d9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16176 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 357 more lines) ...]
```

### `cystack_5cf93ee3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16338 MB
VideoCard: AMD Radeon R7 200 Series

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 271 more lines) ...]
```

### `cystack_5cff3920`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French Arabic
Local Time: 26/12/2025 <ip>
TimeZone: 4

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i7-12700F
Cores: 20
Threads: 20
RAM: 32581 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 352 more lines) ...]
```

### `cystack_5d4144bb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sonic Racing`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 29/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2300 CPU @ 2.80GHz
Cores: 4
Threads: 4
RAM: 8174 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 205 more lines) ...]
```

### `cystack_5d829b1e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Clothing Store Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BN

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 10/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 06/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 20414 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 206 more lines) ...]
```

### `cystack_5daf6869`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `RE`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-14600KF
Cores: 20
Threads: 20
RAM: 32621 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
winlogon.exe
LsaIso.exe
lsass.exe
[... truncated; full sample at ``sample.txt`` (approx. 420 more lines) ...]
```

### `cystack_5dd05af8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Lurk in the Dark`, `Only Climb`, `PICO PARK`, `Path`, `Processor`, `RAM`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 02/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 14/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i9-10900F CPU @ 2.80GHz
Cores: 20
Threads: 20
RAM: 32669 MB
VideoCard: NVIDIA GeForce RTX 4060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 246 more lines) ...]
```

### `cystack_5e1274e8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Batman`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 01/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1024x768
Keyboard Languages: Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-8130U CPU @ 2.20GHz
Cores: 4
Threads: 4
RAM: 8097 MB
VideoCard: Intel(R) UHD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 276 more lines) ...]
```

### `cystack_5ec160a0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `BlazBlue`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise
Install Date: 24/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese Portuguese
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 3971 MB
VideoCard: Intel(R) HD Graphics 620

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 177 more lines) ...]
```

### `cystack_5f1fd389`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `ENA`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 20/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i3-1215U
Cores: 8
Threads: 8
RAM: 3820 MB
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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 257 more lines) ...]
```

### `cystack_5f82cf46`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `ZanZarah`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: French
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-8300H CPU @ 2.30GHz
Cores: 8
Threads: 8
RAM: 24416 MB
VideoCard: Intel(R) UHD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_60542f84`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: MY

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 26/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English English
Local Time: 26/12/2025 <ip>
TimeZone: 8

[Hardware]
Processor: AMD Ryzen 7 4800H with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 15791 MB
VideoCard: NVIDIA GeForce GTX 1650 Ti

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_615216f6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Easy-Mark Plus (C`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 14/02/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 3920 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_623964c6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16292 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 378 more lines) ...]
```

### `cystack_623beb21`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `ENDER LILIES`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 14/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 25/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French English
Local Time: 14/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-7600K CPU @ 3.80GHz
Cores: 4
Threads: 4
RAM: 16246 MB
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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 360 more lines) ...]
```

### `cystack_629efe78`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 21/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 06/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 21/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: Intel(R) Core(TM) i3-10100 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16281 MB
VideoCard: NVIDIA GeForce GTX 750

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
[... truncated; full sample at ``sample.txt`` (approx. 211 more lines) ...]
```

### `cystack_62a3ddf5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: CO

Date: 24/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 01/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish Spanish
Local Time: 24/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics 
Cores: 12
Threads: 12
RAM: 16175 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_62c35d37`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Zero City`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 22/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Pentium(R) CPU G620 @ 2.60GHz
Cores: 2
Threads: 2
RAM: 6038 MB
VideoCard: Intel(R) HD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 211 more lines) ...]
```

### `cystack_63264c95`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Island Market Simulator`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Danish English
Local Time: 16/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 24389 MB
VideoCard: NVIDIA GeForce RTX 2060

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_636b920a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `PUBG`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/09/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11400 @ 2.60GHz
Cores: 12
Threads: 12
RAM: 16251 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 323 more lines) ...]
```

### `cystack_63979165`

**Attribution confidence:** `high`

**Field keys:**
`ACD/Labs 2024 Freeware in C`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 30/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Dutch Dutch
Local Time: 14/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) Ultra 7 155H
Cores: 22
Threads: 22
RAM: 15799 MB
VideoCard: NVIDIA GeForce RTX 4060 Laptop GPU

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
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 469 more lines) ...]
```

### `cystack_6483cc60`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 264 more lines) ...]
```

### `cystack_64b37ac3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Professional Fishing 2`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 03/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1152x864
Keyboard Languages: Portuguese
Local Time: 20/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 16341 MB
VideoCard: NVIDIA GeForce GT 710

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
[... truncated; full sample at ``sample.txt`` (approx. 149 more lines) ...]
```

### `cystack_6512b5f2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blue Protocol`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16326 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 211 more lines) ...]
```

### `cystack_65f37305`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 194 more lines) ...]
```

### `cystack_660c3658`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Amnesia`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 29/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 18/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31701 MB
VideoCard: NVIDIA GeForce RTX 4070 SUPER

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 347 more lines) ...]
```

### `cystack_663c80a4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `DOOM 3`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Police Stories`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Wolfenstein`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/09/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish Spanish Spanish Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-4440 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 16319 MB
VideoCard: NVIDIA GeForce GTX 760

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 419 more lines) ...]
```

### `cystack_66ab50f3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hotel Hideaway`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 22/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16249 MB
VideoCard: AMD Radeon RX 6700 XT

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 285 more lines) ...]
```

### `cystack_67423f5b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `In Sink`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Soccer Online`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 14/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 09/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz
Cores: 8
Threads: 8
RAM: 7908 MB
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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 335 more lines) ...]
```

### `cystack_67f88774`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Call of Duty 4`, `Call to Arms - Gates of Hell`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto IV`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 29/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz
Cores: 12
Threads: 12
RAM: 24521 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 250 more lines) ...]
```

### `cystack_68203eb1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Car Dealer Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: DE

Date: 22/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 14/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 22/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD FX(tm)-8320 Eight-Core Processor   
Cores: 8
Threads: 8
RAM: 16348 MB
VideoCard: NVIDIA GeForce GTX 750

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
[... truncated; full sample at ``sample.txt`` (approx. 265 more lines) ...]
```

### `cystack_682ff202`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Tobacco Shop Simulator`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 28/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16310 MB
VideoCard: AMD Radeon RX 6600

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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_68660728`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Alien Breed`, `Alien Breed 2`, `Alien Breed 3`, `Aliens`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Disciples`, `Display Resolution`, `Giana Sisters`, `Homeworld`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdoms of Amalur`, `Local Time`, `Path`, `Pathfinder`, `Processor`, `RAM`, `STAR WARS Jedi`, `TRANSFORMERS`, `The Witcher 3`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 03/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro for Workstations
Install Date: 09/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 03/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 7600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32361 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 355 more lines) ...]
```

### `cystack_686f95d4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Divinity`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16255 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 238 more lines) ...]
```

### `cystack_691bf1c8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `We Were Here Expeditions`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 31/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Spanish
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 15760 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 409 more lines) ...]
```

### `cystack_69d9bc39`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blackjack 21`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 06/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i7-11700 @ 2.50GHz
Cores: 16
Threads: 16
RAM: 16221 MB
VideoCard: NVIDIA GeForce GTX 960

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
[... truncated; full sample at ``sample.txt`` (approx. 351 more lines) ...]
```

### `cystack_6ac6b86d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `In Sink`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-10100 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16253 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
winlogon.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 212 more lines) ...]
```

### `cystack_6af398d8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bro Falls`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 13/07/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16332 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

### `cystack_6b162f01`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Motor Town`, `Path`, `Processor`, `RAM`, `Stormworks`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 27/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i7-12700KF
Cores: 20
Threads: 20
RAM: 32614 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 242 more lines) ...]
```

### `cystack_6b46e00f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `War Robots`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 26/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-9300H CPU @ 2.40GHz
Cores: 8
Threads: 8
RAM: 8029 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 268 more lines) ...]
```

### `cystack_6c06641f`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BA

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1680x1050
Keyboard Languages: Bosnian (L
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: NVIDIA GeForce RTX 4060

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 315 more lines) ...]
```

### `cystack_6c651bed`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1200
Keyboard Languages: English
Local Time: 27/12/2025 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32692 MB
VideoCard: NVIDIA GeForce GTX 1070 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 394 more lines) ...]
```

### `cystack_6cac1425`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 17/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
Cores: 4
Threads: 4
RAM: 16272 MB
VideoCard: Intel(R) HD Graphics 520

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
[... truncated; full sample at ``sample.txt`` (approx. 282 more lines) ...]
```

### `cystack_6ce679f2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Black Myth`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 30/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 12/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i3-N305
Cores: 7
Threads: 7
RAM: 7885 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_6d017a19`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Zombidle`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 29/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 30/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 29/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 16252 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 314 more lines) ...]
```

### `cystack_6d3b824a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires II`, `Age of Empires III`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 22/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: French Arabic
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13420H
Cores: 12
Threads: 12
RAM: 16088 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_6e5e64ff`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires II`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Total War`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL
Version: 17.5

Date: 18/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Spanish
Local Time: 18/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 3400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 16315 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 249 more lines) ...]
```

### `cystack_6e63b3a2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Nightmare House`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2019
Install Date: 25/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1024x768
Keyboard Languages: Spanish Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Celeron(R) CPU  N2808  @ 1.58GHz
Cores: 2
Threads: 2
RAM: 3973 MB
VideoCard: Intel(R) HD Graphics

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 147 more lines) ...]
```

### `cystack_6e95dbc1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Heroes of Might and Magic`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: FR

Date: 21/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 21/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor 
Cores: 16
Threads: 16
RAM: 32694 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 367 more lines) ...]
```

### `cystack_6ea65ff8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Caveman World`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 17/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 PRO 2400G with Radeon Vega Graphics
Cores: 8
Threads: 8
RAM: 14278 MB
VideoCard: AMD Radeon(TM) Vega 11 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 228 more lines) ...]
```

### `cystack_6eaddcf3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Feed and Grow`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 28/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16307 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_6ed1efff`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 03/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German English
Local Time: 03/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 2700X Eight-Core Processor         
Cores: 16
Threads: 16
RAM: 16313 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_6f032ced`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 16/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 17/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 16319 MB
VideoCard: NVIDIA GeForce RTX 2060 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 327 more lines) ...]
```

### `cystack_6f4c5225`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Castlevania`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Arabic Arabic English Arabic
Local Time: 16/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: Intel(R) Core(TM) i5-7300U CPU @ 2.60GHz
Cores: 4
Threads: 4
RAM: 8062 MB
VideoCard: Intel(R) HD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 248 more lines) ...]
```

### `cystack_6f642fd2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Metro`, `Monster Hunter`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 31/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16332 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 298 more lines) ...]
```

### `cystack_6f67b6d0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `JDM`, `Keyboard Languages`, `Local Time`, `Motorcycle Mechanic Simulator 2021`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 29/12/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 14/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32695 MB
VideoCard: AMD Radeon RX 6600

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
WUDFHost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 317 more lines) ...]
```

### `cystack_6f8a5d02`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Burger Shift`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sheepy`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1568x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 22/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-9400 CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 16329 MB
VideoCard: NVIDIA GeForce GTX 1650 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 277 more lines) ...]
```

### `cystack_6fab5654`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Schedule I`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 13/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 7600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 31844 MB
VideoCard: AMD Radeon (TM) R9 380 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 322 more lines) ...]
```

### `cystack_70423547`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Monster Hunter`, `NARAKA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 21/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1707x1067
Keyboard Languages: English French
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 9 7845HX with Radeon Graphics        
Cores: 24
Threads: 24
RAM: 15583 MB
VideoCard: AMD Radeon(TM) 610M

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 248 more lines) ...]
```

### `cystack_70831c39`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Danish English Ukrainian
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
Cores: 6
Threads: 6
RAM: 16275 MB
VideoCard: NVIDIA GeForce GTX 1060 3GB

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
[... truncated; full sample at ``sample.txt`` (approx. 282 more lines) ...]
```

### `cystack_70ace90e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Black Myth`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 22/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 16/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 16254 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 263 more lines) ...]
```

### `cystack_7134a4e2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `CPUCores`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 32635 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 380 more lines) ...]
```

### `cystack_714614fb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2019
Install Date: 14/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Celeron(R) N4020 CPU @ 1.10GHz
Cores: 2
Threads: 2
RAM: 3918 MB
VideoCard: Intel(R) UHD Graphics 600

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
svchost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 199 more lines) ...]
```

### `cystack_723911f1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Taxi Life`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AT

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 01/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German German
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16294 MB
VideoCard: AMD Radeon(TM) RX 6400

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
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_7341586c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Haunt the House`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 12/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 09/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
Cores: 4
Threads: 4
RAM: 16348 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 172 more lines) ...]
```

### `cystack_73aa95e5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `SPLITGATE`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR
Version: 17.6

Date: 19/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 15/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 16317 MB
VideoCard: AMD Radeon HD 7700 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 194 more lines) ...]
```

### `cystack_73fe7f91`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Skyrim Special Edition`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 22/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English English
Local Time: 07/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13400F
Cores: 16
Threads: 16
RAM: 32604 MB
VideoCard: NVIDIA GeForce RTX 5060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 206 more lines) ...]
```

### `cystack_742d1f2c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dungeon Defenders`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 20/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32712 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 230 more lines) ...]
```

### `cystack_74a52c66`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Prison Escape Simulator`, `Processor`, `RAM`, `Suicide Squad`, `The Last Stand`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 29/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11400 @ 2.60GHz
Cores: 12
Threads: 12
RAM: 16281 MB
VideoCard: AMD Radeon RX6500 XT

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 260 more lines) ...]
```

### `cystack_75444bd2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Money Simulator`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 26/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 5120x1440
Keyboard Languages: German
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 9 5900X 12-Core Processor            
Cores: 24
Threads: 24
RAM: 65461 MB
VideoCard: NVIDIA GeForce RTX 4070 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_76306bed`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARAKA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Vampire`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/06/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i3-8100 CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16317 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_763602cb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Game of Thrones`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 04/06/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English Arabic
Local Time: 02/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16251 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 369 more lines) ...]
```

### `cystack_76442150`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Titeuf`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 2700X Eight-Core Processor         
Cores: 16
Threads: 16
RAM: 32693 MB
VideoCard: NVIDIA GeForce RTX 2070

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
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 320 more lines) ...]
```

### `cystack_76b34239`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Supremacy`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/07/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 13/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16337 MB
VideoCard: NVIDIA GeForce GTX 970

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_76ecfeaf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Grand Theft Auto`, `Hand Simulator`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 11/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Persian
Local Time: 14/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i9-12900KF
Cores: 24
Threads: 24
RAM: 32560 MB
VideoCard: NVIDIA GeForce RTX 5060

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 325 more lines) ...]
```

### `cystack_77255fdc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Skyrim Special Edition`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 02/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16322 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 312 more lines) ...]
```

### `cystack_7728169f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hellblade`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ
Version: 17.6

Date: 19/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French Arabic
Local Time: 19/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32677 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 222 more lines) ...]
```

### `cystack_773d6f5a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16259 MB
VideoCard: Intel(R) HD Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_775a1982`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 10/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: NVIDIA GeForce GTX 1080 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 214 more lines) ...]
```

### `cystack_77a233f5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light 2`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `New World`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Viscera Cleanup Detail`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 01/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-10700F CPU @ 2.90GHz
Cores: 16
Threads: 16
RAM: 32703 MB
VideoCard: NVIDIA GeForce RTX 3070

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_77fb0394`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Motor Town`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 15/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Xeon(R) CPU E3-1231 v3 @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16319 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 247 more lines) ...]
```

### `cystack_78c09806`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 10/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1200
Keyboard Languages: German English
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-10700K CPU @ 3.80GHz
Cores: 16
Threads: 16
RAM: 32560 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 371 more lines) ...]
```

### `cystack_7933fd88`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto IV`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Spore`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/10/2084 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16331 MB
VideoCard: AMD RADEON HD 6450

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_798e3ec7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Call of Duty`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English
Local Time: 11/01/2026 <ip>
TimeZone: 4294967290

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16306 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 321 more lines) ...]
```

### `cystack_79be14a8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Asphalt 9`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 03/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz
Cores: 4
Threads: 4
RAM: 8057 MB
VideoCard: Intel(R) HD Graphics 4000

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
[... truncated; full sample at ``sample.txt`` (approx. 310 more lines) ...]
```

### `cystack_7a9d0acd`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Liftoff`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 15/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Genuine Intel(R) CPU 0000 @ 2.60GHz
Cores: 16
Threads: 16
RAM: 32607 MB
VideoCard: NVIDIA GeForce RTX 4060

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 281 more lines) ...]
```

### `cystack_7b114f8f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Torchlight`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 11/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 20355 MB
VideoCard: Intel(R) HD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 198 more lines) ...]
```

### `cystack_7bd2abc3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Motor Town`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Truck World`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 15/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Czech English
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz
Cores: 4
Threads: 4
RAM: 8096 MB
VideoCard: Intel(R) HD Graphics 5500

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
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 348 more lines) ...]
```

### `cystack_7be9d701`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16276 MB
VideoCard: AMD Radeon RX 6600

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
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_7c02c198`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 11/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Dutch
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32647 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_7c3624ba`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Call of Duty`, `Call of Duty 4`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 05/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 17/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 5 5600T 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32657 MB
VideoCard: NVIDIA GeForce GTX 1650 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 290 more lines) ...]
```

### `cystack_7cd622ba`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Shovel Knight`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 21/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 21/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 21/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
Cores: 4
Threads: 4
RAM: 16342 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 340 more lines) ...]
```

### `cystack_7d7b5dc3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Nioh`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 30/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: German English
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz
Cores: 8
Threads: 8
RAM: 7934 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_7dbe24ca`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 25/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 03/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16197 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 297 more lines) ...]
```

### `cystack_7e617840`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `METAL GEAR SOLID V`, `MachineID`, `Path`, `Processor`, `RAM`, `Sherlock Holmes`, `Sleeping Dogs`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG
Version: 17.6

Date: 19/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 18/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Arabic
Local Time: 19/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-6500U CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 8097 MB
VideoCard: Intel(R) HD Graphics 520

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 190 more lines) ...]
```

### `cystack_7eb9238b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 16305 MB
VideoCard: NVIDIA GeForce GTX 970

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
[... truncated; full sample at ``sample.txt`` (approx. 258 more lines) ...]
```

### `cystack_7ef1e13c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stronghold`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 12/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16337 MB
VideoCard: NVIDIA GeForce GTX 1070 Ti

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
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 391 more lines) ...]
```

### `cystack_7f0f895b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DK

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 11/03/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 3700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16247 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 347 more lines) ...]
```

### `cystack_7f0fb78c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Feed and Grow`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/11/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Portuguese Portuguese Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-4440 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 8129 MB
VideoCard: AMD Radeon RX6500 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 182 more lines) ...]
```

### `cystack_7f14890b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mafia II`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/03/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German Korean English
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i7-12700KF
Cores: 20
Threads: 20
RAM: 32487 MB
VideoCard: NVIDIA GeForce RTX 3070

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 319 more lines) ...]
```

### `cystack_7f6cd6f9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `Monster Hunter`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16248 MB
VideoCard: NVIDIA GeForce GTX 1650

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_7fb2bedb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `JDM`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BH

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 20/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: Intel(R) Core(TM) i5-8600K CPU @ 3.60GHz
Cores: 6
Threads: 6
RAM: 16320 MB
VideoCard: NVIDIA GeForce RTX 2060 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 249 more lines) ...]
```

### `cystack_7fb8e0f1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Lonely Mountains`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/09/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Chinese (S
Local Time: 18/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i3-12100
Cores: 8
Threads: 8
RAM: 16125 MB
VideoCard: Intel(R) UHD Graphics 730

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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 184 more lines) ...]
```

### `cystack_8039829f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `METAL GEAR SOLID V`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/05/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16255 MB
VideoCard: NVIDIA GeForce GTX 1070

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_807b34cc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RE`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-2120 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 12270 MB
VideoCard: NVIDIA GeForce GT 610

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 162 more lines) ...]
```

### `cystack_80d03042`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Half-Life 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 16319 MB
VideoCard: Radeon RX 560 Series

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 294 more lines) ...]
```

### `cystack_80dd9aab`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `FIND ALL`, `FIND ALL 2`, `FIND ALL 3`, `FIND ALL 4`, `FIND ALL 5`, `FIND ALL 6`, `FIND ALL 8`, `FIND ALL 9`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stronghold Crusader`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/05/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 16/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16232 MB
VideoCard: NVIDIA GeForce GT 740

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
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_811d9292`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DRAGON BALL Z`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 04/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 04/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Athlon 3000G with Radeon Vega Graphics     
Cores: 4
Threads: 4
RAM: 6069 MB
VideoCard: AMD Radeon(TM) Vega 3 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 218 more lines) ...]
```

### `cystack_8126440c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE
Version: 17.3

Date: 09/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: English
Local Time: 09/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz
Cores: 8
Threads: 8
RAM: 16242 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 279 more lines) ...]
```

### `cystack_816809a7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bang-On Balls`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `ENDER LILIES`, `Gal Guardians`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Lone Survivor`, `Momodora`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Serious Sam 3`, `Shovel Knight`, `Teenage Mutant Ninja Turtles`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 02/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 5300G with Radeon Graphics         
Cores: 8
Threads: 8
RAM: 15740 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 377 more lines) ...]
```

### `cystack_81ab0e46`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 09/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 14229 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 242 more lines) ...]
```

### `cystack_81affbd0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Store Wars`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 24/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 04/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 232 more lines) ...]
```

### `cystack_829d4bb1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Gamer Stop Simulator`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BA

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Bosnian (L
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i3-12100F
Cores: 8
Threads: 8
RAM: 16237 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 241 more lines) ...]
```

### `cystack_838330ba`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Danganronpa`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 22/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 13/07/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 22/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5800H with Radeon Graphics 
Cores: 16
Threads: 16
RAM: 7532 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 287 more lines) ...]
```

### `cystack_83d538af`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Feed and Grow`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32691 MB
VideoCard: AMD Radeon RX 580 2048SP

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
[... truncated; full sample at ``sample.txt`` (approx. 349 more lines) ...]
```

### `cystack_83dd717a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Monster Hunter`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 24/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 24/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics 
Cores: 12
Threads: 12
RAM: 28565 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 258 more lines) ...]
```

### `cystack_8440e322`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French French
Local Time: 03/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 8400F 6-Core Processor             
Cores: 12
Threads: 12
RAM: 15949 MB
VideoCard: NVIDIA GeForce RTX 5060

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
[... truncated; full sample at ``sample.txt`` (approx. 315 more lines) ...]
```

### `cystack_8500e3c1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Gatekeeper`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 28/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16294 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_850ffd76`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Enigmatis 3`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 16321 MB
VideoCard: Intel(R) HD Graphics 4400

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
[... truncated; full sample at ``sample.txt`` (approx. 273 more lines) ...]
```

### `cystack_85129cae`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `RuneScape`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 05/06/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: Intel(R) Core(TM) i7-9700F CPU @ 3.00GHz
Cores: 8
Threads: 8
RAM: 16329 MB
VideoCard: NVIDIA GeForce RTX 2070 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 420 more lines) ...]
```

### `cystack_858a2f6c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DRAGON BALL`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 16250 MB
VideoCard: AMD Radeon(TM) Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 279 more lines) ...]
```

### `cystack_86254f24`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mall Simulator`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7 CPU         920  @ 2.67GHz
Cores: 8
Threads: 8
RAM: 16372 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 235 more lines) ...]
```

### `cystack_86b000e4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Half-Life 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CZ

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 20/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700                               
Cores: 16
Threads: 16
RAM: 16172 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 255 more lines) ...]
```

### `cystack_86f2cc59`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DRAGON BALL`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `ONE PIECE`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 28/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16317 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 235 more lines) ...]
```

### `cystack_8715a710`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 31/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-9400F CPU @ 2.90GHz
Cores: 6
Threads: 6
RAM: 16326 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_871d1ac5`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Divinity`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Tainted Grail`, `The Elder Scrolls IV`, `The First Berserker`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 29/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31824 MB
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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 315 more lines) ...]
```

### `cystack_874a8e54`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Prince of Persia`, `Processor`, `RAM`, `The First Berserker`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/03/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Greek English
Local Time: 26/12/2025 <ip>
TimeZone: 0

[Hardware]
Processor: Intel(R) Core(TM) i7-7700K CPU @ 4.20GHz
Cores: 8
Threads: 8
RAM: 16338 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 375 more lines) ...]
```

### `cystack_87706e24`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 06/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 3800XT 8-Core Processor            
Cores: 16
Threads: 16
RAM: 32674 MB
VideoCard: AMD Radeon RX 6600

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
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_878184d6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DYNASTY WARRIORS`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BN

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 22/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 7573 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 304 more lines) ...]
```

### `cystack_8817fbee`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 11/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1680x1050
Keyboard Languages: English French
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16307 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_88247d21`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `CASE`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 06/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500U with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15693 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 314 more lines) ...]
```

### `cystack_884a22a2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Only Up`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 6
Threads: 6
RAM: 15740 MB
VideoCard: AMD Radeon(TM) Graphics

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_88624dc4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32692 MB
VideoCard: AMD Radeon RX 9060 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_89b95eff`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 02/01/2026 <ip>
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
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 02/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: Intel(R) Core(TM) i5-14400F
Cores: 16
Threads: 16
RAM: 16223 MB
VideoCard: NVIDIA GeForce RTX 5070

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
[... truncated; full sample at ``sample.txt`` (approx. 298 more lines) ...]
```

### `cystack_89f5f4b4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 29/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 15763 MB
VideoCard: AMD Radeon RX 6600 LE

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
[... truncated; full sample at ``sample.txt`` (approx. 286 more lines) ...]
```

### `cystack_8a07a2be`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Driver`, `Grand Theft Auto IV`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2650 v3 @ 2.30GHz
Cores: 20
Threads: 20
RAM: 16236 MB
VideoCard: NVIDIA GeForce GT 610

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 214 more lines) ...]
```

### `cystack_8a27040b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `The Seven Deadly Sins`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/05/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD FX(tm)-6300 Six-Core Processor             
Cores: 6
Threads: 6
RAM: 16365 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
winlogon.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 339 more lines) ...]
```

### `cystack_8a58ae99`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 236 more lines) ...]
```

### `cystack_8a6a626f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Walking Dead`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EC

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 14/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz
Cores: 12
Threads: 12
RAM: 16321 MB
VideoCard: NVIDIA GeForce GTX 1060 3GB

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
[... truncated; full sample at ``sample.txt`` (approx. 309 more lines) ...]
```

### `cystack_8b375361`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 25/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: French
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-9700F CPU @ 3.00GHz
Cores: 8
Threads: 8
RAM: 16318 MB
VideoCard: NVIDIA GeForce RTX 2060

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_8b89e062`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Display Resolution`, `Evony`, `Install Date`, `Keyboard Languages`, `Local Time`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`

**Filenames:** `information.txt`

**Sample (sanitized):**

```

Windows: Windows 10 Pro
Install Date: 18/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English Arabic
Local Time: 03/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i3 CPU       M 330  @ 2.13GHz
Cores: 4
Threads: 4
RAM: 3950 MB
VideoCard: AMD Mobility Radeon HD 5000 Series

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
svchost.exe
svchost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 130 more lines) ...]
```

### `cystack_8bc3ba2e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Deep Rock Galactic`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Lonely Mountains`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Russian
Local Time: 26/12/2025 <ip>
TimeZone: 5

[Hardware]
Processor: Intel(R) Core(TM) i5-10500 CPU @ 3.10GHz
Cores: 12
Threads: 12
RAM: 32644 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_8c3a2892`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 26/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 13/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i3-10100 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16322 MB
VideoCard: NVIDIA GeForce GTX 1650 SUPER

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
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_8c8fdb7b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `World of Guns`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16312 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 315 more lines) ...]
```

### `cystack_8cf44194`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL
Version: 17.5

Date: 17/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/01/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 17/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i7-10700T CPU @ 2.00GHz
Cores: 16
Threads: 16
RAM: 16195 MB
VideoCard: Intel(R) UHD Graphics 630

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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_8d23be4f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Banishers`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Like a Dragon`, `Local Time`, `Path`, `Processor`, `RAM`, `Resident Evil Re`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 9700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 31860 MB
VideoCard: AMD Radeon RX 6800 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 407 more lines) ...]
```

### `cystack_8d4b163b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Dune`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: FI

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 26/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Russian
Local Time: 22/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 24444 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 293 more lines) ...]
```

### `cystack_8d556165`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `JDM`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Police Simulator`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: AU

Date: 23/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 06/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: English English
Local Time: 23/12/2025 <ip>
TimeZone: 10

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12450H
Cores: 12
Threads: 12
RAM: 16086 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 304 more lines) ...]
```

### `cystack_8d9da0cc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Ovy`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 06/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 13/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Celeron(R) J4025 CPU @ 2.00GHz
Cores: 2
Threads: 2
RAM: 7939 MB
VideoCard: Intel(R) UHD Graphics 600

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_8e5b7cb5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sky`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 16/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English French Arabic
Local Time: 01/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i7-11850H @ 2.50GHz
Cores: 16
Threads: 16
RAM: 31983 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 221 more lines) ...]
```

### `cystack_8e6f587b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `OneShot`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro Education
Install Date: 07/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x960
Keyboard Languages: French French
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) N100
Cores: 4
Threads: 4
RAM: 7729 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 320 more lines) ...]
```

### `cystack_8ea28fe5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fallout`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 30/06/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1200
Keyboard Languages: English English
Local Time: 10/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-8600K CPU @ 3.60GHz
Cores: 6
Threads: 6
RAM: 32706 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 259 more lines) ...]
```

### `cystack_8eac1b59`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Contraband Police`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 32556 MB
VideoCard: AMD Radeon RX 5700 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 276 more lines) ...]
```

### `cystack_8f267f20`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blackjack 21`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Soccer Online`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x892
Keyboard Languages: Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 15743 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 276 more lines) ...]
```

### `cystack_8f59af43`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `DRAGON BALL`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 32639 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 310 more lines) ...]
```

### `cystack_8f5a50fc`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Project Reality`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 18/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-8565U CPU @ 1.80GHz
Cores: 8
Threads: 8
RAM: 8083 MB
VideoCard: Intel(R) UHD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 196 more lines) ...]
```

### `cystack_8f61360e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Viscera Cleanup Detail`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2021
Install Date: 01/12/2025 <ip>
AV: 
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 15/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-6100 CPU @ 3.70GHz
Cores: 4
Threads: 4
RAM: 16324 MB
VideoCard: Radeon RX 570 Series

[Processes]
System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 156 more lines) ...]
```

### `cystack_9004d7c3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Plague Inc`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-10100 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16256 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 192 more lines) ...]
```

### `cystack_90aee29c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 17/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-10100F CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 8060 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_90cb7c9b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sniper`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian English
Local Time: 18/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16298 MB
VideoCard: NVIDIA GeForce RTX 4060

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
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 212 more lines) ...]
```

### `cystack_910f246a`

**Attribution confidence:** `high`

**Field keys:**
`ACD/Labs 2021 Freeware in C`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro for Workstations
Install Date: 03/04/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: English Arabic
Local Time: 10/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2678 v3 @ 2.50GHz
Cores: 24
Threads: 24
RAM: 16300 MB
VideoCard: NVIDIA Quadro K2000

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
fontdrvhost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 383 more lines) ...]
```

### `cystack_9187c45c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Adventure Time`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/04/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 09/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Athlon 3000G with Radeon Vega Graphics     
Cores: 4
Threads: 4
RAM: 14246 MB
VideoCard: AMD Radeon(TM) Vega 3 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 241 more lines) ...]
```

### `cystack_91a242f2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Slapshot`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 09/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16267 MB
VideoCard: AMD Radeon RX 6650 XT

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_91b786c9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Granblue Fantasy`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i9-14900K
Cores: 32
Threads: 32
RAM: 32530 MB
VideoCard: NVIDIA GeForce RTX 4070 Ti SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 302 more lines) ...]
```

### `cystack_92a5bd0a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blue Protocol`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Ocean World`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Spanish Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 30648 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 291 more lines) ...]
```

### `cystack_92b17093`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 22/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 13/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 22/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500   
Cores: 12
Threads: 12
RAM: 16273 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 231 more lines) ...]
```

### `cystack_9359a74f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Our Life`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 12/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1152x864
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-4170 CPU @ 3.70GHz
Cores: 4
Threads: 4
RAM: 8070 MB
VideoCard: Intel(R) HD Graphics 4400

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
[... truncated; full sample at ``sample.txt`` (approx. 202 more lines) ...]
```

### `cystack_943a8608`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Holdfast`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 28/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 01/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 28/12/2025 <ip>
TimeZone: 10

[Hardware]
Processor: Intel(R) Core(TM) i7-2600K CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16366 MB
VideoCard: Radeon (TM) RX 470 Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 143 more lines) ...]
```

### `cystack_94ba627a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English Arabic
Local Time: 26/12/2025 <ip>
TimeZone: 4

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13600K
Cores: 20
Threads: 20
RAM: 32530 MB
VideoCard: Intel(R) UHD Graphics 770

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 341 more lines) ...]
```

### `cystack_94e30061`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mafia`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-14700
Cores: 28
Threads: 28
RAM: 30508 MB
VideoCard: NVIDIA GeForce RTX 2060 SUPER

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 351 more lines) ...]
```

### `cystack_94ea4642`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `Half-Life 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Kill It With Fire`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `TCG Card Shop Simulator`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 20/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 15763 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 341 more lines) ...]
```

### `cystack_94eacb3f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Just Cause 2`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CD
Version: 17.6

Date: 19/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 31/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English French French French French French French
Local Time: 19/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-4712MQ CPU @ 2.30GHz
Cores: 8
Threads: 8
RAM: 7906 MB
VideoCard: Intel(R) HD Graphics 4600

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 293 more lines) ...]
```

### `cystack_95910944`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Human`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Ocean World`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `SCP`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/10/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Japanese Spanish Spanish
Local Time: 15/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16328 MB
VideoCard: NVIDIA GeForce GTX 950

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
[... truncated; full sample at ``sample.txt`` (approx. 309 more lines) ...]
```

### `cystack_9639fa32`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Asphalt 9`, `Blind Fate`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Monster Hunter Stories 2`, `Path`, `Processor`, `RAM`, `Surgeon Simulator VR`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 19/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 PRO 4650G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 14228 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 287 more lines) ...]
```

### `cystack_965c4397`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DOOM`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1080
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-7700K CPU @ 4.20GHz
Cores: 8
Threads: 8
RAM: 16351 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 246 more lines) ...]
```

### `cystack_965d6a8b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Batman`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 26/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-8145U CPU @ 2.10GHz
Cores: 4
Threads: 4
RAM: 3948 MB
VideoCard: Intel(R) UHD Graphics 620

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
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_9673e15c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fallout`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 11/09/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 16337 MB
VideoCard: Intel(R) HD Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 198 more lines) ...]
```

### `cystack_97014294`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Car Dealer Simulator`, `Computer Name`, `Contraband Police`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 18/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise
Install Date: 11/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: English Arabic
Local Time: 18/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 6018 MB
VideoCard: Intel(R) HD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 254 more lines) ...]
```

### `cystack_97238d8b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Nova-Life`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 10/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-14500
Cores: 20
Threads: 20
RAM: 16151 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 275 more lines) ...]
```

### `cystack_973b378a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Session`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CL

Date: 28/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 19/03/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 28/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i7-10750H CPU @ 2.60GHz
Cores: 12
Threads: 12
RAM: 32588 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 285 more lines) ...]
```

### `cystack_9781571d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARAKA`, `Operation`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 19/09/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3500X 6-Core Processor             
Cores: 6
Threads: 6
RAM: 16296 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 250 more lines) ...]
```

### `cystack_982c7d46`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 02/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15995 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 358 more lines) ...]
```

### `cystack_98bb9568`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SuchArt`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Windows`, `Work Dir`, `X4`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/12/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 16/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 32093 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 330 more lines) ...]
```

### `cystack_98e2e725`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Operation`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 01/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 8127 MB
VideoCard: Radeon RX 570 Series

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 230 more lines) ...]
```

### `cystack_9900f1b0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Xilinx DocNav (C`, `Xilinx Information Center (C`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 25/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 14203 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 228 more lines) ...]
```

### `cystack_999f68a0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sea of Thieves`, `Subnautica`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12600KF
Cores: 16
Threads: 16
RAM: 16197 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 336 more lines) ...]
```

### `cystack_99f52238`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Drunken Wrestlers 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 28/10/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 26/12/2025 <ip>
TimeZone: 8

[Hardware]
Processor: AMD Ryzen 9 9900X 12-Core Processor            
Cores: 24
Threads: 24
RAM: 31897 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 310 more lines) ...]
```

### `cystack_9a5518ee`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `DRAGON BALL`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 2600X Six-Core Processor           
Cores: 12
Threads: 12
RAM: 16315 MB
VideoCard: Radeon RX 570 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 159 more lines) ...]
```

### `cystack_9a76bf61`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Friday the 13th`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 254 more lines) ...]
```

### `cystack_9ab53bf1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 28/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 13/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 28/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700                               
Cores: 16
Threads: 16
RAM: 16255 MB
VideoCard: AMD Radeon RX 580 2048SP

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
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_9b909059`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Miniland Adventure`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2500 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 12200 MB
VideoCard: Intel(R) HD Graphics

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 286 more lines) ...]
```

### `cystack_9bff8a3f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warface`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 23/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 28565 MB
VideoCard: AMD Radeon(TM) Graphics

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
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_9c909dfe`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Riot Control Simulator`, `Schedule I`, `Store Wars`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 03/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1720x1080
Keyboard Languages: Danish English
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
Cores: 8
Threads: 8
RAM: 16332 MB
VideoCard: NVIDIA GeForce GTX 1070

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 250 more lines) ...]
```

### `cystack_9d1b2239`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Kitchen Wars`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-6157U CPU @ 2.40GHz
Cores: 4
Threads: 4
RAM: 8105 MB
VideoCard: Intel(R) Iris(R) Graphics 550

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
[... truncated; full sample at ``sample.txt`` (approx. 218 more lines) ...]
```

### `cystack_9e52f754`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Metal`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-14600KF
Cores: 20
Threads: 20
RAM: 32598 MB
VideoCard: NVIDIA GeForce RTX 4070

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 334 more lines) ...]
```

### `cystack_9e8d9567`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mini Settlers`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 17/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i3-10105F CPU @ 3.70GHz
Cores: 8
Threads: 8
RAM: 16253 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 291 more lines) ...]
```

### `cystack_9e8f67d3`

**Attribution confidence:** `high`

**Field keys:**
`ACD/Labs 2024 Freeware in C`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 23/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 02/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English French Arabic
Local Time: 23/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz
Cores: 4
Threads: 4
RAM: 12202 MB
VideoCard: Intel(R) HD Graphics 5500

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 298 more lines) ...]
```

### `cystack_9e9fd534`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Portuguese
Local Time: 25/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 7 9800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31859 MB
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
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 327 more lines) ...]
```

### `cystack_9ef1c5a0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Punch Club 2`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 26/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500X3D 6-Core Processor           
Cores: 12
Threads: 12
RAM: 16329 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
winlogon.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 262 more lines) ...]
```

### `cystack_9f2491df`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `ENA`, `GUID`, `HWID`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16175 MB
VideoCard: Radeon RX550/550 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_9f34461e`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 252 more lines) ...]
```

### `cystack_9f7dec04`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Saints Row`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 15/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English English
Local Time: 05/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13400
Cores: 16
Threads: 16
RAM: 7988 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 337 more lines) ...]
```

### `cystack_9f82db4a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Demo de SHINOBI`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DO

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Spanish Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 8124 MB
VideoCard: Radeon RX 5500 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_9fa4f21b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 15/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 16326 MB
VideoCard: AMD Radeon RX 9060

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
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 248 more lines) ...]
```

### `cystack_9fc6963c`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 353 more lines) ...]
```

### `cystack_a05177f3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Miscrits`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/06/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16349 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 293 more lines) ...]
```

### `cystack_a06656ee`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Bandidos de Borracha`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 09/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16328 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 316 more lines) ...]
```

### `cystack_a0fba827`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mini World`, `Motor Town`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 11/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i7-1255U
Cores: 12
Threads: 12
RAM: 12012 MB
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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 314 more lines) ...]
```

### `cystack_a1a0a03d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Plague Inc`, `Processor`, `RAM`, `The Planet Crafter`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 12/03/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 15833 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 408 more lines) ...]
```

### `cystack_a1b55c02`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Operation`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15742 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_a2e94ab1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CZ

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 22/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English Russian
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12500H
Cores: 16
Threads: 16
RAM: 16024 MB
VideoCard: Intel(R) Iris(R) Xe Graphics

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 284 more lines) ...]
```

### `cystack_a303f120`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 275 more lines) ...]
```

### `cystack_a33cc45d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NVIDIA Pilote audio HD`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 16/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: French Arabic
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 12230 MB
VideoCard: NVIDIA GeForce GT 610

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
[... truncated; full sample at ``sample.txt`` (approx. 196 more lines) ...]
```

### `cystack_a3b30269`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Maurice`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 30/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 16253 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_a3bc70d7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Insurgency`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 01/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German German
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16255 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_a421750d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Spanish English
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i9-11900K @ 3.50GHz
Cores: 16
Threads: 16
RAM: 16271 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 318 more lines) ...]
```

### `cystack_a42e27d6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Uncrashed`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German Polish
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 9 3900X 12-Core Processor            
Cores: 24
Threads: 24
RAM: 32692 MB
VideoCard: NVIDIA GeForce RTX 4080 SUPER

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_a434c579`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Recycling Center Simulator`, `Thief Simulator 2`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/04/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 18/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-10600KF CPU @ 4.10GHz
Cores: 12
Threads: 12
RAM: 16322 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 372 more lines) ...]
```

### `cystack_a4aeabc8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `STALCRAFT`, `Threads`, `TimeZone`, `Tunguska`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: CL

Date: 25/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Spanish Spanish
Local Time: 25/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor 
Cores: 8
Threads: 8
RAM: 32689 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 356 more lines) ...]
```

### `cystack_a4ceb196`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Day of Defeat`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 19/09/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-7020U CPU @ 2.30GHz
Cores: 4
Threads: 4
RAM: 16298 MB
VideoCard: Intel(R) HD Graphics 620

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
WUDFHost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 214 more lines) ...]
```

### `cystack_a51af923`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 18/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16284 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 407 more lines) ...]
```

### `cystack_a5666dad`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Plague Inc`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 09/11/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Spanish
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz
Cores: 8
Threads: 8
RAM: 16222 MB
VideoCard: NVIDIA GeForce GTX 950M

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
fontdrvhost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 416 more lines) ...]
```

### `cystack_a59897a7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Black Myth`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Ori and the Blind Forest`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 03/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: Spanish Spanish
Local Time: 03/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32657 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 352 more lines) ...]
```

### `cystack_a5a90438`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 09/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 03/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i7-11375H @ 3.30GHz
Cores: 8
Threads: 8
RAM: 7893 MB
VideoCard: Intel(R) Iris(R) Xe Graphics

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
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 264 more lines) ...]
```

### `cystack_a5e8c023`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fall Guys`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 08/10/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 7933 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 298 more lines) ...]
```

### `cystack_a65778d7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `RIOT`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 25/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Spanish Spanish
Local Time: 25/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15765 MB
VideoCard: AMD Radeon(TM) Graphics

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 240 more lines) ...]
```

### `cystack_a66b46e0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bandidos de Borracha`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 14/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-1235U
Cores: 12
Threads: 12
RAM: 7916 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 390 more lines) ...]
```

### `cystack_a6b40442`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sex Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 08/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2630 v4 @ 2.20GHz
Cores: 20
Threads: 20
RAM: 16288 MB
VideoCard: NVIDIA GeForce GTX 1660

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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
```

### `cystack_a7409a3d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SPLITGATE`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: AMD Radeon RX 6650 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 194 more lines) ...]
```

### `cystack_a767ee25`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `I Am Jesus Christ`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 22/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16177 MB
VideoCard: AMD Radeon RX 580 2048SP

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
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_a7763a46`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/11/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i3-1005G1 CPU @ 1.20GHz
Cores: 4
Threads: 4
RAM: 3891 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_a77ef6ef`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CH

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 31/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: German
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 7600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 31861 MB
VideoCard: NVIDIA GeForce RTX 5060 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 309 more lines) ...]
```

### `cystack_a7d3f5e5`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 284 more lines) ...]
```

### `cystack_a82e9932`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`

**Filenames:** `information.txt`

**Sample (sanitized):**

```

Ip: <redacted>
Country: CA

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>

Windows: Windows 11 Home
Install Date: 12/10/2025 <ip>
AV: Windows Defender

User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English English
Local Time: 26/12/2025 <ip>
TimeZone: 4294967289

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz
Cores: 8
Threads: 8
RAM: 7886 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 262 more lines) ...]
```

### `cystack_a87771cf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `An Eggstremely Hard Game`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 8138 MB
VideoCard: Radeon RX550/550 Series

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 175 more lines) ...]
```

### `cystack_a8958019`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Borderlands`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FI

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 06/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Finnish
Local Time: 10/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13400F
Cores: 16
Threads: 16
RAM: 16180 MB
VideoCard: NVIDIA GeForce RTX 3050 OEM

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_a8cc8d34`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Click Click Dig`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 03/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16316 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 264 more lines) ...]
```

### `cystack_a8f6e3aa`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hellbreach`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AE

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English Arabic
Local Time: 06/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 32581 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 368 more lines) ...]
```

### `cystack_a93b6919`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Half-Life`, `Half-Life 2`, `Hoversteppers`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 16/03/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese
Local Time: 16/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-6006U CPU @ 2.00GHz
Cores: 4
Threads: 4
RAM: 8105 MB
VideoCard: Intel(R) HD Graphics 520

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 322 more lines) ...]
```

### `cystack_a9459fe1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro for Workstations
Install Date: 22/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16346 MB
VideoCard: NVIDIA GeForce GTX 1070

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 183 more lines) ...]
```

### `cystack_aa083988`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NVIDIA Pilote audio HD`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2021
Install Date: 13/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: French Arabic
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Pentium(R) Dual-Core  CPU      E5500  @ 2.80GHz
Cores: 2
Threads: 2
RAM: 4095 MB
VideoCard: NVIDIA GeForce 210 

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
[... truncated; full sample at ``sample.txt`` (approx. 181 more lines) ...]
```

### `cystack_aa7620ce`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Slapshot`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 18/03/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 15/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i3-10100F CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16252 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_ab3bf59e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/09/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-4790S CPU @ 3.20GHz
Cores: 8
Threads: 8
RAM: 16305 MB
VideoCard: AMD Radeon(TM) RX 6500 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 260 more lines) ...]
```

### `cystack_ab3caee6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Black Myth`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Drug Dealer Simulator`, `Grand Theft Auto`, `House Builder`, `Human`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Prison Simulator`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BG

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian English
Local Time: 24/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 7 5800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 32645 MB
VideoCard: NVIDIA GeForce RTX 4070 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 421 more lines) ...]
```

### `cystack_ab6bad8a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 24/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2640 v3 @ 2.60GHz
Cores: 16
Threads: 16
RAM: 24493 MB
VideoCard: AMD Radeon RX 7600 XT

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 279 more lines) ...]
```

### `cystack_abad35d1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Alien Swarm`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Knightfall`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2650 v4 @ 2.20GHz
Cores: 24
Threads: 24
RAM: 16290 MB
VideoCard: Radeon RX 470 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_abae1e55`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blackjack 21`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BA
Version: 17.5

Date: 17/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 10/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English Serbian (C
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 8103 MB
VideoCard: NVIDIA GeForce GT 630

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
[... truncated; full sample at ``sample.txt`` (approx. 326 more lines) ...]
```

### `cystack_abc366b0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Halo`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: CO

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i7-4810MQ CPU @ 2.80GHz
Cores: 8
Threads: 8
RAM: 12200 MB
VideoCard: Intel(R) HD Graphics 4600

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 285 more lines) ...]
```

### `cystack_abdd45f0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `Purrrifiers`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 10/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i3-1115G4 @ 3.00GHz
Cores: 4
Threads: 4
RAM: 7834 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 262 more lines) ...]
```

### `cystack_ac6ce92c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Factory Outlet Simulator`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Office Simulator`, `Path`, `Processor`, `RAM`, `Sunset Motel`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4600G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 15763 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 265 more lines) ...]
```

### `cystack_acd41c62`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Sky`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 04/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 14/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Arabic English
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-4200M CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 8124 MB
VideoCard: Intel(R) HD Graphics 4600

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
[... truncated; full sample at ``sample.txt`` (approx. 244 more lines) ...]
```

### `cystack_ad40ead7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/04/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 14/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i3-10100F CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16250 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 353 more lines) ...]
```

### `cystack_adecee40`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Monster Prom 4`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 IoT Enterprise LTSC 2021
Install Date: 05/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English
Local Time: 14/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 7520U with Radeon Graphics         
Cores: 8
Threads: 8
RAM: 15610 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 216 more lines) ...]
```

### `cystack_adfb6fa7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Supermarket Simulator`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16312 MB
VideoCard: NVIDIA GeForce RTX 4070

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 330 more lines) ...]
```

### `cystack_ae1ee053`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mafia III`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2021
Install Date: 17/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2690 0 @ 2.90GHz
Cores: 16
Threads: 16
RAM: 16304 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_ae57daa8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires II`, `Age of Empires IV`, `Avatar`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/12/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32654 MB
VideoCard: NVIDIA GeForce RTX 5070 Ti

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 335 more lines) ...]
```

### `cystack_ae73ebcf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `INAZUMA ELEVEN`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian English
Local Time: 31/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 8062 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 312 more lines) ...]
```

### `cystack_aea15c0b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 8136 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 188 more lines) ...]
```

### `cystack_aebea28b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Accident`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 30/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: English Arabic
Local Time: 04/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 32581 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_aee6b025`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Stronghold Crusader`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 12/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 20/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 12/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 3400G with Radeon Vega Graphics    
Cores: 8
Threads: 8
RAM: 14284 MB
VideoCard: AMD Radeon(TM) RX Vega 11 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 211 more lines) ...]
```

### `cystack_af48711d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Wild Terra 2`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32693 MB
VideoCard: NVIDIA GeForce RTX 5070

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
[... truncated; full sample at ``sample.txt`` (approx. 271 more lines) ...]
```

### `cystack_af84b8b4`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `ONE PIECE`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 06/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-14400F
Cores: 16
Threads: 16
RAM: 32581 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 238 more lines) ...]
```

### `cystack_afb46e6b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `CASE`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: US

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1080x1080
Keyboard Languages: English Russian
Local Time: 08/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2680 v4 @ 2.40GHz
Cores: 28
Threads: 28
RAM: 32672 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 302 more lines) ...]
```

### `cystack_afb9b197`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Wrap House Simulator`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 29/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-14400F
Cores: 16
Threads: 16
RAM: 16225 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_b03431f3`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Age of Mythology`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Rise of Nations`, `Stronghold Crusader`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 9700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 31899 MB
VideoCard: AMD Radeon RX 9070 XT

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 263 more lines) ...]
```

### `cystack_b0a6f97f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Ages of Conflict`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 07/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English German
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32656 MB
VideoCard: AMD Radeon RX 7600 XT

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 335 more lines) ...]
```

### `cystack_b11b103b`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls IV`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 23/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: English English
Local Time: 02/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 9 9900X 12-Core Processor            
Cores: 24
Threads: 24
RAM: 63093 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes][Software]
NZXT CAM 4.68.3 - 4.68.3
AMD Software - 24.10.34
Denuvo Anti-Cheat - 6.3.1.6242
GIGABYTE SSD Firmware Update Tool - <ip>
GBT_Dynamic_Lighting_Lib_UC <ip> - <ip>
GBT_MB_Update - <ip>
GBT_rgbMotherboard_UC <ip> - <ip>
GBT_RGB_Sync_Control <ip> - <ip>
GBT_VGA <ip> - <ip>
GIGABYTE Control Center <ip> - <ip>
GIGABYTE Performance Library - <ip>
[... truncated; full sample at ``sample.txt`` (approx. 131 more lines) ...]
```

### `cystack_b13b996e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Commandos`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 13/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16289 MB
VideoCard: NVIDIA GeForce RTX 2060 SUPER

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_b1642433`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ
Version: 17.3

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: French Arabic
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-4005U CPU @ 1.70GHz
Cores: 4
Threads: 4
RAM: 8123 MB
VideoCard: Intel(R) HD Graphics Family

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 266 more lines) ...]
```

### `cystack_b1d8a376`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher 2`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 31/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese Portuguese
Local Time: 18/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13420H
Cores: 12
Threads: 12
RAM: 7895 MB
VideoCard: NVIDIA GeForce RTX 2050

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 398 more lines) ...]
```

### `cystack_b20591a9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 15311 MB
VideoCard: NVIDIA GeForce 210 

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 163 more lines) ...]
```

### `cystack_b21c69f3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Chef Life`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 04/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 65375 MB
VideoCard: NVIDIA GeForce RTX 4060

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
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 384 more lines) ...]
```

### `cystack_b25b610c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hellblade`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: DZ

Date: 19/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French Arabic
Local Time: 19/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32677 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 220 more lines) ...]
```

### `cystack_b281a686`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beholder`, `Choice of Life`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Skul`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 10/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Russian
Local Time: 02/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i3-12100F
Cores: 8
Threads: 8
RAM: 16237 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 364 more lines) ...]
```

### `cystack_b2ba218f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Secret of Monkey Island`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 12226 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 189 more lines) ...]
```

### `cystack_b3097abb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 900x1080
Keyboard Languages: English English
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 3700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16292 MB
VideoCard: NVIDIA GeForce GTX 1650 SUPER

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
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 148 more lines) ...]
```

### `cystack_b3ccf8d7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Online Shopping in Bangladesh`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 24/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 21/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English English English
Local Time: 24/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz
Cores: 8
Threads: 8
RAM: 8089 MB
VideoCard: Intel(R) UHD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_b3dfb8cf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Magic`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 04/01/2025 <ip>
AV: 
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Pentium(R) Gold G5420 CPU @ 3.80GHz
Cores: 4
Threads: 4
RAM: 8064 MB
VideoCard: Intel(R) UHD Graphics 610

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 141 more lines) ...]
```

### `cystack_b48225d7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Project Reality`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/06/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32693 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 448 more lines) ...]
```

### `cystack_b4d990df`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto IV`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English English
Local Time: 26/12/2025 <ip>
TimeZone: 10

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i7-1355U
Cores: 12
Threads: 12
RAM: 15993 MB
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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_b6790b86`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Burger Shift`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 23/12/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French English
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 10
Threads: 10
RAM: 16322 MB
VideoCard: NVIDIA GeForce GTX 1630

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_b6a62642`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Motor Town`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 24/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16179 MB
VideoCard: NVIDIA GeForce RTX 4060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 355 more lines) ...]
```

### `cystack_b6dce860`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 29/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i3-1305U
Cores: 6
Threads: 6
RAM: 7900 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 241 more lines) ...]
```

### `cystack_b7181300`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Call of Duty`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Escape Memoirs`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sky`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 30/12/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16332 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_b8053347`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `The Walking Dead`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BH

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Arabic English Arabic
Local Time: 13/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: AMD Ryzen 3 2200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 30642 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 346 more lines) ...]
```

### `cystack_b8b365cb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hitman`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i9-14900KF
Cores: 20
Threads: 20
RAM: 65317 MB
VideoCard: NVIDIA GeForce RTX 4070 SUPER

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
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 212 more lines) ...]
```

### `cystack_b8c449c6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Halo`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32694 MB
VideoCard: NVIDIA GeForce RTX 5060 Ti

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 276 more lines) ...]
```

### `cystack_b8eb44cc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Car Dealer Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Lithuanian
Local Time: 01/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-14400F
Cores: 16
Threads: 16
RAM: 32595 MB
VideoCard: NVIDIA GeForce RTX 5070

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
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_b8ee9197`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 197 more lines) ...]
```

### `cystack_b91f8dfa`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Metro`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 14/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English
Local Time: 08/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 9 5900X 12-Core Processor            
Cores: 24
Threads: 24
RAM: 32670 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 315 more lines) ...]
```

### `cystack_b9e05cee`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Ghost of Tsushima`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: ES

Date: 29/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 29/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 32474 MB
VideoCard: NVIDIA GeForce RTX 3060

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
[... truncated; full sample at ``sample.txt`` (approx. 347 more lines) ...]
```

### `cystack_ba10e6a0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NVIDIA Pilote audio HD`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ
Version: 17.3

Date: 09/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2021
Install Date: 13/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1024x768
Keyboard Languages: French Arabic
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Pentium(R) Dual-Core  CPU      E5500  @ 2.80GHz
Cores: 2
Threads: 2
RAM: 4061 MB
VideoCard: NVIDIA GeForce 210 

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
[... truncated; full sample at ``sample.txt`` (approx. 205 more lines) ...]
```

### `cystack_ba5349d8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Supremacy`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 06/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400
Cores: 12
Threads: 12
RAM: 16124 MB
VideoCard: Intel(R) Arc(TM) A750 Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 317 more lines) ...]
```

### `cystack_ba8d32c0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 07/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 8086 MB
VideoCard: Intel(R) HD Graphics

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 294 more lines) ...]
```

### `cystack_bade9587`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls II`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1680x1050
Keyboard Languages: Portuguese Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5 CPU         650  @ 3.20GHz
Cores: 4
Threads: 4
RAM: 8118 MB
VideoCard: Intel(R) HD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 213 more lines) ...]
```

### `cystack_bb01ad6d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD
Version: 17.6

Date: 20/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Enterprise
Install Date: 21/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 20/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15720 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 251 more lines) ...]
```

### `cystack_bbdde318`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warface`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DO

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 18/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i3-1215U
Cores: 8
Threads: 8
RAM: 7916 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 253 more lines) ...]
```

### `cystack_bc67e8a3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 18/07/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 07/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 7 7700 8-Core Processor              
Cores: 16
Threads: 16
RAM: 31966 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 325 more lines) ...]
```

### `cystack_bce84be9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Halo`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CO

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 8083 MB
VideoCard: Intel(R) HD Graphics 620

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 200 more lines) ...]
```

### `cystack_bcfccd12`

**Attribution confidence:** `high`

**Field keys:**
`AI`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 29/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 01/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16252 MB
VideoCard: AMD Radeon RX 6500 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 182 more lines) ...]
```

### `cystack_bd90ea39`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English Russian Ukrainian
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-10100F CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16275 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 236 more lines) ...]
```

### `cystack_bdb560fc`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: DZ

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: French Arabic
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-4005U CPU @ 1.70GHz
Cores: 4
Threads: 4
RAM: 8123 MB
VideoCard: Intel(R) HD Graphics Family

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 264 more lines) ...]
```

### `cystack_bdce317a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Anonymous Hacker Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Nova-Life`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 01/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: French
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz
Cores: 4
Threads: 4
RAM: 12173 MB
VideoCard: Intel(R) HD Graphics 4000

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
[... truncated; full sample at ``sample.txt`` (approx. 263 more lines) ...]
```

### `cystack_bde22a62`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Kebab Simulator`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 17/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800H with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 15724 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 324 more lines) ...]
```

### `cystack_bdf3e454`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 09/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 1600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 8143 MB
VideoCard: Radeon RX 580 Series

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
csrss.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 310 more lines) ...]
```

### `cystack_be1ce157`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dune`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: French French
Local Time: 05/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 32629 MB
VideoCard: AMD Radeon RX 9060 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 262 more lines) ...]
```

### `cystack_be2b4bee`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 8600G w/ Radeon 760M Graphics      
Cores: 12
Threads: 12
RAM: 13786 MB
VideoCard: AMD Radeon 760M Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_be6e061d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light 2`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 28/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 22/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 32557 MB
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
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 226 more lines) ...]
```

### `cystack_be79f4e4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blue Protocol`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 12/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32648 MB
VideoCard: NVIDIA GeForce GTX 1060 3GB

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
[... truncated; full sample at ``sample.txt`` (approx. 376 more lines) ...]
```

### `cystack_be9ed749`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32691 MB
VideoCard: AMD Radeon RX 5700 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 244 more lines) ...]
```

### `cystack_bf16ea37`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Escape Memoirs`, `Grand Theft Auto`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 05/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 15/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-10100F CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16303 MB
VideoCard: AMD Radeon RX 6650 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 228 more lines) ...]
```

### `cystack_bf1fbd06`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `JDM`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 27/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10500 CPU @ 3.10GHz
Cores: 12
Threads: 12
RAM: 16278 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 273 more lines) ...]
```

### `cystack_bf2273be`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Soccer Online`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x1080
Keyboard Languages: Spanish Spanish
Local Time: 12/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16313 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
winlogon.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 359 more lines) ...]
```

### `cystack_bfc988af`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Neighbors`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 03/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese
Local Time: 03/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 3200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 6075 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 214 more lines) ...]
```

### `cystack_c04c8f60`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Borderlands`, `Call of Duty`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Insurgency`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Talisman`, `The Binding of Isaac`, `The Stanley Parable`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 21/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 28/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English English
Local Time: 21/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-9700K CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 32684 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 345 more lines) ...]
```

### `cystack_c066d742`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 18/12/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Danish English
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 8102 MB
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
svchost.exe
fontdrvhost.exe
winlogon.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 307 more lines) ...]
```

### `cystack_c076d5bb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 8155 MB
VideoCard: Radeon RX 570 Series

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 153 more lines) ...]
```

### `cystack_c0f50a17`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Backrooms`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BB

Date: 23/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 12/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 23/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 7 7700 8-Core Processor  
Cores: 16
Threads: 16
RAM: 31962 MB
VideoCard: AMD Radeon RX 7600 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 309 more lines) ...]
```

### `cystack_c0fe54e3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mafia II`, `Operation`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 15/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 19/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-10100 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16318 MB
VideoCard: Radeon RX 5500 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_c11c8e39`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Summoners War`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 13/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32694 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 227 more lines) ...]
```

### `cystack_c190bc8d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sniper 3D Assassin`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 19/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: Spanish Spanish
Local Time: 31/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Phenom(tm) II X6 1090T Processor
Cores: 6
Threads: 6
RAM: 4094 MB
VideoCard: NVIDIA GeForce GT 710

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
[... truncated; full sample at ``sample.txt`` (approx. 222 more lines) ...]
```

### `cystack_c1acb4f5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Morels`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 24/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German German
Local Time: 19/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz
Cores: 12
Threads: 12
RAM: 16329 MB
VideoCard: NVIDIA GeForce GTX 1080 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
winlogon.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 377 more lines) ...]
```

### `cystack_c1e1d8cb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    Ip: <redacted>
Country: BR
Version

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: Admin 

Windows: Windows 10 Pro
Install Date: 20/10/2025 <ip>
AV: Windows Defender
Computer Name
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16341 MB
VideoCard: Radeon RX550/550 Series

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_c227f491`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Wrap House Simulator`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10300H CPU @ 2.50GHz
Cores: 8
Threads: 8
RAM: 8029 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 323 more lines) ...]
```

### `cystack_c2785b84`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Conflict of Nations`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 23/06/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 2600X Six-Core Processor           
Cores: 12
Threads: 12
RAM: 16335 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 287 more lines) ...]
```

### `cystack_c2948a8c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hentai Senpai`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EC

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i3-6100U CPU @ 2.30GHz
Cores: 4
Threads: 4
RAM: 3969 MB
VideoCard: Intel(R) HD Graphics 520

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 227 more lines) ...]
```

### `cystack_c2eed4c2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Sky`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 09/01/2026 <ip>
TimeZone: 4294967290

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 16254 MB
VideoCard: AMD Radeon RX 6600

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
[... truncated; full sample at ``sample.txt`` (approx. 182 more lines) ...]
```

### `cystack_c400694d`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 242 more lines) ...]
```

### `cystack_c4a72989`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dune`, `Heist Kitty`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 30/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 9 5900X 12-Core Processor            
Cores: 24
Threads: 24
RAM: 49065 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 409 more lines) ...]
```

### `cystack_c4af0215`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Batman`, `Click Click Dig`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Session`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 11/05/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Portuguese
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD PRO A10-9700 R7, 10 COMPUTE CORES 4C+6G    
Cores: 4
Threads: 4
RAM: 19920 MB
VideoCard: AMD Radeon R7 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 305 more lines) ...]
```

### `cystack_c4e535eb`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Game of Thrones`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 22/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 4600G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 15763 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_c5465390`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Microsoft Flight Simulator X`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: AR

Date: 26/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/11/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 26/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz
Cores: 8
Threads: 8
RAM: 7930 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 201 more lines) ...]
```

### `cystack_c5ccd8e8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bass Defense`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BO

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 31/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish Spanish Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16291 MB
VideoCard: NVIDIA GeForce GTX 1650 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 356 more lines) ...]
```

### `cystack_c6052cdf`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 195 more lines) ...]
```

### `cystack_c661f238`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mafia III`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 03/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 03/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
Cores: 8
Threads: 8
RAM: 32706 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 218 more lines) ...]
```

### `cystack_c69d5c41`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Reverse`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 29/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English English
Local Time: 08/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 7 6800HS with Radeon Graphics        
Cores: 16
Threads: 16
RAM: 7418 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 310 more lines) ...]
```

### `cystack_c6b826de`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Slapshot`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 04/01/2026 <ip>
TimeZone: 4294967290

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: NVIDIA GeForce GTX 1650

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
WUDFHost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_c75c6627`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    Ip: <redacted>
Country: BD

Date: 31/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 31/12/2025 <ip>
TimeZone: 6

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400
Cores: 12
Threads: 12
RAM: 16152 MB
VideoCard: Intel(R) UHD Graphics 730

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
[... truncated; full sample at ``sample.txt`` (approx. 210 more lines) ...]
```

### `cystack_c75d2913`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Caveman World`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BO

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-4590 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 8134 MB
VideoCard: NVIDIA GeForce GT 1030

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
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

### `cystack_c7704946`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 12/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese
Local Time: 20/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16252 MB
VideoCard: Radeon RX550/550 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 309 more lines) ...]
```

### `cystack_c7f22975`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Standable`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish Spanish
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 32637 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
winlogon.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 338 more lines) ...]
```

### `cystack_c81a57ae`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Ryse`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x960
Keyboard Languages: Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 7735HS with Radeon Graphics        
Cores: 16
Threads: 16
RAM: 14020 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

### `cystack_c872060e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Contraband Police`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 09/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Pentium(R) CPU G870 @ 3.10GHz
Cores: 2
Threads: 2
RAM: 8173 MB
VideoCard: Intel(R) HD Graphics

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 263 more lines) ...]
```

### `cystack_c877d3ba`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Kimetsu no Yaiba`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Search results for`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 22/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 8063 MB
VideoCard: Intel(R) HD Graphics 4400

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
[... truncated; full sample at ``sample.txt`` (approx. 185 more lines) ...]
```

### `cystack_c969389e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Car Detailing Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Not For Broadcast`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1707x960
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16317 MB
VideoCard: NVIDIA GeForce GTX 1660

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 144 more lines) ...]
```

### `cystack_c9a27128`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dragonheir`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 05/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English
Local Time: 11/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 7 7435HS                             
Cores: 16
Threads: 16
RAM: 16068 MB
VideoCard: NVIDIA GeForce RTX 4060 Laptop GPU

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 315 more lines) ...]
```

### `cystack_ca092464`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Grand Theft Auto IV`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BD

Date: 23/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x1152
Keyboard Languages: English
Local Time: 23/12/2025 <ip>
TimeZone: 6

[Hardware]
Processor: AMD Ryzen 5 7500F 6-Core Processor 
Cores: 4
Threads: 4
RAM: 32511 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_ca7006d6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Office Simulator`, `PUBG`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Schedule I`, `Supermarket Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/08/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: English Arabic
Local Time: 15/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD PRO A8-9600 R7, 10 COMPUTE CORES 4C+6G     
Cores: 4
Threads: 4
RAM: 15802 MB
VideoCard: AMD Radeon R7 Graphics

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 227 more lines) ...]
```

### `cystack_cab86e8f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `James Bond`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Skyrim Special Edition`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: DZ

Date: 28/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Arabic English English Arabic
Local Time: 28/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: Intel(R) Core(TM) i3-7020U CPU @ 2.30GHz
Cores: 4
Threads: 4
RAM: 8083 MB
VideoCard: Intel(R) HD Graphics 620

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 244 more lines) ...]
```

### `cystack_cb7c5aed`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Crime Scene Cleaner`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 22/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2310 CPU @ 2.90GHz
Cores: 4
Threads: 4
RAM: 16342 MB
VideoCard: NVIDIA GeForce GTX 1050 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 231 more lines) ...]
```

### `cystack_cb8236cf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Kebab Simulator`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 28/04/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-6500 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 16327 MB
VideoCard: NVIDIA GeForce GTX 960

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 297 more lines) ...]
```

### `cystack_cb8879fd`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Red Ruins`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 21/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 19/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
Cores: 6
Threads: 6
RAM: 8129 MB
VideoCard: NVIDIA GeForce GTX 1650

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 370 more lines) ...]
```

### `cystack_cc6a7718`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mafia III`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2680 v4 @ 2.40GHz
Cores: 28
Threads: 28
RAM: 16291 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 284 more lines) ...]
```

### `cystack_ccfc6df4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Truck World`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD A8-7600 Radeon R7, 10 Compute Cores 4C+6G  
Cores: 4
Threads: 4
RAM: 7113 MB
VideoCard: AMD Radeon(TM) R7 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 316 more lines) ...]
```

### `cystack_cd8bfb01`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dune`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Threads`, `TimeZone`, `Uncrashed`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 15/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 17/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 65461 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 361 more lines) ...]
```

### `cystack_cdb5e94b`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Watch Dogs`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Spanish
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
Cores: 6
Threads: 6
RAM: 24508 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 332 more lines) ...]
```

### `cystack_cdb98378`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Subnautica`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 13/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-6100U CPU @ 2.30GHz
Cores: 4
Threads: 4
RAM: 16203 MB
VideoCard: Intel(R) HD Graphics 520

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
[... truncated; full sample at ``sample.txt`` (approx. 205 more lines) ...]
```

### `cystack_cdc00d75`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Batman`, `Bully`, `Computer Name`, `Cores`, `Country`, `Date`, `Demo de Monster Hunter Rise`, `Display Resolution`, `Hitman 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 8600G w/ Radeon 760M Graphics      
Cores: 12
Threads: 12
RAM: 31853 MB
VideoCard: Radeon 5

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 341 more lines) ...]
```

### `cystack_cde410b5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 05/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1080x1080
Keyboard Languages: English Portuguese Portuguese
Local Time: 05/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16272 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_ce031d7a`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Money Simulator`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 22/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 18/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i9-14900K
Cores: 32
Threads: 32
RAM: 65305 MB
VideoCard: Intel(R) UHD Graphics 770

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
[... truncated; full sample at ``sample.txt`` (approx. 341 more lines) ...]
```

### `cystack_ce12275a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 03/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 18/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 03/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 16236 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 235 more lines) ...]
```

### `cystack_ce247d19`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Display Resolution`, `Install Date`, `Keyboard Languages`, `Local Time`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`

**Filenames:** `information.txt`

**Sample (sanitized):**

```

Windows: Windows 11 Pro
Install Date: 03/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 03/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: Intel(R) Core(TM) i7-10700K CPU @ 3.80GHz
Cores: 16
Threads: 16
RAM: 32544 MB
VideoCard: Intel(R) UHD Graphics 630

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
WUDFHost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_ce3513d4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Contraband Police`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AT

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 30/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German German
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32693 MB
VideoCard: NVIDIA GeForce RTX 4070 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 342 more lines) ...]
```

### `cystack_cea13a37`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Foro gratis`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD FX-8320E Eight-Core Processor              
Cores: 8
Threads: 8
RAM: 32716 MB
VideoCard: ATI Radeon 3000 Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_ceaa1d95`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Dune`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FI

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 26/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Russian
Local Time: 22/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 24444 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
```

### `cystack_ced2dc18`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NieR`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Celeron(R) CPU 1037U @ 1.80GHz
Cores: 2
Threads: 2
RAM: 4053 MB
VideoCard: NVIDIA GeForce GTX 650

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 238 more lines) ...]
```

### `cystack_cefa48a5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 17/01/2026 <ip>
TimeZone: 8

[Hardware]
Processor: Intel(R) Core(TM) i5-14600KF
Cores: 20
Threads: 20
RAM: 32623 MB
VideoCard: NVIDIA GeForce RTX 4070

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_cf73c35c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 18/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31849 MB
VideoCard: AMD Radeon RX 7800 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 281 more lines) ...]
```

### `cystack_cfb61d69`

**Attribution confidence:** `high`

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
[... truncated; full sample at ``sample.txt`` (approx. 228 more lines) ...]
```

### `cystack_d05d96b0`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARAKA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 04/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 3440x1440
Keyboard Languages: Czech English
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz
Cores: 12
Threads: 12
RAM: 32710 MB
VideoCard: NVIDIA GeForce RTX 2070

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
[... truncated; full sample at ``sample.txt`` (approx. 323 more lines) ...]
```

### `cystack_d0894388`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BO

Date: 29/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 22/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 29/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5 CPU   M 450  @ 2.40GHz
Cores: 4
Threads: 4
RAM: 7989 MB
VideoCard: Intel(R) HD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 151 more lines) ...]
```

### `cystack_d0a56e2c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Star Trek`, `Subnautica`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 06/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: French
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16333 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 320 more lines) ...]
```

### `cystack_d112955d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967290

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 16253 MB
VideoCard: Radeon RX 590 Series

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 361 more lines) ...]
```

### `cystack_d1396dbb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian Bulgarian English English
Local Time: 20/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 24469 MB
VideoCard: NVIDIA GeForce GTX 1050

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_d15c1972`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500   
Cores: 12
Threads: 12
RAM: 32659 MB
VideoCard: Radeon RX 5500 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 311 more lines) ...]
```

### `cystack_d1977340`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `In Sink`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Motorcycle Mechanic Simulator 2021`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 14/09/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 2200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 14264 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
```

### `cystack_d2557e14`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sonic Racing`, `Threads`, `TimeZone`, `Umamusume`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-9700 CPU @ 3.00GHz
Cores: 8
Threads: 8
RAM: 32713 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 371 more lines) ...]
```

### `cystack_d2c1e806`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: English
Local Time: 02/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: AMD Ryzen 5 7535HS with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 7381 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 279 more lines) ...]
```

### `cystack_d3455518`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SPLITGATE`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 22/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 04/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2666 v3 @ 2.90GHz
Cores: 10
Threads: 10
RAM: 32675 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 227 more lines) ...]
```

### `cystack_d3bed5b3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hello Neighbor`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 23/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz
Cores: 4
Threads: 4
RAM: 32648 MB
VideoCard: Intel(R) HD Graphics 530

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 302 more lines) ...]
```

### `cystack_d3e81346`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Viscera Cleanup Detail`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 30/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16310 MB
VideoCard: NVIDIA GeForce RTX 4060 Ti

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 366 more lines) ...]
```

### `cystack_d3f1be10`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `NVIDIA Pilote audio HD`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: DZ

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise LTSC 2021
Install Date: 13/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: French Arabic
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Pentium(R) Dual-Core  CPU      E5500  @ 2.80GHz
Cores: 2
Threads: 2
RAM: 4095 MB
VideoCard: NVIDIA GeForce 210 

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
[... truncated; full sample at ``sample.txt`` (approx. 199 more lines) ...]
```

### `cystack_d405766f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bakery Cafe Simulator`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 20/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 7500F 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32373 MB
VideoCard: AMD Radeon RX 9060 XT

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
```

### `cystack_d41ea07f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Life is Feudal`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warface`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 31/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD A6-3500 APU with Radeon(tm) HD Graphics
Cores: 3
Threads: 3
RAM: 7666 MB
VideoCard: AMD Radeon HD 6530D

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
[... truncated; full sample at ``sample.txt`` (approx. 213 more lines) ...]
```

### `cystack_d42d5a3a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: IR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Persian Persian
Local Time: 26/12/2025 <ip>
TimeZone: 3

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16197 MB
VideoCard: NVIDIA GeForce RTX 2060 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 220 more lines) ...]
```

### `cystack_d44d1e64`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `NARUTO SHIPPUDEN`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 27/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese Portuguese
Local Time: 27/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 12157 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
winlogon.exe
services.exe
LsaIso.exe
lsass.exe
[... truncated; full sample at ``sample.txt`` (approx. 242 more lines) ...]
```

### `cystack_d4d48fe8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mini World`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 26/04/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 16/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 16340 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 237 more lines) ...]
```

### `cystack_d4e5d998`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16232 MB
VideoCard: AMD Radeon RX 6650 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 299 more lines) ...]
```

### `cystack_d4fbcf3d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Asphalt 9`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CA

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 30/10/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 06/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32657 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 319 more lines) ...]
```

### `cystack_d5356469`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: CO

Date: 25/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 24/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x800
Keyboard Languages: Spanish Spanish
Local Time: 25/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i7-13650HX
Cores: 20
Threads: 20
RAM: 32491 MB
VideoCard: NVIDIA GeForce RTX 5060 Laptop GPU

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
[... truncated; full sample at ``sample.txt`` (approx. 277 more lines) ...]
```

### `cystack_d5f29def`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `We Were Here Expeditions`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 19/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Danish English
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 32690 MB
VideoCard: NVIDIA GeForce RTX 4070

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
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_d683ab12`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SWAT Commander`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warface`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 19/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 12/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 3 2200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 22449 MB
VideoCard: AMD Radeon RX 580 2048SP

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 295 more lines) ...]
```

### `cystack_d69ea152`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Seafarer`, `Threads`, `TimeZone`, `UBOAT`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 26/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/06/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 26/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics 
Cores: 16
Threads: 16
RAM: 64949 MB
VideoCard: NVIDIA GeForce GTX 1080

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 271 more lines) ...]
```

### `cystack_d6d8d693`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BE

Date: 23/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/07/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French French
Local Time: 23/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor  
Cores: 12
Threads: 12
RAM: 32716 MB
VideoCard: NVIDIA GeForce GTX 1660 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 310 more lines) ...]
```

### `cystack_d72f2910`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 12/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 10/10/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German German
Local Time: 12/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 1600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16333 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 268 more lines) ...]
```

### `cystack_d75263b8`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 04/04/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: English Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD FX(tm)-6300 Six-Core Processor             
Cores: 6
Threads: 6
RAM: 8174 MB
VideoCard: NVIDIA GeForce GT 710

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
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 249 more lines) ...]
```

### `cystack_d7a3b74f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Brothers`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Subnautica`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32693 MB
VideoCard: AMD Radeon RX 6600

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
[... truncated; full sample at ``sample.txt`` (approx. 312 more lines) ...]
```

### `cystack_d837c02f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: FR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: French
Local Time: 07/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 7500F 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32361 MB
VideoCard: AMD Radeon RX 9070

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
[... truncated; full sample at ``sample.txt`` (approx. 346 more lines) ...]
```

### `cystack_d87faa41`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Avatar`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11400F @ 2.60GHz
Cores: 12
Threads: 12
RAM: 32654 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_d883bc85`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `METAL GEAR SOLID V`, `MachineID`, `Path`, `Processor`, `RAM`, `Sherlock Holmes`, `Sleeping Dogs`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: EG

Date: 19/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 18/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Arabic
Local Time: 19/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-6500U CPU @ 2.50GHz
Cores: 4
Threads: 4
RAM: 8097 MB
VideoCard: Intel(R) HD Graphics 520

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 188 more lines) ...]
```

### `cystack_d8aa5fd5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 01/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16256 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 365 more lines) ...]
```

### `cystack_d9242569`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 16/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 23/07/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 16/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 1600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16320 MB
VideoCard: NVIDIA GeForce GTX 1080

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
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_d9413d2a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BA

Date: 27/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Croatian Bosnian (L
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 32705 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 296 more lines) ...]
```

### `cystack_d9742881`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Cube Escape`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 26/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home Single Language
Install Date: 11/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Portuguese Portuguese
Local Time: 26/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Celeron(R) 6305 @ 1.80GHz
Cores: 2
Threads: 2
RAM: 3819 MB
VideoCard: Intel(R) UHD Graphics

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 207 more lines) ...]
```

### `cystack_d97f18e5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 19/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32673 MB
VideoCard: Intel(R) Arc(TM) A770 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 354 more lines) ...]
```

### `cystack_d9a1ddf4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Maru Expedition`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 03/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 24/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1568x1080
Keyboard Languages: Portuguese
Local Time: 03/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16274 MB
VideoCard: AMD Radeon RX 580 2048SP

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 163 more lines) ...]
```

### `cystack_d9f51922`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 18/01/2026 <ip>
TimeZone: 4

[Hardware]
Processor: Intel(R) Core(TM) i7-14700KF
Cores: 28
Threads: 28
RAM: 32557 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 302 more lines) ...]
```

### `cystack_da7dffc2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: BR

Date: 25/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 16/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 25/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor
Cores: 12
Threads: 12
RAM: 8117 MB
VideoCard: AMD Radeon RX 580 2048SP

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
[... truncated; full sample at ``sample.txt`` (approx. 193 more lines) ...]
```

### `cystack_db399afb`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Avatar`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Uncrashed`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1080
Keyboard Languages: Spanish
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16299 MB
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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 257 more lines) ...]
```

### `cystack_db799d19`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto IV`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 07/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 27/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16344 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 221 more lines) ...]
```

### `cystack_dba60160`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cities`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Police Simulator`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 01/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i7-11700KF @ 3.60GHz
Cores: 16
Threads: 16
RAM: 16278 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_dbb0c5f9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `FlatOut 3`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 11/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 32627 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 297 more lines) ...]
```

### `cystack_dbd480af`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Slapshot`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 07/10/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 07/01/2026 <ip>
TimeZone: 4294967289

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 8122 MB
VideoCard: Radeon RX 580 Series

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
[... truncated; full sample at ``sample.txt`` (approx. 264 more lines) ...]
```

### `cystack_dcafe7a3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beholder`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 29/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Turkish
Local Time: 02/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: AMD Ryzen 5 1600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 8145 MB
VideoCard: Radeon RX 570 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 225 more lines) ...]
```

### `cystack_de72ecf2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `HFSQL`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BF

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 31/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x800
Keyboard Languages: English French French
Local Time: 11/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: Pentium(R) Dual-Core CPU       T4300  @ 2.10GHz
Cores: 2
Threads: 2
RAM: 1978 MB
VideoCard: NVIDIA GeForce G 105M   

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 222 more lines) ...]
```

### `cystack_dedc74f2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto`, `Injustice`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16175 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

### `cystack_df29bf50`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bully`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 17/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1100x1080
Keyboard Languages: Portuguese
Local Time: 06/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E3-1230 V2 @ 3.30GHz
Cores: 8
Threads: 8
RAM: 16322 MB
VideoCard: Radeon RX 570 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 254 more lines) ...]
```

### `cystack_df48d929`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `New World`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 19/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 31/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 31849 MB
VideoCard: NVIDIA GeForce RTX 4090

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
[... truncated; full sample at ``sample.txt`` (approx. 308 more lines) ...]
```

### `cystack_dff1346c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Money Simulator`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 02/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French English
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 14228 MB
VideoCard: AMD Radeon RX 5600 XT

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 318 more lines) ...]
```

### `cystack_e0b1db29`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `GUID`, `HWID`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 04/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 26/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 04/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 24445 MB
VideoCard: AMD Radeon RX 5600 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 258 more lines) ...]
```

### `cystack_e2d58731`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Arena Breakout`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/04/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4600G with Radeon Graphics
Cores: 12
Threads: 12
RAM: 32560 MB
VideoCard: AMD Radeon RX 6600

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
WUDFHost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 332 more lines) ...]
```

### `cystack_e2d5b11a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 11/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 17/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700U with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 15706 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 306 more lines) ...]
```

### `cystack_e332b663`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Evil Nun`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 22/08/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16252 MB
VideoCard: AMD Radeon RX 6650 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_e3a36ac5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PANOPTYCA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 22/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 7600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 31893 MB
VideoCard: AMD Radeon(TM) Graphics

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 283 more lines) ...]
```

### `cystack_e3e9bac4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 5600G with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 15739 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 316 more lines) ...]
```

### `cystack_e3f27114`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mafia`, `Mafia II`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700                               
Cores: 16
Threads: 16
RAM: 24368 MB
VideoCard: NVIDIA GeForce GTX 1070

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
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_e4775c02`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Caveman World`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 20/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-10700 CPU @ 2.90GHz
Cores: 16
Threads: 16
RAM: 32644 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 377 more lines) ...]
```

### `cystack_e4b48586`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sleeping Dogs`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 29/06/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 10/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: AMD Ryzen 7 7700 8-Core Processor              
Cores: 16
Threads: 16
RAM: 15553 MB
VideoCard: AMD Radeon(TM) Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 295 more lines) ...]
```

### `cystack_e4cfa473`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Alice`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 24498 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 330 more lines) ...]
```

### `cystack_e555e79c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AO

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1680x1050
Keyboard Languages: English English Portuguese
Local Time: 07/01/2026 <ip>
TimeZone: 0

[Hardware]
Processor: Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz
Cores: 4
Threads: 4
RAM: 12183 MB
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
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 191 more lines) ...]
```

### `cystack_e591cda6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 22/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 5 5600H with Radeon Graphics         
Cores: 12
Threads: 12
RAM: 7518 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 285 more lines) ...]
```

### `cystack_e5e80f01`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Knightfall`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 23/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: AMD Ryzen 5 7520U with Radeon Graphics         
Cores: 8
Threads: 8
RAM: 7455 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_e6293738`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Motorcycle Mechanic Simulator 2021`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1680x1050
Keyboard Languages: Bulgarian English
Local Time: 14/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16307 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 263 more lines) ...]
```

### `cystack_e6338b92`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 29/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16222 MB
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
WUDFHost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 378 more lines) ...]
```

### `cystack_e6348a68`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Shower With Your Dad Simulator 2015`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BG

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 14/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Bulgarian English
Local Time: 27/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx  
Cores: 8
Threads: 8
RAM: 6020 MB
VideoCard: AMD Radeon(TM) Vega 8 Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 319 more lines) ...]
```

### `cystack_e67028ae`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Crime Simulator`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Kingdom Come`, `Local Time`, `Operation`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 28/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1080
Keyboard Languages: German German Polish
Local Time: 18/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 16103 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 406 more lines) ...]
```

### `cystack_e6abb268`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RACCOIN`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DK

Date: 06/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 29/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i9-10900KF CPU @ 3.70GHz
Cores: 20
Threads: 20
RAM: 16301 MB
VideoCard: NVIDIA GeForce RTX 2070 SUPER

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 331 more lines) ...]
```

### `cystack_e6d7a9df`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `This Is Fine`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 13/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 15/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 13/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 8145 MB
VideoCard: Radeon RX550/550 Series

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_e71830f6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Boss Rush`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto`, `Install Date`, `Ip`, `Keyboard Languages`, `Legacy of Kain`, `Local Time`, `NARUTO`, `Path`, `Processor`, `RAM`, `SCP`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 26/11/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16303 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 322 more lines) ...]
```

### `cystack_e77f2ca6`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SuchArt`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 04/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16272 MB
VideoCard: Intel(R) HD Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 241 more lines) ...]
```

### `cystack_e8392ec8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `NARAKA`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 18/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 04/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16251 MB
VideoCard: NVIDIA GeForce RTX 3050

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_e87c0a5d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HFSQL`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 23/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 08/06/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French French French
Local Time: 23/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800H with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 40349 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 259 more lines) ...]
```

### `cystack_e895ea21`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Ben 10`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `WriteHuman AI Humanizer Tool`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: BD

Date: 30/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 28/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: English
Local Time: 30/12/2025 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz
Cores: 8
Threads: 8
RAM: 16198 MB
VideoCard: Intel(R) UHD Graphics 620

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 225 more lines) ...]
```

### `cystack_e8cd8346`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Microsoft Flight Simulator X`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR
Version: 17.7

Date: 26/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/11/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 26/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz
Cores: 8
Threads: 8
RAM: 7930 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 203 more lines) ...]
```

### `cystack_e8dffa41`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Walking Dead`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/06/2025 <ip>
AV: 
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1024x768
Keyboard Languages: Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD A8-3850 APU with Radeon(tm) HD Graphics
Cores: 4
Threads: 4
RAM: 5624 MB
VideoCard: AMD Radeon HD 6550D

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
[... truncated; full sample at ``sample.txt`` (approx. 145 more lines) ...]
```

### `cystack_e97d0b04`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Subnautica`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EE

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 23/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 08/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Athlon(tm) X4 860K Quad Core Processor     
Cores: 4
Threads: 4
RAM: 16343 MB
VideoCard: NVIDIA GeForce GTX 1080

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
[... truncated; full sample at ``sample.txt`` (approx. 240 more lines) ...]
```

### `cystack_e9c316f5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Monster Hunter`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 01/01/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1440x900
Keyboard Languages: Japanese Portuguese Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-4570 CPU @ 3.20GHz
Cores: 4
Threads: 4
RAM: 8113 MB
VideoCard: Intel(R) HD Graphics

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 241 more lines) ...]
```

### `cystack_ea2edef5`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Ages of Conflict`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 25/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 27/12/2025 <ip>
TimeZone: 10

[Hardware]
Processor: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
Cores: 6
Threads: 6
RAM: 8134 MB
VideoCard: NVIDIA GeForce GTX 1060 3GB

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 319 more lines) ...]
```

### `cystack_ea8e90fe`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blue Protocol`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: DE

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 01/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: German
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16272 MB
VideoCard: NVIDIA GeForce GTX 1070

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
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_eabff489`

**Attribution confidence:** `high`

**Field keys:**
`A3`, `ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `DRAGON BALL`, `DRAGON BALL Z`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Seven Knights Re`, `Solo Leveling`, `The Seven Deadly Sins`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 20/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 3600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32717 MB
VideoCard: NVIDIA GeForce RTX 3060

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 300 more lines) ...]
```

### `cystack_eafdde45`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Camping Simulator`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 23/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German Czech German English
Local Time: 18/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16309 MB
VideoCard: AMD Radeon RX 6600

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 301 more lines) ...]
```

### `cystack_eb03fabb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 14/06/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 7 5700G with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 15743 MB
VideoCard: AMD Radeon(TM) Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 294 more lines) ...]
```

### `cystack_eb2bad0f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: ES

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 09/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16307 MB
VideoCard: NVIDIA GeForce RTX 3060 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 336 more lines) ...]
```

### `cystack_eb6f904e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Devil May Cry 3`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 01/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Arabic
Local Time: 02/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i7-4700MQ CPU @ 2.40GHz
Cores: 8
Threads: 8
RAM: 7912 MB
VideoCard: NVIDIA GeForce GT 755M

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
[... truncated; full sample at ``sample.txt`` (approx. 290 more lines) ...]
```

### `cystack_eba96314`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Alice`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fallout`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 24/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2670 v3 @ 2.30GHz
Cores: 24
Threads: 24
RAM: 8044 MB
VideoCard: AMD Radeon RX 580 2048SP

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 224 more lines) ...]
```

### `cystack_ebcb1fa1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mafia II`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CZ

Date: 24/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 29/12/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech
Local Time: 24/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32657 MB
VideoCard: NVIDIA GeForce RTX 3060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_ec0401eb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hellblade`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 21/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 10/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16309 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 279 more lines) ...]
```

### `cystack_ec790a3f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Warhammer`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AT

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 01/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
Cores: 6
Threads: 6
RAM: 32705 MB
VideoCard: NVIDIA GeForce RTX 2060

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
WUDFHost.exe
[... truncated; full sample at ``sample.txt`` (approx. 303 more lines) ...]
```

### `cystack_ecef554a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Truck World`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BG

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Bulgarian English
Local Time: 02/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: NVIDIA GeForce RTX 3050

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
[... truncated; full sample at ``sample.txt`` (approx. 329 more lines) ...]
```

### `cystack_ecf28979`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Creepy Waves FM`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sherlock`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: German
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 2600 Six-Core Processor            
Cores: 12
Threads: 12
RAM: 16335 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 191 more lines) ...]
```

### `cystack_ed0f2a93`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `The Witcher`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: CO

Date: 23/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 25/03/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 23/12/2025 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz
Cores: 4
Threads: 4
RAM: 16293 MB
VideoCard: Intel(R) HD Graphics 5500

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
[... truncated; full sample at ``sample.txt`` (approx. 375 more lines) ...]
```

### `cystack_ed922b80`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: XK

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/04/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i3-6006U CPU @ 2.00GHz
Cores: 4
Threads: 4
RAM: 8098 MB
VideoCard: Intel(R) HD Graphics 520

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
winlogon.exe
svchost.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 213 more lines) ...]
```

### `cystack_ed9309b3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `Quarantine Zone`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BA

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 15/11/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German English Croatian Croatian
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16273 MB
VideoCard: AMD Radeon RX 6600

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 322 more lines) ...]
```

### `cystack_edb191c4`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Back in Service`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 14/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD FX(tm)-6350 Six-Core Processor             
Cores: 6
Threads: 6
RAM: 8091 MB
VideoCard: AMD Radeon (TM) R9 360 Series

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 240 more lines) ...]
```

### `cystack_eedb1be7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `RISK`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BH

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 03/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 14/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i5-13400F
Cores: 16
Threads: 16
RAM: 16197 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 280 more lines) ...]
```

### `cystack_ef13ae3c`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Slapshot`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: CZ

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 27/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 32678 MB
VideoCard: AMD Radeon RX 7600

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
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_ef21c973`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Blue Protocol`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 28/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 12/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 28/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16294 MB
VideoCard: NVIDIA GeForce GTX 1050

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
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_ef300094`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires II`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 25/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Arabic English
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 16251 MB
VideoCard: NVIDIA GeForce RTX 2060

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
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 414 more lines) ...]
```

### `cystack_efb732d9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Black Myth`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 03/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1680x1050
Keyboard Languages: English Russian
Local Time: 17/01/2026 <ip>
TimeZone: 3

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2670 v2 @ 2.50GHz
Cores: 20
Threads: 20
RAM: 16315 MB
VideoCard: NVIDIA GeForce GTX 1060 6GB

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
[... truncated; full sample at ``sample.txt`` (approx. 226 more lines) ...]
```

### `cystack_f03aa052`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Kimetsu no Yaiba`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Search results for`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 22/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 8063 MB
VideoCard: Intel(R) HD Graphics 4400

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
[... truncated; full sample at ``sample.txt`` (approx. 193 more lines) ...]
```

### `cystack_f051eab9`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR
Version: 17.5

Date: 17/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 04/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2048x864
Keyboard Languages: Portuguese
Local Time: 17/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 16337 MB
VideoCard: Intel(R) HD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 320 more lines) ...]
```

### `cystack_f080a5ca`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Age of Empires III`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro for Workstations
Install Date: 03/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 31/12/2025 <ip>
TimeZone: 4294967292

[Hardware]
Processor: 11th Gen Intel(R) Core(TM) i5-11600KF @ 3.90GHz
Cores: 12
Threads: 12
RAM: 32635 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 278 more lines) ...]
```

### `cystack_f093a6a1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Schedule I`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 21/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: 12th Gen Intel(R) Core(TM) i5-12400F
Cores: 12
Threads: 12
RAM: 14181 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 252 more lines) ...]
```

### `cystack_f0d8d32e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sea of Thieves`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 28/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Enterprise
Install Date: 03/02/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 28/12/2025 <ip>
TimeZone: 10

[Hardware]
Processor: AMD Ryzen 7 3700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32682 MB
VideoCard: NVIDIA GeForce RTX 2060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 328 more lines) ...]
```

### `cystack_f13c8132`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `HackHub`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `The Complex`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 01/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 20/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5600 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16310 MB
VideoCard: NVIDIA GeForce RTX 4060

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
WUDFHost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 334 more lines) ...]
```

### `cystack_f1e86d59`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `STAR WARS Jedi`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 07/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 4500 6-Core Processor              
Cores: 12
Threads: 12
RAM: 16277 MB
VideoCard: AMD Radeon RX 7600

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
svchost.exe
dwm.exe
[... truncated; full sample at ``sample.txt`` (approx. 138 more lines) ...]
```

### `cystack_f29763bf`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Elder Scrolls V`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 06/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 08/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2680 v4 @ 2.40GHz
Cores: 28
Threads: 28
RAM: 16288 MB
VideoCard: AMD Radeon RX 5700 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 211 more lines) ...]
```

### `cystack_f2bbdc13`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Metal`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 04/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish Spanish
Local Time: 04/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 9600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 15477 MB
VideoCard: NVIDIA GeForce RTX 2060

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 321 more lines) ...]
```

### `cystack_f2f05735`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Saints Row`, `Sleeping Dogs`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AR

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Spanish Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Celeron(R) J4005 CPU @ 2.00GHz
Cores: 2
Threads: 2
RAM: 8011 MB
VideoCard: Intel(R) UHD Graphics 600

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 200 more lines) ...]
```

### `cystack_f2fabd6f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD
Version

Date: 11/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: Admin 

Windows: Windows 10 Home
Install Date: 11/01/2026 <ip>
AV: Windows Defender
Computer Name
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 11/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: Intel(R) Core(TM) i7-7600U CPU @ 2.80GHz
Cores: 4
Threads: 4
RAM: 8072 MB
VideoCard: Intel(R) HD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 195 more lines) ...]
```

### `cystack_f4362f8a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dungeon Tycoon`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mini World`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DO

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/02/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Arabic English Japanese Portuguese Chinese (S Spanish Spanish Russian Russian
Local Time: 08/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: Intel(R) Core(TM) i3 CPU       M 370  @ 2.40GHz
Cores: 4
Threads: 4
RAM: 8047 MB
VideoCard: ATI Mobility Radeon HD 4500 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 247 more lines) ...]
```

### `cystack_f44476c1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Backrooms`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Species`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 31/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 32563 MB
VideoCard: NVIDIA GeForce RTX 4060

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 325 more lines) ...]
```

### `cystack_f468230a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 22/09/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 17/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-2100 CPU @ 3.10GHz
Cores: 4
Threads: 4
RAM: 8147 MB
VideoCard: NVIDIA GeForce GTX 750

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 234 more lines) ...]
```

### `cystack_f4ceba25`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Processor`, `RAM`, `The Binding of Isaac`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/07/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Spanish Spanish
Local Time: 19/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD FX(tm)-8120 Eight-Core Processor           
Cores: 8
Threads: 8
RAM: 28571 MB
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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 259 more lines) ...]
```

### `cystack_f52e41d7`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hollow Knight`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Penumbra`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 14/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 15760 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 212 more lines) ...]
```

### `cystack_f60efff8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Mafia`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CZ

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 10/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Czech English
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
Cores: 4
Threads: 4
RAM: 16342 MB
VideoCard: AMD Radeon RX 5600 XT

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 281 more lines) ...]
```

### `cystack_f637cae2`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Operation Lovecraft`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: EE

Date: 25/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 09/05/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: English English
Local Time: 25/12/2025 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-14700K
Cores: 12
Threads: 12
RAM: 24339 MB
VideoCard: NVIDIA GeForce RTX 3050

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
winlogon.exe
LsaIso.exe
lsass.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 317 more lines) ...]
```

### `cystack_f66c6e56`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Asphalt 9`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 04/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 15/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2670 v3 @ 2.30GHz
Cores: 24
Threads: 24
RAM: 16289 MB
VideoCard: AMD Radeon RX 580 2048SP

[Processes]
System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
winlogon.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 250 more lines) ...]
```

### `cystack_f731f44c`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Counter-Strike`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `KartRider`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 14/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 15/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 3 2200G with Radeon Vega Graphics    
Cores: 4
Threads: 4
RAM: 16318 MB
VideoCard: NVIDIA GeForce GTX 1650

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
[... truncated; full sample at ``sample.txt`` (approx. 336 more lines) ...]
```

### `cystack_f7642f88`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Rick and Morty`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AU

Date: 17/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 03/09/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 17/01/2026 <ip>
TimeZone: 9

[Hardware]
Processor: AMD Ryzen 5 5500                               
Cores: 12
Threads: 12
RAM: 32557 MB
VideoCard: NVIDIA GeForce RTX 2070

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
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 273 more lines) ...]
```

### `cystack_f7ac06d8`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Solo Leveling`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 08/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English French
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 3700X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32693 MB
VideoCard: NVIDIA GeForce RTX 3070

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 417 more lines) ...]
```

### `cystack_f85be4d7`

**Attribution confidence:** `high`

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
Install Date: 29/06/2019 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Arabic
Local Time: 25/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-3520M CPU @ 2.90GHz
Cores: 4
Threads: 4
RAM: 3792 MB
VideoCard: Intel(R) HD Graphics 4000

[Processes]
System
smss.exe
csrss.exe
csrss.exe
wininit.exe
services.exe
lsass.exe
winlogon.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 174 more lines) ...]
```

### `cystack_f872826d`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `Total War`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BE

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 03/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French French
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 16269 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 288 more lines) ...]
```

### `cystack_f92a4547`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Beyond`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL
Version: 17.5

Date: 16/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 23/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Spanish Spanish
Local Time: 16/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD A8-6600K APU with Radeon(tm) HD Graphics   
Cores: 4
Threads: 4
RAM: 8137 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 270 more lines) ...]
```

### `cystack_f935e89c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Hollow Knight`, `Hotline Miami 2`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/10/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1360x768
Keyboard Languages: Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16337 MB
VideoCard: NVIDIA GeForce GTX 750

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
[... truncated; full sample at ``sample.txt`` (approx. 276 more lines) ...]
```

### `cystack_f937bd09`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Asphalt 9`, `Computer Name`, `Cores`, `Display Resolution`, `Install Date`, `Keyboard Languages`, `Local Time`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`

**Filenames:** `information.txt`

**Sample (sanitized):**

```

Windows: Windows 10 Pro
Install Date: 02/10/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 03/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Core(TM) i5-3320M CPU @ 2.60GHz
Cores: 4
Threads: 4
RAM: 8057 MB
VideoCard: Intel(R) HD Graphics 4000

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
[... truncated; full sample at ``sample.txt`` (approx. 232 more lines) ...]
```

### `cystack_f9826b22`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Police Simulator`, `Processor`, `RAM`, `Subnautica`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 08/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 09/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 08/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5700X3D 8-Core Processor           
Cores: 16
Threads: 16
RAM: 32690 MB
VideoCard: AMD Radeon RX 9060 XT

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
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
```

### `cystack_f9ba9774`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Keyboard Languages`, `Local Time`, `MachineID`, `Operation`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Country: EG

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 05/05/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Arabic
Local Time: 02/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 8127 MB
VideoCard: Radeon RX 570 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 246 more lines) ...]
```

### `cystack_faa7cd1c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Allstar`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Gas Station Simulator`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 27/12/2025 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 09/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 27/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
Cores: 12
Threads: 12
RAM: 16255 MB
VideoCard: NVIDIA GeForce RTX 3050

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
fontdrvhost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 172 more lines) ...]
```

### `cystack_fad91a1c`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Pixel Gun 3D`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 07/06/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Russian
Local Time: 02/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i7-7700 CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16312 MB
VideoCard: NVIDIA GeForce GTX 1060 3GB

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
[... truncated; full sample at ``sample.txt`` (approx. 329 more lines) ...]
```

### `cystack_fb080038`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Alien Swarm`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BO

Date: 11/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 05/06/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 4294967292

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
csrss.exe
winlogon.exe
wininit.exe
services.exe
lsass.exe
svchost.exe
fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 202 more lines) ...]
```

### `cystack_fb75d618`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PICO PARK`, `Path`, `Pixel Gun 3D`, `Portal`, `Processor`, `RAM`, `Supermarket Simulator`, `TCG Card Shop Simulator`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 14/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 12/01/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 14/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i5-3470S CPU @ 2.90GHz
Cores: 4
Threads: 4
RAM: 8082 MB
VideoCard: NVIDIA GeForce GT 730

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
[... truncated; full sample at ``sample.txt`` (approx. 241 more lines) ...]
```

### `cystack_fb87a0f3`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Clair Obscur`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Fall Guys`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `METAL GEAR SOLID 2`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 10/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 31/10/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German
Local Time: 10/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 3800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 16297 MB
VideoCard: NVIDIA GeForce RTX 2070 SUPER

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
[... truncated; full sample at ``sample.txt`` (approx. 394 more lines) ...]
```

### `cystack_fb8817ba`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Bombergrounds`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AT

Date: 06/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 31/07/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: German German
Local Time: 06/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 5 7500F 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32471 MB
VideoCard: NVIDIA GeForce RTX 2080

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
[... truncated; full sample at ``sample.txt`` (approx. 326 more lines) ...]
```

### `cystack_fc6ff31a`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dwarves`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 16/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 02/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 7 4800H with Radeon Graphics         
Cores: 16
Threads: 16
RAM: 15791 MB
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
[... truncated; full sample at ``sample.txt`` (approx. 350 more lines) ...]
```

### `cystack_fc938b41`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAID`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 07/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Home
Install Date: 02/02/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: Spanish Spanish
Local Time: 07/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Pentium(R) CPU G4400 @ 3.30GHz
Cores: 2
Threads: 2
RAM: 14572 MB
VideoCard: Intel(R) HD Graphics 510

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
[... truncated; full sample at ``sample.txt`` (approx. 284 more lines) ...]
```

### `cystack_fcb16afb`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `METAL GEAR RISING`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 02/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x720
Keyboard Languages: Portuguese
Local Time: 02/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Xeon(R) CPU E5-2620 v3 @ 2.40GHz
Cores: 12
Threads: 12
RAM: 8033 MB
VideoCard: Radeon RX 580 Series

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
[... truncated; full sample at ``sample.txt`` (approx. 224 more lines) ...]
```

### `cystack_fcd628ba`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Operation`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 11/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 27/12/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1280x1024
Keyboard Languages: Spanish Spanish
Local Time: 11/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
Cores: 8
Threads: 8
RAM: 16259 MB
VideoCard: Intel(R) HD Graphics 4000

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
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 292 more lines) ...]
```

### `cystack_fcf13e4e`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `Game of Thrones`, `Grand Theft Auto IV`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Life is Feudal`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CL

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 26/04/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Spanish
Local Time: 01/01/2026 <ip>
TimeZone: 4294967292

[Hardware]
Processor: AMD Ryzen 7 1800X Eight-Core Processor         
Cores: 16
Threads: 16
RAM: 32691 MB
VideoCard: NVIDIA GeForce GTX 1080

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
[... truncated; full sample at ``sample.txt`` (approx. 277 more lines) ...]
```

### `cystack_fcf9c4bf`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `The Deed`, `Threads`, `TimeZone`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR
Version: 17.5

Date: 17/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 28/11/2023 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English English Spanish
Local Time: 17/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 12188 MB
VideoCard: NVIDIA GeForce GTX 750 Ti

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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
```

### `cystack_fd0f3402`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`, `Zero City`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BD

Date: 22/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 07/12/2022 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: English
Local Time: 22/01/2026 <ip>
TimeZone: 6

[Hardware]
Processor: Intel(R) Pentium(R) CPU G620 @ 2.60GHz
Cores: 2
Threads: 2
RAM: 6038 MB
VideoCard: Intel(R) HD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 233 more lines) ...]
```

### `cystack_fd24168c`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Sea of Thieves`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```


Ip: <redacted>
Country: DK

Date: 25/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 17/04/2021 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Danish English English
Local Time: 25/12/2025 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 2700 Eight-Core Processor  
Cores: 16
Threads: 16
RAM: 16333 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 267 more lines) ...]
```

### `cystack_fd5dea1b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Detroit`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `The Witcher 3`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
    

Ip: <redacted>
Country: AU

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 06/11/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English English
Local Time: 07/01/2026 <ip>
TimeZone: 10

[Hardware]
Processor: Intel(R) Core(TM) i7-9700KF CPU @ 3.60GHz
Cores: 8
Threads: 8
RAM: 16298 MB
VideoCard: NVIDIA GeForce RTX 2060

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
[... truncated; full sample at ``sample.txt`` (approx. 313 more lines) ...]
```

### `cystack_fdc18ee0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Dark Hours`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DE

Date: 19/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 16/01/2026 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English Persian English
Local Time: 19/01/2026 <ip>
TimeZone: 4294967288

[Hardware]
Processor: AMD Ryzen 5 5600X 6-Core Processor             
Cores: 12
Threads: 12
RAM: 16264 MB
VideoCard: AMD Radeon RX 7600

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
[... truncated; full sample at ``sample.txt`` (approx. 329 more lines) ...]
```

### `cystack_fe54b7fe`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Mystery Manor`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 13/09/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Athlon 200GE with Radeon Vega Graphics     
Cores: 4
Threads: 4
RAM: 14279 MB
VideoCard: Intel(R) HD Graphics 520

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
[... truncated; full sample at ``sample.txt`` (approx. 289 more lines) ...]
```

### `cystack_ff23b8e0`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Deconstruction Simulator`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `PUBG`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: AR

Date: 15/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 08/08/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1600x900
Keyboard Languages: Spanish Spanish
Local Time: 15/01/2026 <ip>
TimeZone: 4294967293

[Hardware]
Processor: AMD Ryzen 5 5600GT with Radeon Graphics        
Cores: 12
Threads: 12
RAM: 15664 MB
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
WUDFHost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_ff273c3b`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Winter Survival`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FI

Date: 07/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 08/06/2020 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 2560x1440
Keyboard Languages: Finnish
Local Time: 07/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: AMD Ryzen 5 8400F 6-Core Processor             
Cores: 12
Threads: 12
RAM: 32429 MB
VideoCard: AMD Radeon RX 5700

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
[... truncated; full sample at ``sample.txt`` (approx. 366 more lines) ...]
```

### `cystack_ff4193e1`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Batman`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Grand Theft Auto`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Sky`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: EG

Date: 18/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 02/03/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1536x864
Keyboard Languages: English Arabic
Local Time: 18/01/2026 <ip>
TimeZone: 2

[Hardware]
Processor: Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz
Cores: 8
Threads: 8
RAM: 7015 MB
VideoCard: Intel(R) UHD Graphics 620

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
[... truncated; full sample at ``sample.txt`` (approx. 319 more lines) ...]
```

### `cystack_ff5cbc49`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Call of Duty`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Dying Light`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: FR

Date: 09/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 08/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: French
Local Time: 09/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: AMD Ryzen 7 5800X 8-Core Processor             
Cores: 16
Threads: 16
RAM: 32690 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 262 more lines) ...]
```

### `cystack_ff9af25f`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Hunt`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `Remnant`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: BR

Date: 31/12/2025 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 10 Pro
Install Date: 19/12/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: Portuguese Portuguese
Local Time: 31/12/2025 <ip>
TimeZone: 4294967293

[Hardware]
Processor: Intel(R) Core(TM) i3-9100F CPU @ 3.60GHz
Cores: 4
Threads: 4
RAM: 16322 MB
VideoCard: NVIDIA GeForce GTX 1660

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
[... truncated; full sample at ``sample.txt`` (approx. 267 more lines) ...]
```

### `cystack_ffa968a6`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Half-Life`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SCP`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: DZ

Date: 01/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Pro
Install Date: 24/11/2024 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 01/01/2026 <ip>
TimeZone: 1

[Hardware]
Processor: 13th Gen Intel(R) Core(TM) i3-13100F
Cores: 8
Threads: 8
RAM: 16239 MB
VideoCard: NVIDIA GeForce RTX 4060

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
[... truncated; full sample at ``sample.txt`` (approx. 269 more lines) ...]
```

### `cystack_ffe9ca90`

**Attribution confidence:** `high`

**Field keys:**
`ARK`, `AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `Path`, `Processor`, `RAM`, `Stick Fight`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CA

Date: 20/01/2026 <ip>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home
Install Date: 23/01/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1920x1080
Keyboard Languages: English
Local Time: 20/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i7-9700 CPU @ 3.00GHz
Cores: 8
Threads: 8
RAM: 16316 MB
VideoCard: NVIDIA GeForce RTX 3070

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
[... truncated; full sample at ``sample.txt`` (approx. 347 more lines) ...]
```

### `cystack_ffef41aa`

**Attribution confidence:** `high`

**Field keys:**
`AV`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Install Date`, `Ip`, `Keyboard Languages`, `Local Time`, `MachineID`, `Path`, `Processor`, `RAM`, `SAS`, `Threads`, `TimeZone`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: CO

Date: 08/01/2026 <ip>
MachineID: <redacted>
GUID: <redacted>
HWID: <redacted>

Path: <redacted>
Work Dir: In memory

Windows: Windows 11 Home Single Language
Install Date: 19/10/2025 <ip>
AV: Windows Defender
Computer Name: <redacted>
User Name: <redacted>
Display Resolution: 1366x768
Keyboard Languages: Spanish Spanish
Local Time: 08/01/2026 <ip>
TimeZone: 4294967291

[Hardware]
Processor: Intel(R) Core(TM) i3-10110U CPU @ 2.10GHz
Cores: 4
Threads: 4
RAM: 3930 MB
VideoCard: Intel(R) UHD Graphics

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
[... truncated; full sample at ``sample.txt`` (approx. 245 more lines) ...]
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
