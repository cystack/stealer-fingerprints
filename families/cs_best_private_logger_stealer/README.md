# CSBestPrivateLoggerStealer

CSBestPrivateLoggerStealer is a CyStack-coined identifier
for a Telegram-bot-exfil stealer that emits a single
`bot-<bot-id>-<chat-id>-Userdata.txt` victim file with a
`Best Private LOGGER` ASCII-art banner, a
`==========PC INFO==========` PC-info block, and one
`============X============`-delimited record per
harvested browser credential. Observed inside
`!! 2025 JULY.part001.rar` BRADMAX / `@BRADLOGS`
aggregator packs at
`[<CC>]@BRADLOGS (BRADMAX) (<NN>)/
bot-<bot-id>-<chat-id>-Userdata.txt` victim files.

The PC-info block carries `Client Name:` (hostname),
`FullDate:` (US-locale `M/D/YYYY - H:MM:SS AM/PM`),
`IP:`, and `Country:` (full country name like
`United States` rather than the ISO 3166-1 alpha-2
code). Each credential block carries `URL:` / `Username:`
/ `Password:` / `Application:` fields with the
`Application:` value carrying browser-name plus
chromium-variant strings (`Edge Chromium`, observed). The
two numeric segments in the filename encode the operator
Telegram bot's chat ID and the per-victim chat ID, both
visible to whoever harvested the bot inbox.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The Telegram-bot
exfiltration shape is documented broadly by Bitsight and
KELA as a common pattern across multiple builders, but no
curated CTI source ties the `Best Private LOGGER` banner
and the `==========PC INFO==========` panel template to a
specific named family.

**Also known as:** `Best Private LOGGER Telegram-bot stealer`, `bot-<id>-<id>-Userdata.txt panel`, `==========PC INFO========== Userdata stealer`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `Best Private LOGGER`

## Targets

- Browser-saved credentials (URL, Username, Password)
- Source browser application (`Edge Chromium`, similar variants)
- Victim hostname (`Client Name:` field)
- Victim public IP and country (in the PC INFO block)
- Victim local clock at exfil time (`FullDate:` field)

## Variants

### `Best Private LOGGER`

**Fingerprint id:** `best_private_logger`

**Attribution confidence:** `unknown`

**Banners:**
- `==========PC INFO==========`

**Field keys:**
`Application`, `Client Name`, `Country`, `FullDate`, `IP`, `Password`, `URL`, `Username`

**Filenames:** `bot-6543948489-5764705714576562428-Userdata.txt`

**Sample (sanitized):**

```


***********************************************************
*                                                         *
*                                                         *
*                          _    ___   ___  ___ ___ ___    *
*      Best               | |  / _ \ / __|/ __| __| _ \   *
*                         | |_| (_) | (_ | (_ | _||   /   *
*      Private  - - - ->  |____\___/ \___|\___|___|_|_\   *
*                                                         *
*                                                         *
*                                                         *
*********************************************************** 


==========PC INFO==========
Client Name:DESKTOP-Q9E6AMK
FullDate: 7/23/2025 - <ip> AM
IP: <redacted>
Country: United States
==========PC INFO==========

============X============
URL: android://Ibps4L6LbDPAjxfMRDsCO7uACIhy-IbbwOkiu1_AT2rwOuiNwRYt2qBl04sv86UcRLecIo8KPb0yAw4tr1Z_9w==@com.spotify.lite/
Username: <redacted>
Password: 2timothy4vs18
Application: Edge Chromium
=========================
 
============X============
URL: <url>
Username: <redacted>
Password: africanparanormal
Application: Edge Chromium
=========================
 
============X============
URL: android://OEZ1gOxO71N06mbjKEqueuofBfcVskLfNATBY7p1RfoGoqBtYzsBCQD77iE7P8eRno3iIeED7Wd8qYHs2bmimw==@us.zoom.videomeetings/
Username: <redacted>
Password: WhAtThEfUcK?23
[... truncated; full sample at ``sample.txt`` (approx. 326 more lines) ...]
```

## Detection

Fingerprint requires the line-anchored
`==========PC INFO==========` 10-equals header AND a
`============X============` 12-equals-plus-X record
separator anywhere in the body. Both anchors are needed:
the PC INFO header alone could match a documentation
snippet that quotes the panel, and the separator alone is
short enough to appear in unrelated separator-art. During
triage, treat the family attribution as unknown - the
underlying builder is undocumented in surveyed curated
CTI sources and community catalogues. Inspect the
filename for the bot-id / chat-id pair to identify the
Telegram bot operator; the bot chat ID is the same across
every victim file that operator distributes.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`cs-app-profile-stealer`](../cs_app_profile_stealer/)
- [`cs-logins-path-stealer`](../cs_logins_path_stealer/)
- [`cs-date-created-stealer`](../cs_date_created_stealer/)

## References

- https://www.bitsight.com/blog/exfiltration-over-telegram-bots-skidding-infostealer-logs
- https://www.kelacyber.com/blog/telegram-clouds-of-logs-the-fastest-gateway-to-your-network/
