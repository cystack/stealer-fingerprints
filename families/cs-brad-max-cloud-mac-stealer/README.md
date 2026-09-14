# CSBradMaxCloudMacStealer

CSBradMaxCloudMacStealer is a CyStack-coined identifier
for the macOS lane of the @BRADMAX_CLOUD Telegram
channel's stealer-log redistribution portfolio. The file
opens with the aBradMax Figlet banner block inside a
`*`-bordered frame carrying the
`Telegram: https://t.me/BRADMAX_CLOUD` URL watermark, then
a flattened `system_profiler` dump covering the
SPSoftwareDataType, SPHardwareDataType, and
SPDisplaysDataType data types. The panel strips the
canonical section headers (`Software:` / `Hardware:` /
`Graphics/Displays:`) and the nested 4-6 space indentation,
so every field surfaces flush-left as a bare `Key: Value`
line.

No underlying-family banner survives. Phexia, MacSync,
SHub, and mac.c each prepend their own self-ID banner
before piping the `system_profiler` body, but this slice
ships only the aBradMax block. Without the family banner
the macOS stealer that captured the original output
cannot be attributed from the body alone. Family
attribution is provisional pending a published
threat-intel mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX_CLOUD macOS Information.txt slice`, `BRADMAX flattened system_profiler variant`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (Mac model, chip, RAM,
display, Hardware UUID, system firmware)
- Account identity (login name, computer name)

## Detection notes

Fingerprint requires both the `https://t.me/BRADMAX_CLOU`
URL prefix (loosened to handle the known panel-render bug
that fuses the URL with adjacent lines) and the
line-anchored `System Version: macOS` literal. The macOS
version prefix is the canonical first SPSoftwareDataType
field and disambiguates the slice from every Windows-shape
BRADMAX_CLOUD sibling (DCRat, Lumma, Mars, parsed,
banner-only, PC, CpuVendor lanes). The body carries no
IP address or country code, so the parent folder name
(`<CC>_<32-hex>`) is the only victim-geo signal. During
triage, bucket samples by the channel + panel_brand
metadata and inspect companion files in the victim folder
(keychain dumps, browser exports, wallet artifacts) for
higher-confidence Mac-family attribution.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [Mars Stealer](../mars-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [CSBradMaxCloudPCStealer](../cs-brad-max-cloud-pc-stealer/)
- [CSBradMaxCloudBannerOnlyStealer](../cs-brad-max-cloud-banner-only-stealer/)
- [Phexia](../phexia/)
- [MacSync](../mac-sync/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
