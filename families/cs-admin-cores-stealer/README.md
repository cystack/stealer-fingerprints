# CSAdminCoresStealer

CSAdminCoresStealer is a CyStack-coined identifier for a
9-field bare-key `System.txt` panel observed inside `!! 2025
DEC.part01.rar` aggregator packs at
`<id>_<CC>_<IPv4>_<DD-MM-YY>/System.txt` victim folders. The
body is a flat key-value block with uppercase plural-noun
keys (`USERNAME`, `CORES`, `ADMIN`) and no banner, no section
dividers, no trailing footer.

The `LID:` line carries an affiliate-style `<name>-<8-hex>`
value (e.g. `TINY-47F174B7`) that mirrors Lumma Stealer's
pre-March-2025 LID convention documented in public
affiliate-side writeups. The body shape diverges sharply from
canonical Lumma's verbose `- Key: Value` dash-prefix format,
so family attribution stays CyStack-coined pending a published
confirmation: the LID format could be a coincidence (multiple
stealers may use this name) or a Lumma fork with a radically
reshaped panel template.

The `CPU:` value can carry virtualization markers (the
observed sample reads `AMD EPYC Processor (with IBPB)`, where
`IBPB` is the Spectre-v2 mitigation flag QEMU / KVM exposes in
the guest CPU model name). The `IP:` value falls back to
`127.0.0.1` when no external IPv4 is available at exfil time.

Public reporting and the community stealer-format catalogues
do not document a family that emits this 9-field bare-key
uppercase-noun layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `TINY-affiliate Lumma-like minimal System.txt`, `Bare-key ADMIN/CORES panel`
- Variants observed: **1**
- CyStack observations represented: **5**

## What it targets

- Browser-saved credentials (the panel itself ships only
system info; harvested credentials live in sibling files)
- Victim hostname / username
- Hardware fingerprint (HWID, OS, CPU model, RAM, core count)
- Privilege state (`ADMIN: Yes/No` flag)
- Affiliate / campaign identifier (`LID: <name>-<hex>`)

## Detection notes

Fingerprint requires line-anchored `LID:` AND `CORES:`
AND `ADMIN:` keys plus a `LID:` value matching the
`<name>-<hex>` affiliate-style format. The combination is
unique across this catalog: canonical Lumma uses `- LID:`
with a leading dash, and no other cataloged format uses bare `CORES:` or `ADMIN:`
uppercase keys. During triage, treat the `LID:` value as
an operator affiliate / campaign identifier (parsable as
two fields: name plus hex) so logs from the same
distribution channel cluster naturally. The `127.0.0.1`
IP fallback marks the victim as either an offline
machine at exfil time or a sandbox; downstream consumers
can filter on the loopback range.

## Observed log variants

### `v_b3b65e6d11f16cf0d060e57cd36b1d44`

- Format ID: `cs-admin-cores-stealer`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_b3b65e6d11f16cf0d060e57cd36b1d44/sample.txt)
- Sample SHA-256: `7ae71f6a6b8431aac51ba766aedbc92c867e932699a66aa00f8b1afc2cf26c4c`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `ADMIN`, `CORES`, `LID`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- [Lumma](../lumma/)
- [CSALStealer](../csal-stealer/)
- [CSBabaStealer](../cs-baba-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
