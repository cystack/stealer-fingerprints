# CSGoRuntimeStealer

CSGoRuntimeStealer is a CyStack-coined identifier for a bare
4-field `system_info.txt` panel observed inside `!! 2025
DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/<operator-handle>/system_info.txt` victim
folders (e.g. `[UN]<IPv4>/poopbandit/system_info.txt`).
The body is a 5-line minimal panel: an ALL CAPS triple-equals
`=== SYSTEM INFORMATION ===` section header, four flat
key-value lines (`User: <Computer>\<Username>` / `Computer:` /
`OS: <goos> <goarch>` / `Directory:`), and a closing
triple-equals rule.

The strongest single fingerprint is the `OS:` value: Go
binaries emit `runtime.GOOS + " " + runtime.GOARCH` which
produces strings like `windows amd64`, `linux 386`, or `darwin
arm64`. The bare lowercase two-token shape does not appear in
any other surveyed stealer-builder runtime: .NET emits
`Microsoft Windows <version>`, Python emits
`Windows-<release>-<build>`, Lumma emits `Windows <version>
<edition> (<build>)`. The Go runtime shape is the panel's
clearest builder-attribution signal.

The `User:` line carries a `<Computer>\<Username>`
backslash-separated identity (the panel's preferred shape over
`os/user.Current().Username` which would return just the
username on Unix). The `Directory:` line carries the malware's
execution path; the observed sample ran out of `%TEMP%`. The
path-side `<operator-handle>/` segment between the victim
folder and the `system_info.txt` file exposes the operator's
panel-side identifier (`poopbandit` in the observed sample);
the operator handle is retained as distribution-channel
evidence in this catalog.

Public reporting and the public stealer-format catalogues do
not document a family that emits exactly this minimal
Go-runtime panel shape. The `poopbandit` operator handle is
unattested. Family attribution is provisional pending a
published mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Go-runtime minimal stealer panel`, `poopbandit Information.txt`
- Variants observed: **1**
- CyStack observations represented: **3**

## What it targets

- Victim hostname (`Computer:` field plus the backslash
half of the `User:` line)
- Victim account shortname (`User:` line)
- Operating system / architecture (`OS:` line via Go
runtime values)
- Malware execution directory (`Directory:` line)

## Detection notes

Fingerprint requires `=== SYSTEM INFORMATION ===` (ALL
CAPS) AND a `Directory:` field AND an `OS:` line matching
the Go-runtime `<goos> <goarch>` two-lowercase-token
shape PLUS absence of `=== ENVIRONMENT VARIABLES ===`
(rules out `CSEnvVarDumpStealer`). The Go-runtime
`OS:` shape is the panel's strongest single signal: no
other surveyed stealer-builder runtime emits the OS
field in this exact form. During triage, the path-side
`<operator-handle>/` segment (between the
`[<CC>]<IPv4>/` victim folder and the
`system_info.txt` file) carries the operator's panel-side identifier; cluster IOCs by handle to track
distribution.

## Observed log variants

### `v_5ea325f8d303821fabff4fe14535f995`

- Format ID: `cs-go-runtime-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: `poopbandit`
- Attribution confidence: **unknown**
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_5ea325f8d303821fabff4fe14535f995/sample.txt)
- Sample SHA-256: `d607cdbe5aa335eacb986db240a008540ba753990b7faf158ebc9a26b8f0e7dc`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== SYSTEM INFORMATION ===`
- Field labels: `Directory`, `OS`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1059.004](https://attack.mitre.org/techniques/T1059/004/) | Unix Shell |

## Related catalog profiles

- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSEnvVarDumpStealer](../cs-env-var-dump-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
