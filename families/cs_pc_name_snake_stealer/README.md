# CSPcNameSnakeStealer

CSPcNameSnakeStealer is a CyStack-coined identifier for an
eleven-line minimal `system_info.txt` panel distributed
through the `@BRADLOGS / BRADMAX` Telegram channel inside
`!! 2025 NOV.part001.rar` packs at
`[<TAG>]@BRADLOGS (BRADMAX)/system_info.txt` victim folders.
The body is a flat `key: value` block with all-lowercase
snake_case keys and short-form field abbreviations:
`username`, `pc_name`, `os`, `ram`, `cpu`, `gpu`, `mac`,
`hwid`, `ip`, `country`, `city`. The `os:` value is the
Python `platform.platform()` dash-joined shape
(`Windows-10-10.0.19045-SP0`), and the `hwid:` value is
the classic Windows `GetSystemUUID` format (8-4-4-4-12
hex with dashes, trailing segment matching the `mac:`
value with dashes stripped).

When the panel cannot resolve geo-IP, it emits the
literal `Unknown` placeholder for `ip`, `country`, and
`city`. The Python-builder OS shape pairs this format
with `CSPyHostTimeStealer` as a sibling panel that the
same `@BRADLOGS / BRADMAX` aggregator distributes; this
eleven-key variant carries richer device metadata
(MAC, HWID, CPU, GPU, RAM) but omits the timestamp.
Family attribution is provisional pending a published
threat-intel mapping for this layout.

**Also known as:** `BRADMAX minimal snake_case system_info.txt`, `11-field pc_name/mac/hwid snake_case panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `BRADMAX`
**Distribution channels:** `@BRADLOGS`

## Targets

- Windows username
- Host metadata: hostname (pc_name), MAC address, HWID UUID
- OS fingerprint via Python `platform.platform()` output
- Hardware inventory: CPU model, GPU model, RAM size
- Victim public IP plus country / city (placeholder Unknown when geo-IP fails)

## Variants

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
username: <redacted>
pc_name: DESKTOP-M2ASVT3
os: Windows-10-10.0.19045-SP0
ram: 5.93 GB
cpu: Intel(R) Core(TM) i3 CPU         550  @ 3.20GHz
gpu: NVIDIA GeForce GTS 450
mac: <redacted>
hwid: <redacted>
ip: <redacted>
country: Unknown
city: <redacted>
```

## Detection

Fingerprint requires all four line-anchored short-form
keys: `username:`, `pc_name:`, `mac:`, `hwid:`. The
combination of lowercase snake_case keys with these
short-form abbreviations (no `_address` suffix on `mac`,
no `_id` suffix on `hwid`, no `computer_` prefix on
`pc_name`) cannot collide with any other registered
parser. During triage, treat the family attribution as
unknown: the format is structurally a Python-builder
panel (`platform.platform()` OS shape) but no curated
CTI source maps the 11-key layout to a specific named
family. Geo-IP placeholders (`Unknown`) indicate the
victim was offline or behind a firewall during panel
exfiltration.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)

## Related families

- [`cs-py-host-time-stealer`](../cs_py_host_time_stealer/)
- [`cs-wmic-dump-stealer`](../cs_wmic_dump_stealer/)
- [`pyinfo-stealer`](../pyinfo_stealer/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADLOGS
