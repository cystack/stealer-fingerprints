# CSFlatMacBradmaxStealer

CSFlatMacBradmaxStealer is a CyStack-coined identifier for an
aggressive-collapse BRADMAX-repackaged macOS `system_profiler`
`Information.txt` panel where every whitespace between
adjacent fields has been dropped, including inside multi-word
key names. Canonical macOS-stealer keys `Model Name:`,
`Chipset Model:`, `Total Number of Cores:`, `Hardware UUID:`,
`Provisioning UDID:`, `Activation Lock Status:`, `Metal
Support:`, `Model Identifier:`, and `Model Number:` all appear
as space-collapsed variants (`ModelName:`, `ChipsetModel:`,
`TotalNumberofCores:`, etc.). Values are glued to keys without
whitespace (`Memory:16GB`, `ModelIdentifier:Mac14,9`),
producing a two-physical-line body that concatenates the
entire `SPHardwareDataType` and `SPDisplaysDataType` output.

Observed inside `@BRADMAX 12000 FEB-MARCH.part1.rar` at
`@BRADMAX <count> <MONTHS>/[<CC>]<IPv4>/ Information.txt`
victim folders. The observed sample is an Italian-locale macOS
victim (`Time since boot: 23 ore e 4 minuti` collapsed to
`Timesinceboot: 23oree4minuti`), Apple Silicon M2 Pro chip,
MacBook Pro model.

This layout is distinct from the sibling `CSFlatMacProfilerStealer`, where each field occupies its own line and multi-word keys retain spaces. Here, substring matches on collapsed keys plus BRADMAX archive context distinguish the aggressive-collapse variant.

Family attribution is provisional pending a published
threat-intel mapping. Multiple canonical macOS stealer
families (AMOS / Atomic, Banshee, Cthulhu, Poseidon, MacSync)
shell out to the same `system_profiler` subcommands per public
writeups. Without a family-specific banner surviving in this
aggressive-collapse panel, attribution to any single canonical
family is a guess. Rename the CyStack tracking name if a public
writeup later publishes a sample of this exact aggressive-collapse variant.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `Flat macOS system_profiler panel (aggressive collapse)`, `BRADMAX macOS Information.txt with space-collapsed keys`
- Variants observed: **0**

## What it targets

- macOS full user name plus short login (dscl format)
- Apple product line and model identifier (MacBookPro,
Mac Studio, iMac, etc.) plus model number
- Apple Silicon chip name or Intel processor name
- Total core count with performance/efficiency split
(Apple Silicon hybrid core report)
- Physical memory in GB
- Hardware UUID (SPHardwareDataType canonical field)
- Provisioning UDID (Apple Configurator supervision
identifier)
- GPU chipset model, vendor, Metal support version
- Display resolutions with aspect-ratio annotations
(2560x1080 UW-UXGA UltraWide, etc.)
- Secure Virtual Memory / SIP status flags

## Detection notes

Fingerprint requires the four space-collapsed macOS
key literals: `ChipsetModel:` AND `TotalNumberofCores:`
AND (`HardwareUUID:` OR `ProvisioningUDID:`) AND the
`@BRADMAX` substring in the archive path. The BRADMAX archive-path anchor scopes the fingerprint to
the observed distribution channel; the four space-collapsed macOS-specific keys are mutually exclusive
with every Windows-panel format and with the sibling `CSFlatMacProfilerStealer` which requires
line-anchored space-preserving spellings. During
triage, the space-collapsed keys are recovered by
substring-search rather than full unflattening because
the aggressive collapse makes value boundaries
unreliable (values contain no whitespace at all).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSFlatMacProfilerStealer](../cs-flat-mac-profiler-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)
- [MacSync](../mac-sync/)
- [Phexia](../phexia/)

## Related external families

- `banshee-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
