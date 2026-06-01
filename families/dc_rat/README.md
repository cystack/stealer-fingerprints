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

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies (plugin modules: Plugin_AutoStealer)
- Keystroke capture (Plugin_AutoKeylogger)
- Clipboard contents
- Remote shell command execution
- WMI-enumerated machine fingerprint (motherboard, BIOS, monitors)
- Installed antivirus and firewall product detection

## Variants

### `cystack_874d2bb5`

**Attribution confidence:** `high`

**Field keys:**
`Antivirus`, `BIOS`, `CPU Cores`, `CPU Name`, `City`, `Country`, `Firewall`, `GPU Mode`, `GPU Name`, `IP`, `LANIP`, `Location`, `Monitors`, `Motherboard`, `PC Name`, `Path`, `RAM`, `Save Time`, `User Name`, `Windows`

**Filenames:** `Information [ID, Batam].txt`, `Information [ID].txt`, `Information [IN, Sibsu0101gar].txt`, `Information [IN].txt`

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
