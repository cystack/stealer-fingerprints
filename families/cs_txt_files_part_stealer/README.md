# CSTxtFilesPartStealer

CSTxtFilesPartStealer is a CyStack-coined identifier for
an Arabic-language Telegram-bot manifest panel that ships
as a three-line `Information.txt` victim file. Observed
inside `!! 2025 JULY.part001.rar` at
`[<CC>]<ip>/Information.txt` victim files.

The body carries three emoji-prefixed lines: a
`📁 TXT Files | Part <N>` partition header, a `🌍 IP:
<ipv4>` victim public IP line, and a `📦 عدد الملفات:
<count>` Arabic file-count line. The Arabic literal
`عدد الملفات` reads as `Number of files` and is the
panel's developer-side label, indicating the operator is
Arabic-speaking. The `Part <N>` suffix on the header is a
per-victim upload-batch identifier the panel emits when
it splits a larger pack across multiple partitions.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The general
Telegram-bot exfiltration shape is broadly documented
(Bitsight, KELA), but no curated CTI source ties the
Arabic file-count literal and the `TXT Files | Part <N>`
partition convention to a specific named family.

**Also known as:** `Arabic TXT Files Part Telegram manifest`, `عدد الملفات file-count emoji panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Victim public IP (in the `🌍 IP:` line)
- Per-victim harvested-file count (in the Arabic line)
- Per-victim partition index (`Part <N>` in the header)

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `unknown`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
📁 TXT Files | Part 4
🌍 IP: <ip>
📦 عدد الملفات: 64
```

## Detection

Fingerprint requires the line-anchored
`📁 TXT Files | Part` partition header AND `🌍 IP:` line
AND `📦 عدد الملفات:` Arabic file-count literal. The
three-anchor combination cannot collide with sibling
emoji-prefixed panels: `CSEmojiInfoStealer` uses a
different emoji set (`🖥️ User:`, `🌐 IP:`,
`📋 OS Name:`) plus the `📝 Grabbed files:` section
header. During triage, treat the family attribution as
unknown: the underlying builder is undocumented in
surveyed curated CTI sources and community catalogues.
The `Part <N>` index can be used to correlate per-victim
partitions with the operator's Telegram-channel upload
history.

## MITRE ATT&CK

- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`cs-emoji-info-stealer`](../cs_emoji_info_stealer/)
- [`cs-main-loot-stealer`](../cs_main_loot_stealer/)
- [`cs-best-private-logger-stealer`](../cs_best_private_logger_stealer/)

## References

- https://www.bitsight.com/blog/exfiltration-over-telegram-bots-skidding-infostealer-logs
- https://www.kelacyber.com/blog/telegram-clouds-of-logs-the-fastest-gateway-to-your-network/
