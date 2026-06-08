# CSAdminCoresStealer

CSAdminCoresStealer is a CyStack-coined identifier for a
9-field bare-key `System.txt` panel observed inside
`!! 2025 DEC.part01.rar` aggregator packs at
`<id>_<CC>_<IPv4>_<DD-MM-YY>/System.txt` victim folders.
The body is a flat key-value block with uppercase plural-
noun keys (`USERNAME`, `CORES`, `ADMIN`) and no banner, no
section dividers, no trailing footer.

The `LID:` line carries an affiliate-style `<name>-<8-hex>`
value (e.g. `TINY-47F174B7`) that mirrors Lumma Stealer`s
pre-March-2025 LID convention per Recorded Future`s
"Behind the Curtain" affiliate writeup and Outpost24`s
LummaC2 reference. The body shape diverges sharply from
canonical Lumma`s verbose `- Key: Value` dash-prefix format,
so family attribution stays CyStack-coined pending a
curated CTI confirmation: the LID format could be a
coincidence (multiple stealers may use this name) or a
Lumma fork with a radically reshaped panel template.

The `CPU:` value can carry virtualization markers (the
observed sample reads `AMD EPYC Processor (with IBPB)`,
where `IBPB` is the Spectre-v2 mitigation flag QEMU / KVM
exposes in the guest CPU model name). The `IP:` value
falls back to `127.0.0.1` when no external IPv4 is
available at exfil time.

A two-vendor curated CTI survey (TrendMicro, SentinelOne
Labs, Kaspersky, Cyfirma, SOCRadar, Cloudflare, Talos,
ANY.RUN, Microsoft TI, Mandiant / Google TAG, Recorded
Future, eSentire, Cybereason, BleepingComputer research,
CERT-AGID, Drweb, Proofpoint, Unit 42) and the public
stealer-format catalogues (MalBeacon / what-is-this-stealer,
fastfire / deepdarkCTI, Malpedia, RussianPanda, Lexfo) do
not document a family that emits this 9-field bare-key
uppercase-noun layout.

**Also known as:** `TINY-affiliate Lumma-like minimal System.txt`, `Bare-key ADMIN/CORES panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser-saved credentials (the panel itself ships only
system info; harvested credentials live in sibling files)
- Victim hostname / username
- Hardware fingerprint (HWID, OS, CPU model, RAM, core count)
- Privilege state (`ADMIN: Yes/No` flag)
- Affiliate / campaign identifier (`LID: <name>-<hex>`)

## Variants

### `cystack_d4351ed0`

**Attribution confidence:** `unknown`

**Field keys:**
`ADMIN`, `CORES`, `CPU`, `HWID`, `IP`, `LID`, `OS`, `RAM`, `USERNAME`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
OS: Windows
LID: TINY-47F174B7
HWID: <redacted>
IP: <redacted>
USERNAME: <redacted>
CPU: AMD EPYC Processor (with IBPB)
RAM: 18431 MB
CORES: 6
ADMIN: Yes
```

## Detection

Fingerprint requires line-anchored `LID:` AND `CORES:`
AND `ADMIN:` keys plus a `LID:` value matching the
`<name>-<hex>` affiliate-style format. The combination is
unique across the registry: canonical Lumma uses `- LID:`
with a leading dash (claimed by `LummaParser`), and no
other registered parser uses bare `CORES:` or `ADMIN:`
uppercase keys. During triage, treat the `LID:` value as
an operator affiliate / campaign identifier (parsable as
two fields: name plus hex) so logs from the same
distribution channel cluster naturally. The `127.0.0.1`
IP fallback marks the victim as either an offline
machine at exfil time or a sandbox; downstream consumers
can filter on the loopback range.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)

## Related families

- [`lumma`](../lumma/)
- [`cs-al-stealer`](../cs_al_stealer/)
- [`cs-baba-stealer`](../cs_baba_stealer/)

## References

- https://www.recordedfuture.com/research/behind-the-curtain-how-lumma-affiliates-operate
- https://outpost24.com/blog/everything-you-need-to-know-lummac2-stealer/
- https://blog.lexfo.fr/infostealer-parser.html
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
