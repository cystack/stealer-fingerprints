# CSStatsSectionStealer

CSStatsSectionStealer is a CyStack-coined identifier for a
two-section `_INFO.txt` panel observed inside
`!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/_INFO.txt` victim folders. The body opens
with `=== SYSTEM INFO ===` ALL CAPS triple-equals header
(note the shorter `INFO` form, not `INFORMATION`),
followed by four flat key-value lines (`Computer:`,
`User:`, `OS:`, `Time:`), a blank-line separator, then
`=== STATS ===` ALL CAPS triple-equals header followed
by three count lines (`Cookies:`, `Passwords:`,
`Credit Cards:`).

The `OS:` value carries `Microsoft Windows NT
<major>.<minor>.<build>.<rev>` shape, the verbatim
.NET `Environment.OSVersion.VersionString` output. The
`Time:` value is the naive `yyyy-MM-dd HH:mm:ss` form
that `DateTime.Now.ToString` produces by default in
.NET. Together these point at a .NET-builder runtime.

The dedicated `=== STATS ===` section separated from the
system block by a blank line is the panel`s distinctive
developer-side quirk. Most other documented stealer
panels inline harvest counts under a `Browser Data:` or
`Main Loot:` block (CSGADSPanel, CSMainLootStealer) or
omit them entirely. The shorter `=== SYSTEM INFO ===`
header rules out CSEnvVarDumpStealer (which keys on the
longer `=== SYSTEM INFORMATION ===` form) and
CSAntiSandboxStealer (Title-case header).

A two-vendor curated CTI survey and the public stealer-
format catalogues do not document a family that emits
this exact two-section panel layout. Family attribution
is provisional pending a curated CTI mapping.

**Also known as:** `SYSTEM INFO + STATS panel`, `Two-section _INFO.txt`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser cookies (`Cookies:` count in STATS section)
- Browser-saved credentials (`Passwords:` count)
- Credit card data (`Credit Cards:` count)
- Victim hostname (`Computer:` field)
- Account shortname (`User:` field)
- OS version (`Microsoft Windows NT <ver>` form)
- Local log-emit timestamp (`Time:` ISO-shape value)

## Variants

### `cystack_8e08a598`

**Attribution confidence:** `unknown`

**Field keys:**
`Computer`, `Cookies`, `Credit Cards`, `OS`, `Passwords`, `Time`, `User`

**Filenames:** `_INFO.txt`

**Sample (sanitized):**

```
=== SYSTEM INFO ===
Computer: RIVAHACK-8467
User: rivator
OS: Microsoft Windows NT 10.0.19045.0
Time: 2025-12-23 <ip>

=== STATS ===
Cookies: 1640
Passwords: 82
Credit Cards: 0
```

## Detection

Fingerprint requires both `=== SYSTEM INFO ===` (ALL
CAPS, short `INFO` form) AND `=== STATS ===` triple-
equals headers. The shorter `SYSTEM INFO` form is the
cleanest disambiguator from CSEnvVarDumpStealer (which
uses the longer `SYSTEM INFORMATION` header). During
triage, the `Computer:` value may carry an operator-
side prefix that identifies the build / affiliate (e.g.
`RIVAHACK-8467` in the observed sample); cluster IOCs
by prefix to detect campaign overlap.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)

## Related families

- [`cs-envvar-dump-stealer`](../cs_envvar_dump_stealer/)
- [`cs-anti-sandbox-stealer`](../cs_anti_sandbox_stealer/)
- [`cs-go-runtime-stealer`](../cs_go_runtime_stealer/)

## References

- https://blog.lexfo.fr/infostealer-parser.html
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
