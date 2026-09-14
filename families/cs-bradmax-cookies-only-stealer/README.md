# CSBradmaxCookiesOnlyStealer

CSBradmaxCookiesOnlyStealer is a CyStack-coined identifier for
a minimal one-subdirectory victim folder observed inside
`@BRADMAX 20000 APRIL-MAY.part1.rar` aggregator packs at
`[<CC>]UNKNOWN_(<N>)/` filler-folder victim paths. The pack
strips every per-family artifact from the victim folder except
the browser cookie jar, leaving a two-entry root: a `cookies/`
subdirectory holding one or more Netscape `cookies.txt` files
(basenames of the form `Cookies (<N>).txt`) plus the
empty-named packer directory artifact.

The cookie body is the canonical seven-field TAB-separated
cookie-jar layout documented by curl and the fileformats wiki:
domain, include-subdomains flag, path, secure flag, integer
expiry, name, value. The panel harvests this shape from
Chromium's Cookies SQLite database and exports it verbatim.

The BRADMAX aggregator (`@BRADMAX` / `bradmax_cloud` /
`@BRADLOGS`) resells stealer logs from multiple underlying
families. Public channel catalogues attest the channel as a
Redline and Raccoon redistributor. This minimal cookies-only
layout carries no remaining family signal beyond "cookie-jar
exporter": no system-info file, no browser-credential dump, no
wallet folder, no token file. Family attribution is
provisional pending a published threat-intel mapping for this
specific stripped-to-cookies BRADMAX layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX cookies-only minimal victim pack`, `[<CC>]UNKNOWN_(<N>) cookies-only variant`
- Variants observed: **0**

## What it targets

- Browser session cookies (Chromium cookies.txt export)

## Detection notes

Fingerprint requires (a) the folder root entry set is a
subset of `{"cookies", ""}` (case-insensitive) so the
`cookies` subdirectory is the only real child plus an
optional empty-named packer DIR, and (b) 2+ Netscape
cookies.txt rows in the cred-file body where the second
and fourth fields are `TRUE` or `FALSE` and the fifth
field is an integer expiry. The two-row floor stays low
because the folder-shape constraint plus the seven-field
tab layout is already discriminating. Some victims ship
a single Netflix or Google session cookie file whose
3-row body is dominated by one enormous session-token
blob (e.g. Netflix MAC-signed `NetflixId` cookies at
~800 bytes each), leaving fewer than five parseable
rows. During triage, treat this label as a "victim
folder truncated to just the cookie jar" marker: the
underlying stealer builder is not identifiable from
this shape alone, only the BRADMAX distribution channel
is. High-value session cookies (claude.ai, netflix.com,
google.com, microsoft.com, banking domains) still
travel through the cred-file body and are usable IOCs
even without family attribution.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)

## Related external families

- `cs-netscape-cookies-notice`

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
