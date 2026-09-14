# CSDataCollectedStealer

CSDataCollectedStealer is a CyStack-coined identifier for a
three-line `Information.txt` notification stub observed
inside `!! 2025 NOV.part001.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` per-victim
folders (e.g. `2047_UN_<IPv4>_25-10-25/
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

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 NOV aggregator notification stub`
- Variants observed: **1**
- CyStack observations represented: **265**

## What it targets

- Browser saved credentials and cookies (in sibling cred files)
- System hostname and public IP for victim fingerprinting

## Detection notes

Fingerprint requires the literal `Data collected
successfully` substring (the panel-unique ack message)
plus line-anchored `Computer:` and `IP:` keys as cross-confirmation. The ack literal alone is enough to
discriminate against any currently cataloged format, but
the two-key pair guards against prose that quotes the
phrase out of context. During triage, treat family
attribution as unknown: this file is a notification stub
with no harvested credential body, and the underlying
stealer cannot be identified from the host + IP + ack
triple alone.

## Observed log variants

### `v_1629258e7c5a7787a73c5a354e94dde4`

- Format ID: `cs-data-collected-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `Data collected successfully ack`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **265**
- Representative sample: [open sample](samples/v_1629258e7c5a7787a73c5a354e94dde4/sample.txt)
- Sample SHA-256: `61904a4cfa2b6411cc121a3b1a4f0619cdb2f41568575bccba79fca87e9a60a0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Data collected successfully`
- Field labels: `Computer`, `IP`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- [CSNewLogStealer](../cs-new-log-stealer/)
- [CSInzExtStealer](../cs-inz-ext-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
