# CSBrowersStealer

CSBrowersStealer is a CyStack-coined identifier for a
nine-line `Information.txt` panel summary observed inside `!!
2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` victim folders
(e.g. `1110_CA_<IPv4>_18-10-25/`). The body lists IP,
Country (flag emoji + ISO code + country name), Username,
Antivirus, then four standalone section keys `Facebook:`,
`Extensions:`, `Wallets:`, `Applications:` (each carrying a
literal comma-separated value or `None`), and closes with a
pipe-separated count line under the developer-misspelled key
`Browers:` (sic, missing `s`):
`CK:<n>|PW:<n>|AF:<n>|CC:<n>|GG:<n>|TT:<n>|FB:<n>|HOST:<bool>`.
No HWID, hostname, OS, or hardware inventory is shipped, so
the artifact is a victim-side fingerprint view rather than a
full system-info export.

The `CK|PW|AF|CC|FB` subset overlaps with the publicly
documented PXA Stealer count notation, but the per-section
split (standalone `Facebook:`, `Extensions:`, `Wallets:`,
`Applications:` lines rather than the PXA caption single `Data
Information:` line), the `Browers:` typo, and the
`GG`/`TT`/`HOST:FALSE` count columns are not described in any
public source. Family attribution is provisional pending a
published threat-intel mapping for this exact panel layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator panel summary`
- Variants observed: **1**
- CyStack observations represented: **15,869**

## What it targets

- Browser saved credentials, cookies, autofill (counts only)
- Credit-card data (count flag)
- Google session artifacts (count, suspected)
- Twitter/X session artifacts (count, suspected)
- Facebook session cookies (count flag)
- Browser extensions (per-victim list)
- Crypto wallet extensions and desktop clients (per-victim list)
- Installed applications of interest (per-victim list)

## Detection notes

Fingerprint requires the `Browers: CK:` substring (the
developer typo plus the leading count column) plus
line-anchored `IP:`, `Country:`, `Username:`, and
`Antivirus:` keys. The misspelling of `Browers` is the
disambiguator: no other cataloged format uses the typo. The lowercase-v `Antivirus:` distinguishes the
format from PXA's caption shape (`AntiVirus:`, as seen in the PXA caption) and the GADS panel-summary shape
(also `AntiVirus:`, as seen in CSGADSPanelStealer).
During triage, treat the family attribution as unknown:
the panel summary lacks the harvested credential bodies
that would allow follow-on family fingerprinting, and the
panel's underlying stealer cannot be identified from the
summary fields alone.

## Observed log variants

### `v_5d3e7c5ff44f847c51a6ef2713ecb340`

- Format ID: `cs-browers-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **15,869**
- Representative sample: [open sample](samples/v_5d3e7c5ff44f847c51a6ef2713ecb340/sample.txt)
- Sample SHA-256: `505d4712952f10ce4695ac9bae96401d5784539458b4d739f8cb6ef082a41c40`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Browers: CK:`
- Field labels: `Antivirus`, `Country`, `Ip`, `Username`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
