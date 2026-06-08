# CSGeoSysInfoStealer

CSGeoSysInfoStealer is a CyStack-coined identifier for
a single-section `=== SYSTEM INFO ===` `system.txt` panel
distributed through the `@BRADMAX` Telegram channel.
The body carries 8 flat `Key: Value` lines under one
triple-equals header: `Computer`, `User`, `OS`, `IP`,
`Country`, `CPU`, `GPU`, `RAM`. Hardware fields are
present but typically empty on observed bodies; the
`OS` value is the literal placeholder `Windows 10/11`
rather than a real version string.

The format shares the `=== SYSTEM INFO ===` header with
CSStatsSectionStealer (iteration #34) but ships an
entirely different field set and no second STATS
section. Same operator channel `@BRADMAX` but a
different builder.

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Distribution channels:** `@BRADMAX`

## Targets

- Browser saved credentials and cookies
- IP and geo fingerprint
- System hardware and OS inventory

## Variants

### `cystack_829961c1`

**Distribution channel:** `@BRADMAX`

**Attribution confidence:** `unknown`

**Field keys:**
`CPU`, `Computer`, `Country`, `GPU`, `IP`, `OS`, `RAM`, `User`

**Filenames:** `system.txt`

**Sample (sanitized):**

```
=== SYSTEM INFO ===

Computer: JACKSON
User: jacks
OS: Windows 10/11
IP: <redacted>
Country: The Netherlands (NL)
CPU: 
GPU: 
RAM: 
```

## Detection

The header `=== SYSTEM INFO ===` plus the IP + Country
geo block plus the bare-key hardware tail is the
fingerprint. The negative anchor on `=== STATS ===`
separates this panel from CSStatsSectionStealer, which
uses the same header but adds a count section. The
`OS: Windows 10/11` literal placeholder is a strong
tell that the panel never enumerated the actual
version, useful as a triage signal.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1016 System Network Configuration Discovery](https://attack.mitre.org/techniques/T1016/)

## Related families

- [`csstatssectionstealer`](../csstatssectionstealer/)

## References

- https://blog.lexfo.fr/infostealer-parser.html
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADMAX
