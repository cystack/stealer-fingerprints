# CSLoaderReadyStealer

CSLoaderReadyStealer is a CyStack-coined identifier for a
two-line `Information.txt` panel-side notification posted by
an operator's Russian-language Telegram loader-builder bot
when a new payload is ready for distribution. Observed inside
`!! 2025 NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator
packs at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt`
victim folders. Body shape:

    ✅ Лоадер готов! (ZIP-архив)
    📊 Статистика загрузок: https://<host>.sbs/api/stats/<token>

Russian: `Loader ready! (ZIP archive)` then `Download
statistics: <url>`. The `(ZIP-архив)` format hint marks the
payload container; the URL is the operator's download-counter
REST endpoint. The body itself carries no harvested
credential payload or victim metadata; the loader payload is
delivered separately through the linked ZIP archive.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed curated CTI
sources (TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare, Talos, Unit 42, Microsoft TI,
Mandiant, Recorded Future, eSentire, Cybereason,
BleepingComputer, ANY.RUN, CERT-AGID, Drweb, Proofpoint)
and community catalogues (deepdarkCTI, MalBeacon, Malpedia,
RussianPanda) do not document a loader that emits exactly
this two-line `Лоадер готов!` panel with the
`<host>.sbs/api/stats/<token>` counter URL. Structurally
the format matches the generic Russian-language pay-per-
install (PPI) loader-builder Telegram bot category (Amadey
/ PrivateLoader / GCleaner lineage of loader services) but
no specific brand markers appear in the body. The first
observed host `dungeonteamreborn.sbs` is not documented on
ANY.RUN, urlscan, VirusTotal, OTX, or Malpedia at the time
the parser was written.

**Also known as:** `Лоадер готов notification stub`, `Russian loader-ready Telegram-bot ack`, `BRADMAX ZIP-archive loader notification`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `Лоадер готов!`
**Distribution channels:** `@BRADLOGS`

## Targets

- No per-victim harvest in this stub. The notification points
to a separately-distributed ZIP loader payload which, when
executed, typically drops a stealer or RAT downstream.

## Variants

### `Лоадер готов!`

**Fingerprint id:** `unknown`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
✅ Лоадер готов! (ZIP-архив)
📊 Статистика загрузок: <url>
```

## Detection

Fingerprint requires the literal `Лоадер готов!` Russian
banner AND the `Статистика загрузок:` Russian download-
statistics phrase AND the `/api/stats/` URL-path substring.
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

## MITRE ATT&CK

- [T1105 Ingress Tool Transfer](https://attack.mitre.org/techniques/T1105/)
- [T1608 Stage Capabilities](https://attack.mitre.org/techniques/T1608/)
- [T1102 Web Service](https://attack.mitre.org/techniques/T1102/)

## Related families

- [`cs-data-collected-stealer`](../cs_data_collected_stealer/)
- [`cs-newlog-stealer`](../cs_newlog_stealer/)
- [`amadey`](../amadey/)
- [`privateloader`](../privateloader/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://github.com/MalBeacon/what-is-this-stealer
- t.me/BRADLOGS
