# Minimal Stealer

Unidentified minimal-format stealer observed inside `@BRADMAX`
aggregator packs alongside Remus, Aetheris, and Snake logs.
The `System_Info.txt` is a flat seven-line key/value record
with no banner, no IP, and no time, barely enough to compose an
IOC. Verified victims include Windows Defender Application Guard
sandbox VMs.

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Variants

### `cystack_11d74302`

**Attribution confidence:** `unknown`

**Field keys:**
`CPU`, `Computer`, `GPU`, `OS`, `RAM`, `Resolution`, `User`

**Filenames:** `System_Info.txt`

**Sample (sanitized):**

```
User: WDAGUtilityAccount
Computer: WIN-2LFPFCN9295
CPU: Intel(R) Xeon(R) Gold 6133 CPU @ 2.50GHz
GPU: Microsoft Basic Render Driver
OS: Windows Server 2019 Standard Evaluation
RAM: 3 GB
Resolution: 1536x864
```

## Detection

Flat seven-line record headed by `User:` (no `Username` or
`User name` variant) is the primary trigger. The absence of
banner, IP, and timestamp distinguishes this layout from every
other family in this catalog.

## MITRE ATT&CK

- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1497 Virtualization/Sandbox Evasion](https://attack.mitre.org/techniques/T1497/)
