# CSGoRuntimeStealer

CSGoRuntimeStealer is a CyStack-coined identifier for a
bare 4-field `system_info.txt` panel observed inside
`!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/<operator-handle>/system_info.txt` victim
folders (e.g. `[UN]18.88.179.21/poopbandit/system_info.txt`).
The body is a 5-line minimal panel: an ALL CAPS triple-
equals `=== SYSTEM INFORMATION ===` section header, four
flat key-value lines (`User: <Computer>\<Username>` /
`Computer:` / `OS: <goos> <goarch>` / `Directory:`), and
a closing triple-equals rule.

The strongest single fingerprint is the `OS:` value: Go
binaries emit `runtime.GOOS + " " + runtime.GOARCH`
which produces strings like `windows amd64`, `linux 386`,
or `darwin arm64`. The bare lowercase two-token shape
does not appear in any other surveyed stealer-builder
runtime: .NET emits `Microsoft Windows <version>`,
Python emits `Windows-<release>-<build>`, Lumma emits
`Windows <version> <edition> (<build>)`. The Go runtime
shape is the panel`s clearest builder-attribution signal.

The `User:` line carries a `<Computer>\<Username>`
backslash-separated identity (the panel`s preferred
shape over `os/user.Current().Username` which would
return just the username on Unix). The `Directory:` line
carries the malware`s execution path; the observed
sample ran out of `%TEMP%`. The path-side
`<operator-handle>/` segment between the victim folder
and the `system_info.txt` file exposes the operator`s
panel-side identifier (`poopbandit` in the observed
sample); the parser routes this through
`malware.distribution_channel` so the operator handle
travels with the IOC.

A two-vendor curated CTI survey and the public stealer-
format catalogues do not document a family that emits
exactly this minimal Go-runtime panel shape. The
`poopbandit` operator handle is unattested. Family
attribution is provisional pending a curated CTI mapping.

**Also known as:** `Go-runtime minimal stealer panel`, `poopbandit Information.txt`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Distribution channels:** `poopbandit`

## Targets

- Victim hostname (`Computer:` field plus the backslash
half of the `User:` line)
- Victim account shortname (`User:` line)
- Operating system / architecture (`OS:` line via Go
runtime values)
- Malware execution directory (`Directory:` line)

## Variants

### `cystack_68b1c634`

**Distribution channel:** `poopbandit`

**Attribution confidence:** `unknown`

**Field keys:**
`Computer`, `Directory`, `OS`, `User`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
=== SYSTEM INFORMATION ===
User: JOHN-PC\John
Computer: JOHN-PC
OS: windows amd64
Directory: C:\Users\<user>\AppData\Local\Temp
========================
```

## Detection

Fingerprint requires `=== SYSTEM INFORMATION ===` (ALL
CAPS) AND a `Directory:` field AND an `OS:` line matching
the Go-runtime `<goos> <goarch>` two-lowercase-token
shape PLUS absence of `=== ENVIRONMENT VARIABLES ===`
(rules out `CSEnvVarDumpStealer`). The Go-runtime
`OS:` shape is the panel`s strongest single signal: no
other surveyed stealer-builder runtime emits the OS
field in this exact form. During triage, the path-side
`<operator-handle>/` segment (between the
`[<CC>]<IPv4>/` victim folder and the
`system_info.txt` file) carries the operator`s panel-
side identifier; cluster IOCs by handle to track
distribution.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1059.004 Unix Shell](https://attack.mitre.org/techniques/T1059/004/)

## Related families

- [`cs-py-host-time-stealer`](../cs_py_host_time_stealer/)
- [`cs-envvar-dump-stealer`](../cs_envvar_dump_stealer/)

## References

- https://blog.lexfo.fr/infostealer-parser.html
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://pkg.go.dev/runtime
