# CSFacebookProfileStealer

CSFacebookProfileStealer is a CyStack-coined identifier for a
Facebook-account-profile summary that the `@ft7links-lumma`
panel writes into a file named `System.txt` instead of
canonical stealer system info. Each line uses a U+2013 en-dash
(not the ASCII hyphen-minus) as the prefix glyph and lists
four fields lifted directly from the Facebook Graph API:
`Friends` (account friend count), `Business` (Business Manager
flag), `Marketplace` (Marketplace access flag), and `Country`
(Facebook account country, empty for bogon-IP victims where
the panel could not resolve geo-IP).

The format matches what public reporting documents for
NodeStealer 2.0 and for SYS01 stealer (both query the Facebook
Graph API after exfiltrating a session cookie to enumerate
friends count, business-account flag, and account country),
but no public writeup shows a sample log with this exact
en-dash-prefixed label set, so the format-to-family mapping
remains provisional and the `CS` prefix is retained pending a
published confirmation. The parser is registered late as a
labeling parser: it emits a minimal IOC (country plus the
family label) so the strict-mode "no family parser claimed
system file content" alert stops firing on every per-victim
copy of the format across the parent log pack.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `NodeStealer (provisional)`, `SYS01 (provisional)`
- Variants observed: **1**
- Historical Logmine records represented: **2**

## What it targets

- Facebook session cookies and account credentials
- Facebook Business Manager and ads account access
- Facebook Marketplace listing access
- Facebook account profile metadata (friends count, country)

## Detection notes

The U+2013 en-dash (`-`) line prefix combined with the
`Friends:` / `Business:` / `Marketplace:` Facebook-Graph-API
field trio is unique to this artifact: every other dash-prefix family in this catalog uses the ASCII hyphen-minus
or em-dash glyph, and no malware-family parser carries
this Facebook-specific field set. False-positive risk is
low because the trio of keys is too specific to overlap
with any system-info format. Triage: any IOC tagged with
this family means the victim had a Facebook session
compromised by a Facebook-targeting infostealer, even when
no other system-info file is present in the victim folder.

## Observed log variants

### `v_17c4049d7ffc5b0cf40d59a6aebc00d8`

- Parser: `logmine.ioc.parsers.cs_facebook_profile_stealer.CSFacebookProfileStealerParser`
- Observed filenames: `System.txt`
- Panel brand: `U+2013 EN-DASH prefix Facebook profile`
- Distribution channel: `@ft7links`
- Attribution confidence: **low**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_17c4049d7ffc5b0cf40d59a6aebc00d8/sample.txt)
- Sample SHA-256: `4754a3e6c93bb601300321aa73f6e79423c37bb3d99f568ad7c26dde73fd16bb`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `– Business`, `– Friends`, `– Marketplace`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Lumma](../lumma/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
