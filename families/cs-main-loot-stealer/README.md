# CSMainLootStealer

CSMainLootStealer is a CyStack-coined identifier for a
Telegram-bot-notification `Information.txt` panel with a `✨
New Log Received ✨` sparkle-bracketed banner. The body ships a
`💻 User: <user>@<host>` victim-identity line, a `🌍 IP:`
placeholder, two captioned sections (`📊 Main Loot:` for
passwords / cookies / wallets, `📦 Additional Data:` for
messengers / games / servers / grabbers), each carrying
per-category emoji-prefixed count lines, and a `Support:
@VerifiedThief` admin contact footer. Observed inside `!! 2025
NOV.part001.rar` BRADMAX aggregator packs at `[<TAG>]@BRADLOGS
(BRADMAX) (<NN>)/Information.txt` victim folders.

A single community source (March 2026) hints at Hexo Stealer
attribution for the sparkle-banner + Main Loot + Additional
Data notification shape, but the article is paywalled and
could not be fetched verbatim. A public Hexon Stealer report
documents a related (but distinct) rebrand of Stealit Stealer
without publishing the exact notification format. With one
unverifiable community source and no confirmation from public
research, family attribution stays CyStack-coined.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `BRADMAX sparkle-banner notification panel`, `@VerifiedThief Telegram-bot Main Loot / Additional Data log`
- Variants observed: **1**
- CyStack observations represented: **37**

## What it targets

- Browser-saved credentials (count flag on `🔑 Passwords:`)
- Browser cookies (count flag on `🍪 Cookies:`)
- Cryptocurrency wallets (count flag on `💰 Wallets:`)
- Messenger sessions (count flag on `💬 Messengers:`)
- Game launcher credentials (count flag on `🎮 Games:`)
- Server / FTP / SSH credentials (count flag on `🗄️ Servers:`)
- Grabbed files (count flag on `🎣 Grabbers:`)
- Combined OS username + hostname (user@host on the `💻 User:` line)

## Detection notes

Fingerprint requires `New Log Received` substring AND `Main
Loot:` substring AND `Additional Data:` substring AND
`@VerifiedThief` substring. The four-anchor combo is unique
across this catalog: the `Main Loot:` and `Additional Data:`
section-caption pair is the panel-side developer quirk, and
the `@VerifiedThief` admin handle is unique to this
distribution. During triage, treat this label as a panel-side
notification view (counts only): the actual harvested
credentials live in sibling files the operator's archive
(browser-data folders, cookie dumps, etc.) rather than in this
notification body. The underlying stealer family is unknown;
the Hexo Stealer attribution from that community source is
provisional pending published confirmation.

## Observed log variants

### `v_1be296dc8abcec6846b3e0b96b67534c`

- Format ID: `cs-main-loot-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `@VerifiedThief`
- Attribution confidence: **low**
- Historical records represented: **37**
- Representative sample: [open sample](samples/v_1be296dc8abcec6846b3e0b96b67534c/sample.txt)
- Sample SHA-256: `a110f0ef469c7621668043862d47db755c9fde386ef646394f081861d2ea3e23`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Additional Data:`, `Main Loot:`, `New Log Received`
- Field labels: `Support`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSNewLogStealer](../cs-new-log-stealer/)

## Related external families

- `hexon-stealer`
- `stealit-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
