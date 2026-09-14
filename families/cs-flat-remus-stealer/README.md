# CSFlatRemusStealer

CSFlatRemusStealer is a CyStack-coined identifier for a
heavily-stripped `Info.txt` panel whose Remus-vocabulary YAML
keys have been flattened to root level with no `build:` /
`os:` / `hardware:` block wrappers. Observed inside `@BRADMAX
14000 MARCH.part01.rar` Telegram aggregator packs at `@BRADMAX
<count> <MONTH>/ [<CC>]<IPv4>/Info.txt` victim folders (e.g.
`@BRADMAX 14000 MARCH/[DZ]<IPv4>/Info.txt`).

The nine root-level keys (`path`, `country`, `os`, `version`,
`language`, `domain`, `cpu`, `ram`, `gpu`) match Remus
Stealer's YAML manifest vocabulary verbatim, but the panel
writer collapsed the canonical nested structure into a flat
key list. Both the block wrappers (`os`, `cpu`, `ram`, `gpu`)
and their would-be children (`version`, `language`, `domain`)
sit at column 0 as sibling root keys. Most values are empty
because the panel-side collection failed for hardware fields,
leaving only `path`, `country`, and `version` populated.

Public writeups confirm that Remus Stealer emits its victim
manifest as YAML with these exact key names, and public
channel catalogues attest BRADMAX as a Remus / Lumma / DCRat /
Mars redistribution channel. The field-vocabulary and
distribution-channel corroboration gives medium confidence in
Remus lineage, but no Remus-canonical identity anchor (`
ip-address:`, ` elevated:`, `HWID:`, `Computer Name:`)
survives in this flat variant to pin attribution. Family
attribution stays CyStack-coined with `low` confidence pending
a published Remus sample of this exact flat serialisation.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `Flat-key Remus-vocabulary Info.txt panel`, `BRADMAX stripped Remus YAML variant`
- Variants observed: **0**

## What it targets

- Malware install path (WinRAR temp-extraction `Rar$EX...`
folder in observed samples)
- Country code (ISO 3166-1 alpha-2)
- OS caption with build number
- System locale (`fr-FR` / `en-US` / etc.)
- Windows domain / netbios name (empty in observed sample)

## Detection notes

Fingerprint requires seven line-anchored column-0 keys:
`path:` AND `country:` AND `os:` AND `version:` AND `cpu:` AND
`ram:` AND `gpu:`. The column-0 requirement distinguishes from
canonical Remus (children indented 2 spaces under `build:` /
`os:` / `hardware:` block wrappers) and from every other
cataloged format. During triage, treat the sample as weak
attribution to Remus Stealer via the BRADMAX aggregator
channel; update this tracking profile to `Remus Stealer` if a
public writeup later publishes a sample of this exact
flattened variant. The empty hardware-field values in the
observed sample suggest a panel-side WMI-collection failure
that stripped most identity data, so the IOC carries only
path, country, OS, and language fields.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [Lumma](../lumma/)
- [CSHardwareTailStealer](../cs-hardware-tail-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
