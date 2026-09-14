# CSEnchantCloudStealer

CSEnchantCloudStealer is a CyStack-coined identifier for a
`@ft7links` / `EnchantCloudNew` stripped Redline-shape
`UserInformation.txt` distributed via the
`t.me/EnchantCloudNew` Telegram channel. The panel emits a
`JOIN OUR CHANNEL!` pipe-bordered banner with five
channel-promotion lines, then drops two distinct field-set
shapes: a bogon-IP variant with canonical Redline-named fields
and a non-bogon variant with extended-block fields.

## Research status

- Classification: **Family variant**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `EnchantCloudNew`, `@ft7links Redline variant`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

Pipe-bordered `JOIN OUR CHANNEL!` banner with five
`https://t.me/EnchantCloudNew` repetitions plus the stripped
Redline-shape field set. Two variants share the banner; the
field-set variant indicates whether the victim resolved to a
bogon IP.

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

## Observed distribution channels

- <https://t.me/EnchantCloudNew>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
