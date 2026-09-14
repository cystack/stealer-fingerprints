# CSTop20ProcStealer

CSTop20ProcStealer is a CyStack-coined identifier for a
seven-section `info.txt` panel observed inside `@BRADMAX 60000
MARCH-APRIL.part01.rar` Telegram aggregator packs at `@BRADMAX
<count> <MONTHS>/ [<CC>]UNKNOWN_(<N>)/info.txt` filler-folder
paths. The body ships seven triple-equals-wrapped section
headers in fixed order: `=== SYSTEM INFORMATION ===`, `===
WINDOWS VERSION ===`, `=== HARDWARE INFORMATION ===`, `===
NETWORK INFORMATION ===`, `=== RUNNING PROCESSES (Top 20)
===`, `=== INSTALLED BROWSERS ===`, `=== TIME INFORMATION
===`.

The parenthesised `(Top 20)` qualifier on the RUNNING
PROCESSES section header is the most distinctive marker: no
other cataloged format or documented family emits this exact
literal. The panel then lists at most 20 processes in `<Name>
(PID: <int>, Memory: <int> MB)` format ranked by working-set
memory descending.

The field vocabulary maps to .NET `Environment` class
properties: `64-bit OS: True` / `64-bit Process: False`
(`Environment.Is64BitOperatingSystem` /
`Environment.Is64BitProcess`), `Processor Count`
(`Environment.ProcessorCount`), `System Directory`
(`Environment.SystemDirectory`), `User Domain`
(`Environment.UserDomainName`). The `Uptime` value uses the
.NET `TimeSpan.ToString()` default format (`00:07:37.4530000`,
seven-digit fractional seconds). The `Current Time` value uses
the .NET `DateTime. ToString()` en-US default (`M/D/YYYY
h:mm:ss tt`). All of these point at a private .NET stealer
that authored its own panel template rather than forking an
open-source project.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not attest a family emitting this
seven-section triple-equals layout. Candidates ruled out
include Bandit Stealer (Go-based, different output shape),
PupkinStealer (.NET but no free-form info.txt), Aurora Stealer
(JSON wire format), Ailurophile, MeltStealer, ZestyChips.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Seven-section triple-equals info.txt panel`, `BRADMAX (Top 20) processes panel`
- Variants observed: **0**

## What it targets

- Computer name, OS user name, user domain
- OS caption plus Product Name / Version / Build triple
- 64-bit OS / 64-bit process boolean flags
- CPU with core and thread counts
- GPU list
- Total RAM
- LAN IP address, subnet mask, MAC address per adapter
- Top-20 running processes ranked by working-set memory
- Installed browser install paths (chrome, msedge)
- Current wall-clock time and system uptime

## Detection notes

Fingerprint requires line-anchored
`=== SYSTEM INFORMATION ===` AND
`=== RUNNING PROCESSES (Top 20) ===`. The
parenthesised `(Top 20)` qualifier is the strongest
single anchor: no other cataloged format or
documented family emits this exact literal. During
triage, treat the sample as weak attribution to a
private .NET stealer. Suspicious process names in
the top-20 list (e.g. 24-char hex-encoded names like
`0f41b0fcb95aed8fa1356bb0.exe`) are useful secondary
signals for pivoting to the underlying dropper. The
`Installed Browsers` section only lists browser paths
without harvesting credentials, so the info.txt panel
is a reconnaissance summary rather than a credential
dump.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- [CSSystemRegionStealer](../cs-system-region-stealer/)
- [CSBase64CpuStealer](../cs-base64-cpu-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
