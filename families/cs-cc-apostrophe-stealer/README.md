# CSCcApostropheStealer

CSCcApostropheStealer is a CyStack-coined identifier for a
minimal three-file victim folder observed inside `!! 2025
NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders. The pack
ships `cc's.txt` (credit-card listing with apostrophe-s
lowercase naming) plus `cookies.txt` plus `history.txt`, and
sometimes an empty-named packer directory artifact. No
companion system-info file, no passwords dump, no token files.

`cc's.txt` opens with the panel's 5-column pipe-header `Name
on Card | Expiration Month | Expiration Year | Card Number |
Date Modified` (double-space-pipe-double-space separators).
Per-card rows follow when the victim had saved cards; victims
with no saved cards produce a header-only file (~89 bytes).
The apostrophe-s filename is the distinguishing feature:
canonical Lumma / Vidar / Redline / StealC /
Phantom-documented credit-card files use `cards.txt` /
`CC.txt` / `CreditCards.txt`, never the `cc's.txt` form.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a stealer that emits
exactly this `cc's.txt` + `cookies.txt` + `history.txt` shape
with the pipe-header credit-card file. The column-style
writing pattern is consistent with Stealerium and its forks
(public reporting documents Stealerium and Phantom as one fork
lineage), but no public Stealerium / Phantom analysis attests
the `cc's.txt` apostrophe filename, so the family attribution
stays unknown.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX 3-file cc/cookies/history minimal pack`, `cc apostrophe-s pipe-header layout`
- Variants observed: **0**

## What it targets

- Browser saved credit-card numbers (with expiry and name)
- Browser cookies
- Browser history

## Detection notes

Fingerprint requires (a) `cc's.txt` AND `cookies.txt`
AND `history.txt` in the folder root, (b) root-entry
count <= 4 (the optional fourth entry is an empty-named
packer DIR), and (c) the `Name on Card  |  Expiration
Month  |  Expiration Year  |  Card Number  |  Date
Modified` pipe-header literal in the `cc's.txt` body.
The header anchor fires even on victims with no saved
cards because the panel writes the header row
unconditionally. The 3-file root-entry cap keeps the
claim off larger Lumma-shaped folders (which require
`All_Passwords.txt` + `passwords.txt` + `cookies.txt` +
`history.txt` per the Lumma detector). During triage,
treat the family attribution as unknown: the underlying
stealer builder cannot be identified from the 3-file
shape plus pipe-header alone.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [Stealerium](../stealerium/)
- [Phantom Stealer](../phantom-stealer/)
- [CSWifiBackslashNStealer](../cs-wifi-backslash-n-stealer/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
