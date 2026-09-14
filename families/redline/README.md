# Redline

Canonical Redline Stealer logs. UserInformation.txt files emitting
the family's typo'd `Operation System:` field together with a full
identity, locale, and hardware block. Build banners typically frame
the panel name (Octopus Cloud Logs and similar resellers) above
the field block.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `RedLine`, `RedLineStealer`
- Variants observed: **2**
- Historical Logmine records represented: **31,304**

## What it targets

- Browser saved credentials
- Browser cookies and session storage
- Crypto wallet desktop clients and browser extensions
- FTP and VPN client configs
- Discord and Telegram session tokens

## Detection notes

High-confidence trigger: the typo'd `Operation System:` field
paired with `FileLocation:`. Stripped variants without
`FileLocation:` are tracked separately as `RedlineLike Stealer`.

## Observed log variants

### `v_436a2a6dd26480ac96afbce620412cb2`

- Parser: `logmine.ioc.parsers.redline.RedlineParser`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `operation-system-file-location`
- Historical records represented: **31,303**
- Representative sample: [open sample](samples/v_436a2a6dd26480ac96afbce620412cb2/sample.txt)
- Sample SHA-256: `154e3ee6d7f08d47dd27169d6db791bef28822a96a089d10cfb1682802954acb`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `FileLocation`, `Operation System`

### `v_9ff2932c65398ba0ef8bad9c6465381a`

- Parser: `logmine.ioc.parsers.redline.RedlineParser`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `build-id-banner`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_9ff2932c65398ba0ef8bad9c6465381a/sample.txt)
- Sample SHA-256: `9623f948a384209925e8c624313e13a6a7b10bb96620b17a18546847ca68599a`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `*  \|_\| \_\|_____\|____/\|_____\|___\|_\| \_\|_____\|  *`
- Field labels: `Build ID`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [RedlineLike Stealer](../redline-like-stealer/)
- [MetaStealer](../meta-stealer/)

## Observed distribution channels

- <https://t.me/redline_market_bot>

## Sources

- <https://flare.io/learn/resources/blog/redline-stealer-malware/>

Machine-readable record: [family.json](family.json)
