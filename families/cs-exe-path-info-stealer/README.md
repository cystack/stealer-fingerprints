# CSExePathInfoStealer

CSExePathInfoStealer is a CyStack-coined identifier for a
heavily-padded fixed-width ``system_info.txt`` panel with the
distinctive ``EXE_PATH:`` uppercase-underscore header field.
Observed inside the ``5,6 APRIL - 10250 LOGS.part1.rar``
aggregator pack at ``<32-char>_<TIMESTAMP>/system_info.txt``
victim folders where the archive-name convention with
comma-separated dates mirrors iter #23
``CSStartBuildInfoStealer`` (``4,5 MAY``).

Third variant of a common panel-builder family sharing the
paren-annotated ``UserName`` / ``Username`` and heavy
column-alignment style with iter #23
``CSStartBuildInfoStealer`` and iter #26
``CSInfoNetworkSectionStealer``, but each variant emits a
distinct field-key spelling convention. This variant uses
``Operating system:`` (verbose lowercase-after-first-word),
``Memory ram:`` (lowercase-r ``ram``), ``Video card:``
(spaced), ``Username (Computername):`` (tight parens
lowercase-c), and a single ``[Software]`` bracketed section.

The 2021-01-19 log timestamp on observed samples suggests an
older builder whose panel-format research pre-dates current
public reporting. Family attribution is provisional pending a
published threat-intel mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `EXE_PATH header stealer`, `Operating system + Memory ram spelling variant`
- Variants observed: **0**

## What it targets

- Host OS and hardware fingerprint (Windows version + build,
CPU with lowercase-cores count, GPU with lowercase-second-word Video card key, RAM, display resolution, language)
- Account identity (user + computer name from the tight-parens ``Username (Computername)`` field)
- Harvester install path (``EXE_PATH:`` value points to the
random-name .com dropped in a TMP IXP subdir)
- Installed software inventory (bracketed ``[Software]``
section with per-program version tags)

## Detection notes

Fingerprint requires four line-anchored anchors:
``EXE_PATH:``, ``Operating system:``, ``Memory ram:``, and
``Username (Computername):``. The four-anchor combination
is distinctive across the registry and disjoint from the
sibling iter #23 ``CSStartBuildInfoStealer`` and iter #26
``CSInfoNetworkSectionStealer`` parsers which each require
different key-spelling anchors. During triage, correlate
the ``EXE_PATH:`` value with a TMP IXP subdirectory to
identify the harvester process path.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- [CSStartBuildInfoStealer](../cs-start-build-info-stealer/)
- [CSInfoNetworkSectionStealer](../cs-info-network-section-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
