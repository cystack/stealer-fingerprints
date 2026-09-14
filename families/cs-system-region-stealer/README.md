# CSSystemRegionStealer

CSSystemRegionStealer is a CyStack-coined identifier for a
flat 12-field `info.txt` panel observed inside `10-13
SEPTEMBER - 20370 LOGS.part01.rar` Telegram aggregator packs
at `<33-CHAR-HEX-ID>/info.txt` victim folders. The
33-character uppercase-hex folder ID is one character longer
than a standard 32-char MD5, hinting at a MachineGuid-derived
or custom-hashed victim identifier.

The body layout is a flat `Key: Value` block with these fields
in fixed order: `OS Version:` (WMI Caption plus parenthesised
`(Build N)` suffix), `Local Date:` (Russian or European
DD.MM.YYYY HH:MM:SS format, no timezone), `PC name:`
(lowercase-`n` key), `User name:` (lowercase- `n`), `Screen
Resolution:`, `Processor:`, `Total RAM:`, `Graphics Card:`,
`MAC Address(es):` (parenthesised `(es)` plural marker with a
comma-separated MAC list), `IP Address:`, `Country:` (full
country name from an IP geolocation API), and `System Region:`
(system locale from `GetUserDefaultLocaleName` or the WMI
MUILanguages field, distinct from the IP-based `Country:`
field above).

The body terminates with a long `-=-=-=-=-` alternating
dash-plus-equals separator followed by the Russian text `Здесь
могла бы быть ваша реклама` ("Your ad could be here"). The
trailer is a well-known Russian internet meme for empty ad
placeholders; embedding it in the panel output is either a
stealer-author signature or an unfinished template feature the
operator never populated. The trailer strongly suggests a
Russian-speaking developer even though every field key is in
English.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
community catalogues do not attest a family emitting exactly
this 12-field layout with the `MAC Address(es):` plural
marker, the split `Country:` / `System Region:` geolocation
pair, and the Russian ad-meme trailer. Candidates ruled out
include Sharp / Hannibal / TX (different field spelling, no
split geolocation), Poulight (pure Russian key set), CGrabber,
Torg Grabber, Predator The Thief, Collector-Stealer, Marco
Stealer, and Raven Stealer.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Flat 12-field info.txt with System Region and MAC (es)`, `Russian ad-placeholder-trailer info.txt panel`
- Variants observed: **0**

## What it targets

- OS caption from WMI `Win32_OperatingSystem.Caption`
- Windows build number from the `(Build N)` suffix
- Local wall-clock time (DD.MM.YYYY HH:MM:SS, no timezone)
- PC name and OS user name (lowercase `name` field keys)
- Screen resolution
- Processor and Graphics Card names
- Total RAM
- MAC addresses from every network adapter
- Public IPv4 and country name (from IP geolocation API)
- System locale hint separate from IP-based country

## Detection notes

Fingerprint requires line-anchored `System Region:` AND
`MAC Address(es):` AND `Local Date:` AND `PC name:`
(lowercase-`n`). The `(es)` plural marker on
`MAC Address(es):` and the `System Region:` field are
both unique across the cataloged formats, and the
lowercase-`name` `PC name:` spelling rules out DCRat /
CSBuildBlock / CSDataMonk which all use `PC Name:` with
capital-N. During triage, the split `Country:` /
`System Region:` pair is useful: mismatch between the
two (public IP resolves to one country, system locale
to another) often flags a proxy or VPN user, or a
traveller whose device keeps a stale locale after a
move. The Russian ad-meme trailer is the strongest
developer-attribution signal even though every field
key is in English.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- None recorded.

## Related external families

- `sharp-stealer`
- `hannibal-stealer`
- `poulight-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
