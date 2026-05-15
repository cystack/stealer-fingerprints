# CSGADSPanelStealer

CSGADSPanelStealer is a CyStack-coined identifier for a
compact five-line `Information.txt` panel summary observed
inside `!! 2026 JAN.part01.rar`-style aggregator packs in
`[CC]<IPv4>/Information.txt` victim folders. The body lists
IP, Country (flag emoji + ISO code + country name), User,
AntiVirus, and a `Browser Data:` count line in pipe-separated
PXA-style notation: `CK:<n>|PW:<n>|AF:<n>|CC:<n>|FB:<n>|GADS:<bool>`.
No HWID, hostname, OS, or hardware inventory accompanies
the summary, so the panel is a victim-side fingerprint view
rather than a full system-info export.

The `CK|PW|AF|CC|FB` count abbreviations are documented by
SentinelOne Labs and Beazley Security as the PXA Stealer
data-tracker format in the `Ghost in the Zip` joint research,
and the `[CC]<IP>` folder convention matches the PXA panel
exfiltration shape (`[CC_IPADDRESS]_HOSTNAME.zip`). The
attribution is suggestive but not definitive: PXA's
documented victim-side `system_info.txt` uses a verbose
Vietnamese-headered `Thông tin hệ thống` block of WMI
snake_case keys (claimed by `PXAParser`), and the trailing
`GADS` (Google Ads account flag) column plus the bare
`AntiVirus:` line are not described in any surveyed curated
CTI source. The format may be a panel-summary view from a
PXA log-ingest pipeline or an unrelated Telegram aggregator
that adopted the PXA count notation.

Family attribution is provisional pending a published
threat-intel mapping for this exact panel-summary layout.

**Also known as:** `!! 2026 JAN aggregator panel summary`

**Variants observed:** 3
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials, cookies, autofill (counts only)
- Credit-card data (count flag)
- Facebook session cookies (count flag)
- Google Ads account presence flag

## Variants

### `cystack_2ba34ed5`

**Attribution confidence:** `unknown`

**Field keys:**
`AntiVirus`, `Browser Data`, `Country`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    IP: <redacted>
Country: 🇦🇴 AO - Angola
User: ATT
AntiVirus: Windows Defender
Browser Data: CK:3242|PW:30|AF:122|CC:0|FB:2|GADS:False
```

### `cystack_8479d801`

**Attribution confidence:** `unknown`

**Field keys:**
`AntiVirus`, `Browser Data`, `IP`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
User: WISEDON COMPUTERS EN
AntiVirus: Windows Defender
Browser Data: CK:18469|PW:69|AF:745|CC:0|FB:52|GADS:False
```

### `cystack_e76892c4`

**Attribution confidence:** `unknown`

**Field keys:**
`AntiVirus`, `Browser Data`, `Country`, `IP`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: 🇧🇩 BD - Bangladesh
User: hp
AntiVirus: Windows Defender
Browser Data: CK:3325|PW:43|AF:416|CC:0|FB:2|GADS:False
```

## Detection

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

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`pxa-stealer`](../pxa_stealer/)

## References

- https://www.sentinelone.com/labs/ghost-in-the-zip-new-pxa-stealer-and-its-telegram-powered-ecosystem/
- https://labs.beazley.security/articles/ghost-in-the-zip-or-new-pxa-stealer-and-its-telegram-powered-ecosystem
