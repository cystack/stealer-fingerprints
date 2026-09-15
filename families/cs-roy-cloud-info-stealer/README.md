# CSRoyCloudInfoStealer

CSRoyCloudInfoStealer is a CyStack-coined identifier for a
bare `Key: Value` `Info.txt` panel wrapped in the RoyCloud
reseller banner watermark. Observed inside
`BONUS$#01(c)_NEW_ROYCLOUD_HQ_MIX_<n>_<Mon>_<YYYY>.part1.rar`
archives at `<CC>_<IPv4>-<HWID>/Info.txt` victim folders
(e.g. `AU_115.130.78.139-5B13BE2108/Info.txt`).

The banner block above the body is a decorative ASCII-art
rendering of `ROYCLOUD` (repeated several times in different
block-drawing character sets) plus two watermark lines whose
distinctive stylised literal is `RÔýĆløud` (Latin capital R,
Latin capital O with circumflex, Latin small y with acute,
Latin capital C with acute, Latin small l, Latin small o with
stroke, Latin small u, Latin small d). Random-alphanumeric
prefix / suffix strings around the literal rotate per sample.

Body fields: `Build Date` (C-preprocessor `__DATE__` shape),
`Configuration` (usually empty), `Execution Path`, `Elevated`,
`Computer Name`, `User Name`, `User Language`, `Netbios`,
`Operation System` (sic typo carried from Redline / Lumma
sources), `Install Date`, `System Date`, `Time Zone`,
`Antivirus`, `HWID`, `Processor`, `Processor Threads`,
`Processor Cores`, `Graphics Card`, `Installed RAM`,
`Display Resolution`. The body is flat (no leading-dash
prefix unlike Lumma / Deimos / BABA), no `FileLocation:` /
`Build ID:` (unlike canonical Redline), and not YAML (unlike
Remus). Unlike the sibling bare-KV `CSSigInfoStealer` layout,
this variant carries no `IP Address:` / `Time:` / `Country:` /
`User:` panel-metadata footer; the victim IP / country /
HWID are moved into the archive-path token instead.

Family attribution is provisional. The RoyCloud panel brand
has no curated CTI writeup or Telegram aggregator index
attestation as of integration; the body vocabulary matches
the Redline-shape / Lumma-influenced hybrid also seen in
`CSSigInfoStealer` but does not itself match any single
canonical family layout. The stylised `RÔýĆløud` watermark
has also been observed wrapping Remus-shape Info.txt bodies
from the same reseller.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `RoyCloud bare-KV Info.txt panel`, `RÔýĆløud watermarked Redline-style Info.txt`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets

- Host metadata: hostname, NetBIOS, Windows username, language
- OS fingerprint with build number and architecture
- Hardware inventory: CPU model with cores/threads, GPU, installed RAM
- Installed antivirus product name
- Sample execution path and elevation flag

## Detection notes

Fingerprint requires the stylised `RÔýĆløud` panel watermark
literal AND the `Execution Path:` field name AND the
`Installed RAM:` field name. The panel watermark alone is
unique to the RoyCloud reseller; pairing it with the two
Redline-style bare-KV anchors excludes hypothetical
unrelated documents that happen to quote the banner literal.
Canonical Redline declines because of the absent operator
banner and `FileLocation:` / `Build ID:` keys. Canonical
Lumma declines because of the absent `- ` dash prefix on
every field. The sibling `CSSigInfoStealer` bare-KV shape
declines because of the absent `(sig:UNIX.HEX)` Lumma
watermark on the `Time:` line, and because this RoyCloud
variant strips the `Time:` line entirely.

## Observed log variants

### `v_f4b3735510ac3fefebbf122c82df736e`

- Format ID: `cs-roycloud-info-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `RoyCloud`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_f4b3735510ac3fefebbf122c82df736e/Info.txt)
- Sample SHA-256: `806f4cf1111fb161c8825edac24d6292e833d8b4f93d488a509d05fffda38e10`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `/`, `/<IP>\ \ /`, `<IP>\| \<IP>/____/ \`, `<IP>\| \| \`, `<IP>\| ~\| \`, `<IP>\|\`, `\`, `\/____\|`, `\<IP>/ \|`, `\<IP>\| \| \<IP>/____/ \`, `Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `Install Date`, `Installed RAM`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time Zone`, `User Language`, `User Name`, `\|`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [Redline](../redline/)
- [CSSigInfoStealer](../cs-sig-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
