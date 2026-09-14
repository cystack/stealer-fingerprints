# Rhadamanthys

Rhadamanthys info-stealer logs (v0.9.x device-fingerprint shape).
Writes a flat `systeminfo.txt` opening with `IP:`, `Country:`
and continuing with a hardware and locale block. Distinguished
from Redline-shape logs by the `Wallpaper Hash:` and
`MachineID:` field combination, which Rhadamanthys emits but
Redline never does. Continuously updated through 2025 with
expanded crypto-wallet, browser, and messenger coverage.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **medium**
- Aliases: `Rhadamanthys Stealer`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, history
- Crypto wallet extensions and desktop clients
- 2FA codes from authenticator browser extensions
- PDF, Office, and other document grabber
- Messenger and email clients

## Detection notes

High-confidence trigger: `Wallpaper Hash:` + `MachineID:`
field pair. The `IP:` + `Country:` opening is shared with
Vidar but Rhadamanthys lacks Vidar's `Version:` third-line
field.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |

## Related catalog profiles

- None recorded.

## Sources

- <https://research.checkpoint.com/2025/rhadamanthys-0-9-x-walk-through-the-updates/>
- <https://thehackernews.com/2025/10/rhadamanthys-stealer-evolves-adds.html>
- <https://any.run/malware-trends/rhadamanthys/>

Machine-readable record: [family.json](family.json)
