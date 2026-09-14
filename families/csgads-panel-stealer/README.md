# CSGADSPanelStealer

CSGADSPanelStealer is a CyStack-coined identifier for a
compact five-line `Information.txt` panel summary observed
inside `!! 2026 JAN.part01.rar`-style aggregator packs in
`[CC]<IPv4>/Information.txt` victim folders. The body lists
IP, Country (flag emoji + ISO code + country name), User,
AntiVirus, and a `Browser Data:` count line in pipe-separated
PXA-style notation:
`CK:<n>|PW:<n>|AF:<n>|CC:<n>|FB:<n>|GADS:<bool>`. No HWID,
hostname, OS, or hardware inventory accompanies the summary,
so the panel is a victim-side fingerprint view rather than a
full system-info export.

The `CK|PW|AF|CC|FB` count abbreviations are publicly
documented as the PXA Stealer data-tracker format, and the
`[CC]<IP>` folder convention matches the PXA panel
exfiltration shape (`[CC_IPADDRESS]_HOSTNAME.zip`). The
attribution is suggestive but not definitive: PXA's documented
victim-side `system_info.txt` uses a verbose
Vietnamese-headered `Thông tin hệ thống` block of WMI
snake_case keys, as documented in the PXA profile, and the trailing
`GADS` (Google Ads account flag) column plus the bare
`AntiVirus:` line are not described in any public reporting.
The format may be a panel-summary view from a PXA log-ingest
pipeline or an unrelated Telegram aggregator that adopted the
PXA count notation.

Family attribution is provisional pending a published
threat-intel mapping for this exact panel-summary layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `!! 2026 JAN aggregator panel summary`
- Variants observed: **1**
- CyStack observations represented: **24,995**

## What it targets

- Browser saved credentials, cookies, autofill (counts only)
- Credit-card data (count flag)
- Facebook session cookies (count flag)
- Google Ads account presence flag

## Detection notes

Fingerprint requires line-anchored `IP:`, `Country:`,
`User:`, `AntiVirus:` keys plus the `Browser Data: CK:`
substring and the `|GADS:` substring. The `|GADS:` token
is the disambiguator: PXA Stealer Telegram bot captions
use the same pipe-separated count notation but extend it
with `Sites|Wallets|Apps` columns rather than a `GADS`
flag. During triage, treat the family attribution as
unknown - the underlying stealer cannot be identified
from the panel summary alone, and the per-victim folder
is missing the harvested credential bodies that would
allow follow-on family fingerprinting.

## Observed log variants

### `v_edb227dfc327e94eb4f8726bf60b7c89`

- Format ID: `cs-gads-panel-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **24,995**
- Representative sample: [open sample](samples/v_edb227dfc327e94eb4f8726bf60b7c89/sample.txt)
- Sample SHA-256: `1bcb7dc74275e6505415c7cafd443acd743af2b0240f8d8ea349a41ac45398d9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Browser Data: CK:`, `\|AF:`, `\|CC:`, `\|PW:`
- Field labels: `IP`, `User`


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

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
