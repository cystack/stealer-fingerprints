# Snake Keylogger

Snake Keylogger, also tracked as 404 Keylogger, is a .NET-based info-stealer and keylogger first documented in late
2020. The malware harvests keystrokes, saved browser
credentials, clipboard content, and screenshots, then
exfiltrates them over one of three C2 channels: FTP, SMTP,
or Telegram bot. Newer builds prefer the Telegram
`sendDocument` API.

The password-harvesting module writes stolen credentials
to a file named `bot-<chatid>-<msgid>-<victim>-SnakePW.txt`
that opens with the `PW | USER | Snake` module tag. Each
credential record sits inside a
`-------- Snake Tracker --------` bracketed block with
`Found From:`, `Host:`, `USR:`, and `PSWD:` lines. The
top of the file carries victim identity fields: `PC Name`,
`Date and Time`, `Client IP`, plus a geo block (Country
Name / CountryCode / Region / City / TimeZone / Latitude /
Longitude) that fills with the literal `{Null}` placeholder
when the ipapi.co lookup failed or the operator disabled
it.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `404 Keylogger`, `Snake Stealer keylogger module`, `SnakeKeylogger`
- Variants observed: **0**

## What it targets

- Browser saved credentials (Chrome, Edge, Firefox, Opera)
- Email client credentials (Thunderbird, Outlook)
- Keystroke capture
- Clipboard content
- Screenshots
- FTP/RDP session credentials

## Detection notes

The `PW | USER | Snake` pipe-separated module tag combined
with the `-------- Snake Tracker --------` section separator
is unmistakable Snake Keylogger provenance. The `SnakePW.txt`
basename plus the `bot-<chatid>-<msgid>-<victim>-SnakePW.txt`
Telegram-bot naming convention are documented in public
analyses. Sibling module tags `KEY | USER | Snake` (keystroke
capture) and `INFO | USER | Snake` (system info) ship in
separate files per victim. During incident response, treat any
`SnakePW.txt` as a complete credential compromise: every
`USR:` / `PSWD:` pair in the file is a valid account
credential the operator harvested from the victim.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1056.001](https://attack.mitre.org/techniques/T1056/001/) | Input Capture: Keylogging |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1041](https://attack.mitre.org/techniques/T1041/) | Exfiltration Over C2 Channel |
| [T1567](https://attack.mitre.org/techniques/T1567/) | Exfiltration Over Web Service |

## Related catalog profiles

- [Snake Stealer](../snake-stealer/)

## Related external families

- `agent-tesla`
- `formbook`

## Sources

- <https://www.splunk.com/en_us/blog/security/under-the-hood-of-snakekeylogger-analyzing-its-loader-and-its-tactics-techniques-and-procedures.html>
- <https://www.bitsight.com/blog/exfiltration-over-telegram-bots-skidding-infostealer-logs>
- <https://www.fortinet.com/blog/threat-research/fortisandbox-detects-evolving-snake-keylogger-variant>
- <https://hackread.com/snake-keylogger-variant-windows-data-telegram-bots/>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.404keylogger>

Machine-readable record: [family.json](family.json)
