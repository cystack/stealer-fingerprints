# DiskInfo Stealer

Unidentified `Disk Capacity` / `Disk Free` stealer observed
inside `@BRADMAX` aggregator packs as a sibling of Remus,
Aetheris, Snake, Minimal, and PCInfo logs. The
`System_Info.txt` is a flat six-line key/value record with no
banner, no IP, no timestamp, and no CPU/GPU/display fields.
Verified victims have included Windows Defender Application
Guard sandbox VMs, suggesting heavy automated-execution
poisoning of this corpus.

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Variants

### `cystack_d665d19f`

**Attribution confidence:** `unknown`

**Field keys:**
`Computer`, `Disk Capacity`, `Disk Free`, `Memory`, `OS`, `User`

**Filenames:** `System_Info.txt`

**Sample (sanitized):**

```
User: WDAGUtilityAccount
Computer: WIN-2LFPFCN9295
OS: Windows Server 2019 Standard Evaluation
Memory: 4095 MB
Disk Capacity: 65 GB
Disk Free: 19 GB
```

## Detection

The unique combination of `Disk Capacity:` and `Disk Free:`
fields without any CPU/GPU/IP/banner is the signature. The
flat six-line record makes the layout easy to recognise even
without an explicit family banner.

## MITRE ATT&CK

- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1497 Virtualization/Sandbox Evasion](https://attack.mitre.org/techniques/T1497/)
