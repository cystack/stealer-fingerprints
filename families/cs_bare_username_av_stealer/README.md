# CSBareUsernameAVStealer

CSBareUsernameAVStealer is a CyStack-coined identifier
for a bare 3-line panel-summary `System.txt` observed
inside `!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/System.txt` victim folders. The body has
just three flush-left lines: `IP: <ipv4 or N/A>`,
`Username: <user>[<machine>]`, and `AntiVirus:
<product list>`. No HWID, no hostname header, no
hardware inventory, no harvested-credential count line,
no geo block.

The `Username:` value carries the `<user>[<machine>]`
bracketed-machine-label shape: the leading token is the
OS user name, the bracketed token is the panel`s
collected machine label (SMBIOS product name, build
tag, or VM hostname depending on what the panel
captured). SentinelOne Labs / Beazley Security / Talos
document this exact bracketed shape for PXA Stealer
captions, but the canonical PXA caption fingerprint
requires the `Data Information: CK:` count line which
this body lacks. The 3-field shape could be a heavily-
stripped PXA panel where operator-side enrichment fully
failed, or a separate panel that adopted the PXA field
set. Family stays CyStack-coined pending a curated CTI
confirmation; same conservative attribution rationale
as `CSGADSPanelStealer`.

**Also known as:** `Bare IP/Username/AntiVirus panel summary`, `Stripped PXA-shape 3-field System.txt`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Public IPv4 (often `N/A` when geo-IP lookup fails)
- OS user name + bracketed machine label
(`Username: bgome[X1CARBON]`)
- Installed antivirus product list

## Variants

### `cystack_78329a08`

**Attribution confidence:** `unknown`

**Field keys:**
`AntiVirus`, `IP`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
IP: <redacted>
Username: <redacted>
AntiVirus: Windows Defender
```

## Detection

Fingerprint requires line-anchored `IP:` AND
`Username:` AND `AntiVirus:` (CamelCase `V`) keys PLUS
the `Username:` value matching the `<user>[<machine>]`
bracketed-machine-label shape PLUS absence of
`Data Information:` (rules out PXACaption) AND
`Browser Data:` (rules out CSGADSPanel) AND `Browers:`
(rules out CSBrowersStealer). During triage, the
bracketed machine label often carries the victim`s
laptop model (e.g. `X1CARBON` for Lenovo ThinkPad X1
Carbon, `FLAREVM` for sandbox VMs) or build tag, which
is useful for victim-fingerprinting beyond the bare
username.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1518.001 Security Software Discovery](https://attack.mitre.org/techniques/T1518/001/)

## Related families

- [`pxa-stealer`](../pxa_stealer/)
- [`cs-gads-panel-stealer`](../cs_gads_panel_stealer/)
- [`cs-browers-stealer`](../cs_browers_stealer/)

## References

- https://www.sentinelone.com/labs/ghost-in-the-zip-new-pxa-stealer-and-its-telegram-powered-ecosystem/
- https://labs.beazley.security/articles/ghost-in-the-zip-or-new-pxa-stealer-and-its-telegram-powered-ecosystem
- https://blog.talosintelligence.com/new-pxa-stealer/
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
