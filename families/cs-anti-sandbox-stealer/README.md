# CSAntiSandboxStealer

CSAntiSandboxStealer is a CyStack-coined identifier for a
triple-equals-section `system_info.txt` panel observed inside
`!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/system_info.txt` victim folders. The body opens
with six Title-case `=== <Section> ===` headers (`=== System
Information ===`, `=== Network ===`, `=== Hardware ===`, `===
Disk ===`, `=== Anti-Sandbox Diagnostics ===`, `=== Summary
===`) and a verbatim Anti-Sandbox Diagnostics block that
exposes the stealer's sandbox-detection logic line by line
with arrow-verdict suffixes (`-> PASS` / `-> FAIL`).

The diagnostic block is the panel's distinguishing
developer-side quirk. Most stealers hide their sandbox-detection logic so analysts cannot easily map the thresholds,
but this builder prints every check and its configured
threshold (`RAM: 3 GB (threshold: 8 GB) -> FAIL`). The `===
Summary ===` block carries the `Anti-Sandbox: ENABLED` flag
plus a `Mode: V2 (Evasive)` panel-version identifier; the `V2`
literal suggests this is the second iteration of the builder's
anti-sandbox logic.

Public reporting and the community stealer-format catalogues
do not document a family that emits this exact
triple-equals-section + verbatim diagnostic block +
arrow-verdict shape. Multiple public writeups document modern
stealers that implement anti-sandbox checks (Lumma C2, Typhon
Reborn V2, Akira Stealer v2, Rhadamanthys, Vidar 2.0), but
none of those writeups quote a sample log with the diagnostic
block exposed verbatim. The format may be a debug /
developer-test build of one of those families that left the
verbose diagnostic output enabled, or a separate undocumented
builder. Family attribution is provisional pending a published
mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Anti-Sandbox Diagnostics V2 panel`, `Mode V2 Evasive stealer`
- Variants observed: **1**
- Historical Logmine records represented: **1**

## What it targets

- System fingerprint (Hostname, Username, OS, RAM,
CPU cores, disk size, screen resolution)
- Sandbox-detection diagnostic state (the panel itself
ships only system info plus the diagnostic block;
harvested credentials live in sibling files)

## Detection notes

Fingerprint requires `=== System Information ===` (Title
case) AND `=== Anti-Sandbox Diagnostics ===` AND
`Mode: V2` substrings. The Title-case section names rule
out `CSEnvVarDumpStealer` which uses ALL-CAPS headers
(`=== SYSTEM INFORMATION ===`). The verbatim diagnostic
block is the most distinguishing single anchor; no other
documented stealer exposes its sandbox-detection logic
this way. During triage, the per-check threshold lines
(`RAM: 3 GB (threshold: 8 GB) -> FAIL`) reveal the
builder's configured evasion bounds and can be tracked
across samples to detect threshold tuning.

## Observed log variants

### `v_afd6a02604a11b541c94ed4334adccf3`

- Parser: `logmine.ioc.parsers.cs_anti_sandbox_stealer.CSAntiSandboxStealerParser`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_afd6a02604a11b541c94ed4334adccf3/sample.txt)
- Sample SHA-256: `741924979c4f544ca36d7af70d8d7e3ec6082d8f7fcede9ac7e8db220b47ae99`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `=== Anti-Sandbox Diagnostics ===`, `=== System Information ===`, `Mode: V2`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1497](https://attack.mitre.org/techniques/T1497/) | Virtualization/Sandbox Evasion |
| [T1497.001](https://attack.mitre.org/techniques/T1497/001/) | System Checks |
| [T1497.003](https://attack.mitre.org/techniques/T1497/003/) | Time Based Evasion |
| [T1622](https://attack.mitre.org/techniques/T1622/) | Debugger Evasion |

## Related catalog profiles

- [Lumma](../lumma/)
- [Rhadamanthys](../rhadamanthys/)
- [Vidar](../vidar/)

## Related external families

- `typhon-stealer`
- `akira-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
