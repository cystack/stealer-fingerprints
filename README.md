# Stealer Fingerprints

Public catalog of malware-family fingerprints curated by CyStack threat intelligence. Each entry documents a stealer log family with its banner strings, field signatures, sanitized sample, and ready-to-use YARA rules.

Each row in the table below summarises the operator-rebrand footprint observed for that family: how many distinct variants we have fingerprints for, how many distribution channels we have seen distributing it, and the highest attribution confidence observed (`high` = curated CTI confirmed, `medium` = community catalog hint, `low` = provisional best-guess, `unknown` = CyStack-discovered with no candidate, `benign` = false-positive labeling).

## Families

| Family | Variants | Channels | Top confidence |
|---|---|---|---|
| [`AMOS Stealer`](families/amos_stealer/) | 67 | 0 | `medium` |
| [`Acreed`](families/acreed/) | 1 | 0 | `high` |
| [`Aetheris Stealer`](families/aetheris_stealer/) | 7 | 0 | `high` |
| [`Ailurophile`](families/ailurophile/) | 1 | 1 | `high` |
| [`AuraStealer`](families/aura_stealer/) | 2 | 0 | `high` |
| [`Blank Grabber`](families/blank_grabber/) | 12 | 0 | `high` |
| [`BracketSection Stealer`](families/bracket_section_stealer/) | 1 | 0 | `unknown` |
| [`CSBareVersionStealer`](families/cs_bare_version_stealer/) | 1 | 1 | `unknown` |
| [`CSBinaryGarbageStealer`](families/cs_binary_garbage_stealer/) | 1 | 1 | `unknown` |
| [`CSBitArchStealer`](families/cs_bit_arch_stealer/) | 1 | 0 | `unknown` |
| [`CSBrowersStealer`](families/cs_browers_stealer/) | 2 | 0 | `unknown` |
| [`CSBuildBlockStealer`](families/cs_build_block_stealer/) | 1 | 1 | `unknown` |
| [`CSCountCoreStealer`](families/cs_count_core_stealer/) | 2 | 0 | `unknown` |
| [`CSCountRunsStealer`](families/cs_count_runs_stealer/) | 1 | 1 | `unknown` |
| [`CSDaisyCloudStealer`](families/cs_daisy_cloud_stealer/) | 1 | 1 | `low` |
| [`CSDashPlusSepStealer`](families/cs_dash_plus_sep_stealer/) | 1 | 1 | `unknown` |
| [`CSDataCollectedStealer`](families/cs_data_collected_stealer/) | 1 | 0 | `unknown` |
| [`CSEmojiCountStealer`](families/cs_emoji_count_stealer/) | 2 | 0 | `unknown` |
| [`CSEmojiInfoStealer`](families/cs_emoji_info_stealer/) | 1 | 0 | `unknown` |
| [`CSEnvVarDumpStealer`](families/cs_env_var_dump_stealer/) | 1 | 1 | `unknown` |
| [`CSFacebookMarketStealer`](families/cs_facebook_market_stealer/) | 1 | 1 | `unknown` |
| [`CSGADSPanelStealer`](families/csgads_panel_stealer/) | 6 | 0 | `unknown` |
| [`CSInzExtStealer`](families/cs_inz_ext_stealer/) | 1 | 0 | `unknown` |
| [`CSMSKDateStealer`](families/csmsk_date_stealer/) | 1 | 0 | `unknown` |
| [`CSMainLootStealer`](families/cs_main_loot_stealer/) | 1 | 1 | `low` |
| [`CSNewLogStealer`](families/cs_new_log_stealer/) | 1 | 0 | `unknown` |
| [`CSPcNameSnakeStealer`](families/cs_pc_name_snake_stealer/) | 1 | 1 | `unknown` |
| [`CSPyHostTimeStealer`](families/cs_py_host_time_stealer/) | 1 | 1 | `unknown` |
| [`CSSigInfoStealer`](families/cs_sig_info_stealer/) | 1 | 1 | `low` |
| [`CSSoftwareTailStealer`](families/cs_software_tail_stealer/) | 1 | 1 | `unknown` |
| [`CSWmicDumpStealer`](families/cs_wmic_dump_stealer/) | 1 | 0 | `unknown` |
| [`Category Stealer`](families/category_stealer/) | 3 | 0 | `unknown` |
| [`Cthulhu Stealer`](families/cthulhu_stealer/) | 25 | 0 | `high` |
| [`Lumma`](families/lumma/) | 3 | 0 | `high` |
| [`MacSync`](families/mac_sync/) | 2 | 0 | `high` |
| [`Millenium RAT`](families/millenium_rat/) | 1 | 0 | `-` |
| [`PXA Stealer`](families/pxa_stealer/) | 6 | 0 | `high` |
| [`PureLogs`](families/pure_logs/) | 1 | 0 | `high` |
| [`RL Stealer`](families/rl_stealer/) | 1 | 0 | `medium` |
| [`Raccoon`](families/raccoon/) | 2 | 0 | `high` |
| [`Redline`](families/redline/) | 18 | 0 | `high` |
| [`RedlineLike Stealer`](families/redline_like_stealer/) | 17 | 0 | `unknown` |
| [`StealC`](families/steal_c/) | 14 | 0 | `high` |
| [`Vidar`](families/vidar/) | 3635 | 0 | `high` |
| [`WhiteSnake`](families/white_snake/) | 5 | 0 | `high` |
| [`XFiles`](families/x_files/) | 6 | 0 | `high` |

## Contributing

Found a new variant or correction? Open a pull request adding the fingerprint banner, field keys, and any reference URLs. Sample logs must be sanitized of victim data before submission.
