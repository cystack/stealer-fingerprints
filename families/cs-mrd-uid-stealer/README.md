# CSMrdUidStealer

CSMrdUidStealer is a CyStack-coined identifier for an
info-stealer `_Information.txt` panel observed inside `!! 2025
DEC.part01.rar` aggregator packs at
`<id>_<CC>_<IPv4>_<DD-MM-YY>/_Information.txt` victim folders.
The body is a 12-line flat `Key: Value` block followed by
three labelled sections (`Installed software:`, `Disk:`,
`Process:`).

Two on-disk quirks pin the format. The `UID:` field carries a
`mrd-<16-hex>` prefix that no documented stealer uses (Vidar /
Lumma / Redline / Raccoon / Mars / Oski / StealC all emit bare
hex / GUID / volume-serial-derived HWIDs without a literal
prefix). The `DateTime:` line splits two timestamps onto one
row with a `||` pipe-pipe separator: `DateTime: <DD.MM.YYYY>
|| Registration: <DD.MM.YYYY HH:MM:SS>`. `DateTime` is the
panel-side log-emission date, `Registration` is an earlier
date (often years prior) the panel records as the victim's
first-seen timestamp.

Three sub-quirks reinforce the fingerprint. `CPU: <name>
<spaces> core <N>` appends a panel-side core / thread count
after the WMI processor name. `RAM: physical <N>MB , virtual
<N>MB` reports both physical and virtual totals on one line
with comma-space separation. `Display Resolution: <W> x <H>`
uses spaces around the `x` separator (rather than the tight
`WxH` form most stealers emit).

Family attribution is provisional. Public reporting and the
public stealer-format catalogues do not document a family that
emits this exact field combination. Mars Stealer collects an
overlapping subset (`Keyboard Languages`, `Display
Resolution`, `Installed RAM`) per public analyses, but ships a
different on-disk layout with bracket-delimited sections
rather than this bare-key flat shape.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `mrd-UID Information.txt panel`, `Dual-date Registration stealer log`
- Variants observed: **2**
- CyStack observations represented: **14**

## What it targets

- Browser-saved credentials (panel ships an Installed software
enumeration but the surveyed sample has the section empty)
- Victim hostname / username
- Hardware fingerprint (UID, OS, CPU, GPU, RAM)
- Process snapshot (bare process names, no PID)
- Disk inventory (per-drive total / free space)

## Detection notes

Fingerprint requires `UID: mrd-` substring AND
`|| Registration:` substring. Both anchors are unique
across this catalog: the `mrd-` UID prefix is not
documented by any surveyed stealer family, and the
pipe-pipe-separated dual-date line on a single key value
is the panel's developer-side quirk. During triage, treat
the `DateTime:` half as the panel-side log-emission
timestamp (recent) and the `Registration:` half as the
first-seen / account-creation timestamp (often years
older). The `CPU:` value combines the model and a trailing `core <N>`
count; analysts can treat the preceding text as the bare CPU
model.

## Observed log variants

### `v_29dd7a8b55e27e9bd3046f3426e477ee`

- Format ID: `cs-mrd-uid-stealer`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `registration`
- Historical records represented: **13**
- Representative sample: [open sample](samples/v_29dd7a8b55e27e9bd3046f3426e477ee/sample.txt)
- Sample SHA-256: `6e89035b208ab576f5cbc1eca23ac13607b01251add2fbeddd638707caa52e15`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `UID: mrd-`, `\|\| Registration:`
- Field labels: -

### `v_cee5eaed2d3cc06a5ee54cd77a385fde`

- Format ID: `cs-mrd-uid-stealer`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `physical-virtual-ram`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_cee5eaed2d3cc06a5ee54cd77a385fde/sample.txt)
- Sample SHA-256: `aa18adf5157d3e54be3485b631d645e5544c92eb6e1f78291e6db3fe374a73f8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `UID: mrd-`
- Field labels: `RAM`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- [Mars Stealer](../mars-stealer/)
- [Vidar](../vidar/)

## Related external families

- `oski-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
