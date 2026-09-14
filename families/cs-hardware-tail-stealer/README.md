# CSHardwareTailStealer

CSHardwareTailStealer is a CyStack-coined identifier for a
stripped hardware-only `Info.txt` shipped through the
`@STEALERBOSS` Telegram aggregator under the
`STEALERCLOUD#<N>` per-victim-folder watermark. The body
carries the canonical Remus Stealer YAML hardware-block keys
(`product:`, `core count:`, `thread count:`, `ram:`, `gpu:`,
`display:`). The `build:` and `os:` parent blocks and every
identification field (banner, IP, country, time, user,
hostname, install path, antivirus) are absent.

Two truncation variants ship in the same broker pack. Variant
A keeps the CPU block intact and adds a new `core enabled:`
field that mirrors `core count:`. Variant B strips the CPU
block down to a bare `thread count:` line and instead ships a
`motherboard:` block carrying Win32_BaseBoard `manufacturer:`
and `product:` values. Both variants share the same `ram:` /
`gpu:` / `display:` tail.

The broker likely repackages hardware fragments as a sample
preview before charging buyers for the full log. Family
attribution is provisional: the body is structurally Remus
derived but the load-bearing identification fields that would
confirm Remus are all stripped, and no public reporting or
community catalogue documents a STEALERCLOUD or STEALERBOSS
family layout. Rename this entry if a stronger attribution
surfaces.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `STEALERCLOUD`, `STEALERBOSS hardware tail`
- Variants observed: **1**
- Historical Logmine records represented: **5,951**

## What it targets

- CPU model, core count, and thread count
- RAM SPD product strings and per-stick capacity
- GPU adapter names
- Primary display resolution

## Detection notes

Triple-anchor fingerprint: a line-anchored `core enabled:`
key (with leading whitespace and an integer value), a
line-anchored `  display:` line at 2-space indent carrying
a `<W>x<H>` scalar, and the absence of a top-level
`build:` key at column 0. The triple rules out canonical
Remus (which always opens at column 0 with `build:`) and
documents the disjoint claim region from
`RemusParser`. The body ships no victim-identifying fields,
so any IOC produced from this layout carries only the
hardware inventory.

## Observed log variants

### `v_e32e486c362d196da51fec0543f79f1f`

- Parser: `logmine.ioc.parsers.cs_hardware_tail_stealer.CSHardwareTailStealerParser`
- Observed filenames: `Info.txt`
- Panel brand: `STEALERCLOUD`
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Layout: `core-enabled`
- Historical records represented: **5,951**
- Representative sample: [open sample](samples/v_e32e486c362d196da51fec0543f79f1f/sample.txt)
- Sample SHA-256: `f0063db91b68b4751f0ff84af633bec21c68c23cc65f3e158834e05053b25b5b`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `core enabled`, `display`, `gpu`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)

## Observed distribution channels

- <https://t.me/STEALERBOSS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
