# MetaStealer

MetaStealer logs. MetaStealer is a Redline fork; the IOC log
shape is similar but every key is renamed slightly (spaces
inserted, the canonical Redline `Operation System:` typo
dropped) and a couple of new fields appear (`Log from:`
distributor id, an IANA `Time Zone:` name instead of a UTC
offset).

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Meta Stealer`
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- FTP and VPN client credentials
- Telegram and Discord session data
- System fingerprint for victim profiling

## Detection notes

The combination of `Log from:` (distributor id) and an IANA
`Time Zone:` value (e.g. `Europe/Istanbul`) instead of a numeric
UTC offset is the cleanest separator from canonical Redline.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- <https://krakensecurity.com/metastealer-malware/>
- <https://www.sentinelone.com/labs/metastealer-redline-fork-meets-mac-users/>

Machine-readable record: [family.json](family.json)
