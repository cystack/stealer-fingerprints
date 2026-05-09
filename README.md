# Stealer Fingerprints

Public catalog of malware-family fingerprints curated by CyStack threat intelligence. Each entry documents a stealer log family with its banner strings, field signatures, sanitized sample, and ready-to-use YARA rules.

Each row in the table below summarises the operator-rebrand footprint observed for that family: how many distinct variants we have fingerprints for, how many distribution channels we have seen distributing it, and the highest attribution confidence observed (`high` = curated CTI confirmed, `medium` = community catalog hint, `low` = provisional best-guess, `unknown` = CyStack-discovered with no candidate, `benign` = false-positive labeling).

## Families

| Family | Variants | Channels | Observations | Top confidence |
|---|---|---|---|---|
| [`Acreed`](families/acreed/) | 1 | 0 | 1,170 | `high` |
| [`Aetheris Stealer`](families/aetheris_stealer/) | 1 | 0 | 42 | `high` |
| [`BracketSection Stealer`](families/bracket_section_stealer/) | 1 | 0 | 12 | `unknown` |
| [`CSBareVersionStealer`](families/cs_bare_version_stealer/) | 1 | 1 | 1 | `unknown` |
| [`CSBitArchStealer`](families/cs_bit_arch_stealer/) | 1 | 0 | 12 | `unknown` |
| [`CSGADSPanelStealer`](families/csgads_panel_stealer/) | 1 | 0 | 3 | `unknown` |
| [`CSWmicDumpStealer`](families/cs_wmic_dump_stealer/) | 1 | 0 | 12 | `unknown` |
| [`Category Stealer`](families/category_stealer/) | 2 | 0 | 5 | `unknown` |
| [`Cthulhu Stealer`](families/cthulhu_stealer/) | 1 | 0 | 28 | `high` |
| [`MacSync`](families/mac_sync/) | 1 | 0 | 6,953 | `high` |
| [`PureLogs`](families/pure_logs/) | 1 | 0 | 14 | `high` |
| [`RL Stealer`](families/rl_stealer/) | 1 | 0 | 32 | `medium` |
| [`Raccoon`](families/raccoon/) | 1 | 0 | 6 | `high` |
| [`Redline`](families/redline/) | 1 | 0 | 3 | `high` |
| [`RedlineLike Stealer`](families/redline_like_stealer/) | 5 | 0 | 954 | `unknown` |
| [`StealC`](families/steal_c/) | 12 | 0 | 150,384 | `high` |
| [`Vidar`](families/vidar/) | 398 | 0 | 22,417 | `high` |
| [`WhiteSnake`](families/white_snake/) | 1 | 0 | 757 | `high` |
| [`XFiles`](families/x_files/) | 2 | 0 | 176 | `high` |

## Contributing

Found a new variant or correction? Open a pull request adding the fingerprint banner, field keys, and any reference URLs. Sample logs must be sanitized of victim data before submission.
