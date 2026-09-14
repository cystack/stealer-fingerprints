# RedlineLike Stealer

RedLine extended-block log variants. UserInformation.txt files
emitting the canonical Redline `Operation System:` typo together
with the panel's identity, locale, and hardware fields. Several
Telegram-based affiliate channels rebrand the same RedLine builder
with custom banners (DARKSIDE, ZAPLINE, and similar) while keeping
the underlying field layout intact.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `redline`, `redline-extended`
- Variants observed: **6**
- CyStack observations represented: **1,063,175**

## What it targets

- Browser saved credentials (Chromium and Gecko families)
- Browser cookies and session storage
- Crypto-wallet desktop clients
- FTP and SSH client configs
- Discord and Telegram session tokens

## Detection notes

Confidence triggers, in increasing order of certainty:

1. Plain `Operation System:` field (note the typo) is suggestive
   but matches several stripped-down clones.
2. `Operation System:` plus the channel banner (e.g.
   `===DARKSIDE_BRAND_BEGIN===`) is high-confidence RedLine.
3. `Operation System:` plus `Admin Group:` plus `Integrity:` is
   the unambiguous RedLine extended-block form.

Pair with browser-credential file paths (`Login Data`,
`formhistory.sqlite`) and Discord token grabber output to confirm
in incident-response triage.

## Observed log variants

### `v_125ec6057adbaa522bbf048fc48b7d70`

- Format ID: `redline-like-stealer`
- Observed filenames: `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `admin-integrity`
- Historical records represented: **1,051,645**
- Representative sample: [open sample](samples/v_125ec6057adbaa522bbf048fc48b7d70/sample.txt)
- Sample SHA-256: `0c23e734c4beaea3857bd74bc9ee56ca5676fb46a0e1fd28973e2aabc2554089`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Admin Group`, `Integrity`, `Operation System`

### `v_50755367b700d888261fea40fa9979b1`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `version-build`
- Historical records represented: **10,983**
- Representative sample: [open sample](samples/v_50755367b700d888261fea40fa9979b1/sample.txt)
- Sample SHA-256: `14f0bd0b8bf0e9f4aacaefb33a9753a23d408ef4dbf2825046aa86ac86aca5b9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Operation System`, `Version Build`

### `v_7402f6de631ebb7c2f7f67ddd2239751`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `traffic`
- Historical records represented: **60**
- Representative sample: [open sample](samples/v_7402f6de631ebb7c2f7f67ddd2239751/sample.txt)
- Sample SHA-256: `367d7e75ca36a07d0b2e0c285706115a4720129902d03cd2d9ea641c75e97280`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Operation System`, `Traffic`

### `v_925a2717759e113f55e4f8f24d7c663e`

- Format ID: `redline-like-stealer`
- Observed filenames: `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `build-name`
- Historical records represented: **472**
- Representative sample: [open sample](samples/v_925a2717759e113f55e4f8f24d7c663e/sample.txt)
- Sample SHA-256: `e8384435491e41ac7da69640dd2f8ea8bcde5708af6647fc8e149dd5e2f5b0a9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `BUILD NAME`, `Operation System`

### `v_f363fc0487965dea97d62674baf20c0b`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `installed-ram-graphics-domain`
- Historical records represented: **9**
- Representative sample: [open sample](samples/v_f363fc0487965dea97d62674baf20c0b/sample.txt)
- Sample SHA-256: `cbc799cc324ecf72378a38d4e9b6a6e77a23e0d9a82c241b36dd889fb24c584f`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Domain Name`, `Graphics card`, `Installed RAM`, `Operation System`

### `v_fa7e14df9895c745ed45712a8b2db115`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-keyboard-display`
- Historical records represented: **6**
- Representative sample: [open sample](samples/v_fa7e14df9895c745ed45712a8b2db115/sample.txt)
- Sample SHA-256: `a3a2bf799f01d2ad1f867457a82662167d41c8b020d0e3580b0c9d4a904a70fa`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Display Resolution`, `Keyboard Language`, `UserLanguage`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [Vidar](../vidar/)
- [MetaStealer](../meta-stealer/)

## Sources

- <https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-redline-stealer>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
