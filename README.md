# Stealer Fingerprints

Public catalog of malware-family fingerprints curated by CyStack threat intelligence. Each entry documents a stealer log family with its banner strings, field signatures, sanitized sample, and ready-to-use YARA rules.

## Families

| Family | Variants |
|---|---|
| [`Aetheris Stealer`](families/aetheris_stealer/) | 1 |
| [`BracketSection Stealer`](families/bracket_section_stealer/) | 1 |
| [`CSBitArchStealer`](families/cs_bit_arch_stealer/) | 1 |
| [`CSWmicDumpStealer`](families/cs_wmic_dump_stealer/) | 1 |
| [`MacSync`](families/mac_sync/) | 2 |
| [`RedlineLike Stealer`](families/redline_like_stealer/) | 4 |
| [`StealC`](families/steal_c/) | 8 |
| [`Vidar`](families/vidar/) | 16 |
| [`WhiteSnake`](families/white_snake/) | 2 |

## Contributing

Found a new variant or correction? Open a pull request adding the fingerprint banner, field keys, and any reference URLs. Sample logs must be sanitized of victim data before submission.
