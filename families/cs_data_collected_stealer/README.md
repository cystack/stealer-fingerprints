# CSDataCollectedStealer

CSDataCollectedStealer is a CyStack-coined identifier for a
three-line `Information.txt` notification stub observed
inside `!! 2025 NOV.part001.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` per-victim
folders (e.g. `2047_UN_111.148.132.210_25-10-25/
Information.txt`). The body is two bare `Key: Value` lines
(`Computer:`, `IP:`) followed by the plain-English
`Data collected successfully` completion ack.

The file is a panel-side notification, not a data report.
It tells the operator that exfiltration finished on this
victim. The actual harvested credentials live in sibling
files inside the per-victim folder where any follow-on
family fingerprinting should run. Structurally similar to
CSNewLogStealer (also a notification stub from the same
aggregator-pack family), but missing the banner and the
emoji-prefixed TOC enumeration that CSNewLogStealer
carries. Family attribution is provisional pending a
published threat-intel mapping for this layout: the body
is too minimal to attribute to a specific builder.

**Also known as:** `!! 2025 NOV aggregator notification stub`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `Data collected successfully ack`

## Targets

- Browser saved credentials and cookies (in sibling cred files)
- System hostname and public IP for victim fingerprinting

## Variants

### `Data collected successfully ack`

**Fingerprint id:** `data_collected_successfully_ack`

**Attribution confidence:** `unknown`

**Field keys:**
`Computer`, `IP`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Computer: DESKTOP-OVSAVUG
IP: <redacted>
Data collected successfully
```

## Detection

Fingerprint requires the literal `Data collected
successfully` substring (the panel-unique ack message)
plus line-anchored `Computer:` and `IP:` keys as cross-
confirmation. The ack literal alone is enough to
discriminate against any currently-registered parser, but
the two-key pair guards against prose that quotes the
phrase out of context. During triage, treat family
attribution as unknown: this file is a notification stub
with no harvested credential body, and the underlying
stealer cannot be identified from the host + IP + ack
triple alone.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)

## Related families

- [`cs-newlog-stealer`](../cs_newlog_stealer/)
- [`cs-inz-ext-stealer`](../cs_inz_ext_stealer/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://github.com/MalBeacon/what-is-this-stealer
