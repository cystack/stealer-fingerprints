# Stealer Fingerprints

Public catalog of malware-family fingerprints curated by CyStack threat intelligence. Each entry documents a stealer log family with its banner strings, field signatures, sanitized sample, and ready-to-use YARA rules.

Each row in the table below summarises the operator-rebrand footprint observed for that family: how many distinct variants we have fingerprints for, how many distribution channels we have seen distributing it, and the highest attribution confidence observed (`high` = curated CTI confirmed, `medium` = community catalog hint, `low` = provisional best-guess, `unknown` = CyStack-discovered with no candidate, `benign` = false-positive labeling).

## Families

| Family | Variants | Channels | Observations | Top confidence |
|---|---|---|---|---|
| [`Acreed`](families/acreed/) | 1 | 0 | 3,595 | `high` |
| [`Aetheris Stealer`](families/aetheris_stealer/) | 1 | 0 | 127 | `high` |
| [`Blank Grabber`](families/blank_grabber/) | 1 | 0 | 1 | `high` |
| [`BracketSection Stealer`](families/bracket_section_stealer/) | 1 | 0 | 33 | `unknown` |
| [`CSBareVersionStealer`](families/cs_bare_version_stealer/) | 1 | 1 | 4 | `unknown` |
| [`CSBitArchStealer`](families/cs_bit_arch_stealer/) | 1 | 0 | 15 | `unknown` |
| [`CSGADSPanelStealer`](families/csgads_panel_stealer/) | 1 | 0 | 9 | `unknown` |
| [`CSWmicDumpStealer`](families/cs_wmic_dump_stealer/) | 1 | 0 | 18 | `unknown` |
| [`Category Stealer`](families/category_stealer/) | 2 | 0 | 32 | `unknown` |
| [`Cthulhu Stealer`](families/cthulhu_stealer/) | 1 | 0 | 65 | `high` |
| [`Lumma`](families/lumma/) | 1 | 0 | 3 | `high` |
| [`MacSync`](families/mac_sync/) | 1 | 0 | 8,846 | `high` |
| [`PureLogs`](families/pure_logs/) | 1 | 0 | 20 | `high` |
| [`RL Stealer`](families/rl_stealer/) | 1 | 0 | 41 | `medium` |
| [`Raccoon`](families/raccoon/) | 1 | 0 | 12 | `high` |
| [`Redline`](families/redline/) | 1 | 0 | 9 | `high` |
| [`RedlineLike Stealer`](families/redline_like_stealer/) | 5 | 0 | 2,834 | `unknown` |
| [`StealC`](families/steal_c/) | 12 | 0 | 191,799 | `high` |
| [`Vidar`](families/vidar/) | 527 | 0 | 46,024 | `high` |
| [`WhiteSnake`](families/white_snake/) | 1 | 0 | 1,372 | `high` |
| [`XFiles`](families/x_files/) | 2 | 0 | 374 | `high` |

## Contributing

Found a new variant or correction? Open a pull request adding the fingerprint banner, field keys, and any reference URLs. Sample logs must be sanitized of victim data before submission.
