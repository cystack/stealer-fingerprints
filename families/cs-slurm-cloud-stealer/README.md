# CSSlurmCloudStealer

CSSlurmCloudStealer is a CyStack-coined identifier for a
.NET-based stealer that self-identifies with the single-line
banner ``Slurm Cloud | Private — The best logs on the market``
at the top of its ``system_info.txt`` file. Body vocabulary is
byte-for-byte identical to the sibling ``CSJohnDoeProject``
variant (same .NET-canonical field set, same duplicate
``RAM:`` key with battery mislabel, same ``=== ENVIRONMENT
VARIABLES ===`` section trailer). Both channels appear to
resell a common private C# stealer template rather than
distinct forks; only the operator banner at the top of the
file differs.

The ``Slurm Private TG ArhontCorp`` and ``KATANA CLOUD PRIVATE
TG ArhontCorp`` entries appear in public breach-data indexes.
ArhontCorp is the aggregator collective running the Slurm
Cloud panel. No public research has published a mapping to the
underlying builder; attribution is provisional pending a
threat-intel report on the private .NET template.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Slurm Cloud banner stealer`, `ArhontCorp Slurm Private slice`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU, GPU, RAM,
resolution, Windows version, .NET Runtime, CLR)
- Network identity (LAN IP, default gateway)
- Account identity (Windows username, computer name)
- Full Windows Environment Variables dump

## Detection notes

Fingerprint requires the ``Slurm Cloud | Private`` banner
substring and a line-anchored ``CLR Version:`` field key.
The pipe-separated banner phrase is the operator self-id
no other channel in the surveyed corpus uses it. Pair the
panel_brand with the sibling ``CSJohnDoeProject`` metadata
when triaging: both channels appear to resell a common
underlying builder, so overlap in victim hardware fingerprints
across the two panels is expected. Companion files in the
victim folder (browser exports, cookie dumps, wallet
artifacts) may trigger more confident attributions through
their own family detectors.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- [CSJohnDoeProjectStealer](../cs-john-doe-project-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
