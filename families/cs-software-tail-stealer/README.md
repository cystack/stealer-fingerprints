# CSSoftwareTailStealer

CSSoftwareTailStealer is a CyStack-coined identifier for a
heavily-stripped `information.txt` panel tail distributed
through the `@BRADLOGS / BRADMAX` Telegram channel inside `!!
2025 NOV.part001.rar` packs at `[<TAG>]@BRADLOGS (BRADMAX)
(<NN>)/information.txt` victim folders. The body opens with a
bare `<exe>.exe` process list (no tab indent, no `[<PID>]`
annotation), then the Vidar-canonical `[Software]` section
marker appears concatenated onto the last process entry as
`<exe>.exe [Software]` rather than on its own line.
Versioned-app entries follow in `<Name> - <Version>` form. No
system info block, no IP / Country / Computer Name / HWID /
Local Time field survives.

The `[Software]` section header is Vidar-canonical per public
Vidar Stealer write-ups, but the heavily-stripped body carries
no other Vidar fingerprint field (no `VideoCard:`, `Work
Dir:`, `Keyboard Languages:`, `Local Time:`, `Windows:` /
`AV:` pair). Family attribution is provisional pending a
published threat-intel mapping for this layout. The structural
similarity to Vidar is suggestive but not sufficient to claim
Vidar directly: the BRADMAX aggregator resells multiple
stealer families under a shared redistribution shell, and any
panel that emits a Vidar-style section marker as the only
signal could come from a Vidar fork or an unrelated builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX heavily-stripped information.txt tail`, `Bare-exe + `[Software]` marker labeling artifact`
- Variants observed: **1**
- Historical Logmine records represented: **301**

## What it targets

- Running process names (no PIDs preserved)
- Installed Windows applications with version strings

## Detection notes

Fingerprint requires the `[Software]` substring AND 5+
bare `<exe>.exe` lines (line-anchored, no tab indent, no
`[<PID>]` bracket) AND 3+ `<Name> - <Version>` versioned-app lines. The three-anchor combination cannot collide
with canonical Vidar / StealC / Aura or the user-info bracket
profile because each claims via its own structural anchors
anchors before this fallback runs. During triage, treat
this label as a "victim infected but system-info
truncated" marker: the IOC carries no extractable
victim or device fields, only the family literal and
distribution metadata. The underlying stealer family is
unknown; the Vidar-canonical `[Software]` section marker
suggests but does not confirm Vidar lineage.

## Observed log variants

### `v_6923df9abcd89eb0b9f2e37b9e74a64d`

- Parser: `logmine.ioc.parsers.cs_software_tail_stealer.CSSoftwareTailStealerParser`
- Observed filenames: `_Information.txt`, `information.txt`, `system.txt`, `system_info.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Layout: `process-software`
- Historical records represented: **301**
- Representative sample: [open sample](samples/v_6923df9abcd89eb0b9f2e37b9e74a64d/sample.txt)
- Sample SHA-256: `0d74054a5b0903cd3288dad368cbdf7771c9675934070d6a26a0f04ddf2c0b2b`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Software]`, `Microsoft Visual C++`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |

## Related catalog profiles

- [Vidar](../vidar/)
- [CSPasswordsNotFoundStub](../cs-passwords-not-found-stub/)
- [CSFacebookMarketStealer](../cs-facebook-market-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
