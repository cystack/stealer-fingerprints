# Cthulhu Stealer

Cthulhu Stealer is a Go-written macOS infostealer that
exfiltrates a custom `Userinfo.txt` written to
`/Users/Shared/NW/`. The body opens with `IP:` and `Country:`
fields and continues with macOS hardware and account inventory.
Observed in `@bugatti_cloud` aggregator packs.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Cthulhu macOS Stealer`
- Variants observed: **1**
- CyStack observations represented: **5,450**

## What it targets

- Browser saved credentials on macOS
- Crypto wallet desktop clients
- macOS Keychain entries
- Telegram session data
- System inventory and hardware fingerprint

## Detection notes

macOS-specific path (`/Users/Shared/NW/Userinfo.txt`) plus the
IP-then-country opening is the clean fingerprint. The Go
origin shows up in stable field ordering across builds.

## Observed log variants

### `v_1e1c8707a36b7f85a5633c78674b0d78`

- Format ID: `cthulhu`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **5,450**
- Representative sample: [open sample](samples/v_1e1c8707a36b7f85a5633c78674b0d78/sample.txt)
- Sample SHA-256: `f86d1d768943f3ef56910c53097a0e39d5e5fbaee351ec58406c821f221609f1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Hardware Overview:`
- Field labels: `BuildID`


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

- <https://www.darktrace.com/blog/from-the-depths-analyzing-the-cthulhu-stealer-malware-for-macos>

Machine-readable record: [family.json](family.json)
