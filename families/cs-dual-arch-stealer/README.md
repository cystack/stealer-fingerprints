# CSDualArchStealer

CSDualArchStealer is a CyStack-coined identifier for a minimal
6-field `Info.txt` panel with a bare `System Information:`
section header and dual `Process Architecture:` + `OS
Architecture:` fields. Observed inside `@BRADMAX 12000
FEB-MARCH.part1.rar` at `@BRADMAX <count>
<MONTHS>/[<CC>]@BRADMAX (<N>)/ Info.txt` victim folders (e.g.
`[UN]@BRADMAX (140)/ Info.txt`).

The body ships exactly seven lines: a section-header line
`System Information:` followed by six `Key: Value` fields.
Each field maps directly to a .NET `Environment` class
property: `OS:` (WMI or
`Environment.OSVersion.VersionString`), `Machine Name:`
(`Environment.MachineName`), `User Name:`
(`Environment.UserName`), `Current Directory:`
(`Environment.CurrentDirectory`), `Process Architecture:`
(`Environment.Is64BitProcess` rendered as `x64` / `x86`), `OS
Architecture:` (`Environment.Is64BitOperatingSystem` rendered
as `x64` / `x86`). The `Current Directory` value in the
observed sample points at PowerShell as the execution context
(`C:\Windows\system32\WindowsPowerShell\v1.0`), suggesting a
PowerShell-based dropper chain.

Extremely minimal - no hardware inventory, no identity fields
beyond hostname and short-username, no timestamps. The panel
is a small .NET Environment-query snapshot rather than a full
stealer log.

Family attribution is provisional pending a published
threat-intel mapping. Public reporting and community
catalogues do not attest a family emitting exactly this
6-field layout with the dual architecture pair.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Dual-Architecture .NET Environment Info.txt`, `BRADMAX minimal System Information panel`
- Variants observed: **0**

## What it targets

- OS caption (Windows edition)
- Machine name (Environment.MachineName)
- OS user short-login (Environment.UserName)
- Current working directory (Environment.CurrentDirectory)
- Process bitness (Environment.Is64BitProcess)
- OS bitness (Environment.Is64BitOperatingSystem)

## Detection notes

Fingerprint requires five line-anchored keys:
`System Information:` bare section header AND
`Machine Name:` AND `Current Directory:` AND
`Process Architecture:` AND `OS Architecture:`. The
dual architecture pair with these exact key spellings
is unique across the registered parsers. During
triage, the `Current Directory` value often carries
the dropper execution context (PowerShell interpreter
directory in the observed sample); pivot to that path
to identify the parent process. The sibling
`CSTop20ProcStealer` (iter #11) also uses .NET
`Environment` class properties but emits them as
`64-bit OS: True` / `64-bit Process: False` boolean
form under different section headers.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |

## Related catalog profiles

- [CSTop20ProcStealer](../cs-top20-proc-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
