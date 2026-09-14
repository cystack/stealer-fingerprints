# CSCyrillicCoresStealer

CSCyrillicCoresStealer is a CyStack-coined identifier for a
fixed-width `_Information.txt` panel whose CPU line carries a
mixed-script `[ Сores: N ]` bracket where the first character
is Cyrillic Es (U+0421) rather than Latin C (U+0043). Observed
inside a @bugatti_cloud multi-family aggregator archive
delivered on 2022-05-09, with victim folders named
`<CC>_<YYYY>_<MM>_<DD>_<HH>_<MM>_<6-char-id>`.

The panel is a sibling of the fixed-width column-aligned
family that also emits CSStartBuildInfoStealer,
CSInfoNetworkSectionStealer, and CSExePathInfoStealer; each
variant differs in its first-line field, section-header
shape, and CPU-cores marker spelling. This variant uses a bare
`OS:` first field, a composite `Local Date and Time: <ts> [
UTC: (<offset>) <city list> ]` value that packs the timezone
into the date line, a lowercase `RAM: N Gb` unit, and a bare
`Software:` section header (no brackets, no `Installed`
qualifier). The Cyrillic quirk points at a Russian-speaking
developer whose panel template mixed scripts inadvertently,
but the specific builder identity is not attested in public
reporting or community catalogues. Family attribution is
provisional pending a published threat-intel mapping for this
layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Installed-software inventory (bare `Software:` block)
- System hardware and locale (fixed-width identity block)

## Detection notes

Fingerprint is the mixed-script `Сores:` bracket literal
(Cyrillic Es prefix + Latin `ores:`) plus line-anchored
`UserName (ComputerName):` paren-composite key plus line-anchored bare `Software:` section header. The Cyrillic
prefix is the discriminator: no other registered parser
emits a `Сores` mixed-script bracket, and the combination
with the paren-composite user key and the bare `Software:`
header is disjoint from every sibling fixed-width parser
(CSStartBuildInfoStealer uses `[Installed software]`,
CSInfoNetworkSectionStealer uses `[Info_Software]`,
CSExePathInfoStealer uses `[Software]`). During triage,
the `Software:` block enumerates the victim's installed
programs with a `<name> [ <version> ]` shape and can be
paired with the OS / user / hostname identity block for
per-victim asset inventory.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSStartBuildInfoStealer](../cs-start-build-info-stealer/)
- [CSInfoNetworkSectionStealer](../cs-info-network-section-stealer/)
- [CSExePathInfoStealer](../cs-exe-path-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
