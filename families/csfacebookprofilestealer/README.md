# CSFacebookProfileStealer

CSFacebookProfileStealer is a CyStack-coined identifier
for a Facebook-account-profile summary that the
`@ft7links-lumma` panel writes into a file named
`System.txt` instead of canonical stealer system info.
Each line uses a U+2013 en-dash (not the ASCII hyphen-minus)
as the prefix glyph and lists four fields lifted directly
from the Facebook Graph API: `Friends` (account friend
count), `Business` (Business Manager flag), `Marketplace`
(Marketplace access flag), and `Country` (Facebook account
country, empty for bogon-IP victims where the panel could not
resolve geo-IP).

The format matches what Palo Alto Unit 42 documents for
NodeStealer 2.0 and what Morphisec documents for SYS01
stealer (both query the Facebook Graph API after exfiltrating
a session cookie to enumerate friends count, business-account
flag, and account country), but neither vendor publishes a
sample log showing this exact en-dash-prefixed label set, so
the format-to-family mapping remains provisional and the
`CS` prefix is retained pending a curated-CTI confirmation.
The parser is registered late as a labeling parser: it emits
a minimal IOC (country plus the family label) so the
strict-mode "no family parser claimed system file content"
alert stops firing on every per-victim copy of the format
across the parent log pack.

**Also known as:** `NodeStealer (provisional)`, `SYS01 (provisional)`

## Targets

- Facebook session cookies and account credentials
- Facebook Business Manager and ads account access
- Facebook Marketplace listing access
- Facebook account profile metadata (friends count, country)

## Variants

### `cystack_c65f37b2`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Simple Checker
– ID: 100003657022246
– Name: Julio Andres Durán Kespi
– Friends: 691
– Business: false
– Marketplace: true
– Country: 
```

## Detection

The U+2013 en-dash (`-`) line prefix combined with the
`Friends:` / `Business:` / `Marketplace:` Facebook-Graph-API
field trio is unique to this artifact: every other dash-
prefix family in this catalog uses the ASCII hyphen-minus
or em-dash glyph, and no malware-family parser carries
this Facebook-specific field set. False-positive risk is
low because the trio of keys is too specific to overlap
with any system-info format. Triage: any IOC tagged with
this family means the victim had a Facebook session
compromised by a Facebook-targeting infostealer, even when
no other system-info file is present in the victim folder.

## MITRE ATT&CK

- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`lumma`](../lumma/)

## References

- https://unit42.paloaltonetworks.com/nodestealer-2-targets-facebook-business/
- https://www.morphisec.com/blog/sys01stealer-facebook-info-stealer/
- https://thehackernews.com/2024/10/malvertising-campaign-hijacks-facebook.html
