# WhiteSnake

WhiteSnake Stealer logs. Post-2024 builds emit a `PC_info.txt`
beginning with an emoji-prefixed `🖥Computer info:` section and
containing the system, user, and time values together with
later sections covering installed software and network state.
Distributed via Telegram aggregator channels (BRADMAX-style
redistributors) and via a MaaS subscription model.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `WhiteSnake Stealer`
- Variants observed: **1**
- Historical Logmine records represented: **105,983**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- Discord, Telegram, Steam session data
- 2FA codes from authenticator apps
- Email and FTP client credentials

## Detection notes

The emoji-prefixed section header (`🖥Computer info:`) is
visually distinctive. Combined with `User name:` and
`System time:` field labels (note the spaces), this is
unambiguous WhiteSnake content.

## Observed log variants

### `v_a444692e5322bf7078e22c40d1da2e8c`

- Parser: `logmine.ioc.parsers.white_snake.WhiteSnakeParser`
- Observed filenames: `PC_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **105,983**
- Representative sample: [open sample](samples/v_a444692e5322bf7078e22c40d1da2e8c/sample.txt)
- Sample SHA-256: `8e011db24c8e96dce15461840be9f153bf4fd75cf5a7870f24332f7ee5b10fa9`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `🛡Security:`
- Field labels: `Started as admin`


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

## Sources

- <https://www.cyfirma.com/research/whitesnake-stealer/>
- <https://socradar.io/whitesnake-stealer-malware-analysis/>

Machine-readable record: [family.json](family.json)
