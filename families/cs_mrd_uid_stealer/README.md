# CSMrdUidStealer

CSMrdUidStealer is a CyStack-coined identifier for an
info-stealer `_Information.txt` panel observed inside
`!! 2025 DEC.part01.rar` aggregator packs at
`<id>_<CC>_<IPv4>_<DD-MM-YY>/_Information.txt` victim
folders. The body is a 12-line flat `Key: Value` block
followed by three labelled sections (`Installed software:`,
`Disk:`, `Process:`).

Two on-disk quirks pin the format. The `UID:` field carries
a `mrd-<16-hex>` prefix that no documented stealer uses
(Vidar / Lumma / Redline / Raccoon / Mars / Oski / StealC
all emit bare hex / GUID / volume-serial-derived HWIDs
without a literal prefix). The `DateTime:` line splits two
timestamps onto one row with a `||` pipe-pipe separator:
`DateTime: <DD.MM.YYYY> || Registration: <DD.MM.YYYY
HH:MM:SS>`. `DateTime` is the panel-side log-emission date,
`Registration` is an earlier date (often years prior) the
panel records as the victim`s first-seen timestamp.

Three sub-quirks reinforce the fingerprint. `CPU: <name>
<spaces> core <N>` appends a panel-side core / thread
count after the WMI processor name. `RAM: physical <N>MB ,
virtual <N>MB` reports both physical and virtual totals on
one line with comma-space separation. `Display Resolution:
<W> x <H>` uses spaces around the `x` separator (rather
than the tight `WxH` form most stealers emit).

Family attribution is provisional. A two-vendor curated
CTI survey (TrendMicro, SentinelOne Labs, Kaspersky,
Cyfirma, SOCRadar, Cloudflare, Talos, ANY.RUN, Microsoft
TI, Mandiant / Google TAG, Recorded Future, eSentire,
Cybereason, BleepingComputer, CERT-AGID, Drweb, Proofpoint,
Unit 42) and the public stealer-format catalogues
(MalBeacon / what-is-this-stealer, fastfire / deepdarkCTI,
Malpedia, RussianPanda blog, Lexfo infostealer-parser deep-
dive) do not document a family that emits this exact field
combination. Mars Stealer collects an overlapping subset
(`Keyboard Languages`, `Display Resolution`, `Installed
RAM`) per Sekoia and XJunior, but ships a different on-
disk layout with bracket-delimited sections rather than
this bare-key flat shape.

**Also known as:** `mrd-UID Information.txt panel`, `Dual-date Registration stealer log`

**Variants observed:** 3
**Top attribution confidence:** `unknown`

## Targets

- Browser-saved credentials (panel ships an Installed software
enumeration but the surveyed sample has the section empty)
- Victim hostname / username
- Hardware fingerprint (UID, OS, CPU, GPU, RAM)
- Process snapshot (bare process names, no PID)
- Disk inventory (per-drive total / free space)

## Variants

### `cystack_7c108e60`

**Attribution confidence:** `unknown`

**Field keys:**
`CPU`, `ComputerName`, `DateTime`, `Disk`, `Display Resolution`, `GPU`, `Installed software`, `Keyboard Languages`, `OS`, `Process`, `RAM`, `UID`, `UserAgent`, `UserName`

**Filenames:** `_Information.txt`

**Sample (sanitized):**

```
UID: mrd-E7B27F68D05C6948
UserName: <redacted>
ComputerName: DESKTOP-47OU7GF
OS: Windows 10 Home x64
DateTime: 04.05.2023 || Registration:  21.12.2022 <ip>
UserAgent: 
Keyboard Languages: French
Display Resolution: 1024 x 768
CPU: AMD Ryzen 5 PRO 4650G with Radeon Graphics core 12
RAM: physical 2047MB , virtual 2047MB
GPU: AMD Radeon(TM) Graphics
isGodMod: no
isAdmin: yes

Installed software:
Windows Driver Package - Advanced Micro Devices, Inc. AMD-RAID Config Device (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Windows Driver Package - Advanced Micro Devices, Inc. (rcbottom) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Windows Driver Package - Advanced Micro Devices, Inc. (rcraid) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Windows Driver Package - Advanced Micro Devices, Inc. (rcbottom) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
AMD Software [22.5.1]
Windows Driver Package - Advanced Micro Devices, Inc. (rcbottom) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Git [2.38.1]
HWiNFO64 Version 7.26 [7.26]
Microsoft Visual J# 2.0 Redistributable Package - SE (x64) []
Notepad++ (64-bit x64) [8.4.6]
WinRAR 6.11 (64-bit) [6.11.0]
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 [12.0.40664]
AMD WVR64 [1.0.2]
Documentation Manager [<ip>]
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 [10.0.40219]
Allgemeine Runtime Files (x86) [<ip>]
Java 8 Update 251 (64-bit) [8.0.2510.8]
Branding64 [1.00.0009]
AMD Settings [2022.0428.0341.6645]
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61135 [11.0.61135]
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 [12.0.40664]
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.7523 [9.0.30729.7523]
Microsoft Visual C++ 2019 X64 Additional Runtime - 14.28.29913 [14.28.29913]
Microsoft Update Health Tools [<ip>]
Node.js [18.12.1]
[... truncated; full sample at ``sample.txt`` (approx. 237 more lines) ...]
```

### `cystack_a2d5a331`

**Attribution confidence:** `unknown`

**Field keys:**
`CPU`, `ComputerName`, `DateTime`, `Disk`, `Display Resolution`, `GPU`, `Installed software`, `Keyboard Languages`, `OS`, `Process`, `RAM`, `UID`, `UserName`

**Filenames:** `_Information.txt`

**Sample (sanitized):**

```
UID: mrd-EAD80EE46D67C97E
UserName: <redacted>
ComputerName: DESKTOP-7STVFK2
OS: Windows 10 Enterprise x64
DateTime:  14.09.2023 22.05.2023 <ip>
Keyboard Languages: English
Display Resolution: 1920 x 1080
CPU: Intel(R) Celeron(R) CPU  J3060  @ 1.60GHz core 2
RAM: physical 2047MB , virtual 2047MB
GPU: Intel(R) HD Graphics
isGodMod: no
isAdmin: no

Installed software:
Autodesk AutoCAD 2016 - English [<ip>]
Autodesk Content Service [<ip>]
Autodesk ReCap [<ip>]
Autodesk ReCap 2016 [<ip>]
BlueStacks 5 [5.10.0.1085]
Dassault Systemes Software B17 []
Microsoft OneDrive [23.096.0507.0001]
RAV Endpoint Protection [5.7.15]
TAP-Windows 9.21.2 [9.21.2]
VLC media player [3.0.11]
WinRAR 5.91 (64-bit) [5.91.0]
MiniTool Partition Wizard Free 12.7 [12.7]
Autodesk ReCap [<ip>]
Autodesk ReCap Language Pack-English [<ip>]
Hindi Indic Input 2 [1.1.5]
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.4148 [9.0.30729.4148]
Autodesk BIM 360 Glue AutoCAD 2016 Add-in 64 bit [4.35.1742]
AutoCAD 2014 - English [<ip>]
AutoCAD 2014 Language Pack - English [<ip>]
AutoCAD 2014 - English [<ip>]
AutoCAD 2016 [<ip>]
ACAD Private [<ip>]
AutoCAD 2016 Language Pack - English [<ip>]
AutoCAD 2016 - English [<ip>]
ACA & MEP 2016 Object Enabler [<ip>]
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161 [9.0.30729.6161]
[... truncated; full sample at ``sample.txt`` (approx. 275 more lines) ...]
```

### `cystack_c4068d09`

**Attribution confidence:** `unknown`

**Field keys:**
`CPU`, `ComputerName`, `DateTime`, `Display Resolution`, `GPU`, `Installed software`, `Keyboard Languages`, `OS`, `RAM`, `UID`, `UserAgent`, `UserName`

**Filenames:** `_Information.txt`

**Sample (sanitized):**

```
UID: mrd-A355A97A83432AF2
UserName: <redacted>
ComputerName: LANNE
OS: Windows 10 Enterprise x64
DateTime: 04.05.2023 || Registration:  27.02.2023 <ip>
UserAgent: 
Keyboard Languages: Spanish
Display Resolution: 1440 x 900
CPU: Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz core 4
RAM: physical 2047MB , virtual 2047MB
GPU: Intel(R) HD Graphics
isGodMod: no
isAdmin: yes

Installed software:
Paquete de controladores de Windows - Adafruit Industries LLC (usbser) Ports  (02/25/2016 6.2.2600.0) [02/25/2016 6.2.2600.0]
Windows Driver Package - Arduino LLC (www.arduino.cc) Arduino USB Driver (01/04/2013 <ip>) [01/04/2013 <ip>]
Paquete de controladores de Windows - libusb-win32 (libusb0) libusb-win32 devices  (04/21/2015 <ip>) [04/21/2015 <ip>]
Paquete de controladores de Windows - Arduino Srl (www.arduino.org) Arduino USB Driver (03/19/2015 <ip>) [03/19/2015 <ip>]
Paquete de controladores de Windows - Arduino LLC (www.arduino.cc) Arduino USB Driver (11/24/2015 <ip>) [11/24/2015 <ip>]
Paquete de controladores de Windows - Linino (usbser) Ports  (01/13/2014 <ip>) [01/13/2014 <ip>]
Avast Free Antivirus [23.1.6049]
CCleaner [6.09]
Paquete de controladores de Windows - Arduino LLC (www.arduino.cc) Genuino USB Driver (01/07/2016 <ip>) [01/07/2016 <ip>]
Desinstalador de impresoras EPSON TX525FW Series []
Microsoft Office Professional Plus 2016 [16.0.4266.1001]
WinRAR 5.70 (64-bit) [5.70.0]
Corel Graphics - Windows Shell Extension [<ip>]
CorelDRAW Graphics Suite X8 (64-Bit) [<ip>]
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 [12.0.40664]
CorelDRAW Graphics Suite X8 - Custom Data (x64) [18.0]
CorelDRAW Graphics Suite X8 - PHOTO-PAINT (x64) [18.0]
Microsoft Visual C++ 2005 Redistributable (x64) [8.0.56336]
CorelDRAW Graphics Suite X8 - FR (x64) [18.0]
CorelDRAW Graphics Suite X8 - Capture (x64) [18.0]
CorelDRAW Graphics Suite X8 - Workspaces (x64) [18.0]
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 [10.0.40219]
Rhino Installer Engine [7.1.20343.09491]
[... truncated; full sample at ``sample.txt`` (approx. 370 more lines) ...]
```

## Detection

Fingerprint requires `UID: mrd-` substring AND
`|| Registration:` substring. Both anchors are unique
across the registry: the `mrd-` UID prefix is not
documented by any surveyed stealer family, and the
pipe-pipe-separated dual-date line on a single key value
is the panel`s developer-side quirk. During triage, treat
the `DateTime:` half as the panel-side log-emission
timestamp (recent) and the `Registration:` half as the
first-seen / account-creation timestamp (often years
older). The `CPU:` value carries a trailing `core <N>`
count that the parser strips; the bare model name is
emitted as `device.cpu`.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)
- [T1083 File and Directory Discovery](https://attack.mitre.org/techniques/T1083/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)

## Related families

- [`mars-stealer`](../mars_stealer/)
- [`oski-stealer`](../oski_stealer/)
- [`vidar`](../vidar/)

## References

- https://blog.sekoia.io/mars-a-red-hot-information-stealer/
- https://x-junior.github.io/malware%20analysis/2022/05/19/MarsStealer.html
- https://blog.lexfo.fr/infostealer-parser.html
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
