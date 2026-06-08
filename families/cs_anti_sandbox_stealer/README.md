# CSAntiSandboxStealer

CSAntiSandboxStealer is a CyStack-coined identifier for a
triple-equals-section `system_info.txt` panel observed
inside `!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/system_info.txt` victim folders. The body
opens with six Title-case `=== <Section> ===` headers
(`=== System Information ===`, `=== Network ===`,
`=== Hardware ===`, `=== Disk ===`,
`=== Anti-Sandbox Diagnostics ===`, `=== Summary ===`)
and a verbatim Anti-Sandbox Diagnostics block that
exposes the stealer`s sandbox-detection logic line by
line with arrow-verdict suffixes (`-> PASS` / `-> FAIL`).

The diagnostic block is the panel`s distinguishing
developer-side quirk. Most stealers hide their sandbox-
detection logic so analysts cannot easily map the
thresholds, but this builder prints every check and its
configured threshold (`RAM: 3 GB (threshold: 8 GB) ->
FAIL`). The `=== Summary ===` block carries the
`Anti-Sandbox: ENABLED` flag plus a `Mode: V2 (Evasive)`
panel-version identifier; the `V2` literal suggests this
is the second iteration of the builder`s anti-sandbox
logic.

A two-vendor curated CTI survey (TrendMicro, SentinelOne
Labs, Kaspersky, Cyfirma, SOCRadar, Cloudflare, Talos,
ANY.RUN, Microsoft TI, Mandiant / Google TAG, Recorded
Future, eSentire, Cybereason, BleepingComputer research,
CERT-AGID, Drweb, Proofpoint, Unit 42) and the public
stealer-format catalogues (MalBeacon / what-is-this-
stealer, fastfire / deepdarkCTI, Malpedia, RussianPanda)
do not document a family that emits this exact triple-
equals-section + verbatim diagnostic block + arrow-
verdict shape. Multiple curated CTI vendors document
modern stealers that implement anti-sandbox checks (Lumma
C2, Typhon Reborn V2, Akira Stealer v2, Rhadamanthys,
Vidar 2.0), but none of those writeups quote a sample log
with the diagnostic block exposed verbatim. The format may
be a debug / developer-test build of one of those families
that left the verbose diagnostic output enabled, or a
separate undocumented builder. Family attribution is
provisional pending a curated CTI mapping.

**Also known as:** `Anti-Sandbox Diagnostics V2 panel`, `Mode V2 Evasive stealer`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- System fingerprint (Hostname, Username, OS, RAM,
CPU cores, disk size, screen resolution)
- Sandbox-detection diagnostic state (the panel itself
ships only system info plus the diagnostic block;
harvested credentials live in sibling files)

## Variants

### `cystack_a027ae7a`

**Attribution confidence:** `unknown`

**Field keys:**
`Anti-Sandbox`, `Architecture`, `Available RAM`, `CPU Cores`, `Disk Size`, `Hostname`, `Hypervisor Bit (CPUID)`, `IsDebuggerPresent`, `Mode`, `OS`, `Process Count`, `Processors`, `RAM`, `Recent Files`, `Screen Resolution`, `Sleep(100ms) actual`, `System Uptime`, `Total RAM`, `Username`, `Visible Windows`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    === System Information ===

Hostname: <redacted>
Username: <redacted>
OS: Windows 10.0.19045

=== Network ===

=== Hardware ===
Processors: 2
Architecture: x64
Total RAM: 4095 MB (3 GB)
Available RAM: 2179 MB

=== Disk ===
C: Total: 749 GB
C: Free: 716 GB

=== Anti-Sandbox Diagnostics ===
This section shows environment checks for sandbox detection debugging.

--- Hardware Checks ---
RAM: 3 GB (threshold: 8 GB) -> FAIL
CPU Cores: 2 (threshold: 4) -> FAIL
Disk Size: 749 GB (threshold: 250 GB) -> PASS

--- Timing Checks ---
System Uptime: 487 minutes (threshold: 10 min) -> PASS
Sleep(100ms) actual: 125 ms -> PASS

--- Environment Checks ---
Process Count: 121 (threshold: 30) -> PASS
Recent Files: 68 (threshold: 5) -> PASS
Visible Windows: 11 (threshold: 5) -> PASS

--- Security Checks ---
IsDebuggerPresent: NO (PASS)
Hypervisor Bit (CPUID): CLEAR (PASS)

--- Display ---
[... truncated; full sample at ``sample.txt`` (approx. 5 more lines) ...]
```

## Detection

Fingerprint requires `=== System Information ===` (Title
case) AND `=== Anti-Sandbox Diagnostics ===` AND
`Mode: V2` substrings. The Title-case section names rule
out `CSEnvVarDumpStealer` which uses ALL-CAPS headers
(`=== SYSTEM INFORMATION ===`). The verbatim diagnostic
block is the most distinguishing single anchor; no other
documented stealer exposes its sandbox-detection logic
this way. During triage, the per-check threshold lines
(`RAM: 3 GB (threshold: 8 GB) -> FAIL`) reveal the
builder`s configured evasion bounds and can be tracked
across samples to detect threshold tuning.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1497 Virtualization/Sandbox Evasion](https://attack.mitre.org/techniques/T1497/)
- [T1497.001 System Checks](https://attack.mitre.org/techniques/T1497/001/)
- [T1497.003 Time Based Evasion](https://attack.mitre.org/techniques/T1497/003/)
- [T1622 Debugger Evasion](https://attack.mitre.org/techniques/T1622/)

## Related families

- [`lumma`](../lumma/)
- [`typhon-stealer`](../typhon_stealer/)
- [`akira-stealer`](../akira_stealer/)
- [`rhadamanthys`](../rhadamanthys/)
- [`vidar`](../vidar/)

## References

- https://outpost24.com/blog/lummac2-anti-sandbox-technique-trigonometry-human-detection/
- https://thehackernews.com/2023/11/lummac2-malware-deploys-new.html
- https://blog.talosintelligence.com/typhon-reborn-v2-features-enhanced-anti-analysis/
- https://www.glueckkanja.com/en/posts/2025-06-16-quiet-breach
- https://www.trendmicro.com/en_us/research/25/j/how-vidar-stealer-2-upgrades-infostealer-capabilities.html
- https://attack.mitre.org/techniques/T1497/
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
