# CSStatsSectionStealer

CSStatsSectionStealer is a CyStack-coined identifier for a
two-section `_INFO.txt` panel observed inside `!! 2025
DEC.part01.rar` aggregator packs at `[<CC>]<IPv4>/_INFO.txt`
victim folders. The body opens with `=== SYSTEM INFO ===` ALL
CAPS triple-equals header (note the shorter `INFO` form, not
`INFORMATION`), followed by four flat key-value lines
(`Computer:`, `User:`, `OS:`, `Time:`), a blank-line
separator, then `=== STATS ===` ALL CAPS triple-equals header
followed by three count lines (`Cookies:`, `Passwords:`,
`Credit Cards:`).

The `OS:` value carries `Microsoft Windows NT
<major>.<minor>.<build>.<rev>` shape, the verbatim .NET
`Environment.OSVersion.VersionString` output. The `Time:`
value is the naive `yyyy-MM-dd HH:mm:ss` form that
`DateTime.Now.ToString` produces by default in .NET. Together
these point at a .NET-builder runtime.

The dedicated `=== STATS ===` section separated from the
system block by a blank line is the panel's distinctive
developer-side quirk. Most other documented stealer panels
inline harvest counts under a `Browser Data:` or `Main Loot:`
block (CSGADSPanel, CSMainLootStealer) or omit them entirely.
The shorter `=== SYSTEM INFO ===` header rules out
CSEnvVarDumpStealer (which keys on the longer `=== SYSTEM
INFORMATION ===` form) and CSAntiSandboxStealer (Title-case
header).

Public reporting and the public stealer-format catalogues do
not document a family that emits this exact two-section panel
layout. Family attribution is provisional pending a published
mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `SYSTEM INFO + STATS panel`, `Two-section _INFO.txt`
- Variants observed: **1**
- Historical Logmine records represented: **3**

## What it targets

- Browser cookies (`Cookies:` count in STATS section)
- Browser-saved credentials (`Passwords:` count)
- Credit card data (`Credit Cards:` count)
- Victim hostname (`Computer:` field)
- Account shortname (`User:` field)
- OS version (`Microsoft Windows NT <ver>` form)
- Local log-emit timestamp (`Time:` ISO-shape value)

## Detection notes

Fingerprint requires both `=== SYSTEM INFO ===` (ALL
CAPS, short `INFO` form) AND `=== STATS ===` triple-equals headers. The shorter `SYSTEM INFO` form is the
cleanest disambiguator from CSEnvVarDumpStealer (which
uses the longer `SYSTEM INFORMATION` header). During
triage, the `Computer:` value may carry an operator-side prefix that identifies the build / affiliate (e.g.
`RIVAHACK-8467` in the observed sample); cluster IOCs
by prefix to detect campaign overlap.

## Observed log variants

### `v_2d9836c148a6f62643de95589335158d`

- Parser: `logmine.ioc.parsers.cs_stats_section_stealer.CSStatsSectionStealerParser`
- Observed filenames: `_INFO.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_2d9836c148a6f62643de95589335158d/sample.txt)
- Sample SHA-256: `7182c2461e4a3e8d04ed7e31be7453ccfab1e6c5c9c8d40b751975ce654c2449`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `=== STATS ===`, `=== SYSTEM INFO ===`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |

## Related catalog profiles

- [CSEnvVarDumpStealer](../cs-env-var-dump-stealer/)
- [CSAntiSandboxStealer](../cs-anti-sandbox-stealer/)
- [CSGoRuntimeStealer](../cs-go-runtime-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
