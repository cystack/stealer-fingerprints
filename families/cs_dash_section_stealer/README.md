# CSDashSectionStealer

CSDashSectionStealer is a CyStack-coined identifier for an
unidentified dash-section `SystemInfo.txt` variant observed
inside `@stealerboss` distribution packs nested under
`Autofill/[OF - NEW @kir3info]_<random>/` subfolders. The body
opens with HWID, IP, location, and locale fields, then a
`----- System info:` separator introducing CPU, GPU, and
hardware records.

**Also known as:** `@stealerboss dash-section variant`

**Variants observed:** 1
**Top attribution confidence:** `low`
**Operator panel brands:** `----- System info: 5-dash sections`
**Distribution channels:** `@stealerboss`

## Variants

### `----- System info: 5-dash sections`

**Fingerprint id:** `system_info_5_dash_sections`

**Distribution channel:** `@stealerboss`

**Attribution confidence:** `low`

**Field keys:**
`Arch`, `CPU`, `Cat Purrtrol`, `Cats and Seek`, `City`, `Counter-Strike`, `Country`, `Deep Rock Galactic`, `Eronoctosis`, `GPU`, `Gas Station Simulator`, `HWID`, `HerrAnwalt`, `IP`, `Liftoff`, `Locale`, `OS`, `PUBG`, `Quarantine Zone`, `RAM`, `RE`, `RISK`, `Region`, `STALCRAFT`, `Schedule I`, `Serious Sam Classic`, `Serious Sam Classics`, `Size`, `Sky`, `Sonic Racing`, `Supermarket Simulator`, `The Elder Scrolls V`, `Timezone`, `Uncrashed`, `Username`, `Watch Dogs`, `Zombie Army 4`, `Zoo 2`

**Filenames:** `SystemInfo.txt`

**Sample (sanitized):**

```
HWID: <redacted>
IP: <redacted>
Country: Andorra
City: <redacted>
Region: Escaldes-Engordany
zip: <redacted>

----- System info:
Username: <redacted>
Locale: es_ES
Arch: x64
Timezone: UTC +1 hour(s)
CPU: 13th Gen Intel(R) Core(TM) i9-13900K
OS: Windows 10 Pro 24H2
RAM: 65321Mb

----- Display info:
Size: 2560x1440
GPU:
	NVIDIA GeForce RTX 4090 
	NVIDIA GeForce RTX 4090 
	NVIDIA GeForce RTX 4090 
	

----- Installed apps:
Armoury Crate Service
Beauty Box
JDownloader 2
Maxon App
Maxon Cinema 4D 2025
Microsoft Project Profesional 2024 - es-es
Microsoft Office LTSC Profesional Plus 2024 - es-es
ReelSmart Motion Blur v5 for After Effects and Premiere Pro
Riot Vanguard
Universe
VFX Suite
Microsoft Visio LTSC Profesional 2024 - es-es
VLC media player
WinRAR 7.13 (64-bit)
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664
[... truncated; full sample at ``sample.txt`` (approx. 36 more lines) ...]
```

## Detection

The `----- System info:` literal (five dashes, space, colon)
is unique to this format among parsers in this catalog. Pair
with `HWID:` GUID-shaped value and the `@stealerboss` channel
reference in the buy-now banner to confirm.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
