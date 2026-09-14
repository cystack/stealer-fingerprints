# SHub Stealer

SHub Stealer is a macOS-targeted info-stealer first publicly
documented in March 2026 after a fake CleanMyMac landing-page
campaign delivered the payload to crypto holders. A follow-on
variant was analysed publicly under the build tag `Reaper` in
May 2026; the family also gets broad public coverage.

The payload is a Mach-O binary that runs an AppleScript helper
to harvest browser data, cryptocurrency wallets,
developer-related configuration files, macOS Keychain data,
iCloud session data, and Telegram session files. Collected
data is bundled into a ZIP archive and POSTed to a hardcoded
gate (e.g. `res2erch-sl0ut[.]com/gate`) along with a hardcoded
API key identifying the malware build. Per-victim `Build Tag`
campaign labels and a 32-character build hash support
affiliate-level tracking. Observed build tags include
`Reaper`, `PAds`, and `Crypto_Byte`.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `SHub`, `SHub Reaper`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill
- Cryptocurrency wallet apps and browser extensions
- macOS Keychain entries
- iCloud session data
- Telegram session files
- Developer configuration files and Notes
- On-screen prompted login credentials (osascript dialog)

## Detection notes

The strongest single signal is the verbatim `SHub Stealer`
banner literal, the family's self-identification header.
Paired with the `Build Tag:` and `External IP:` preamble
fields, attribution is high confidence. Triage rules
should anchor on the banner literal plus the
`system_profiler` body shape rather than the build tag
value, which rotates per campaign (`Reaper`, `PAds`,
`Crypto_Byte` are documented examples).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1059.002](https://attack.mitre.org/techniques/T1059/002/) | AppleScript |
| [T1056.002](https://attack.mitre.org/techniques/T1056/002/) | GUI Input Capture |

## Related catalog profiles

- [MacSync](../mac-sync/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)

## Sources

- <https://www.sentinelone.com/blog/shub-reaper-macos-stealer-spoofs-apple-google-and-microsoft-in-a-single-attack-chain/>
- <https://www.malwarebytes.com/blog/threat-intel/2026/03/fake-cleanmymac-site-installs-shub-stealer-and-backdoors-crypto-wallets>
- <https://www.bleepingcomputer.com/news/security/shub-macos-infostealer-variant-spoofs-apple-security-updates/>
- <https://securitylabs.datadoghq.com/articles/tech-impersonators-clickfix-and-macos-infostealers/>
- <https://www.helpnetsecurity.com/2026/05/19/shub-reaper-macos-infostealer-apple-google-microsoft/>

Machine-readable record: [family.json](family.json)
