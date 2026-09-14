# CSBareUsernameAVStealer

CSBareUsernameAVStealer is a CyStack-coined identifier for a
bare 3-line panel-summary `System.txt` observed inside `!!
2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/System.txt` victim folders. The body has just
three flush-left lines: `IP: <ipv4 or N/A>`, `Username:
<user>[<machine>]`, and `AntiVirus: <product list>`. No HWID,
no hostname header, no hardware inventory, no
harvested-credential count line, no geo block.

The `Username:` value carries the `<user>[<machine>]`
bracketed-machine-label shape: the leading token is the OS
user name, the bracketed token is the panel's collected
machine label (SMBIOS product name, build tag, or VM hostname
depending on what the panel captured). Public research
documents this exact bracketed shape for PXA Stealer captions,
but the canonical PXA caption fingerprint requires the `Data
Information: CK:` count line which this body lacks. The
3-field shape could be a heavily-stripped PXA panel where
operator-side enrichment fully failed, or a separate panel
that adopted the PXA field set. Family stays CyStack-coined
pending a published confirmation; same conservative
attribution rationale as `CSGADSPanelStealer`.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Bare IP/Username/AntiVirus panel summary`, `Stripped PXA-shape 3-field System.txt`
- Variants observed: **0**

## What it targets

- Public IPv4 (often `N/A` when geo-IP lookup fails)
- OS user name + bracketed machine label
(`Username: <user>[X1CARBON]`)
- Installed antivirus product list

## Detection notes

Fingerprint requires line-anchored `IP:` AND
`Username:` AND `AntiVirus:` (CamelCase `V`) keys PLUS
the `Username:` value matching the `<user>[<machine>]`
bracketed-machine-label shape PLUS absence of
`Data Information:` (rules out PXACaption) AND
`Browser Data:` (rules out CSGADSPanel) AND `Browers:`
(rules out CSBrowersStealer). During triage, the
bracketed machine label often carries the victim's
laptop model (e.g. `X1CARBON` for Lenovo ThinkPad X1
Carbon, `FLAREVM` for sandbox VMs) or build tag, which
is useful for victim-fingerprinting beyond the bare
username.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)
- [CSBrowersStealer](../cs-browers-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
