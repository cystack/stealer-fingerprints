# Category Stealer

Unidentified Category-block stealer observed inside the
`@BRADMAX 20000 APRIL-MAY` and `@bugatti_cloud` aggregator
packs. The `Information.txt` is divided into three
`Category:` sections each separated by a 60-character dash
divider, with column-aligned key/value records under each.
Family attribution is provisional pending a published
threat-intel mapping for this layout.

**Variants observed:** 2
**Total observations:** 5
**Top attribution confidence:** `unknown`

## Variants

### `cystack_999ef900`

**Attribution confidence:** `unknown`

**Field keys:**
`Build ID`, `CPU`, `Category`, `Computer`, `Cores/Threads`, `Country`, `Displays`, `GPU`, `HWID`, `IP`, `Language`, `Local Time`, `OS`, `Path`, `RAM`, `Timezone`, `UTC Time`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
       _____ __                          __    _ ______           
  / ___// /_  ____ _____  ___  _____/ /_  (_) __/ /____  _____
  \__ \/ __ \/ __ `/ __ \/ _ \/ ___/ __ \/ / /_/ __/ _ \/ ___/
 ___/ / / / / /_/ / /_/ /  __(__  ) / / / / __/ /_/  __/ /    
/____/_/ /_/\__,_/ .___/\___/____/_/ /_/_/_/  \__/\___/_/     
                /_/                                           
                        t.me/RokuTeamNew_bot

Category: User
------------------------------------------------------------
Build ID:      5P1WWT7QD236BYTW50
Username:      <redacted>
Computer:      DESKTOP-QN313PI
HWID:          <redacted>
IP:            <redacted>
Country:       BD
Path:          <redacted>


Category: System
------------------------------------------------------------
OS:            Windows 10.0.19045 (Workstation) Windows 10 Pro (Build 19045)
Language:      en-US
Local Time:    2026-01-07 <ip>
UTC Time:      2026-01-07 <ip> UTC
Timezone:      UTC6


Category: Hardware
------------------------------------------------------------
CPU:           Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz
Cores/Threads: 2 / 4
RAM:           7.9 GB
GPU:           Intel(R) HD Graphics 520
Displays:      1024x819
```

### `cystack_f2b70568`

**Attribution confidence:** `unknown`

**Field keys:**
`Build ID`, `CPU`, `Category`, `Computer`, `Cores/Threads`, `Country`, `Displays`, `GPU`, `HWID`, `IP`, `Keyboards`, `Language`, `Local Time`, `OS`, `Path`, `RAM`, `System`, `Timezone`, `UTC Time`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
   _____ __                          __    _ ______           
  / ___// /_  ____ _____  ___  _____/ /_  (_) __/ /____  _____
  \__ \/ __ \/ __ `/ __ \/ _ \/ ___/ __ \/ / /_/ __/ _ \/ ___/
 ___/ / / / / /_/ / /_/ /  __(__  ) / / / / __/ /_/  __/ /    
/____/_/ /_/\__,_/ .___/\___/____/_/ /_/_/_/  \__/\___/_/     
                /_/                                           
                        t.me/RokuTeamNew_bot

Category: User
------------------------------------------------------------
Build ID:      44XN3H3LQFY28RQX22
Username:      <redacted>
Computer:      trav
HWID:          <redacted>
IP:            <redacted>
Country:       AU
Path:          <redacted>


Category: System
------------------------------------------------------------
OS:            Windows 10.0.26200 (Workstation) Windows 10 Home (Build 26200)
Language:      en-AU
System:        N/A
Keyboards:     N/A
Local Time:    2026-01-10 <ip>
UTC Time:      2026-01-10 <ip> UTC
Timezone:      UTC10


Category: Hardware
------------------------------------------------------------
CPU:           AMD Ryzen 5 7500F 6-Core Processor
Cores/Threads: 6 / 12
RAM:           31.6 GB
GPU:           NVIDIA GeForce RTX 5060, AMD Radeon(TM) Graphics, NVIDIA GeForce RTX 5070, Meta Virtual Monitor
Displays:      2560x1080
```

## Detection

Three `Category:` headers separated by 60-dash dividers,
with column-aligned (rather than dash-prefixed) field rows,
is the cleanest signature. A stripped variant emits only
the `User` and `System` blocks with the `Hardware` block
dropped.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
