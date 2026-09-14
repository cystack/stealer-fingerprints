# Phexia

Phexia is a macOS info-stealer that has been operating in
private distribution since April 2024 per a published
developer interview. The payload is implemented in osascript
(AppleScript) and the developer states it shares roughly 85%
of its code with the Mac.c stealer module, but it is marketed
and tracked as a separate product with its own
self-identification banner and its own customer base (around
20 active operators per the developer at the time of the
interview).

The on-disk `UserInformation.txt` opens with the literal
`Phexia macOS Stealer` banner, then a flat identity block
(`Build:` / `Username:` / `Password:` / `IP Address:`), then
the verbatim `system_profiler` output under `Software:` /
`Hardware:` / `Graphics/Displays:` section headers. The
`Build:` tag is a per-customer affiliate identifier set at
build time. Captured macOS login credentials ship in the
`Username:` / `Password:` pair at the top of the file.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Phexia Stealer`, `Phexia macOS Stealer`
- Variants observed: **1**
- Historical Logmine records represented: **1**

## What it targets

- macOS login credentials (captured at the panel prompt)
- Browser saved credentials, cookies, web data, login data, and history from Chromium-based browsers
- Chromium browser extension data and local extension settings
- macOS Keychain (`/Library/Keychains/login.keychain-db`)
- Crypto wallet desktop clients and browser extensions
- Notes.app passwords and small files in `~/Downloads`
- Telegram session data on macOS

## Detection notes

The first-line `Phexia macOS Stealer` banner is the family's
verbatim self-identification and is the cleanest single
fingerprint. The `Build:` bare-key affiliate tag distinguishes
this layout from the sibling MacSync `Build Tag:` form and
from Cthulhu's no-space `BuildID:` form. The shared `system_profiler`
body means folder-level macOS detectors may flash on the
same artifact, but parser dispatch on file system paths runs
only the parser chain so there is no collision in practice.
Triage logs from this family by collecting the captured
macOS login credential pair, the affiliate `Build:` tag,
and the Hardware UUID as the device identifier.

## Observed log variants

### `v_b2acb2241dc6354d10e66ebb270d1fe7`

- Parser: `logmine.ioc.parsers.phexia.PhexiaParser`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_b2acb2241dc6354d10e66ebb270d1fe7/sample.txt)
- Sample SHA-256: `e0e91bf55260ae513ac6f5a4821eba27bdb9793aa06ca9c2c822f6f4d3b184c9`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Phexia macOS Stealer`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1059.002](https://attack.mitre.org/techniques/T1059/002/) | Command and Scripting Interpreter: AppleScript |

## Related catalog profiles

- [MacSync](../mac-sync/)

## Sources

- <https://cookie.engineer/weblog/articles/malware-insights-macos-phexia-stealer.html>
- <https://www.pcrisk.com/removal-guides/34957-phexia-stealer-mac>
- <https://g0njxa.medium.com/approaching-stealers-devs-a-brief-interview-with-phexia-38ad3772dbcd>

Machine-readable record: [family.json](family.json)
