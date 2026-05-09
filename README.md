# Stealer Fingerprints

Public catalog of malware-family fingerprints curated by CyStack threat intelligence. Each entry documents a stealer log family with its banner strings, field signatures, sanitized sample, and ready-to-use YARA rules.

Each row in the table below summarises the operator-rebrand footprint observed for that family: how many distinct variants we have fingerprints for, how many distribution channels we have seen distributing it, and the highest attribution confidence observed (`high` = curated CTI confirmed, `medium` = community catalog hint, `low` = provisional best-guess, `unknown` = CyStack-discovered with no candidate, `benign` = false-positive labeling).

## Families

| Family | Variants | Channels | Observations | Top confidence |
|---|---|---|---|---|
| [`Acreed`](families/acreed/) | 1 | 0 | 125 | `high` |
| [`Aetheris Stealer`](families/aetheris_stealer/) | 1 | 0 | 8 | `high` |
| [`CSBitArchStealer`](families/cs_bit_arch_stealer/) | 1 | 0 | 4 | `unknown` |
| [`CSWmicDumpStealer`](families/cs_wmic_dump_stealer/) | 1 | 0 | 4 | `unknown` |
| [`Cthulhu Stealer`](families/cthulhu_stealer/) | 1 | 0 | 4 | `high` |
| [`MacSync`](families/mac_sync/) | 1 | 0 | 2,460 | `high` |
| [`PureLogs`](families/pure_logs/) | 1 | 0 | 4 | `high` |
| [`RL Stealer`](families/rl_stealer/) | 1 | 0 | 12 | `medium` |
| [`RedlineLike Stealer`](families/redline_like_stealer/) | 4 | 0 | 109 | `unknown` |
| [`StealC`](families/steal_c/) | 12 | 0 | 55,044 | `high` |
| [`Vidar`](families/vidar/) | 56 | 0 | 4,391 | `high` |
| [`WhiteSnake`](families/white_snake/) | 1 | 0 | 219 | `high` |
| [`XFiles`](families/x_files/) | 2 | 0 | 20 | `high` |

## Contributing

Found a new variant or correction? Open a pull request adding the fingerprint banner, field keys, and any reference URLs. Sample logs must be sanitized of victim data before submission.
