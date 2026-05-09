# CSWmicDumpStealer

CSWmicDumpStealer is a CyStack-coined identifier for a
snake_case `system_info.txt` panel observed inside
`!! 2026 JAN.part01.rar` aggregator packs distributed via
Telegram log channels. Per-victim folders follow a
`<id>_<2-hex>_<ip>_<DD-MM-YY>/system_info.txt` layout. The
body opens with an uppercase `=== SYSTEM INFORMATION ===`
header and is composed of snake_case `key: value` lines
where many of the values are raw stdout from Windows
command-line tools: `wmic baseboard get`, `wmic bios get`,
`wmic memorychip get`, `wmic memphysical get`, `wmic
diskdrive get`, `wmic computersystem get`, `wmic path
Win32_VideoController get`, `wmic os get LastBootUpTime`,
plus `ipconfig /all` and `ver`. The fixed-width WMIC tabular
output is captured verbatim, with the column-header row
sitting on the same line as the field key.

The snake_case naming convention plus the "shell out to
wmic and stash the stdout" pattern strongly suggests a
Python-based stealer (`subprocess.check_output("wmic ...")`
shape) but no surveyed Python-stealer write-up
(Inf0s3c, XillenStealer, Akira, ExelaStealer, BlankGrabber)
documents this exact field set.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed curated CTI
sources (TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare / Cloudforce One, Talos, Unit 42,
Microsoft TI, BleepingComputer, ANY.RUN, Drweb, Sekoia,
Esentire) plus public stealer-format catalogues
(`MalBeacon/what-is-this-stealer`, `fastfire/deepdarkCTI`)
do not document a family using this exact snake_case field
set. The `CSWmicDumpStealer` literal preserves the panel's
most distinctive trait (raw WMIC stdout dumped into
snake_case fields) as the suffix; rename the family
constant if a curated CTI report later identifies the
underlying builder.

**Variants observed:** 1
**Total observations:** 4
**Top attribution confidence:** `unknown`
**Operator panel brands:** `snake_case wmic-dump system_info.txt`

## Targets

- System hardware and locale inventory
- Network configuration and adapter details
- BIOS / motherboard / disk serial numbers

## Variants

### `snake_case wmic-dump system_info.txt`

**Fingerprint id:** `snake_case_wmic_dump_system_info_txt`

**Attribution confidence:** `unknown`

**Field keys:**
`Ethernet adapter Ethernet`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
=== SYSTEM INFORMATION ===

cpu_cores: 12
motherboard_info: Manufacturer  Product         SerialNumber     Version  

JGINYUE       X99M-G D3/ARGB  MB-202412042024  V2.0     
[... 4 blank lines ...]
os_build: Microsoft Windows [Version 10.0.19045.6456]
mac_addresses: 22-10-4D-05-18-F8
memory_slots: MaxCapacity  MemoryDevices  

8388608      12             

134217728    2              

134217728    2              
[... 4 blank lines ...]
os_version: 19045        Microsoft Windows 10 Pro  64-bit          00331-10000-00001-AA329  10.0.19045
bios_info: Manufacturer              ReleaseDate                SerialNumber    Version           

American Megatrends Inc.  20241204000000.000000+000  Default string  ALASKA - 1072009  
[... 4 blank lines ...]
last_boot_time: LastBootUpTime             

20260105154040.500000+420  
[... 4 blank lines ...]
ram: 15.91 GB
local_ips: <ip>(Preferred)
public_ip: <ip>
computer_name: DESKTOP-SRFGNPO
cpu: Intel(R) Xeon(R) CPU E5-2676 v3 @ 2.40GHz
ram_total: 15.91 GB
gpu_info: AdapterRAM  DriverVersion  Name                       

4293918720  32.0.15.6094   NVIDIA GeForce GTX 750 Ti  
[... 4 blank lines ...]
user_domain: DESKTOP-SRFGNPO
ram_modules: Capacity     Manufacturer  PartNumber        Speed  

17179869184  Samsung       M393B2G70QH0-YK0  1600   
[... truncated; full sample at ``sample.txt`` (approx. 49 more lines) ...]
```

## Detection

Requires the `=== SYSTEM INFORMATION ===` uppercase header
AND the `network_config_full:` snake_case key AND the
`user_domain:` snake_case key. PCInfoStealer uses the same
header but additionally requires `=== NETWORK INFO ===`
and `PC Username:`, neither of which appears here, so the
two parsers cannot collide. No other registered family
uses snake_case keys at all, so the snake_case markers
are sufficient to reject unrelated content.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1016 System Network Configuration Discovery](https://attack.mitre.org/techniques/T1016/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
