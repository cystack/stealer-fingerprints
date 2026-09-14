# CSBradmaxRedlineTruncStealer

CSBradmaxRedlineTruncStealer is a CyStack-coined identifier
for the BRADMAX-truncated Redline-shape `System.txt` panel
where the identity preamble (`IP:`, `UserName:`,
`MachineName:`, `Country:`) is stripped by the aggregator and
the body starts flush with `Zip Code:`. Observed inside
`@BRADMAX 27000 FEB-MARCH.part01.rar` at `@BRADMAX <count>
<MONTHS>/[<CC>]<IPv4>/System.txt` victim folders (e.g.
`@BRADMAX 27000 FEB-MARCH/[DE]<IPv4>/System.txt`).

Body vocabulary is Redline-canonical: the `Operation System:`
typo (singular `Operation`, no trailing `ing`), the `Available
KeyboardLayouts:` plural marker (no space between `Keyboard`
and `Layouts`), the `Hardwares:` block header with `Name:
<label>, <values>` rows below (RAM row uses the
dual-serialisation `<N.NN> Mb or <bytes> bytes` format, GPU
rows use `<vendor> <model>, <bytes> bytes`), plus a bare
`Windows Defender` line at the tail with no `AV:` /
`Antivirus:` key prefix. The `FileLocation:` field that
canonical `Redline` `UserInformation.txt` panels emit is
absent from this variant, so the canonical `Redline` parser
declines and the body falls through to this CS-coined parser.

The same underlying panel-render lineage appears in the Daisy
Cloud reseller output handled by `CSDaisyBlockCloudStealer`
(which retains the identity preamble and adds a pipe-bordered
ASCII-art banner) and `CSDaisyCloudStealer` (per-line
watermark overlay). This BRADMAX-truncated variant is the
bannerless, preamble-stripped sibling.

Family attribution is provisional pending a published
threat-intel mapping for this specific stripped variant.
Public reporting and community catalogues document the
underlying Redline body shape but do not attest this specific
BRADMAX-stripped preamble-less variant. Without the canonical
`FileLocation:` anchor and identity preamble it is impossible
to confirm the builder is stock Redline versus a Redline-fork
(Meta, Aurora, Amadey inherit some Redline vocabulary).

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX truncated Redline-shape System.txt`, `BRADMAX preamble-stripped Redline variant`
- Variants observed: **0**

## What it targets

- Victim ZIP code and city (IP geolocation)
- HWID (32-hex device identifier)
- Current UI language and timezone
- OS caption with architecture suffix
- Installed keyboard layouts
- Total system RAM (MB, extracted from `Total of RAM` row)
- GPU vendor and model list
- Bare antivirus product name (trailing line)

## Detection notes

Fingerprint requires (a) line-anchored `Operation System:`
(Redline-canonical typo) AND (b) line-anchored
`Hardwares:` (Redline-canonical plural block header) AND
(c) `Name: Total of RAM,` substring (Redline-specific
dual-serialisation RAM entry) AND (d) `@BRADMAX` in the
archive-path preamble (aggregator scope gate). Five
negative anchors defer to higher-precedence sibling
parsers: `FileLocation:` (canonical `Redline`),
`t.me/UP_DAISYCLOUD` (`CSDaisyBlockCloudStealer`), the
per-line watermark scramble regex (`CSDaisyCloudStealer`),
`cheshire_aurora` (`CSDaisyAuroraStealer`), and
`misericorde_supp` (`CSDaisyMisericordeStealer`). During
triage, treat this label as a "Redline-shape body
shipped by BRADMAX with the identity preamble stripped"
marker: the ZIP / city / HWID / OS / RAM / GPU fields
are usable IOCs, but the underlying builder cannot be
confirmed as stock Redline without a `FileLocation:` or
ASCII banner. The `Country:` value that the canonical
panel would emit is absent from the body; the archive-path folder-prefix (`[<CC>]<IPv4>/`) carries a country
tag but the aggregator sometimes ships an incorrect tag
(the sample folder `[DE]<IPv4>` claims Germany
while the IP is ARIN-registered in the US and the
`Location:` field says Pontiac, Michigan).

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
