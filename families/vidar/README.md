# Vidar

Vidar Stealer logs. Build 4.x emits a flat key-colon-value
`information.txt` opening with `Ip:`, `Country:`, `Version:`
followed by hardware, locale, and build identity blocks. Vidar
has been distributed since 2018 as a fork of Arkei and remains a
high-volume infostealer family in 2025+.

**Also known as:** `VidarStealer`

**Variants observed:** 56
**Total observations:** 8,466
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Telegram and Discord session data
- FTP, email, and VPN client configurations
- Documents and screenshots from the desktop

## Variants

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
