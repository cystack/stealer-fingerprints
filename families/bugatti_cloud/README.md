# Bugatti Cloud

Banner-only `information.txt` produced by the `@bugatti_cloud`
Telegram-channel distribution. Victim folders use a
config-style name pattern
(`AR_<ver>_Cty_<id>_rgn_<n>i_ll<n>i_eenable_itp_optimization0-<hwidpfx>`).
The system file content is a single line of ASCII-art banner
between pipe borders, with no field section at all; the
underlying stealer engine emits its banner without any
identity preamble.

**Variants observed:** 6
**Top attribution confidence:** `unknown`

## Variants

### `cystack_1aa0f2d0`

**Attribution confidence:** `unknown`

**Field keys:**
`Age of Empires III`, `Cores`, `Processor`, `RAM`, `Threads`, `VideoCard`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
|  _____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____  |
Processor: Intel(R) Core(TM) i7-9750H CPU @ 2.60GHz
Cores: 12
Threads: 12
RAM: 8032 MB
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
WUDFHost.exe
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
IntelCpHDCPSvc.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
IntelCpHeciSvc.exe
svchost.exe
svchost.exe
OmenCap.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 284 more lines) ...]
```

### `cystack_4b5f63c8`

**Attribution confidence:** `unknown`

**Field keys:**
`Cores`, `Processor`, `RAM`, `Threads`, `VideoCard`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
|  _____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____  |
Processor: Intel(R) Core(TM) i7-8665U CPU @ 1.90GHz
Cores: 8
Threads: 8
RAM: 16133 MB
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
IntelCpHeciSvc.exe
SynTPEnhService.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 189 more lines) ...]
```

### `cystack_58e9d59c`

**Attribution confidence:** `unknown`

**Field keys:**
`Cores`, `Evony`, `Processor`, `RAM`, `Threads`, `VideoCard`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
|  _____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____  |
Processor: Intel(R) Core(TM) i5-4300U CPU @ 1.90GHz
Cores: 4
Threads: 4
RAM: 7848 MB
VideoCard: Intel(R) HD Graphics Family

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
ibmpmsvc.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 217 more lines) ...]
```

### `cystack_7557887c`

**Attribution confidence:** `unknown`

**Field keys:**
`Cores`, `PUBG`, `Processor`, `RAM`, `Threads`, `VideoCard`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
|  _____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____  |
Processor: 11th Gen Intel(R) Core(TM) i5-11260H @ 2.60GHz
Cores: 12
Threads: 12
RAM: 16085 MB
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
igfxCUIServiceN.exe
svchost.exe
NVDisplay.Container.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 256 more lines) ...]
```

### `cystack_7d394cf9`

**Attribution confidence:** `unknown`

**Field keys:**
`Cores`, `Processor`, `RAM`, `Threads`, `Umamusume`, `VideoCard`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
|  _____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____  |
Processor: Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz
Cores: 8
Threads: 8
RAM: 7894 MB
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
dwm.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 226 more lines) ...]
```

### `cystack_c65f37b2`

**Attribution confidence:** `unknown`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
|  _____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____  |
```

## Detection

Single-line `information.txt` containing only an ASCII-art
banner between pipe borders. Companion folder layout uses the
long config-style suffix style, distinct from other
channel-specific layouts.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://heroic.com/darkhive-breaches/bugatti-cloud-telegram-stealer-log-july-2023-timeline/
- https://socradar.io/blog/top-stealer-log-telegram-channels/
