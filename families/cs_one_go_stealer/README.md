# CSOneGoStealer

CSOneGoStealer is a CyStack-coined identifier for a flat
bare-key `System.txt` panel emitted by a Go-based stealer
binary. The body opens with `IP:` / `Execute Path:` /
`Build Name:` / `User Name:` / `Computer Name:` /
`CPU:` / `GPU:` (repeated per adapter) /
`Operation System:` / `Country ISO2:` / `Elevated:` /
`Screen Resolution:` / `Date:` lines, then a blank-line
gap and a misspelled `Enviromental Variables:` (sic)
section dumping the victim`s Win32 environment as
`KEY=VALUE` pairs. The observed `Build Name` value is
the literal `One-Go`, the operator`s build / version
label hardcoded into the panel.

The Go-runtime signature is the `Date:` value: Go`s
default `time.Time.String()` format with sub-second
precision and a trailing `+0000 UTC` token after the
numeric offset (`2025-06-23 16:49:43.2152587 +0000 UTC`).
Python `datetime.isoformat`, .NET, and Delphi all emit
different shapes, so the trailing `UTC` keyword pins the
underlying binary to a Go build. The misspelled
`Enviromental` section header (missing the first `n`) is
a stable panel-side bug hardcoded in the source.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed sources
(TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare, Talos, Unit 42, Microsoft TI,
Mandiant / Google TAG, Recorded Future, eSentire,
Cybereason, BleepingComputer research, CERT-AGID, Drweb,
Proofpoint, ANY.RUN, plus the surveyed Go-stealer
writeups on Skuld, Salat Stealer, Pentagon Stealer, macOS
MetaStealer, and the 2019 Malwarebytes Go-stealer find)
do not document a family that emits this exact field set.
Rename if a later report attributes the layout to a
known author.

**Also known as:** `One-Go build label`, `Enviromental dump panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `One-Go`

## Targets

- Browser-saved credentials
- Browser cookies and session tokens
- System hardware and locale fingerprint
- Win32 environment variable dump (full PATH, USERPROFILE, TEMP, vendor-specific keys)

## Variants

### `One-Go`

**Fingerprint id:** `one_go`

**Attribution confidence:** `unknown`

**Field keys:**
`Build Name`, `CPU`, `Computer Name`, `Country ISO2`, `Date`, `Elevated`, `Enviromental Variables`, `Execute Path`, `GPU`, `IP`, `Operation System`, `Screen Resolution`, `User Name`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
IP: <redacted>
Execute Path: C:\Users\<user>\AppData\Local\Temp\tmpf433283968\S-V.33.636.2488.exe
Build Name: One-Go
User Name: <redacted>
Computer Name: <redacted>
CPU: Intel(R) Core(TM) i7-14650HX, 24 cores
GPU: Intel(R) UHD Graphics
GPU: NVIDIA GeForce RTX 4060 Laptop GPU
Operation System: Microsoft Windows 11 Home Single Language 24H2
Country ISO2: GB
Elevated: true
Screen Resolution: 2560x1600
Date: 2025-06-23 <ip>.2152587 +0000 UTC
[... 3 blank lines ...]
Enviromental Variables:

ALLUSERSPROFILE=C:\ProgramData
APPDATA=C:\Users\<user>\AppData\Roaming
CommonProgramFiles=C:\Program Files\Common Files
CommonProgramFiles(x86)=C:\Program Files (x86)\Common Files
CommonProgramW6432=C:\Program Files\Common Files
COMPUTERNAME=MSI
ComSpec=C:\WINDOWS\system32\cmd.exe
configsetroot=C:\WINDOWS\ConfigSetRoot
DriverData=C:\Windows\System32\Drivers\DriverData
HOMEDRIVE=C:
HOMEPATH=\Users\ABHAY
IGCCSVC_DB=AQAAANCMnd8BFdERjHoAwE/Cl+sBAAAAVftjXtc4+kC2q76i2LUL+QQAAAACAAAAAAAQZgAAAAEAACAAAADGU1mtmyKtMIEY4dvmqU0QgmTEhyRkQg/fUZ5GsiIOFQAAAAAOgAAAAAIAACAAAADY7zbSAIIJJ9EwifBpA6wtX4ZlDvsbur9QZYqjqolNV2AAAAAsr0d/Ql7/H3dAOxdaF/3qe7XdljLltqXtU0FMmMixsk9tdoicgvSW6zHoxTJIxAaRYVqYXo19oKm14crWhG4ous/HLVWdQlOKgNhaHl7eXTBlsEx5I6PAEEQxZ9+FAj1AAAAAwof0INhwfRA3OOLHufrOmzxD82VlMRzoBZJD+cYwXm3Pmss3mLBvo+cWYd0VnvDgZvTfbGs0X3qs9zAfes/O8Q==
IntelliJ IDEA Community Edition=C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2024.2.3\bin;
INTEL_DEV_REDIST=C:\Program Files (x86)\Common Files\Intel\Shared Libraries\
LOCALAPPDATA=C:\Users\<user>\AppData\Local
LOGONSERVER=\\MSI
MIC_LD_LIBRARY_PATH=C:\Program Files (x86)\Common Files\Intel\Shared Libraries\compiler\lib\mic
NUMBER_OF_PROCESSORS=24
OneDrive=C:\Users\<user>\OneDrive
OneDriveConsumer=C:\Users\<user>\OneDrive
OS=Windows_NT
Path=<redacted>
PATHEXT=.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC
PROCESSOR_ARCHITECTURE=AMD64
[... truncated; full sample at ``sample.txt`` (approx. 20 more lines) ...]
```

## Detection

Fingerprint requires three line-anchored anchor keys:
mixed-case `Build Name:` (rules out RedlineLikeStealer`s
all-caps `BUILD NAME:`), `Country ISO2:` (the Go-
idiomatic ISO 3166-1 alpha-2 field name, unique across
the registry), and the misspelled `Enviromental
Variables:` (rules out CSEnvVarDumpStealer`s correctly-
spelled `=== ENVIRONMENT VARIABLES ===` triple-equals
header). The Go-runtime `+0000 UTC` timestamp suffix is
an additional binary-lineage hint but is not part of the
fingerprint. During triage, treat the `One-Go` build
label as operator-controlled: other builds may use
different labels while keeping the same structural
shape, so the family attribution should remain unknown
until a curated CTI report ties the layout to a named
author.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`cs-envvar-dump-stealer`](../cs_envvar_dump_stealer/)
- [`cs-wmic-dump-stealer`](../cs_wmic_dump_stealer/)
- [`redline`](../redline/)

## References

- https://www.cyfirma.com/research/unmasked-salat-stealer-a-deep-dive-into-its-advanced-persistence-mechanisms-and-c2-infrastructure/
- https://www.sonicwall.com/blog/understanding-salatstealer-a-threat-actors-golang-stealer-toolset
