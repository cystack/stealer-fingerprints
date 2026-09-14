# CSWLFRCloudStealer

CSWLFRCloudStealer is a CyStack-coined identifier for the WLFR
Cloud (`@WichLoveFromR`) panel layout. The format is a
banner-watermarked lowercase-terse `Info.txt`: a leading `The
Best fresh logs and ULP Cloud` banner, three repeated
`t.me/WichLoveFromR` channel handle lines, a `Reserve Link:
https://linktr.ee/WLFRcloud` advertising line, a `Buy:
@AltairSupport` support handle line, and a flat lowercase
`key: value` block of `date / path / country / os / version /
language / domain / cpu / ram / gpu` fields. All field keys
are lowercase, no leading dash, no banner header above the
block.

The panel routinely emits several fields blank (the observed
sample has empty `os` / `domain` / `cpu` / `ram` / `gpu`) and
parks the full OS string under `version:` instead of `os:`.
There is no IP address field at all, only a country code,
which is unusual across the surveyed stealer panels and is a
strong distinguishing feature on its own. The `date:` value is
a bare `dd.mm.yyyy` with no time component.

Family attribution is provisional pending a published
threat-intel mapping for this lowercase-terse layout. Public
research on stealer-log Telegram clouds documents the WLFR
Cloud / `@WichLoveFromR` channel as a stealer-log distribution
cloud, but none of those writeups attribute the specific
lowercase-terse panel layout to a known underlying builder. A
community stealer-format catalogue identifies the same
channel's XFiles-shaped redistribution branch (handled
separately by `XFilesStealerParser`) but does not document
this distinct lowercase format. The `CSWLFRCloudStealer`
literal captures the discovery while the docstring's research
trail lets a future maintainer rename the family constant if a
published mapping later surfaces.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `WLFR Cloud`, `@WichLoveFromR`, `WLFRcloud`
- Variants observed: **1**
- Historical Logmine records represented: **17**

## What it targets

- Victim country code and locale
- OS family and build identifier
- Dropper file system path
- Hardware fingerprint fields (CPU, RAM, GPU) when present

## Detection notes

Confidence anchors: the `fresh logs and ULP Cloud` banner
literal AND the `t.me/WichLoveFromR` channel watermark
plus line-anchored lowercase `date:` and `language:`
keys. The banner literal is the strongest signal - no
other format in the registry carries it. False-positive
risk is low because the four anchors together cannot
plausibly co-occur in unrelated content. The same
`@WichLoveFromR` channel resells multiple underlying
panel shapes (XFiles-derived bodies are claimed by
`XFilesStealerParser`); triage logs from this family at
the panel-brand level rather than assuming a single
underlying stealer.

## Observed log variants

### `v_fc94bc1c6b7f5025bc62dabd8131bdaa`

- Parser: `logmine.ioc.parsers.cs_wlfr_cloud_stealer.CSWLFRCloudStealerParser`
- Observed filenames: `Info.txt`
- Panel brand: `The Best fresh logs and ULP Cloud`
- Distribution channel: `@WichLoveFromR`
- Attribution confidence: **unknown**
- Historical records represented: **17**
- Representative sample: [open sample](samples/v_fc94bc1c6b7f5025bc62dabd8131bdaa/sample.txt)
- Sample SHA-256: `053f43a583298fab0ea807084e05eb2738be4671a847641875f923522a53898b`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `fresh logs and ULP Cloud`, `t.me/WichLoveFromR`, `The Best fresh logs and ULP Cloud`
- Field labels: `date`, `language`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery |

## Related catalog profiles

- [XFiles](../x-files/)

## Observed distribution channels

- <https://t.me/WichLoveFromR>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
