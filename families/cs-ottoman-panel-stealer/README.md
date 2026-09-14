# CSOttomanPanelStealer

CSOttomanPanelStealer is a CyStack-coined identifier for the
Ottoman aggregator panel's `Information.txt` shape. Ottoman,
self-styled as `Ottoman Cloud` or `Ottoman Stealer v2.0`, is a
paid log-distribution service that resells stealer logs
through the Telegram ecosystem. Per the operator's own
marketing site at ottomancloud.github.io, the service compiles
harvested data from multiple source stealers, normalises the
output to a unified `Information.txt` shape, and sells 1500 to
5000 records per day across tiered subscription plans ($75 to
$600 per month).

The Ottoman panel appears in community catalogs but no public
research publishes a primary analysis of the panel format. The
operator admits Ottoman runs over multiple source malware
families (Redline, MetaStealer, Raccoon, AuraStealer,
TitanStealer, Vidar), so the underlying family on any given
victim varies. The CS prefix marks the label as
CyStack-coined; the panel brand `Ottoman` and the operator
support handle `@OttoSup` are preserved as taxonomy fields.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `Ottoman Cloud`, `Ottoman Stealer`, `Ottoman Stealer v2.0`
- Variants observed: **1**
- CyStack observations represented: **160**

## What it targets

- Browser saved credentials, cookies, autofill
- Cryptocurrency wallet apps and browser extensions
- Session tokens for Telegram, Steam, Discord
- Documents matching the file-grabber filter list
- Browser history, bookmarks, extensions
- Credit card data stored in browsers

## Detection notes

The parenthesized per-letter ASCII banner
`( O | T | T | O | M | A | N )` plus the `@OttoSup`
operator-support handle is the strongest fingerprint.
The `Telegram :` invite-link row inside the ASCII frame
rotates per archive, so anchor rules should use the
banner literal and handle rather than the invite code.
When triaging logs from this family, remember the
underlying malware varies per victim, so map back to
the source stealer (Redline / Meta / Raccoon / Aura /
Titan / Vidar) from sibling files when possible.

## Observed log variants

### `v_1f914efc1a8e43b713cc64606c2bb0e8`

- Format ID: `cs-ottoman-panel-stealer`
- Observed filenames: `information.txt`, `PC_info.txt`, `System.txt`, `UserInformation.txt`
- Panel brand: `Ottoman`
- Distribution channel: `@OttoSup`
- Attribution confidence: **low**
- Historical records represented: **160**
- Representative sample: [open sample](samples/v_1f914efc1a8e43b713cc64606c2bb0e8/sample.txt)
- Sample SHA-256: `173225065f85e58a00257fef0638b70c37c98dc6e7de465b6e97e889c3a024ec`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `( O \| T \| T \| O \| M \| A \| N )`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1213](https://attack.mitre.org/techniques/T1213/) | Data from Information Repositories |

## Related catalog profiles

- [Redline](../redline/)
- [MetaStealer](../meta-stealer/)
- [Raccoon](../raccoon/)
- [AuraStealer](../aura-stealer/)
- [Vidar](../vidar/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
