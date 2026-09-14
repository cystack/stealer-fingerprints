# CSNetflixCookiesStealer

CSNetflixCookiesStealer is a CyStack-coined identifier for a
Netflix account-checker aggregator output folder. The
per-victim folder is a 32-hex MD5 wrapped in brackets
(`[<md5>]`) and ships a single `Cookies/` subdirectory with
one `.txt` file per valid Netflix session. Each filename packs
five bracket-delimited segments encoding the account state:
subscription plan, historical payment count, Extra-members
add-on flag, ISO 3166 alpha-2 country code, and the login
email. The body is split into an en-dash-prefixed enrichment
header (`– Email:`, `– Plan:`, `– Country:`, `– Payments:`,
etc.) and Netscape-format cookies for `.netflix.com` carrying
the session-cookie set (`NetflixId`, `SecureNetflixId`,
`dsca`, `nfvdid`).

The cred files reference `https://russia34.com` as the
upstream raw-cookie source (a Telegram stealer aggregator that
`CSRussia34Stealer` already handles for the sibling
`UserInformation.txt` shape) and the `@logslead` operator
footer as the Netflix-checker tool that processed the russia34
cookies into per-account enriched dumps. The same `LOGS2`
distribution pipeline also carries TikTok-account harvest
folders (claimed by CSTikTokAccountStealer) and 4-category
Windows-victim folders (claimed by
CSCommonFilesCategoryStealer). Family attribution is
provisional pending a published mapping for this
Netflix-checker tool.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Netflix session cookies (NetflixId, SecureNetflixId, dsca, nfvdid)
- Netflix account profile metadata (plan, country, extra-members flag, payment history)
- Netflix account email-to-country mapping

## Detection notes

The 32-hex MD5 folder name plus the strict
`{Cookies, ""}` root subset plus four body anchors
(`Valid Cookie / Every day!`, `.netflix.com`, `Plan:`,
`@logslead`) form the fingerprint. The underlying
victim is the user whose stealer log was the cookie
source, not the Netflix account owner. The `russia34`
channel reference in the header lines names the
upstream source the checker pulled from.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1550.004](https://attack.mitre.org/techniques/T1550/004/) | Use Alternate Authentication Material: Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1213](https://attack.mitre.org/techniques/T1213/) | Data from Information Repositories |

## Related catalog profiles

- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSRussia34Stealer](../cs-russia34-stealer/)
- [CSCommonFilesCategoryStealer](../cs-common-files-category-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
