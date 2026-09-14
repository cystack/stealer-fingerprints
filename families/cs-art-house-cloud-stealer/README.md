# CSArtHouseCloudStealer

CSArtHouseCloudStealer is a CyStack-coined identifier for the
heavily-stripped ArtHouse Cloud `System.txt` log observed inside
`@ft7links`-distributed packs alongside canonical Lumma content
and the `CSBabaStealer` rebrand. The body wraps an
XFiles-derivative victim-info block in two ArtHouse Cloud
banners (header + footer) framed with U+2500 box-drawing
horizontal rules. The `@ft7links` operator labels the archive
`lumma` and resells multiple panels under one cover.

## Research status

- Classification: **Log aggregator**
- Attribution confidence: **unknown**
- Aliases: `ArtHouse Cloud`, `ArtHouse_Cloud_Team`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

ArtHouse Cloud header/footer banners with `linktr.ee/ArtHouse_Cloud_Team`
reference plus the U+2500 horizontal rule framing. Two
field-set shapes have been observed (5-field and richer
variants); both share the banner.

## Families seen in this aggregator

- [lumma](../lumma/)
- [redline](../redline/)
- [x-files](../x-files/)

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

No ATT&CK mapping published yet.

## Related catalog profiles

- [Lumma](../lumma/)
- [XFiles](../x-files/)
- [CSBabaStealer](../cs-baba-stealer/)
- [CSCashFlowStealer](../cs-cash-flow-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
