# DCRat

DCRat (Dark Crystal RAT, DarkCrystal RAT) is a .NET-based
remote access trojan plus info-stealer that has been sold
as malware-as-a-service since at least 2019. Mandiant /
Google Cloud, Splunk, Fortinet, SentinelOne, ANY.RUN,
BleepingComputer, Cyberint, and Malpedia track the family
under the canonical literal DCRat. CERT-UA has flagged
DCRat campaigns against Ukrainian defense and government
targets, attributed to Russia-aligned operators (Sandworm
plus other clusters).

The harvested log opens with a five-line Figlet `small`-
font ASCII-art banner spelling `Dark Crystal RAT`, then a
horizontal-rule line of em-dashes, then four flat
`Key: Value` blocks separated by blank lines. The first
block carries WMI hardware enumeration including `PC
Name`, `User Name`, `Windows` version, `CPU Name`,
`CPU Cores` (with parenthesised logical-thread count),
`GPU Name`, `GPU Mode` (WxH x color-depth triple),
`Motherboard` (Win32_BaseBoard SMBIOS string), `BIOS`
(Win32_BIOS string), `Antivirus`, `Firewall`, `RAM`
(locale-aware comma decimal), and `LANIP`. The second
block reports the .NET Framework version and the install
path (DCRat typically masquerades as a fake system service
binary, for example `fontdrvhost.exe` under a typo-
squatted `MsHyperserverBrokersvc` folder). The third block
is geolocation (`IP`, `City`, `Country` as `CC / Name`,
`Location` as latitude / longitude). The tail reports the
monitor list and `Save Time` in `DD.MM.YYYY HH:MM`
European format.

**Also known as:** `Dark Crystal RAT`, `DarkCrystal RAT`, `dcRAT`

**Variants observed:** 3
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies (plugin modules: Plugin_AutoStealer)
- Keystroke capture (Plugin_AutoKeylogger)
- Clipboard contents
- Remote shell command execution
- WMI-enumerated machine fingerprint (motherboard, BIOS, monitors)
- Installed antivirus and firewall product detection

## Variants

### `cystack_7508f5a5`

**Attribution confidence:** `high`

**Field keys:**
`Antivirus`, `BIOS`, `CPU Name`, `City`, `Country code`, `Firewall`, `Framework Version`, `GPU Name`, `IP`, `LANIP`, `Location`, `Motherboard`, `PC Name`, `Path`, `RAM`, `Screens`, `User Name`, `Windows`

**Filenames:** `Information [AR, Buenos Aires].txt`, `Information [AR, Tandil].txt`, `Information [AR, Tigre].txt`, `Information [AT, Klagenfurt am WÃ¶rthersee].txt`, `Information [BA, Sarajevo].txt`, `Information [BD, Dhaka].txt`, `Information [BG, Isperih].txt`, `Information [BR, Alta Floresta].txt`, `Information [BR, Ariquemes].txt`, `Information [BR, Batatais].txt`, `Information [BR, Boa Viagem].txt`, `Information [BR, Canoinhas].txt`, `Information [BR, Curitiba].txt`, `Information [BR, Itapuranga].txt`, `Information [BR, JoÃ£o Pessoa].txt`, `Information [BR, Mateus Leme].txt`, `Information [BR, Nova VenÃ©cia].txt`, `Information [BR, PlÃ¡cido de Castro].txt`, `Information [BR, Recife].txt`, `Information [CL, ConcepciÃ³n].txt`, `Information [CL, Talca].txt`, `Information [CL, Temuco].txt`, `Information [CO, BogotÃ¡].txt`, `Information [DE, Dresden].txt`, `Information [DE, Karlsruhe].txt`, `Information [DE, NÃ¼rnberg].txt`, `Information [DE, Paderborn].txt`, `Information [DO, Santo Domingo Este].txt`, `Information [DZ, Chlef].txt`, `Information [DZ, Sأ©tif].txt`, `Information [EE, Rakvere].txt`, `Information [EG, Alexandria].txt`, `Information [EG, Cairo].txt`, `Information [EG, Damanhإ«r].txt`, `Information [GB, London].txt`, `Information [GB, Shrewsbury].txt`, `Information [HU, Budapest].txt`, `Information [HU, PĂ©cs].txt`, `Information [HU, Rakamaz].txt`, `Information [ID, Cikarang].txt`, `Information [ID, Jakarta].txt`, `Information [ID, Klaten].txt`, `Information [ID, Palembang].txt`, `Information [ID, Surabaya].txt`, `Information [ID, Tangerang].txt`, `Information [IL, Tel Aviv].txt`, `Information [IN, Bhavnagar].txt`, `Information [IN, Cochin].txt`, `Information [IN, Guwahati].txt`, `Information [IN, Hyderabad].txt`, `Information [IN, Kurnool].txt`, `Information [IN, Lucknow].txt`, `Information [IN, Mumbai].txt`, `Information [IN, New Delhi].txt`, `Information [IN, Pune].txt`, `Information [IN, Siliguri].txt`, `Information [IQ, Baghdad].txt`, `Information [IQ, Nasiriyah].txt`, `Information [KR, Seoul].txt`, `Information [LB, Beirut].txt`, `Information [LK, Colombo].txt`, `Information [LT, Vilnius].txt`, `Information [LY, Tripoli].txt`, `Information [MA, Casablanca].txt`, `Information [MA, Marrakesh].txt`, `Information [PE, Arequipa].txt`, `Information [PE, Lima].txt`, `Information [PH, Batangas].txt`, `Information [PH, Cebu City].txt`, `Information [PH, Lacson].txt`, `Information [PK, Hazro City].txt`, `Information [PK, Rawalpindi].txt`, `Information [PK, Vihari].txt`, `Information [PL, MyĹ›lenice].txt`, `Information [PL, Warsaw].txt`, `Information [PT, PÃ³voa de Santa Iria].txt`, `Information [RO, SebeÅŸ].txt`, `Information [RO, Sibiu].txt`, `Information [RU, Makhachkala].txt`, `Information [RU, Nizhniy Novgorod].txt`, `Information [RU, Perm].txt`, `Information [RU, Topki].txt`, `Information [RU, Ulan-Ude].txt`, `Information [RU, Yekaterinburg].txt`, `Information [SG, Singapore].txt`, `Information [SI, Novo Mesto].txt`, `Information [SK, KomĂˇrno].txt`, `Information [TH, Bangkok].txt`, `Information [TH, Chiang Mai].txt`, `Information [TH, Khon Kaen].txt`, `Information [TH, Samut Sakhon].txt`, `Information [TR, Adana].txt`, `Information [TR, Bursa].txt`, `Information [TR, DÃ¼zce].txt`, `Information [TR, Istanbul].txt`, `Information [TR, Konya].txt`, `Information [TR, Ä°zmir].txt`, `Information [UA, Kyiv].txt`, `Information [UA, Lviv].txt`, `Information [UA, Tomakivka].txt`, `Information [US, Ashburn].txt`, `Information [VN, LÃ o Cai].txt`, `Information [VN, Viá»‡t TrÃ¬].txt`, `Information [XX, Unknown].txt`

**Sample (sanitized):**

```
  ___           _      ___             _        _   ___    _ _____ 
 |   \ __ _ _ _| |__  / __|_ _ _  _ __| |_ __ _| | | _ \  /_\_   _|
 | |) / _` | '_| / / | (__| '_| || (_-<  _/ _` | | |   / / _ \| |  
 |___/\__,_|_| |_\_\  \___|_|  \_, /__/\__\__,_|_| |_|_\/_/ \_\_|  
                               |__/                                
-------------------------------------------------------------------
PC Name: DESKTOP-QH7H1AK
User Name: <redacted>
Windows: Windows 10 Pro 64 Bit
GPU Name: NVIDIA GeForce GT 710
CPU Name: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
BIOS: American Megatrends Inc.
LANIP: <ip>
Antivirus: Windows Defender
Firewall: N/A
Motherboard: Gigabyte Technology Co., Ltd.Default string
RAM: 15590
Framework Version: 4.8+
Path: <redacted>

IP: <redacted>
City: <redacted>
Country code: XX
Location: Unknown

Screens: 
\\.\DISPLAY1 @ 1920x1080
\\.\DISPLAY2 @ 1280x1024
```

### `cystack_874d2bb5`

**Attribution confidence:** `high`

**Field keys:**
`Antivirus`, `BIOS`, `CPU Cores`, `CPU Name`, `City`, `Country`, `Firewall`, `GPU Mode`, `GPU Name`, `IP`, `LANIP`, `Location`, `Monitors`, `Motherboard`, `PC Name`, `Path`, `RAM`, `Save Time`, `User Name`, `Windows`

**Filenames:** `Information [ID, Batam].txt`, `Information [ID].txt`, `Information [IN, Sibsu0101gar].txt`, `Information [IN].txt`, `Information [PH, Bacolod City].txt`, `Information [PK, Faisalabad].txt`, `Information [TZ, Dar es Salaam].txt`, `Information [UG, Kampala].txt`, `Information [VN, Hanoi].txt`, `Information [VN, Ho Chi Minh City].txt`, `Information [VN, Quu1eadn Phu00fa Nhuu1eadn].txt`, `Information [VN, Tu00e2n Tiu1ebfn].txt`

**Sample (sanitized):**

```
  ___           _      ___             _        _   ___    _ _____ 
 |   \ __ _ _ _| |__  / __|_ _ _  _ __| |_ __ _| | | _ \  /_\_   _|
 | |) / _` | '_| / / | (__| '_| || (_-<  _/ _` | | |   / / _ \| |  
 |___/\__,_|_| |_\_\  \___|_|  \_, /__/\__\__,_|_| |_|_\/_/ \_\_|  
                               |__/                                
———————————————————————————————————————
PC Name: GREDDY
User Name: <redacted>
Windows: Windows 10 Home 64 Bit
CPU Name: 11th Gen Intel(R) Core(TM) i5-11400H @ 2.70GHz (Intel64 Family 6 Model 141 Stepping 1)
CPU Cores: 6 (12)
GPU Name: NVIDIA GeForce RTX 2050 (4 GB)
GPU Mode: 1920 x 1080 x 4294967296 colors
Motherboard: ASUSTeK COMPUTER INC. FX506HF (R520NRCX005KXNMB)
BIOS: FX506HF.312 (_ASUS_ - 1072009)
Antivirus: Windows Defender
Firewall: Unknown
RAM: 15,74 GB
LANIP: <ip>

.NET Framework Version: 4.8+
Path: <redacted>

IP: <redacted>
City: <redacted>
Country: ID / Indonesia
Location: 1.0265 / 103.9259

Monitors: 
Unknown

Save Time: 21.06.2025 16:28
```

### `cystack_9303ddc1`

**Attribution confidence:** `high`

**Field keys:**
`Antivirus`, `BIOS`, `CPU Cores`, `CPU Name`, `City`, `Country Code`, `Firewall`, `GPU Mode`, `GPU Name`, `IP`, `LANIP`, `Location`, `Monitors`, `Motherboard`, `PC Name`, `Path`, `RAM`, `Save Time`, `User Name`, `Windows`

**Filenames:** `Information [BR, Belford Roxo].txt`, `Information [CL, Quilpu��].txt`

**Sample (sanitized):**

```
  ___           _      ___             _        _   ___    _ _____ 
 |   \ __ _ _ ___  / __|_ _ _  _ ___ __ _ | _ \  /_\_   _|
 ) / _` | '_| / / | (__| '_| (_-<  _/ _`  |   / / _ \  
 |___/\__,_|__\_\  \___|_|  \_, /__/\__\__,_|__|_\/_/ \_\_|  
                               |__/                                
———————————————————————————————————————
PC Name: MATHEUS
User Name: <redacted>
Windows: Windows 10 Enterprise 64 Bit
CPU Name: AMD Ryzen 5 3600 6-Core Processor               (AMD64 Family 23 Model 113 Stepping 0)
CPU Cores: 6 (12)
GPU Name: NVIDIA GeForce RTX 3060 (12 GB)
GPU Mode: 1920 x 1080 x 4294967296 cores
Motherboard: ASUSTeK COMPUTER INC. TUF GAMING A520M-PLUS (210382745800134)
BIOS: 2423 (ALASKA - 1072009)
Antivirus: Windows Defender
Firewall: Unknown
RAM: 15,91 GB
LANIP: <ip>

.NET Framework Version: 4.8+
Path: <redacted>

IP: <redacted>
City: <redacted>
Country Code: BR
Location: -22.7034,-43.3854

Monitors: 
\\.\DISPLAY1 @ 1920x1080

Save Time: 05.03.2023 16:30
```

## Detection

The Figlet `small`-font `Dark Crystal RAT` ASCII banner is
the cleanest fingerprint. The detector class
`logmine.detection.rats.DCRat` and the parser share the
banner literal as their anchor so attribution stays
consistent across both layers. The .NET / WMI enumeration
profile plus the `MsHyperserverBrokersvc` style fake-
service install path is the secondary confidence signal.
Mandiant`s analysis notes plugin identifiers like
`DCRatBuild`, `DCStlr`, `Plugin_AutoStealer`, and
`Plugin_AutoKeylogger` in the binary; defenders triaging
a victim host should hunt for those strings in process
memory or on disk to confirm the family.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1056.001 Keylogging](https://attack.mitre.org/techniques/T1056/001/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1083 File and Directory Discovery](https://attack.mitre.org/techniques/T1083/)
- [T1071.001 Application Layer Protocol: Web Protocols](https://attack.mitre.org/techniques/T1071/001/)
- [T1218 System Binary Proxy Execution](https://attack.mitre.org/techniques/T1218/)

## References

- https://cloud.google.com/blog/topics/threat-intelligence/analyzing-dark-crystal-rat-backdoor
- https://www.splunk.com/en_us/blog/security/dark-crystal-rat-agent-deep-dive.html
- https://malpedia.caad.fkie.fraunhofer.de/details/win.dcrat
- https://any.run/malware-trends/dcrat/
- https://thehackernews.com/2025/03/cert-ua-warns-dark-crystal-rat-targets.html
