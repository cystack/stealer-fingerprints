# CSTxtFilesPartStealer

CSTxtFilesPartStealer is a CyStack-coined identifier for an
Arabic-language Telegram-bot manifest panel that ships as a
three-line `Information.txt` victim file. Observed inside `!!
2025 JULY.part001.rar` at `[<CC>]<ip>/Information.txt` victim
files.

The body carries three emoji-prefixed lines: a `📁 TXT Files |
Part <N>` partition header, a `🌍 IP: <ipv4>` victim public IP
line, and a `📦 عدد الملفات: <count>` Arabic file-count line.
The Arabic literal `عدد الملفات` reads as `Number of files`
and is the panel's developer-side label, indicating the
operator is Arabic-speaking. The `Part <N>` suffix on the
header is a per-victim upload-batch identifier the panel emits
when it splits a larger pack across multiple partitions.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The general Telegram-bot
exfiltration shape is broadly documented, but no public source
ties the Arabic file-count literal and the `TXT Files | Part
<N>` partition convention to a specific named family.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Arabic TXT Files Part Telegram manifest`, `عدد الملفات file-count emoji panel`
- Variants observed: **1**
- Historical Logmine records represented: **5**

## What it targets

- Victim public IP (in the `🌍 IP:` line)
- Per-victim harvested-file count (in the Arabic line)
- Per-victim partition index (`Part <N>` in the header)

## Detection notes

Fingerprint requires the line-anchored `📁 TXT Files | Part`
partition header AND `🌍 IP:` line AND `📦 عدد الملفات:` Arabic
file-count literal. The three-anchor combination cannot
collide with sibling emoji-prefixed panels:
`CSEmojiInfoStealer` uses a different emoji set (`🖥️ User:`,
`🌐 IP:`, `📋 OS Name:`) plus the `📝 Grabbed files:` section
header. During triage, treat the family attribution as
unknown: the underlying builder is undocumented in public
reporting and community catalogues. The `Part <N>` index can
be used to correlate per-victim partitions with the operator's
Telegram-channel upload history.

## Observed log variants

### `v_3d2b0177a66777ae6136d20f2e9eee98`

- Parser: `logmine.ioc.parsers.cs_txt_files_part_stealer.CSTxtFilesPartStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_3d2b0177a66777ae6136d20f2e9eee98/sample.txt)
- Sample SHA-256: `6871422d1afc975686552e273267158de7757bc9f2a37780a387dae69d5b4aa9`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `🌍 IP`, `📦 عدد الملفات`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSMainLootStealer](../cs-main-loot-stealer/)
- [CSBestPrivateLoggerStealer](../cs-best-private-logger-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
