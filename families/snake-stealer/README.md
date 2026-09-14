# Snake Stealer

Observed-self-label profile for a `Snake Stealer` system report
redistributed inside `@BRADMAX` packs. The file has an ASCII-art
SNAKE label and seven triple-equals-bracketed sections. No
independent analysis currently maps this exact format to a
canonical family. It is distinct from WhiteSnake and Snake
Keylogger, which use different formats and filenames.

## Research status

- Classification: **Observed self-label**
- Attribution confidence: **unknown**
- Aliases: `Snake Stealer`
- Variants observed: **1**
- Historical Logmine records represented: **16**

## What it targets

- System hardware, OS, and locale inventory
- User and computer identity
- Network adapter configuration
- Running processes and installed browser inventory

## Detection notes

The registered parser requires the structural `=== INFO ===`,
`=== HARDWARE INFORMATION ===`, and `=== INSTALLED BROWSERS ===`
section triple. The observed SNAKE label names this profile but
does not independently establish payload lineage, so family
attribution remains unknown.

## Observed log variants

### `v_dcee825c24d303631633c51dc93685fe`

- Parser: `logmine.ioc.parsers.snake.SnakeParser`
- Observed filenames: `Systeminfo.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **16**
- Representative sample: [open sample](samples/v_dcee825c24d303631633c51dc93685fe/sample.txt)
- Sample SHA-256: `7059e7c60b57393f53c5bd6280315ad6c912969ed7ab7f0e6da0f3c738004afe`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `=== HARDWARE INFORMATION ===`, `=== INFO ===`, `=== INSTALLED BROWSERS ===`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
