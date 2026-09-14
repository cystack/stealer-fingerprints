# CSHunterCloudStealer

CSHunterCloudStealer is a CyStack-coined identifier for the
`HUNTER CLOUD` watermarked Redline-derivative
`UserInformation.txt` observed inside `@ft7links`-distributed
packs. The `HUNTER_CLOUD` Telegram channel re-distributes
Redline-derivative logs (the same shape as
RedlineLikeStealer variant 4: `BUILD NAME:` plus extended
block) under a per-line anti-scrape watermark that prevents the line-anchored RedlineLike fingerprint from
matching the content.

## Research status

- Classification: **Family variant**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `HUNTER CLOUD`, `HUNTER_CLOUD`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

Spaced-letter ASCII banner `H U N T E R   C L O U D` plus the
per-line anti-scrape watermark and the subscription pricing
block (`💵 1 Week / 1 Month / 3 Months / Lifetime`) is the
fingerprint. The underlying Redline-derivative field set
(`BUILD NAME:`, `Admin Group:`, `Integrity:`, `Wallpaper Hash:`)
is preserved but spaced apart by the watermark.

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

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Observed distribution channels

- <https://t.me/HUNTER_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
