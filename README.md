# Stealer Fingerprints

Public catalog of malware-family fingerprints curated by CyStack threat intelligence. Each entry documents a stealer log family with its banner strings, field signatures, sanitized sample, and ready-to-use YARA rules.

Each row in the table below summarises the operator-rebrand footprint observed for that family: how many distinct variants we have fingerprints for, how many distribution channels we have seen distributing it, and the highest attribution confidence observed (`high` = curated CTI confirmed, `medium` = community catalog hint, `low` = provisional best-guess, `unknown` = CyStack-discovered with no candidate, `benign` = false-positive labeling).

## Families

| Family | Variants | Channels | Top confidence |
|---|---|---|---|
| [`Acreed`](families/acreed/) | 1 | 0 | `high` |
| [`Aetheris Stealer`](families/aetheris_stealer/) | 2 | 0 | `high` |
| [`Ailurophile`](families/ailurophile/) | 1 | 1 | `high` |
| [`Blank Grabber`](families/blank_grabber/) | 5 | 0 | `high` |
| [`BracketSection Stealer`](families/bracket_section_stealer/) | 1 | 0 | `unknown` |
| [`CSBareVersionStealer`](families/cs_bare_version_stealer/) | 1 | 1 | `unknown` |
| [`CSBitArchStealer`](families/cs_bit_arch_stealer/) | 1 | 0 | `unknown` |
| [`CSBrowersStealer`](families/cs_browers_stealer/) | 1 | 0 | `unknown` |
| [`CSBuildBlockStealer`](families/cs_build_block_stealer/) | 1 | 1 | `unknown` |
| [`CSCountCoreStealer`](families/cs_count_core_stealer/) | 2 | 0 | `unknown` |
| [`CSDataCollectedStealer`](families/cs_data_collected_stealer/) | 1 | 0 | `unknown` |
| [`CSEmojiInfoStealer`](families/cs_emoji_info_stealer/) | 1 | 0 | `unknown` |
| [`CSEnvVarDumpStealer`](families/cs_env_var_dump_stealer/) | 1 | 1 | `unknown` |
| [`CSGADSPanelStealer`](families/csgads_panel_stealer/) | 2 | 0 | `unknown` |
| [`CSInzExtStealer`](families/cs_inz_ext_stealer/) | 1 | 0 | `unknown` |
| [`CSNewLogStealer`](families/cs_new_log_stealer/) | 1 | 0 | `unknown` |
| [`CSWmicDumpStealer`](families/cs_wmic_dump_stealer/) | 1 | 0 | `unknown` |
| [`Category Stealer`](families/category_stealer/) | 3 | 0 | `unknown` |
| [`Cthulhu Stealer`](families/cthulhu_stealer/) | 3 | 0 | `high` |
| [`Lumma`](families/lumma/) | 1 | 0 | `high` |
| [`MacSync`](families/mac_sync/) | 1 | 0 | `high` |
| [`PXA Stealer`](families/pxa_stealer/) | 4 | 0 | `high` |
| [`PureLogs`](families/pure_logs/) | 1 | 0 | `high` |
| [`RL Stealer`](families/rl_stealer/) | 1 | 0 | `medium` |
| [`Raccoon`](families/raccoon/) | 1 | 0 | `high` |
| [`Redline`](families/redline/) | 17 | 0 | `high` |
| [`RedlineLike Stealer`](families/redline_like_stealer/) | 7 | 0 | `unknown` |
| [`StealC`](families/steal_c/) | 13 | 0 | `high` |
| [`Vidar`](families/vidar/) | 1829 | 0 | `high` |
| [`WhiteSnake`](families/white_snake/) | 2 | 0 | `high` |
| [`XFiles`](families/x_files/) | 2 | 0 | `high` |

## Contributing

Found a new variant or correction? Open a pull request adding the fingerprint banner, field keys, and any reference URLs. Sample logs must be sanitized of victim data before submission.
