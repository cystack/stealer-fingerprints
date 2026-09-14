# CSWmicDumpStealer

CSWmicDumpStealer is a CyStack-coined identifier for a
snake_case `system_info.txt` panel observed inside `!! 2026
JAN.part01.rar` aggregator packs distributed via Telegram log
channels. Per-victim folders follow a
`<id>_<2-hex>_<ip>_<DD-MM-YY>/system_info.txt` layout. The
body opens with an uppercase `=== SYSTEM INFORMATION ===`
header and is composed of snake_case `key: value` lines where
many of the values are raw stdout from Windows command-line
tools: `wmic baseboard get`, `wmic bios get`, `wmic memorychip
get`, `wmic memphysical get`, `wmic diskdrive get`, `wmic
computersystem get`, `wmic path Win32_VideoController get`,
`wmic os get LastBootUpTime`, plus `ipconfig /all` and `ver`.
The fixed-width WMIC tabular output is captured verbatim, with
the column-header row sitting on the same line as the field
key.

The snake_case naming convention plus the "shell out to wmic
and stash the stdout" pattern strongly suggests a Python-based
stealer (`subprocess.check_output("wmic ...")` shape) but no
surveyed Python-stealer write-up (Inf0s3c, XillenStealer,
Akira, ExelaStealer, BlankGrabber) documents this exact field
set.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting plus
public stealer-format catalogues do not document a family
using this exact snake_case field set. The `CSWmicDumpStealer`
literal preserves the panel's most distinctive trait (raw WMIC
stdout dumped into snake_case fields) as the suffix; rename
the CyStack tracking name if a public writeup later identifies the
underlying builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **148**

## What it targets

- System hardware and locale inventory
- Network configuration and adapter details
- BIOS / motherboard / disk serial numbers

## Detection notes

Requires the `=== SYSTEM INFORMATION ===` uppercase header
AND the `network_config_full:` snake_case key AND the
`user_domain:` snake_case key. PCInfoStealer uses the same
header but additionally requires `=== NETWORK INFO ===`
and `PC Username:`, neither of which appears here, so the two structures remain distinct. No other cataloged family
uses snake_case keys at all, so the snake_case markers
are sufficient to reject unrelated content.

## Observed log variants

### `v_b56df7c47c8dd6e3c8b68ae39e89c1c5`

- Format ID: `cs-wmic-dump-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: `snake_case wmic-dump system_info.txt`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **148**
- Representative sample: [open sample](samples/v_b56df7c47c8dd6e3c8b68ae39e89c1c5/sample.txt)
- Sample SHA-256: `07f7e3b36590b5a1bcf82f8400b88dc18af3dca57c0224172d909aadf0b70811`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== SYSTEM INFORMATION ===`, `network_config_full:`
- Field labels: `memory_slots`, `motherboard_info`, `ram_modules`, `user_domain`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
