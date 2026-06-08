# CSBrowersStealer

CSBrowersStealer is a CyStack-coined identifier for a
nine-line `Information.txt` panel summary observed inside
`!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` victim folders
(e.g. `1110_CA_205.20.164.61_18-10-25/`). The body lists IP,
Country (flag emoji + ISO code + country name), Username,
Antivirus, then four standalone section keys `Facebook:`,
`Extensions:`, `Wallets:`, `Applications:` (each carrying a
literal comma-separated value or `None`), and closes with a
pipe-separated count line under the developer-misspelled
key `Browers:` (sic, missing `s`):
`CK:<n>|PW:<n>|AF:<n>|CC:<n>|GG:<n>|TT:<n>|FB:<n>|HOST:<bool>`.
No HWID, hostname, OS, or hardware inventory is shipped, so
the artifact is a victim-side fingerprint view rather than a
full system-info export.

The `CK|PW|AF|CC|FB` subset overlaps with the PXA Stealer
count notation documented by SentinelOne Labs and Cisco
Talos, but the per-section split (standalone `Facebook:`,
`Extensions:`, `Wallets:`, `Applications:` lines rather
than the PXA caption single `Data Information:` line), the
`Browers:` typo, and the `GG`/`TT`/`HOST:FALSE` count
columns are not described in any surveyed curated CTI
source. Family attribution is provisional pending a
published threat-intel mapping for this exact panel layout.

**Also known as:** `!! 2025 OCT aggregator panel summary`

**Variants observed:** 4
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials, cookies, autofill (counts only)
- Credit-card data (count flag)
- Google session artifacts (count, suspected)
- Twitter/X session artifacts (count, suspected)
- Facebook session cookies (count flag)
- Browser extensions (per-victim list)
- Crypto wallet extensions and desktop clients (per-victim list)
- Installed applications of interest (per-victim list)

## Variants

### `cystack_0120da9d`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `Applications`, `Browers`, `Country`, `Extensions`, `Facebook`, `Ip`, `Username`, `Wallets`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Ip: <redacted>
Country: 🇧🇦 BA - Bosnia and Herzegovina
Username: <redacted>
Antivirus: Windows Defender
Facebook: No
Extensions: None
Wallets: None
Applications: None
Browers: CK:4844|PW:31|AF:1033|CC:0|GG:3|TT:2|FB:0|HOST:FALSE
```

### `cystack_128633b4`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `Applications`, `Browers`, `Country`, `Extensions`, `IP`, `Username`, `Wallets`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: 🇦🇷 AR - Argentina
Username: <redacted>
Antivirus: Avast Antivirus
Extensions: None
Wallets: None
Applications: None
Browers: CK:1911|PW:49|AF:1397|CC:0|GG:2|TT:1|FB:1
```

### `cystack_4fdd346f`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `Applications`, `Browers`, `Country`, `Extensions`, `Facebook`, `Username`, `Wallets`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    IP: <redacted>
Country: 🇦🇹 AT - Austria
Username: <redacted>
Antivirus: Avast Antivirus
Facebook: No
Extensions: None
Wallets: None
Applications: Steam
Browers: CK:0|PW:16|AF:1971|CC:0|GG:0|TT:0|FB:0|HOST:FALSE
```

### `cystack_74dcf9e8`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `Applications`, `Browers`, `Country`, `Extensions`, `Facebook`, `IP`, `Username`, `Wallets`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: 🇨🇳 CN - China
Username: <redacted>
Antivirus: Windows Defender
Facebook: 100082867702371
Extensions: None
Wallets: None
Applications: MailMaster
Browers: CK:6006|PW:229|AF:2594|CC:0|GG:6|TT:4|FB:1|HOST:FALSE
```

## Detection

Fingerprint requires the `Browers: CK:` substring (the
developer typo plus the leading count column) plus
line-anchored `IP:`, `Country:`, `Username:`, and
`Antivirus:` keys. The misspelling of `Browers` is the
disambiguator: no other registered parser keys on the
typo. The lowercase-v `Antivirus:` distinguishes the
format from PXA's caption shape (`AntiVirus:`, claimed by
`PXACaptionParser`) and the GADS panel-summary shape
(also `AntiVirus:`, claimed by `CSGADSPanelStealerParser`).
During triage, treat the family attribution as unknown:
the panel summary lacks the harvested credential bodies
that would allow follow-on family fingerprinting, and the
panel's underlying stealer cannot be identified from the
summary fields alone.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`pxa-stealer`](../pxa_stealer/)
- [`cs-gads-panel-stealer`](../cs_gads_panel_stealer/)

## References

- https://www.sentinelone.com/labs/ghost-in-the-zip-new-pxa-stealer-and-its-telegram-powered-ecosystem/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
