# CSMainLootStealer

CSMainLootStealer is a CyStack-coined identifier for a
Telegram-bot-notification `Information.txt` panel with a
`✨ New Log Received ✨` sparkle-bracketed banner. The body
ships a `💻 User: <user>@<host>` victim-identity line, a
`🌍 IP:` placeholder, two captioned sections
(`📊 Main Loot:` for passwords / cookies / wallets,
`📦 Additional Data:` for messengers / games / servers /
grabbers), each carrying per-category emoji-prefixed
count lines, and a `Support: @VerifiedThief` admin
contact footer. Observed inside `!! 2025 NOV.part001.rar`
BRADMAX aggregator packs at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt`
victim folders.

A single community-CTI source (cti.monster, March 2026)
hints at Hexo Stealer attribution for the sparkle-banner +
Main Loot + Additional Data notification shape, but the
article is paywalled and could not be fetched verbatim.
Cyfirma's Hexon Stealer report documents a related (but
distinct) rebrand of Stealit Stealer without publishing
the exact notification format. With one unverifiable
community source and no curated CTI vendor confirmation,
family attribution stays CyStack-coined.

**Also known as:** `BRADMAX sparkle-banner notification panel`, `@VerifiedThief Telegram-bot Main Loot / Additional Data log`

**Variants observed:** 1
**Top attribution confidence:** `low`
**Distribution channels:** `@VerifiedThief`

## Targets

- Browser-saved credentials (count flag on `🔑 Passwords:`)
- Browser cookies (count flag on `🍪 Cookies:`)
- Cryptocurrency wallets (count flag on `💰 Wallets:`)
- Messenger sessions (count flag on `💬 Messengers:`)
- Game launcher credentials (count flag on `🎮 Games:`)
- Server / FTP / SSH credentials (count flag on `🗄️ Servers:`)
- Grabbed files (count flag on `🎣 Grabbers:`)
- Combined OS username + hostname (user@host on the `💻 User:` line)

## Variants

### `cystack_a7412858`

**Distribution channel:** `@VerifiedThief`

**Attribution confidence:** `low`

**Field keys:**
`Support`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
✨ New Log Received ✨

💻 User: hifgf@YEJON-DESKTOP
🌍 IP: N/A (check System.txt)

📊 Main Loot:
🔑 Passwords: 0
🍪 Cookies: 0
💰 Wallets: 0

📦 Additional Data:
💬 Messengers: 1
🎮 Games: 10
🗄️ Servers: 1
🎣 Grabbers: 3


Support: @VerifiedThief
```

## Detection

Fingerprint requires `New Log Received` substring AND
`Main Loot:` substring AND `Additional Data:` substring
AND `@VerifiedThief` substring. The four-anchor combo
is unique across the registry: the `Main Loot:` and
`Additional Data:` section-caption pair is the panel-side
developer quirk, and the `@VerifiedThief` admin handle is
unique to this distribution. During triage, treat this
label as a panel-side notification view (counts only):
the actual harvested credentials live in sibling files
the operator's archive (browser-data folders, cookie
dumps, etc.) rather than in this notification body. The
underlying stealer family is unknown; the Hexo Stealer
attribution from cti.monster is provisional pending
curated-CTI confirmation.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`hexon-stealer`](../hexon_stealer/)
- [`stealit-stealer`](../stealit_stealer/)
- [`cs-newlog-stealer`](../cs_newlog_stealer/)

## References

- https://www.cyfirma.com/research/hexon-stealer-the-long-journey-of-copying-hiding-and-rebranding/
- https://cti.monster/blog/2026/03/24/new-stealers.html
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
