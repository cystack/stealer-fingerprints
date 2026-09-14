# Stealer Fingerprints

A practical reference for identifying **information-stealer log formats**. Every entry has a representative text sample; matcher-ready entries also publish the filenames, fields, and markers used to recognize the format.

Each matcher fingerprint—and every filename variant it declares—is backed by a linked representative sample. When the filename itself is evidence, the same sanitized body may appear under more than one name.

> This catalog identifies exported log text, not malware binaries.
> A match is a lead for an analyst, not proof of infection or final attribution.

## Identify a log

Clone the repository and point the built-in matcher at a text file. It runs locally and needs only Python 3.11+.

```console
python identify.py path/to/System.txt
```

A result looks like this:

```text
Likely match
1. Lumma - evidence score 95/100 (known family)
   Format: system.txt - computer / country
   Evidence: fields 18/18, filename matched
```

The result shows ranked family candidates and the exact markers, field labels, and filename evidence behind each evidence score. Add `--json` for automation.

You can also browse the [filename index](indexes/by-filename.md), [field index](indexes/by-field.md), [marker index](indexes/by-marker.md), or the [30 unattributed formats](unattributed/README.md).

## Known families

| Family | Typical log files | Fingerprints | Samples |
|---|---|---:|---:|
| [Ailurophile](families/ailurophile/README.md) | <code>info.txt</code> | 1 | 1 |
| [Arcane](families/arcane/README.md) | <code>information.txt</code> | 1 | 1 |
| [Blank Grabber](families/blank-grabber/README.md) | <code>information.txt</code>, <code>system.txt</code> | 1 | 2 |
| [CryptBot](families/crypt-bot/README.md) | <code>_information.txt</code> | 1 | 1 |
| [DCRat](families/dc-rat/README.md) | <code>information &#91;&lt;locale&gt;&#93;.txt</code> | 1 | 1 |
| [Lumma](families/lumma/README.md) | <code>information.txt</code>, <code>system.txt</code>, <code>system_info.txt</code>, <code>userinformation.txt</code> | 1 | 4 |
| [MacSync](families/mac-sync/README.md) | <code>information.txt</code> | 1 | 1 |
| [Nexus](families/nexus/README.md) | <code>information.txt</code> | 1 | 1 |
| [Phantom Stealer](families/phantom-stealer/README.md) | <code>information.txt</code>, <code>userinformation.txt</code> | 1 | 2 |
| [Phexia](families/phexia/README.md) | <code>userinformation.txt</code> | 1 | 1 |
| [Raccoon](families/raccoon/README.md) | <code>system info.txt</code> | 1 | 1 |
| [Redline](families/redline/README.md) | <code>userinformation.txt</code> | 1 | 1 |
| [Rhadamanthys](families/rhadamanthys/README.md) | <code>userinformation.txt</code> | 1 | 1 |
| [SHub Stealer](families/s-hub-stealer/README.md) | <code>information.txt</code> | 1 | 1 |
| [Stealerium](families/stealerium/README.md) | <code>information.txt</code> | 1 | 1 |
| [Vidar](families/vidar/README.md) | <code>information.txt</code>, <code>system.txt</code>, <code>systeminfo.txt</code> | 1 | 3 |
| [WhiteSnake](families/white-snake/README.md) | <code>pc_info.txt</code> | 1 | 1 |
| [XFiles](families/x-files/README.md) | <code>information.txt</code>, <code>system.txt</code> | 1 | 2 |

## Sample-only references

These malware families have a readable sample, but not yet a fingerprint specific enough for the matcher.

| Family | Typical log files | Fingerprints | Samples |
|---|---|---:|---:|
| [Acreed](families/acreed/README.md) | <code>pc_info.json</code> | 0 | 1 |
| [AMOS Stealer](families/amos-stealer/README.md) | <code>userinformation.txt</code> | 0 | 1 |
| [AuraStealer](families/aura-stealer/README.md) | <code>system.txt</code> | 0 | 1 |
| [Cthulhu Stealer](families/cthulhu-stealer/README.md) | <code>userinformation.txt</code> | 0 | 1 |
| [MeltStealer](families/melt-stealer/README.md) | <code>information.txt</code> | 0 | 1 |
| [PureLogs](families/pure-logs/README.md) | <code>log.json</code> | 0 | 1 |
| [PXA Stealer](families/pxa-stealer/README.md) | <code>information.txt</code> | 0 | 1 |
| [RL Stealer](families/rl-stealer/README.md) | <code>information.txt</code> | 0 | 1 |
| [SantaStealer](families/santa-stealer/README.md) | <code>information.txt</code> | 0 | 1 |
| [StealC](families/steal-c/README.md) | <code>system_info.txt</code> | 0 | 1 |

## Use the data

The complete JSON catalog is at [`catalog/catalog.json`](catalog/catalog.json). Experimental YARA rules for exported log text are in [`rules/`](rules/). They are not executable-malware rules.

Because the filename itself is evidence, one sanitized layout may be published byte-for-byte under several malware-visible names. Those files document filename variants; they are not independent payload observations.

Non-malware formats are intentionally excluded. To add a family, variant, sample, or correction, see [CONTRIBUTING.md](CONTRIBUTING.md).

Maintainers can validate generated pages and data with:

```console
python tools/catalog.py validate
python tools/catalog.py build --check
python -m unittest discover -s tests -v
```

<!-- Index generated by tools/catalog.py; edit family data and samples instead. -->
