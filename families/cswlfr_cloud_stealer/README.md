# CSWLFRCloudStealer

CSWLFRCloudStealer is a CyStack-coined identifier for the
WLFR Cloud (`@WichLoveFromR`) panel layout. The format is
a banner-watermarked lowercase-terse `Info.txt`: a leading
`The Best fresh logs and ULP Cloud` banner, three repeated
`t.me/WichLoveFromR` channel handle lines, a `Reserve
Link: https://linktr.ee/WLFRcloud` advertising line, a
`Buy: @AltairSupport` support handle line, and a flat
lowercase `key: value` block of `date / path / country /
os / version / language / domain / cpu / ram / gpu` fields.
All field keys are lowercase, no leading dash, no banner
header above the block.

The panel routinely emits several fields blank (the
observed sample has empty `os` / `domain` / `cpu` / `ram`
/ `gpu`) and parks the full OS string under `version:`
instead of `os:`. There is no IP address field at all,
only a country code, which is unusual across the
surveyed stealer panels and is a strong distinguishing
feature on its own. The `date:` value is a bare
`dd.mm.yyyy` with no time component.

Family attribution is provisional pending a published
threat-intel mapping for this lowercase-terse layout.
SOCRadar (`Top Stealer Log Telegram Channels`), KELA
(`Telegram Clouds of Logs`), and Group-IB (`Combolists
and ULP Files on the Dark Web`) document the WLFR Cloud /
`@WichLoveFromR` channel as a stealer-log distribution
cloud, but none of these curated CTI sources attribute the
specific lowercase-terse panel layout to a known
underlying builder. The MalBeacon `what-is-this-stealer`
catalogue identifies the same channel`s XFiles-shaped
redistribution branch (handled separately by
`XFilesStealerParser`) but does not document this distinct
lowercase format. The `CSWLFRCloudStealer` literal
captures the discovery while the docstring`s research
trail lets a future maintainer rename the family
constant if a curated mapping later surfaces.

**Also known as:** `WLFR Cloud`, `@WichLoveFromR`, `WLFRcloud`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `The Best fresh logs and ULP Cloud`
**Distribution channels:** `@WichLoveFromR`

## Targets

- Victim country code and locale
- OS family and build identifier
- Dropper file system path
- Hardware fingerprint fields (CPU, RAM, GPU) when present

## Variants

### `The Best fresh logs and ULP Cloud`

**Fingerprint id:** `the_best_fresh_logs_and_ulp_cloud`

**Distribution channel:** `@WichLoveFromR`

**Attribution confidence:** `unknown`

**Field keys:**
`Buy`, `Reserve Link`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
The Best fresh logs and ULP Cloud

t.me/WichLoveFromR
t.me/WichLoveFromR
t.me/WichLoveFromR

Reserve Link: <url>
Buy: @AltairSupport


date: 16.04.2026
path: <redacted>
country: ES
os:
version: Windows 10 Pro (10.0.19045) x64
language: es-ES
domain:
<redacted>
ram:
gpu:
```

## Detection

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

## MITRE ATT&CK

- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1614 System Location Discovery](https://attack.mitre.org/techniques/T1614/)
- [T1614.001 System Language Discovery](https://attack.mitre.org/techniques/T1614/001/)

## Related families

- [`xfiles`](../xfiles/)

## References

- https://t.me/WichLoveFromR
- https://linktr.ee/WLFRcloud
- https://socradar.io/blog/top-stealer-log-telegram-channels/
- https://www.kelacyber.com/blog/telegram-clouds-of-logs-the-fastest-gateway-to-your-network/
