# CSLoaderReadyStealer

CSLoaderReadyStealer is a CyStack-coined identifier for a
two-line `Information.txt` panel-side notification posted by
an operator's Russian-language Telegram loader-builder bot
when a new payload is ready for distribution. Observed inside
`!! 2025 NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator
packs at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt`
victim folders. Body shape:

✅ Лоадер готов! (ZIP-архив) 📊 Статистика загрузок:
https://<host>.sbs/api/stats/<token>

Russian: `Loader ready! (ZIP archive)` then `Download
statistics: <url>`. The `(ZIP-архив)` format hint marks the
payload container; the URL is the operator's download-counter
REST endpoint. The body itself carries no harvested credential
payload or victim metadata; the loader payload is delivered
separately through the linked ZIP archive.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a loader that emits
exactly this two-line `Лоадер готов!` panel with the
`<host>.sbs/api/stats/<token>` counter URL. Structurally the
format matches the generic Russian-language pay-per-install
(PPI) loader-builder Telegram bot category (Amadey /
PrivateLoader / GCleaner lineage of loader services) but no
specific brand markers appear in the body. The first observed
host `dungeonteamreborn.sbs` was not documented in any public
sandbox, URL-scanning, or malware-tracking database at the
time the parser was written.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Лоадер готов notification stub`, `Russian loader-ready Telegram-bot ack`, `BRADMAX ZIP-archive loader notification`
- Variants observed: **0**

## What it targets

- No per-victim harvest in this stub. The notification points
to a separately-distributed ZIP loader payload which, when
executed, typically drops a stealer or RAT downstream.

## Detection notes

Fingerprint requires the literal `Лоадер готов!` Russian
banner AND the `Статистика загрузок:` Russian download-statistics phrase AND the `/api/stats/` URL-path substring.
The trio is specific enough that the panel cannot be
confused with any non-loader-bot notification: both Russian
phrases together are rare outside this template, and the
`/api/stats/` path component anchors the URL on the
operator's counter endpoint. During triage, treat this
label as a "loader payload was packaged and announced"
marker. The actual stealer / RAT family that the loader
drops is identified separately by whichever family
parser claims the sibling per-victim folders inside the
same aggregator pack.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1105](https://attack.mitre.org/techniques/T1105/) | Ingress Tool Transfer |
| [T1608](https://attack.mitre.org/techniques/T1608/) | Stage Capabilities |
| [T1102](https://attack.mitre.org/techniques/T1102/) | Web Service |

## Related catalog profiles

- [CSDataCollectedStealer](../cs-data-collected-stealer/)
- [CSNewLogStealer](../cs-new-log-stealer/)

## Related external families

- `amadey`
- `privateloader`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
