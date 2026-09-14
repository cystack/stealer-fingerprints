# CSBldStealer

CSBldStealer is a CyStack-coined identifier for a flat
bare-key ``system.txt`` slice with a distinctive short-form
field vocabulary: ``BLD:`` build tag, ``UUID:`` machine UUID,
``PC Name:`` computer name, ``User:`` username, ``AD:`` admin
flag (``+`` / ``-`` sentinel), ``CPU`` / ``GPU`` / ``RAM`` /
``Resolution``, ``System lang:`` UI-language (short-form
``lang``), ``System TimeZone:`` bare-offset key, ``OS:``,
``AV:``, plus a trailing ``Programs:`` installed-software
block.

The short-form abbreviations (``BLD`` / ``AD`` / ``System
lang``) do not appear in any public reporting or community
catalog. The panel could be a new .NET stealer, a rebrand of
an existing family, or a private-panel build. Family
attribution is provisional pending a published threat-intel
mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BLD short-form panel`, `System lang / System TimeZone abbreviated variant`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU, GPU, RAM,
resolution, Windows version, UUID)
- Account identity (Windows username, computer name, admin
flag)
- Installed software inventory (per-program name plus
version)

## Detection notes

Fingerprint requires three line-anchored short-form
labels together: ``BLD:``, ``System lang:``, and
``System TimeZone:``. The three abbreviations rarely
co-occur outside this panel template; requiring all
three keeps a stray document mentioning only ``BLD:``
in prose from mis-claiming. During triage, treat the
underlying stealer family as unattributable and rely
on the parent-folder shape (``<CC> <IPv4> <YYYY-MM-DD>
<HH-MM-SS>``) as the correlation anchor. Companion
files (browser exports, wallet artifacts, cookie dumps)
may trigger more confident attributions through their
own family detectors.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
