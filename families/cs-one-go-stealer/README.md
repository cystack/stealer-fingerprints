# CSOneGoStealer

CSOneGoStealer is a CyStack-coined identifier for a flat
bare-key `System.txt` panel emitted by a Go-based stealer
binary. The body opens with `IP:` / `Execute Path:` / `Build
Name:` / `User Name:` / `Computer Name:` / `CPU:` / `GPU:`
(repeated per adapter) / `Operation System:` / `Country ISO2:`
/ `Elevated:` / `Screen Resolution:` / `Date:` lines, then a
blank-line gap and a misspelled `Enviromental Variables:`
(sic) section dumping the victim's Win32 environment as
`KEY=VALUE` pairs. The observed `Build Name` value is the
literal `One-Go`, the operator's build / version label
hardcoded into the panel.

The Go-runtime signature is the `Date:` value: Go's default
`time.Time.String()` format with sub-second precision and a
trailing `+0000 UTC` token after the numeric offset
(`2025-06-23 16:49:43.2152587 +0000 UTC`). Python
`datetime.isoformat`, .NET, and Delphi all emit different
shapes, so the trailing `UTC` keyword pins the underlying
binary to a Go build. The misspelled `Enviromental` section
header (missing the first `n`) is a stable panel-side bug
hardcoded in the source.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting,
including the Go-stealer writeups on Skuld, Salat Stealer,
Pentagon Stealer, macOS MetaStealer, and the 2019 Go-stealer
find, does not document a family that emits this exact field
set. Rename if a later report attributes the layout to a known
author.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `One-Go build label`, `Enviromental dump panel`
- Variants observed: **0**

## What it targets

- Browser-saved credentials
- Browser cookies and session tokens
- System hardware and locale fingerprint
- Win32 environment variable dump (full PATH, USERPROFILE, TEMP, vendor-specific keys)

## Detection notes

Fingerprint requires three line-anchored anchor keys:
mixed-case `Build Name:` (rules out RedlineLikeStealer's
all-caps `BUILD NAME:`), `Country ISO2:` (the Go-idiomatic
ISO 3166-1 alpha-2 field name, unique across the registry),
and the misspelled `Enviromental Variables:` (rules out
CSEnvVarDumpStealer's correctly-spelled `=== ENVIRONMENT
VARIABLES ===` triple-equals header). The Go-runtime `+0000
UTC` timestamp suffix is an additional binary-lineage hint but
is not part of the fingerprint. During triage, treat the
`One-Go` build label as operator-controlled: other builds may
use different labels while keeping the same structural shape,
so the family attribution should remain unknown until a public
writeup ties the layout to a named author.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSEnvVarDumpStealer](../cs-env-var-dump-stealer/)
- [CSWmicDumpStealer](../cs-wmic-dump-stealer/)
- [Redline](../redline/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
