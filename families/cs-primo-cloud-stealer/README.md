# CSPrimoCloudStealer

CSPrimoCloudStealer is a CyStack-coined identifier for a
heavily-stripped `@Primo_Cloud` aggregator wrap observed
inside `@ft7links-vidar` packs. The panel emits four
repeated `@Primo_Cloud:https://t.me/+ecb2NTo6VKFhYzI0`
watermark lines followed by a Redline-canonical body that
is reduced to two fields on the verified bogon-IP victim
(`User Name:` and `Display Resolution:`).

## Research status

- Classification: **Family variant**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `Primo_Cloud`, `@Primo_Cloud`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

The `@Primo_Cloud:` watermark line is the cleanest trigger.
Pair with line-anchored `User Name:` and `Display
Resolution:` to confirm a heavily-stripped body, and
verify absence of `UserLanguage:` to avoid colliding with
RedlineLikeStealer variants 7 and 8 which retain the
extended `UserLanguage:` / `Keyboard Language:` /
`Display Resolution:` block on full-body @Primo_Cloud
redistribution. Family attribution is provisional pending
a published threat-intel mapping for this layout.

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

- <https://t.me/+ecb2NTo6VKFhYzI0>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
