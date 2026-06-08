# CSStealerCloudInfoStealer

CSStealerCloudInfoStealer is a CyStack-coined
identifier for the STEALERCLOUD broker`s third file
shape: a stripped 2-field `Information.txt` containing
just a `GPU:` line and a `Displays:` (plural) line
with multi-space value padding after each colon. The
body carries no banner, no operator handle, and no
other fields. Same `STEALERCLOUD` panel brand and
`@STEALERBOSS` distribution channel as
CSHardwareTailStealer (Info.txt YAML hardware tail)
and CSStealerCloudUserInfoStealer (UserInformation.txt
locale + geo block); the broker ships per-victim
context split across three filename shapes.

The stripped 2-field form likely reflects a fallback
path the broker takes when no canonical source-stealer
panel was available, falling back to a bare Win32
WMI `Win32_VideoController` + `Win32_DisplayMonitor`
enumeration. Family attribution is provisional pending
a curated CTI report.

**Variants observed:** 1
**Top attribution confidence:** `low`
**Operator panel brands:** `STEALERCLOUD`
**Distribution channels:** `@STEALERBOSS`

## Targets

- Victim GPU model (from WMI `Win32_VideoController`)
- Victim display resolution (from WMI `Win32_DisplayMonitor`)

## Variants

### `STEALERCLOUD`

**Fingerprint id:** `stealercloud`

**Distribution channel:** `@STEALERBOSS`

**Attribution confidence:** `low`

**Field keys:**
`CPU`, `Category`, `Cores/Threads`, `Country`, `Displays`, `GPU`, `IP`, `Path`, `RAM`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
GPU:           NVIDIA GeForce GTX 1060 with Max-Q Design
Displays:      1920x1080
```

## Detection

The line-anchored `GPU:` plus line-anchored `Displays:`
(plural) fingerprint is unique across the registry. The
plural `Displays:` form rules out sibling panels that
emit singular `Display:` or `Display Resolution:`. Pair
this label with CSHardwareTailStealer Info.txt and
CSStealerCloudUserInfoStealer UserInformation.txt files
in the same `STEALERCLOUD#<NN>` victim folder for the
full per-victim summary.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)

## Related families

- [`cshardwaretailstealer`](../cshardwaretailstealer/)
- [`csstealerclouduserinfostealer`](../csstealerclouduserinfostealer/)

## References

- @STEALERBOSS
