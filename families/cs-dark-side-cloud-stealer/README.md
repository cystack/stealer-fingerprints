# CSDarkSideCloudStealer

CSDarkSideCloudStealer is a CyStack-coined identifier for a
`DARKSIDE PRIVATE CLOUD` aggregator wrap observed inside
`@ft7links-vidar` packs. The panel encloses an ASCII-art
`Darkside` banner between `===DARKSIDE_BRAND_BEGIN===` and
`===DARKSIDE_BRAND_END===` delimiter lines, advertises a
tiered subscription model (BUDGET $100, PREMIUM $200, GOLD
$300), and embeds the channel handle
`https://t.me/+abRpT5eRHCplNzIy`. Body shape is heavily-stripped Redline-canonical key naming (`AV:`, `User Name:`,
`Display Resolution:`).

## Research status

- Classification: **Family variant**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `DARKSIDE PRIVATE CLOUD`, `darkside linklogs`, `DarkSide Cloud`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

The 28-character `===DARKSIDE_BRAND_BEGIN===` delimiter is
the cleanest trigger; no other format in this catalog uses it. Pair with at least one Redline-canonical body field
(`User Name:` or `Display Resolution:`) to distinguish banner-only README artefacts the panel may also emit.
Note: unrelated to the Russia-affiliated DarkSide ransomware
operation (Colonial Pipeline, May 2021); naming collision
is incidental.

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
- [Vidar](../vidar/)

## Observed distribution channels

- <https://t.me/+abRpT5eRHCplNzIy>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
