# CSDaisyBonusProcSoftStealer

CSDaisyBonusProcSoftStealer is a CyStack-coined identifier for
a heavily-stripped `information.txt` panel observed inside
`Daisy Private Cloud - <N> Pcs - <DD> <Mon> - Bonus.7z`
aggregator packs distributed by the `@UP_DAISYCLOUD` Telegram
channel. Per-victim folders follow a flat
`<CC><HWID-30-CHARS>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<XX>_<N>/`
naming convention (the country code is the leading two
letters, the HWID is a 30-character alphanumeric block, and
the trailing segment encodes a timestamp).

The body ships only two surviving sections from the underlying
panel: a 2-space-indented `[<PID>] <name>.exe` process list
and a `[Software]` Vidar-style section header followed by a
2-space-indented program inventory. No banner, no `IP /
Country / HWID / Computer Name` field block, and no Redline /
Lumma / Vidar canonical anchors survive. The
leading-PID-bracket process-list shape is the reverse of Aura
Stealer and StealC, which emit process entries as `<name>.exe
[<PID>]` (PID after the exe), so those parsers do not collide
on the same body.

Family attribution is provisional pending a published threat-intel mapping. Public reporting documents the `@UP_DAISYCLOUD`
channel as a Telegram credential-trading channel potentially
linked to RedLine Stealer, but the heavily-stripped Bonus-pack
body carries no Redline-canonical fields, so the Redline
lineage claim that the sibling `CSDaisyCloudStealer`
watermarked-variant parser makes for canonical
`UserInformation.txt` cannot be carried over. The Bonus pack
may ship victim records from a different underlying stealer
than the canonical Daisy Cloud channel, or the same stealer
with a different stripping configuration. The
`CSDaisyBonusProcSoftStealer` literal captures the discovery;
rename the family constant if a public writeup later
identifies the underlying builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Daisy Private Cloud Bonus`, `@UP_DAISYCLOUD`
- Variants observed: **1**
- Historical Logmine records represented: **729**

## What it targets

- Running-process inventory (PID-bracketed)
- Installed-software inventory

## Detection notes

Confidence anchors: line-anchored `[Software]` section
header AND 10+ 2-space-indented `[<PID>] <name>.exe`
process-list lines. The leading-PID-bracket shape is the
strongest distinguishing signal: Aura and StealC emit
process entries as `<name>.exe [<PID>]` (reversed order),
and `CSSoftwareTailStealer` requires bare `<exe>.exe`
lines with no PID bracket, so those parsers cleanly
decline. The 10-line process-count threshold rejects
unrelated documents that mention a single `[123] foo.exe`
snippet in prose. The body carries no extractable victim
or device fields: the parser is labeling-only. Triage
logs from this family by reading the per-victim folder
name (`<CC><HWID>_<timestamp>`) for victim country, HWID,
and log-time, then cross-reference cred files in the same
folder for accounts and tokens.

## Observed log variants

### `v_44894012b6fae08ebaab05100ae16b12`

- Parser: `logmine.ioc.parsers.cs_daisy_bonus_proc_soft_stealer.CSDaisyBonusProcSoftStealerParser`
- Observed filenames: `information.txt`
- Panel brand: `Daisy Private Cloud Bonus`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **unknown**
- Historical records represented: **729**
- Representative sample: [open sample](samples/v_44894012b6fae08ebaab05100ae16b12/sample.txt)
- Sample SHA-256: `5bb6d8cb7bbfb3b810686ed87f2e1ce3603083eb0efcd815bb24854e72051c32`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Software]`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |

## Related catalog profiles

- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)
- [CSSoftwareTailStealer](../cs-software-tail-stealer/)

## Observed distribution channels

- <https://t.me/UP_DAISYCLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
