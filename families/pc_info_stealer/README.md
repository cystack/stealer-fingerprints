# PCInfo Stealer

Unidentified `PC Username` / `PC Name` stealer observed inside
`@BRADMAX` aggregator packs alongside Remus, Aetheris, Snake,
and Minimal logs. The `System_Info.txt` uses two
triple-equals section headers (`=== SYSTEM INFORMATION ===`)
and four distinctive `PC ...` field keys.

**Variants observed:** 2
**Top attribution confidence:** `unknown`

## Variants

### `cystack_47382a1a`

**Attribution confidence:** `unknown`

**Field keys:**
`CPU`, `Country`, `HWID`, `IP`, `MAC`, `PC Name`, `PC Username`, `RAM`, `Resolution`

**Filenames:** `System_Info.txt`

**Sample (sanitized):**

```
=== SYSTEM INFORMATION ===

PC Username: Mayss
PC Name: DESKTOP-E8C0A33
HWID: <redacted>
MAC: <redacted>
Resolution: 1920x1080
RAM: 15.96 GB
CPU: Intel(R) Core(TM) i7-7700K CPU @ 4.20GHz

=== NETWORK INFO ===

IP: <redacted>
[... truncated; full sample at ``sample.txt`` (approx. 2 more lines) ...]
```

### `cystack_b27f73d9`

**Attribution confidence:** `unknown`

**Field keys:**
`CPU`, `HWID`, `IP`, `MAC`, `PC Name`, `PC Username`, `RAM`, `Resolution`

**Filenames:** `System_Info.txt`

**Sample (sanitized):**

```
=== SYSTEM INFORMATION ===

PC Username: Mayss
PC Name: DESKTOP-E8C0A33
HWID: <redacted>
MAC: <redacted>
Resolution: 1920x1080
RAM: 15.96 GB
CPU: Intel(R) Core(TM) i7-7700K CPU @ 4.20GHz

=== NETWORK INFO ===

IP: <redacted>
```

## Detection

Field keys prefixed with `PC ` (`PC Username:`, `PC Name:`,
`PC Owner:`, `PC Domain:`) together with the
`=== SYSTEM INFORMATION ===` section header are the cleanest
signature.

## MITRE ATT&CK

- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
