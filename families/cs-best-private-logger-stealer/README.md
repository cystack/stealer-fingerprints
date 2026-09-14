# CSBestPrivateLoggerStealer

CSBestPrivateLoggerStealer is a CyStack-coined identifier for
a Telegram-bot-exfil stealer that emits a single
`bot-<bot-id>-<chat-id>-Userdata.txt` victim file with a `Best
Private LOGGER` ASCII-art banner, a `==========PC
INFO==========` PC-info block, and one
`============X============`-delimited record per harvested
browser credential. Observed inside `!! 2025 JULY.part001.rar`
BRADMAX / `@BRADLOGS` aggregator packs at `[<CC>]@BRADLOGS
(BRADMAX) (<NN>)/ bot-<bot-id>-<chat-id>-Userdata.txt` victim
files.

The PC-info block carries `Client Name:` (hostname),
`FullDate:` (US-locale `M/D/YYYY - H:MM:SS AM/PM`), `IP:`, and
`Country:` (full country name like `United States` rather than
the ISO 3166-1 alpha-2 code). Each credential block carries
`URL:` / `Username:` / `Password:` / `Application:` fields
with the `Application:` value carrying browser-name plus
chromium-variant strings (`Edge Chromium`, observed). The two
numeric segments in the filename encode the operator Telegram
bot's chat ID and the per-victim chat ID, both visible to
whoever harvested the bot inbox.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The Telegram-bot
exfiltration shape is broadly documented as a common pattern
across multiple builders, but no public source ties the `Best
Private LOGGER` banner and the `==========PC INFO==========`
panel template to a specific named family.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Best Private LOGGER Telegram-bot stealer`, `bot-<id>-<id>-Userdata.txt panel`, `==========PC INFO========== Userdata stealer`
- Variants observed: **1**
- Historical Logmine records represented: **2**

## What it targets

- Browser-saved credentials (URL, Username, Password)
- Source browser application (`Edge Chromium`, similar variants)
- Victim hostname (`Client Name:` field)
- Victim public IP and country (in the PC INFO block)
- Victim local clock at exfil time (`FullDate:` field)

## Detection notes

Fingerprint requires the line-anchored `==========PC
INFO==========` 10-equals header AND a
`============X============` 12-equals-plus-X record separator
anywhere in the body. Both anchors are needed: the PC INFO
header alone could match a documentation snippet that quotes
the panel, and the separator alone is short enough to appear
in unrelated separator-art. During triage, treat the family
attribution as unknown - the underlying builder is
undocumented in public reporting and community catalogues.
Inspect the filename for the bot-id / chat-id pair to identify
the Telegram bot operator; the bot chat ID is the same across
every victim file that operator distributes.

## Observed log variants

### `v_8ed58f5f3aef8144b0c675eacfba6344`

- Parser: `logmine.ioc.parsers.cs_best_private_logger_stealer.CSBestPrivateLoggerStealerParser`
- Observed filenames: `bot-<bot-id>-<chat-id>-Userdata.txt`
- Panel brand: `Best Private LOGGER`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_8ed58f5f3aef8144b0c675eacfba6344/sample.txt)
- Sample SHA-256: `02454f5061b7243f4647864a3295ef0d0ffa6b63aa1e6a6483ba31a399e9ce26`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `============X============`, `==========PC INFO==========`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSLoginsPathStealer](../cs-logins-path-stealer/)
- [CSDateCreatedStealer](../cs-date-created-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
