# CSPyHostTimeStealer

CSPyHostTimeStealer is a CyStack-coined identifier for a
Python-based stealer whose `system_info.txt` is reduced to a
4-line `User:` / `Host:` / `OS:` / `Time:` block with no
hardware, network, or locale fields. Distributed through the
`@BRADLOGS` Telegram channel (active mirror of the
`@BRADMAX` / `t.me/bradmax_cloud` aggregator that deepdarkCTI
catalogs as a "Redline and Raccoon Data Logs" reseller), with
per-victim folders named `[<CC>]@BRADLOGS (BRADMAX)/`.

Two structural traits point at a Python builder. The `OS:`
value is dash-joined `platform.platform()` output
(`Windows-11-10.0.26200-SP0`), and the `Time:` value carries
six-digit microsecond precision - the default
`str(datetime.now())` format. No C# or .NET stealer in the
surveyed catalogues emits those two shapes together. The
bare `Host:` key (rather than `Hostname:` / `Computer Name:`)
is also unusual.

Family attribution is provisional pending a published threat-
intel mapping for this layout. The aggregator self-labels
content as Redline / Raccoon but the body lacks every Redline
canonical anchor (`Operation System:` typo, `Hardwares:`
block) and every Raccoon canonical anchor (`User ID:` UUID,
`Last seen:` JS-date), so the channel label cannot be
trusted.

**Also known as:** `@BRADLOGS minimal system_info.txt`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `BRADMAX`
**Distribution channels:** `@BRADLOGS`

## Targets

- Victim username and hostname
- Operating-system platform string
- Wall-clock exfiltration timestamp

## Variants

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Field keys:**
`Host`, `OS`, `Time`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
    User: youss
Host: ooo
OS: Windows-11-10.0.26200-SP0
Time: 2025-11-07 <ip>.041050
```

## Detection

Triple-guard fingerprint: all four line-anchored keys
(`User:`, `Host:`, `OS:`, `Time:`) must appear, the `OS:`
value must match the dash-joined `platform.platform()` shape
(`Windows-<n>-...`), and the `Time:` value must carry six-
digit microsecond precision (`.\d{6}`). The microsecond-
precision Time field is the strongest single signal that
rules out non-Python builders. False-positive risk is low
because no other registered parser uses `Host:` as a bare
key with this exact Time-value shape.

## MITRE ATT&CK

- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1124 System Time Discovery](https://attack.mitre.org/techniques/T1124/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)

## References

- https://t.me/BRADLOGS
- https://t.me/bradmax_cloud
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
