# CSSigInfoStealer

CSSigInfoStealer is a CyStack-coined identifier for a bare
`Key: Value` `Info.txt` panel that carries the Lumma-canonical
`(sig:UNIX.HEX)` watermark on the `Time:` line while using
Redline-style verbose field naming for the rest of the body.
Observed inside `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX`
aggregator packs in `[<CC>]<IP>/Info.txt` victim folders
(e.g. `[CA]142.223.240.246/Info.txt`).

Body fields: `Build Date`, `Configuration`, `Execution Path`,
`Elevated`, `Computer Name`, `User Name`, `User Language`,
`Netbios`, `Operation System` (sic typo), `Install Date`,
`System Date`, `Time Zone`, `Antivirus`, `HWID`, `Processor`,
`Processor Threads`, `Processor Cores`, `Graphics Card`,
`Installed RAM`, `Display Resolution`, `IP Address`, `Time`,
`Country`, `User`. The body is flat (no leading-dash prefix
unlike Lumma / Deimos / BABA / DarkSide / AL Stealer), no
operator banner (unlike Redline), and not YAML (unlike
Remus). Family attribution is provisional pending a published
threat-intel mapping for this exact bare-KV layout.

**Also known as:** `BRADMAX Info.txt with Lumma sig watermark`, `Bare-KV Redline-style panel with Lumma sig suffix`

**Variants observed:** 6
**Top attribution confidence:** `low`
**Distribution channels:** `@BRADLOGS`

## Targets

- Browser-saved credentials (count flag plus harvested body in sibling files)
- Host metadata: hostname, NetBIOS, Windows username, language
- OS fingerprint with build number and architecture
- Hardware inventory: CPU model with cores/threads, GPU, installed RAM
- Victim public IP plus ISO country code
- Wall-clock and time zone offset

## Variants

### `cystack_1b08183d`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `low`

**Field keys:**
`PLEASE NOTE`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```

WARCRAFT III KEYBOARD SHORTCUTS AND TOOLTIP CUSTOMIZATION
---------------------------------------------------------

Customization of command keyboard shortcuts can be accomplished by creating a file called "CustomKeys.txt" in the installed folder of Warcraft III. Entries in this file will override the existing default shortcuts. Additionally this file can be used to override default tooltips. The only utility required to create this custom file is a simple text editor such as Notepad. Once a customization file has been created in the installed folder, the gameplay option "Custom Keys" must be set to 'ON' in order for Warcraft III to actually use the data in the custom file.

PLEASE NOTE: Blizzard Entertainment will not provide technical support for problems associated with data contained in "CustomKeys.txt." Blizzard Entertainment will not provide support related to using "CustomKeys.txt." Add entries to "CustomKeys.txt" at you own risk. Blizzard Entertainment will not and does not provide support or endorse the use of any 3rd party utilities to populate or modify entries in "CustomKeys.txt." Blizzard does not recommend the use of 3rd party utilities to populate or modify "CustomKeys.txt." The use of 3rd party utilities to populate or modify "CustomKeys.txt" is at your own risk.


CUSTOMIZATION OF HOTKEYS
------------------------

In all, data for the following keyboard shortcut entries can be customized:
 - Hotkey
 - Unhotkey
 - Researchhotkey

The entry for a custom key must be uppercase. A sample entry in "CustomKeysSample.txt" to customize the keyboard shortcut to train an Orc Grunt as 'T' would look like:

[ogru]
Hotkey=T

Certain actions have a series of hotkeys associated with the action. (For example, a melee weapon upgrade might have 3 levels of upgrade, thus facilities for 3 unique hotkeys for each level.) A sample entry to customize the keys to 'X', 'Y', and 'Z' respectively for each level of the Human melee weapon upgrade would look like:

[Rhme]
[... truncated; full sample at ``sample.txt`` (approx. 80 more lines) ...]
```

### `cystack_6efeb6b8`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `low`

**Field keys:**
`Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Country`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `IP Address`, `Install Date`, `Installed RAM`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time`, `Time Zone`, `User`, `User Language`, `User Name`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
Build Date: Oct 26 2025
Configuration: 
Execution Path: C:\WINDOWS\SysWOW64\explorer.exe
Elevated: No
Computer Name: <redacted>
User Name: <redacted>
User Language: en-CA
Netbios: DESKTOP-GQJ1LJE
Operation System: Windows 11 Pro 10.0.26100 (x64)
Install Date: 04.01.2025 <ip>
System Date: 26.10.2025 <ip>
Time Zone: UTC-4
Antivirus:Windows Defender
HWID: <redacted>
Processor: AMD Ryzen 7 7800X3D 8-Core Processor           
Processor Threads: 16
Processor Cores: 8
Graphics Card:
	NVIDIA GeForce RTX 4070
Installed RAM: 32768MB
Display Resolution: 3440x1440

IP Address: <redacted>
Time: 27.10.2025 <ip> (sig:1761514221.5438bbfd0ea358414d330be54eb33e1c)
Country: CA
User: z [newjisn]
```

### `cystack_7304a1d1`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `low`

**Field keys:**
`Country`, `IP Address`, `Time`, `User`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
====================================================================================================
   File Details:
====================================================================================================

   d30a0e4e5911d3ca705617d17225372731c770e2 *cleanosppx64.exe                   Virus Total = 0/66
   39ed8659e7ca16aaccb86def94ce6cec4c847dd6 *cleanosppx86.exe                   Virus Total = 1/66

   Virus Total Report Date: 12-11-2019
   
   These files are official Microsoft files and in this script, these are used in 
   cleaning office license in C2R Retail office to VL conversion process.
   
   The source of these files is the 'old' version of Microsoft Tool O15CTRRemove.diagcab
   You can get the original file here <url>

====================================================================================================

IP Address: <redacted>
Time: 19.04.2026 <ip> (sig:1776553866.6cb18815e7cd61ebd6ba81e906f33177)
Country: BR
User: E
```

### `cystack_8fc6858f`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `low`

**Field keys:**
`Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Country`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `IP Address`, `Installed RAM`, `Netbios`, `Processor`, `Processor Cores`, `Processor Threads`, `Time`, `User`, `User Language`, `User Name`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
Build Date: Apr 18 2026
Configuration: 
Execution Path: C:\Users\<user>\Downloads\fifa_23_ultimate_edition_pc_full_español_2022\fifa_23_ultimate_edition_pc_full_español_2022.exe
Elevated: Yes
Computer Name: <redacted>
User Name: <redacted>
User Language: es-AR
Netbios: DESKTOP-B5TVAH3
Antivirus: Avast Antivirus [OFF]
HWID: <redacted>
Processor: AMD Ryzen 5 3400G with Radeon Vega Graphics    
Processor Threads: 8
Processor Cores: 1
Graphics Card:
Installed RAM: 8192MB
Display Resolution: 1366x768

IP Address: <redacted>
Time: 19.04.2026 <ip> (sig:1776615059.03df1f8df56498a5567a793184a98cef)
Country: AR
User: E
```

### `cystack_bd7c60ba`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `low`

**Field keys:**
`Book`, `Country`, `Date`, `IP Address`, `Language`, `Location`, `Lyrics`, `Music`, `Performers`, `Show`, `Time`, `Tracks`, `Translation`, `User`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
Show:	Mame
Music:	Jerry Herman 
Lyrics:	Jerry Herman 
Book:	Jerome Lawrence,  Robert E. Lee

Date:	1985

Language:	Spanish

Location:	Mexico

Translation:	Jose Luis Ibaez,  Berta Maldonado 

Performers:	Cristian Castro,  Jorge Pais,  Eduardo Palomo,  Aida Pierce,  Silvia Pinal,  Maria Rivas,  Gustavo Rojo


Tracks:	
1. Obertura
2. Ay ta, mi ta
3. Hoy es hoy
4. Abre la ventana
5. En una laguna en la luna
6. Mi gran amor
7. Hoy es nuestra navidad
8. Entreacto
9. Mame
10. La carta
11. Ua y carne
12. Cancin de Petunia
13. Yo soy la juventud
14. Pronto ha de volver
15. Final

IP Address: <redacted>
Time: 16.04.2026 <ip> (sig:1776359149.b3a3a7a7d06723d6a55d8344a2bb1020)
Country: ES
User: E
```

### `cystack_d41e9f17`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `low`

**Field keys:**
`Country`, `Database Name`, `IP Address`, `Project Name`, `Time`, `User`, `User Name`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
Database Name: Local Database
User Name: <redacted>
Project Name: perfect


IP Address: <redacted>
Time: 19.04.2026 <ip> (sig:1776596573.52f75d701a78d03c5bb1357df5164f90)
Country: IN
User: E
```

## Detection

Fingerprint requires the `(sig:` substring (Lumma-canonical
Time-line watermark per Cloudflare playbook and SpyCloud
reversing notes) AND the `Execution Path:` field name AND
the `Operation System:` typo AND `Installed RAM:` line-
anchored. Lumma and CSDeimosStealer decline because both
require the `- ` dash prefix on every field; Redline declines
because of the absent banner and `FileLocation:` / `Build ID:`
canonical keys. During triage, treat the `sig:UNIX.HEX`
watermark as a Lumma-family indicator but not a Lumma
confirmation: the bare-KV layout with verbose field names
does not match Lumma canonical, so the underlying builder
is most likely a Lumma fork or a stealer that adopted the
Lumma sig signature into a different panel template.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`lumma`](../lumma/)
- [`remus`](../remus/)
- [`redline`](../redline/)
- [`cs-deimos-stealer`](../cs_deimos_stealer/)
- [`cs-al-stealer`](../cs_al_stealer/)

## References

- https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/
- https://www.gendigital.com/blog/insights/research/remus-64bit-variant-of-lumma-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADLOGS
