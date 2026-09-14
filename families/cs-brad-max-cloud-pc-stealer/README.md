# CSBradMaxCloudPCStealer

CSBradMaxCloudPCStealer is a CyStack-coined identifier for a
bare-key flat `Key: Value` `Information.txt` shape distributed
through the @BRADMAX_CLOUD Telegram channel. The file ships
the aBradMax Figlet banner inside a `*`-bordered frame with
the `Telegram: https://t.me/BRADMAX_CLOUD` watermark, then a
flat body of bare `Key: Value` lines (no dash prefix, no
`Name` suffix on the `PC` / `User` keys). The field set covers
PC, User, Workgroup, ComputerNameDnsHostname,
ComputerNameNetBIOS, OS Version, HWID, Screen Resoluton (sic),
Language, CPU Name, GPU, Physical Installed Memory, IP
Address, and Country.

The COMPUTER_NAME_FORMAT-enum-derived labels
(`ComputerNameDnsHostname`, `ComputerNameNetBIOS`) plus the
`Physical Installed Memory` field name point to a .NET builder
iterating Windows enum values verbatim, but no public
reporting or community catalog documents this exact field-set
with the `Screen Resoluton` operator typo. Family attribution
is provisional pending a published threat-intel mapping for
this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX_CLOUD bare-key Information.txt slice`, `BRADMAX flat PC User HWID Screen Resoluton variant`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU, GPU, RAM, screen,
HWID, OS version)
- Network identity (IP address, country, language)
- Account identity (Windows username, computer name pair,
workgroup)

## Detection notes

Fingerprint requires both the
`https://t.me/BRADMAX_CLOU` URL prefix (the loosened
prefix tolerates the known panel-render bug that fuses
the URL with adjacent lines mid-word at the channel-name
suffix) and the line-anchored `Screen Resoluton:`
operator-typo literal. The typo is the load-bearing
disambiguator: no other surveyed stealer family emits a
`Resoluton` (sic) key, and the URL pin confirms the
BRADMAX_CLOUD redistributor portfolio. During triage,
treat the underlying stealer family as unattributable
and rely on the channel + panel_brand metadata to bucket
samples for analyst review. Companion files in the
victim folder (browser dumps, wallet exports) may
trigger more confident attributions through their own
family detectors.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [Mars Stealer](../mars-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [CSBradMaxCloudBannerOnlyStealer](../cs-brad-max-cloud-banner-only-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
