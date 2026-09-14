# CSSigInfoStealer

CSSigInfoStealer is a CyStack-coined identifier for a bare
`Key: Value` `Info.txt` panel that carries the Lumma-canonical
`(sig:UNIX.HEX)` watermark on the `Time:` line while using
Redline-style verbose field naming for the rest of the body.
Observed inside `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX`
aggregator packs in `[<CC>]<IP>/Info.txt` victim folders
(e.g. `[CA]<IPv4>/Info.txt`).

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

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `BRADMAX Info.txt with Lumma sig watermark`, `Bare-KV Redline-style panel with Lumma sig suffix`
- Variants observed: **1**
- CyStack observations represented: **10,811**

## What it targets

- Browser-saved credentials (count flag plus harvested body in sibling files)
- Host metadata: hostname, NetBIOS, Windows username, language
- OS fingerprint with build number and architecture
- Hardware inventory: CPU model with cores/threads, GPU, installed RAM
- Victim public IP plus ISO country code
- Wall-clock and time zone offset

## Detection notes

Fingerprint requires the `(sig:` substring (Lumma-canonical
Time-line watermark per public Lumma analyses) AND the
`Execution Path:` field name AND the `Operation System:` typo
AND `Installed RAM:` line-anchored. Lumma and CSDeimosStealer
decline because both require the `- ` dash prefix on every
field; Redline declines because of the absent banner and
`FileLocation:` / `Build ID:` canonical keys. During triage,
treat the `sig:UNIX.HEX` watermark as a Lumma-family indicator
but not a Lumma confirmation: the bare-KV layout with verbose
field names does not match Lumma canonical, so the underlying
builder is most likely a Lumma fork or a stealer that adopted
the Lumma sig signature into a different panel template.

## Observed log variants

### `v_571b9735a207cab65f14c48899af7f62`

- Format ID: `cs-sig-info-stealer`
- Observed filenames: `Info.txt`
- Panel brand: -
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **low**
- Layout: `full-device-os`
- Historical records represented: **10,811**
- Representative sample: [open sample](samples/v_571b9735a207cab65f14c48899af7f62/sample.txt)
- Sample SHA-256: `1bbeb3f129bbe42254b047579474031831d7cbe84247a277455362e72692b982`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `(sig:`
- Field labels: `Country`, `Execution Path`, `Installed RAM`, `IP Address`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Lumma](../lumma/)
- [Remus Stealer](../remus-stealer/)
- [Redline](../redline/)
- [CSDeimosStealer](../cs-deimos-stealer/)
- [CSALStealer](../csal-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
