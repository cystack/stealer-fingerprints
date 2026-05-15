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

**Variants observed:** 1
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
