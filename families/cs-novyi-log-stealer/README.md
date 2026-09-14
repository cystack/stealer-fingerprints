# CSNovyiLogStealer

CSNovyiLogStealer is a CyStack-coined identifier for a
Russian-language `info.txt` panel observed inside `!! 2025
NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs. The
file lands buried inside the victim
`AppData/Local/Temp/<8-char-random>/info.txt` path, not at a
top-level victim folder. The body opens with the Cyrillic
`Новый лог!` (`New log!`) banner that the operator's Telegram
bot posts on every new upload, then a `🗃Build ID: <name>`
per-build tag, then a 10-field count panel with Russian field
names and one emoji glyph per line.

Field set: `🏳️ IP`, `🌎 Страна` (ISO 3166-1 alpha-2 code, not
the country name), `💻 Система` (localised Windows product
name), `🍪 Куков` (cookies count), `🔐 Паролей` (passwords
count), `💳 Карт` (cards count), `📥 Загрузок` (downloads
count), `📚 Истории` (history count), `🎫 Токенов` (tokens
count), `👛 Кошельков` (wallets count), `📱 Tdata` (Telegram
tdata count). The retained research record focuses on the build ID, public
IP, ISO2 country, and OS string; the raw sample preserves the
per-category counts for analyst review.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a stealer that emits this
exact `Новый лог!` banner with the 10-field emoji panel. A
public Angry Stealer / Rage Stealer write-up describes a
similar field set (cookies + passwords + cards + downloads +
wallets + Tdata) distributed via a Telegram bot, but does not
show the panel format verbatim, so the field-set similarity is
not enough to attribute. The `Build ID: Kev1n` value is a
per-build operator tag, not a family brand.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Novyi log info.txt Russian emoji panel`, `BRADMAX Temp/info.txt 10-field Cyrillic count panel`
- Variants observed: **1**
- CyStack observations represented: **26**

## What it targets

- Browser saved credentials (count flag only; harvested body in sibling files)
- Browser cookies (count flag only)
- Browser autofill / credit cards (count flag only)
- Browser download history (count flag only)
- Browser history (count flag only)
- Discord / Steam / Telegram tokens (count flag only)
- Cryptocurrency wallets (count flag only)
- Telegram tdata desktop sessions (count flag only)
- Host OS string and victim public IP / country

## Detection notes

Fingerprint requires the literal `Новый лог!` Cyrillic banner
AND the `Build ID:` key AND the Cyrillic `Страна:` field name.
The three-anchor combination cannot collide with any other
cataloged format: `Новый лог!` is the operator's Telegram bot
notification text and only appears in this panel template;
`Страна:` is the Russian noun for country and is rare outside
Russian-localised stealer output. During triage, treat the
family attribution as unknown: the panel is a count summary,
not the harvested data itself, and the count fields plus the
Russian field labels match several known Telegram-bot stealer
panels (the publicly documented Angry / Rage Stealer family)
without enough discriminating detail to confirm any specific
builder. The actual harvested credentials live in sibling
files inside the same per-victim folder.

## Observed log variants

### `v_f5261d16e45e2fc5a86962a5fdbe680c`

- Format ID: `cs-novyi-log-stealer`
- Observed filenames: `info.txt`
- Panel brand: `Новый лог!`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **26**
- Representative sample: [open sample](samples/v_f5261d16e45e2fc5a86962a5fdbe680c/sample.txt)
- Sample SHA-256: `8974ce614c995e809cb7acfca2c0a1c3ff193e7dc91fbfc20178d78c9ab31959`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Build ID:`, `Новый лог!`, `Страна:`
- Field labels: -


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
- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSEmojiCountStealer](../cs-emoji-count-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
