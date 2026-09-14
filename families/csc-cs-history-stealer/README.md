# CSCCsHistoryStealer

CSCCsHistoryStealer is a CyStack-coined identifier for a
stripped 2-file per-victim folder shipping just `cc's.txt` (a
pipe-separated credit-card table) and `history.txt` (browser
history dump) inside a 32-hex MD5 wrapped-in-brackets parent
folder. The `cc's.txt` body opens with a five-column header
`Name on Card | Expiration Month | Expiration Year | Card
Number | Date Modified` mirroring the Chromium `Web Data`
SQLite `credit_cards` table columns. The `Date Modified` 5th
column is the panel's distinguishing serialisation choice over
canonical Raccoon / Redline / Stealc card formats.

Observed inside `MAY 02 - 8230 LOGS` aggregator packs (the
`LOGS` sibling of `LOGS2` claimed by iter #49 / #53 / #54 /
#57 / #58 detectors). The 32-hex MD5 parent convention matches
the same family of aggregator layouts. Family attribution is
provisional pending a published mapping for this exact layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credit cards (Chromium `Web Data` SQLite `credit_cards` table dump)
- Browser history

## Detection notes

The 32-hex MD5 folder name plus the strict
`{cc's.txt, history.txt, ""}` root subset plus the
three column-header body anchors (`Name on Card`,
`Card Number`, `Date Modified`) form the fingerprint.
The apostrophe in `cc's.txt` is a panel-side quirk
rare across stealer cred-file conventions. The
underlying victim is the user whose browser was
harvested; treat any populated `cc's.txt` row as a
card-theft incident requiring issuer notification.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |

## Related catalog profiles

- [CSCookiesSoftStealer](../cs-cookies-soft-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)
- [CSBrowserCategoryDumpStealer](../cs-browser-category-dump-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
