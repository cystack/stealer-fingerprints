# CSCountOfCpuStealer

CSCountOfCpuStealer is a CyStack-coined identifier for a
Python-shaped `UserInformation.txt` panel observed inside
`<MONTH DAY> - <count> LOGS.part<N>.rar` aggregator packs
at `<30-char alphanum>-XT/UserInformation.txt` victim
folders. The body is a flat `Key: Value` block split into
an identity header (`Timezone:`, `Time:`, `Username:`,
`PC Name:`, `OS:`, `HWID:`), a hardware-identifier block
(`BIOS Serial Number:`, `Machine GUID:`, `BaseBoard
Manufacturer:`), a `Network:` section with ipapi.co-style
geolocation (`IP:`, `Country:`, `Region:`, `City:`,
`Postal:`), a `Hardwares:` section (`CPU:`, `Count of CPU
cores:`, `Count of CPU threads:`, `GPU:`, `Screen
Resolution:`), and a bare RAM triple (`RAM:`, `RAM
Available:`, `RAM Used:`).

Multiple details in the format read as hand-rolled Python
rather than a compiled C# or NodeJS panel. `Time:` is
written in `time.asctime()` shape (`Sun Dec 17 11:24:02
2023`). `Timezone:` uses the Olson (IANA) form
(`Africa/Accra`) that `zoneinfo` / `time.tzname` return.
`Postal: None` writes the Python `None` literal verbatim
when the ipapi.co lookup returns no postal code. The
verbose `Count of CPU cores:` and `Count of CPU threads:`
keys read like an f-string that composed the label from a
`psutil.cpu_count(logical=False)` / `psutil.cpu_count()`
call. `RAM:` values use `X.XX GB` decimal-GB units, not
the `MB` or `bytes` shapes canonical C# panels emit.

Family attribution is provisional pending a published
threat-intel mapping for this exact caption format.
Curated CTI vendors (TrendMicro, SentinelOne Labs,
Kaspersky SecureList, Cyfirma, SOCRadar, Cloudflare
Cloudforce One, Talos, Unit 42, Microsoft TI, Mandiant,
Recorded Future, eSentire, ANY.RUN) and community
catalogues (MalBeacon what-is-this-stealer, deepdarkCTI,
Malpedia, lexfo/stealer-parser, thredb/sysinfo-parser)
do not document this exact `Count of CPU cores:` +
`Postal: None` combination. The closest Python-hand-rolled candidates surveyed (Blank Grabber, XillenStealer,
Inf0s3c) either use a different filename
(`Information.txt`), a different banner (`<name> got a
new victim:`), or different field vocabulary (`Computer
Name:` + `Total Memory:` + `UUID:` rather than `PC Name:`
+ `RAM:` + `HWID:` + `Machine GUID:`).

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `LOGS-pack Python-shaped UserInformation panel`, `Count-of-CPU verbose-key UserInformation panel`
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies (harvested in sibling files)
- Host and hardware fingerprint (HWID, Machine GUID, BIOS Serial, BaseBoard Manufacturer)
- Public IP and coarse geolocation (country, region, city, postal)
- Locale and OS build (timezone, Windows version)
- CPU, GPU, screen resolution, and RAM inventory

## Detection notes

Fingerprint requires both line-anchored keys `Count of
CPU cores:` and `Count of CPU threads:`. The verbose
`Count of` key prefix is unique in the catalog:
canonical Lumma uses `- CPU Cores:` / `- CPU Threads:`
with the dash bullet, DataMonk uses bare `CPU Cores:` /
`CPU Threads:`, CSCountCoreStealer uses the transposed
singular `Count Core:`, the user-info bracket template uses
`Logical Cores:`, and Redline uses the WMI
`Name: Intel(R) ..., N Cores`
shape. False-positive risk is low. Treat the family
attribution as unknown during triage: the panel is
clearly Python-hand-rolled per the `Postal: None`
literal and the ipapi.co geolocation triple, but no
public writeup maps this caption to a named family.
Downstream consumers can filter on the `CSCountOfCpu
Stealer` family literal to segregate the discovery.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Blank Grabber](../blank-grabber/)

## Related external families

- `xillenstealer`
- `inf0s3c-stealer`

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://blog.lexfo.fr/infostealer-parser.html>
- <https://github.com/thredb/sysinfo-parser>
- <https://cyble.com/blog/lummac2-stealer-a-potent-threat-to-crypto-users/>

Machine-readable record: [family.json](family.json)
