# Lumma

Lumma C2 (LummaC2) logs. The panel writes `System.txt` with a
YAML-like dash-prefix list (`- LummaC2 Build:`,
`- Configuration:`, etc.) and a distinctive `(sig:UNIX.HEX)`
signature on the `Time:` line. Build banners reference the
`@lummanowork` channel; the panel is sold MaaS via
`@lummamarketplace_bot`.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `LummaC2`, `Lumma Stealer`
- Variants observed: **6**
- Historical Logmine records represented: **776,374**

## What it targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions (focus on MetaMask, Phantom, and similar)
- Steam, Telegram, Discord session tokens
- 2FA seeds from Authy and similar desktop clients
- Cryptocurrency seed phrases harvested from text files

## Detection notes

High-confidence trigger: the `(sig:UNIX.HEX)` parenthesised
signature on the `- Time:` line. Together with the
`- LummaC2 Build:` banner this is unambiguous Lumma. Several
derivative families (Remus, AL Stealer, BabaStealer,
ArtHouseCloud, CashFlow) share the dash-prefix shape but lack
the signature; they should be tracked separately.

## Observed log variants

### `v_098b5cb9b92999ab2453a165215e61e1`

- Parser: `logmine.ioc.parsers.cs_brad_logs_stealer.CSBradLogsStealerParser`
- Observed filenames: `System.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **high**
- Historical records represented: **7,369**
- Representative sample: [open sample](samples/v_098b5cb9b92999ab2453a165215e61e1/sample.txt)
- Sample SHA-256: `f6ae0c9fd19239a2f3275a95e5769ea0c26079b999e4d9cd37d23e5be2f84ea4`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `- @BRADLOGS`, `- Date : Build:`, `BRADMAX`
- Field labels: -

### `v_41473f829c21e719f7d2c773a67ed897`

- Parser: `logmine.ioc.parsers.cs_brad_logs_stealer.CSBradLogsStealerParser`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **high**
- Historical records represented: **206**
- Representative sample: [open sample](samples/v_41473f829c21e719f7d2c773a67ed897/sample.txt)
- Sample SHA-256: `d01c724db8109b2834104f87e4b4cd1ed91ce1208ebefc7cd4b1519f9787005f`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `- @BRADLOGS`
- Field labels: -

### `v_7682ef5532c87a9cc6598dd189ef2ae5`

- Parser: `logmine.ioc.parsers.lumma.LummaParser`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `legacy-lummac2-build`
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_7682ef5532c87a9cc6598dd189ef2ae5/sample.txt)
- Sample SHA-256: `e1ee50cd83e5e442a2a04894bed6f45d4cdd5a5d938c07c1b15cc1a164a96fc6`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `LummaC2, Build`
- Field labels: -

### `v_a9b26efd5e8a2cd1d6caa141ff2fb418`

- Parser: `logmine.ioc.parsers.lumma.LummaParser`
- Observed filenames: `Information.txt`, `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `lumma-build-banner`
- Historical records represented: **30,637**
- Representative sample: [open sample](samples/v_a9b26efd5e8a2cd1d6caa141ff2fb418/sample.txt)
- Sample SHA-256: `38a2eaac0856758fb7c1c07750cd08f96c8dc746c93801a38a84b7185deefa76`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `LummaC2 Build:`
- Field labels: -

### `v_c533cdf8c3b19c2014faa1054388e8d3`

- Parser: `logmine.ioc.parsers.lumma.LummaParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `bare-hwid-cpu-display`
- Historical records represented: **110**
- Representative sample: [open sample](samples/v_c533cdf8c3b19c2014faa1054388e8d3/sample.txt)
- Sample SHA-256: `818614ea003ee14409b1ee491b0ba452f8c36ae21da4983e41f3b6b223dced8b`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `CPU Vendor`, `Display resolution`, `HWID`

### `v_db24fff43a757db95bdc275cd0470dea`

- Parser: `logmine.ioc.parsers.lumma.LummaParser`
- Observed filenames: `Information.txt`, `System.txt`, `system_info.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `dash-hwid-cpu-ip-display`
- Historical records represented: **738,049**
- Representative sample: [open sample](samples/v_db24fff43a757db95bdc275cd0470dea/sample.txt)
- Sample SHA-256: `d34e235ef451070611fce20bf7cec44ef91798b69f201c5153a68fd7cd6e2ba3`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `CPU Vendor`, `Display resolution`, `HWID`, `IP Address`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [CSALStealer](../csal-stealer/)
- [CSBabaStealer](../cs-baba-stealer/)
- [CSArtHouseCloudStealer](../cs-art-house-cloud-stealer/)
- [CSCashFlowStealer](../cs-cash-flow-stealer/)

## Observed distribution channels

- <https://t.me/lummanowork>
- <https://t.me/lummamarketplace_bot>

## Sources

- <https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/>

Machine-readable record: [family.json](family.json)
