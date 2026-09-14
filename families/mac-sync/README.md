# MacSync

MacSync is a macOS-targeted infostealer first observed in
November 2025 as a rebrand of the earlier Mac.c family. Its
AppleScript payload writes an `Information.txt` file into the
victim staging directory combining a malware self-identification
banner, captured account credentials, and the verbatim output of
`system_profiler`.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Mac.c`, `MacSync Stealer`
- Variants observed: **1**
- Historical Logmine records represented: **75,488**

## What it targets

- Browser saved credentials (Chrome, Safari, Firefox)
- Crypto wallet desktop clients (Electrum, Exodus, etc.)
- macOS Keychain entries
- Telegram and Discord session data on macOS
- System profile information for victim fingerprinting

## Detection notes

The `Information.txt` containing both a banner and verbatim
`system_profiler` output is unambiguous. Pair with macOS-specific
field values (Apple silicon CPU strings, macOS version) to
confirm.

## Observed log variants

### `v_8ded840da2979d9deb0176880e86b1e9`

- Parser: `logmine.ioc.parsers.macsync.MacSyncParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **75,488**
- Representative sample: [open sample](samples/v_8ded840da2979d9deb0176880e86b1e9/sample.txt)
- Sample SHA-256: `0aca96c813ce5d994169a53f223ccb8bf66b719140d69aeaf25abc113dcafbe0`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `MacSync Stealer`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.cisecurity.org/insights/blog/macsync-stealer-campaign-impacting-us-sltt-macos-users>
- <https://www.jamf.com/blog/macsync-stealer-evolution-code-signed-swift-malware-analysis/>
- <https://moonlock.com/new-mac-stealer-spreading>
- <https://malware.news/t/mentalpositive-s-new-macos-stealer-amos-repackaged-or-a-new-cyber-threat/96207>

Machine-readable record: [family.json](family.json)
