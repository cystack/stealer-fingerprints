# CSAutofillProfileBundle

CSAutofillProfileBundle is a CyStack-coined identifier
for the per-browser-per-profile autofill leaf folder
`Autofill/<browser><profile>/autofill.txt` observed
inside `202605112215_MAY 09 - 20614 LOGS2.part01.rar`
aggregator packs at `-[<32-hex-md5>]/Autofill/...`
victim paths. The leaf-folder basename jams browser and
profile names together in lowercase (`googledefault`,
`chromedefault`, `edgedefault`) rather than the
underscore-or-bracket-separated forms documented for
Vidar / RedLine / Lumma per-browser autofill grabs.

The `MAY 09 - 20614 LOGS2` pack belongs to the same
operator series as the `MAY 02 - 8230 LOGS2` packs
carrying `CSTikTokAccountBundle` /
`CSNetflixCookiesBundle` /
`CSCommonFilesCategoryBundle` victims. The dash-prefixed bracketed-MD5 parent folder convention
(`-[<32-hex>]`) is a variant of the same operator's
bracketed-MD5 naming.

Each leaf `autofill.txt` carries one
`<field_name>: <value>` line per harvested Chromium
autofill entry. The reference sample is 8 bytes
(`c9: test`, a single field-id-prefixed key/value
pair), suggesting victims with minimal or test
autofill state on the targeted profile.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Autofill per-profile bundle`, `Browser-profile autofill leaf folder`
- Variants observed: **0**

## What it targets

- Chromium browser autofill entries from the
`autofill_entries` SQLite table (form field names
and saved values)

## Detection notes

Fingerprint requires `system_path` to be a folder, its
id to contain `/Autofill/` (case-sensitive), its
basename to match a lowercase-alphanumeric 4-30 char
shape, and the folder root to contain `autofill.txt`.
The four-anchor combination excludes random or spaced folder names that happen to live
under any `Autofill/` parent. False-positive risk is
low because the strict basename guard rules out the
spaced or bracket-suffixed naming used by documented
stealer-family autofill layouts. During triage, the
parent victim folder convention (`-[<32-hex-md5>]`)
plus the LOGS2 archive name help bucket victims back
to the operator pack.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)

## Related external families

- `cs-tiktok-account-bundle`
- `cs-common-files-category-bundle`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
