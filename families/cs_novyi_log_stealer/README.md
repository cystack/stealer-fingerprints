# CSNovyiLogStealer

CSNovyiLogStealer is a CyStack-coined identifier for a
Russian-language `info.txt` panel observed inside
`!! 2025 NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator
packs. The file lands buried inside the victim
`AppData/Local/Temp/<8-char-random>/info.txt` path, not at
a top-level victim folder. The body opens with the Cyrillic
`Новый лог!` (`New log!`) banner that the operator's
Telegram bot posts on every new upload, then a `🗃Build ID:
<name>` per-build tag, then a 10-field count panel with
Russian field names and one emoji glyph per line.

Field set: `🏳️ IP`, `🌎 Страна` (ISO 3166-1 alpha-2 code,
not the country name), `💻 Система` (localised Windows
product name), `🍪 Куков` (cookies count), `🔐 Паролей`
(passwords count), `💳 Карт` (cards count), `📥 Загрузок`
(downloads count), `📚 Истории` (history count), `🎫 Токенов`
(tokens count), `👛 Кошельков` (wallets count), `📱 Tdata`
(Telegram tdata count). The IOC schema does not carry per-
category count metrics so the parser surfaces only the
build id, public IP, ISO2 country, and OS string.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed curated CTI
sources (TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare, Talos, Unit 42, Microsoft TI,
Mandiant, Recorded Future, eSentire, Cybereason,
BleepingComputer, ANY.RUN, CERT-AGID, Drweb, Proofpoint)
and community catalogues (deepdarkCTI, MalBeacon,
Malpedia, RussianPanda) do not document a stealer that
emits this exact `Новый лог!` banner with the 10-field
emoji panel. Cyfirma's Angry Stealer / Rage Stealer
write-up describes a similar field set (cookies +
passwords + cards + downloads + wallets + Tdata)
distributed via a Telegram bot, but does not show the
panel format verbatim, so the field-set similarity is
not enough to attribute. The `Build ID: Kev1n` value is
a per-build operator tag, not a family brand.

**Also known as:** `Novyi log info.txt Russian emoji panel`, `BRADMAX Temp/info.txt 10-field Cyrillic count panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `Новый лог!`
**Distribution channels:** `@BRADLOGS`

## Targets

- Browser saved credentials (count flag only; harvested body in sibling files)
- Browser cookies (count flag only)
- Browser autofill / credit cards (count flag only)
- Browser download history (count flag only)
- Browser history (count flag only)
- Discord / Steam / Telegram tokens (count flag only)
- Cryptocurrency wallets (count flag only)
- Telegram tdata desktop sessions (count flag only)
- Host OS string and victim public IP / country

## Variants

### `Новый лог!`

**Fingerprint id:** `unknown`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Filenames:** `info.txt`

**Sample (sanitized):**

```
Новый лог!

🗃Build ID: Kev1n

🏳️ IP: <ip>
🌎 Страна: IN
💻 Система: Microsoft Windows 10 Home
🍪 Куков: 346
🔐 Паролей: 4
💳 Карт: 0
📥 Загрузок: 2
📚 Истории: 21242
🎫 Токенов: 0
👛 Кошельков: 0
📱 Tdata: 0
```

## Detection

Fingerprint requires the literal `Новый лог!` Cyrillic
banner AND the `Build ID:` key AND the Cyrillic `Страна:`
field name. The three-anchor combination cannot collide
with any other registered parser: `Новый лог!` is the
operator's Telegram bot notification text and only
appears in this panel template; `Страна:` is the Russian
noun for country and is rare outside Russian-localised
stealer output. During triage, treat the family
attribution as unknown: the panel is a count summary, not
the harvested data itself, and the count fields plus the
Russian field labels match several known Telegram-bot
stealer panels (Angry / Rage Stealer family per Cyfirma)
without enough discriminating detail to confirm any
specific builder. The actual harvested credentials live
in sibling files inside the same per-victim folder.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`cs-newlog-stealer`](../cs_newlog_stealer/)
- [`cs-emoji-info-stealer`](../cs_emoji_info_stealer/)
- [`cs-emoji-count-stealer`](../cs_emoji_count_stealer/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://github.com/MalBeacon/what-is-this-stealer
- https://www.cyfirma.com/research/a-comprehensive-analysis-of-angry-stealer-rage-stealer-in-a-new-disguise/
- t.me/BRADLOGS
