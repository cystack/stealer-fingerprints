# CSBrowserCategoryDumpStealer

CSBrowserCategoryDumpStealer is a CyStack-coined identifier
for a per-victim per-browser category dump layout shipping
under `[<32-hex>]/Browser/<BrowserName>/` leaf folders. Each
leaf carries Pascal-case category files (`Autofill.txt`,
`Passwords.txt`, `Cookies.txt`, `History.txt`,
`Bookmarks.txt`, `CreditCards.txt`, `Downloads.txt`,
`Extensions.txt`). Each file body opens with a triple-equals
ALL-CAPS section header mirroring the category name
(`Autofill.txt` body opens with `=== AUTOFILL ===`), then a
blank line, then one or more `key: value` records separated by
50-character dashed lines.

The 32-hex MD5 victim-folder convention matches
CSTikTokAccountStealer (iteration #49) and
CSNetflixCookiesStealer (iteration #53), confirming a shared
`MAY 02 - 8230 LOGS2` distribution pipeline. The leaf folder
names span Chromium-derived browsers (Chrome / Edge / Brave /
Opera / EpicPrivacyBrowser / Vivaldi / Yandex / CocCoc /
Maxthon / Comodo Dragon). Family attribution is provisional
pending a published mapping for this exact layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser autofill data (names, addresses, phone numbers, emails)
- Browser saved credentials (usernames, passwords, URLs)
- Browser cookies and session data
- Browser history, bookmarks, downloads
- Saved credit card data
- Browser extensions inventory

## Detection notes

The `[<32-hex>]/Browser/<BrowserName>/` path token plus
at least one canonical Pascal-case category filename
(`Autofill.txt`, `Passwords.txt`, etc.) plus the
`=== <CATEGORY> ===` ALL-CAPS triple-equals body header
is the fingerprint. Sibling category-first layouts
(`cookies_chrome_Default.txt` per
CSPerProfileBrowserDumpBundle) ship the same data
differently shaped; the browser-named-subdirectory
convention here is the panel's private choice.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |

## Related catalog profiles

- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)

## Related external families

- `csperprofilebrowserdumpbundle`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
