# CSTagRegionStealer

CSTagRegionStealer is a CyStack-coined identifier for a
stripped 9-line `system.txt` panel whose most distinctive
feature is a mid-file key-spacing transition. The first five
fields use the tight `Key: Value` shape (`Core:`, `Video:`,
`RAM:`, `Screen:`, `OS:`), and the trailing four fields use
the loose `Key : Value` shape with a space before the colon
and all-lowercase key names (`name :`, `tag :`, `ip :`,
`region :`). The transition suggests a builder that
concatenates two separately-generated blocks: a hardware
inventory followed by an identity plus geolocation block.

The panel emits no ASCII-art banner and no watermark. The `tag
:` field carries the operator affiliate or build identifier
when set (empty in the retained sample,
indicating a default no-tag build). The `region :` field
carries a slash-separated `Country/Subdivision/City` triple
with the full country name (not ISO 3166-1 alpha-2) as the
first token; the full-name country value should not be treated as an ISO country code.

Observed inside a generic `<N MONTH> - <count> LOGS`
aggregator archive with victim folders shaped as
`[<IPv4>]<hostname>{<MachineGuid>}/system.txt`. The aggregator
naming does not identify a specific Telegram channel.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues return no hits for the `Core:` / `Video:`
/ `Screen:` label combination or for the space-around-colon
lowercase `tag :` / `region :` pair. The CyStack tracking name can be revised when published evidence identifies the underlying builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- System hardware and geolocation fingerprint (CPU, GPU,
RAM, screen resolution, OS, hostname, IP, region)
- Credential artifacts in sibling files within the victim folder

## Detection notes

Line-anchored `Core:` (rather than `CPU:` / `Processor:`)
plus line-anchored `tag :` and `region :` (both space-around-colon lowercase) is the three-anchor fingerprint.
The mid-file key-spacing transition is the strongest
stylistic tell. During triage, treat the `tag :` value
as the operator build or affiliate identifier and
correlate across samples: multiple logs sharing the
same tag value likely originate from the same build.
The `region :` value carries the full-name country and
a slash-separated `Country/Subdivision/City` triple
suitable for coarse geolocation correlation.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
