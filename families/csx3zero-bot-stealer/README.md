# CSX3zeroBotStealer

CSX3zeroBotStealer is a CyStack-coined identifier for the
panel behind the `t.me/x3zeroBot` Telegram bot. The
panel writes an `Information.txt` that opens with a
three-zero ASCII banner (Unicode box-drawing rendition
of the operator's `０００` FULLWIDTH DIGIT ZERO display
name), pins the `Info: t.me/x3zeroBot` operator handle
at the top, and emits four fifteen-dash-separated
blocks: build identity (`Build ID:`), geo / device
identity (`HWID:`, `IP Address:`, `Log Date:`,
`Country:`, `City:`, `Coordinates:` lat/lng pair),
hardware (`Username:`, `OS:` composite pipe-separated
triple, `Screen:` slash-separated resolution, `CPU:`,
`GPU:`, `RAM:`), and per-category counts (`Cookies:`,
`Passwords:`, `Crypto:`).

Observed inside a @bugatti_cloud multi-family aggregator
archive (`____Bugatti____Private_Cloud 22.07 .part01.rar`)
at `[<CC>] <32-hex-HWID> [<DD-MM-YYYY HH-MM-SS>]/
Information.txt` victim folders. Family attribution is
provisional pending a published threat-intel mapping
for this panel; the surveyed CTI corpus and community
catalogues (MalBeacon what-is-this-stealer, deepdarkCTI,
Malpedia, RussianPanda) do not attest an `x3zero` /
`x3zeroBot` operator.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credentials (count surfaced as `Passwords:`)
- Browser cookies (count surfaced as `Cookies:`)
- Cryptocurrency wallets (count surfaced as `Crypto:`)
- System hardware and geo inventory (per-victim identity block)

## Detection notes

High-confidence trigger: the `t.me/x3zeroBot` URL
literal plus line-anchored `Build ID:` plus line-anchored `Coordinates:` bare-key geo enrichment. The
three-anchor combination is unique - no other family
in this catalog emits the `x3zeroBot` handle or the
`Coordinates: <lat>, <lng>` decimal-pair enrichment.
Triage note: the `OS:` composite carries the product
name, Windows directory, and NT kernel path joined by
pipes; only the first segment is stable across builds,
and the trailing segment carries the OS build number
that would otherwise sit under a separate field.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/x3zeroBot>

## Sources

- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
