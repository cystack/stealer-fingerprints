# CSCashFlowStealer

CSCashFlowStealer is a CyStack-coined identifier for the
heavily-stripped `CashFlow Premium Cloud` `System.txt` log
observed inside `@ft7links`-distributed packs alongside the
CSArtHouseCloudStealer distribution. The body wraps the same
XFiles-derivative victim-info block as `CSArtHouseCloudStealer`
but uses a different distributor's banner. The
`@HUNTER_CLOUDS` support handle in the footer and the
`t.me/Link_CashFlow` channel reference identify the
distribution path.

## Research status

- Classification: **Log aggregator**
- Attribution confidence: **unknown**
- Aliases: `CashFlow Premium Cloud`, `C4SHFL0W PR3M1UM CL0UD`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

Header banner `t . m e / + ... = C4SHFL0W PR3M1UM CL0UD L0G5`
with the leetspeak digits and spaced URL is the cleanest
trigger. Companion footer line carries `@HUNTER_CLOUDS`
support reference and `Link_CashFlow` channel handle.

## Families seen in this aggregator

- [redline](../redline/)
- [x-files](../x-files/)

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

No ATT&CK mapping published yet.

## Related catalog profiles

- [XFiles](../x-files/)
- [CSArtHouseCloudStealer](../cs-art-house-cloud-stealer/)
- [CSHunterCloudStealer](../cs-hunter-cloud-stealer/)

## Observed distribution channels

- <https://t.me/Link_CashFlow>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
