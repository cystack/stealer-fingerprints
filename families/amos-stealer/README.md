# AMOS Stealer

Atomic macOS Stealer (AMOS) is a Go and C++ macOS info-stealer
sold as malware-as-a-service through private Telegram channels
since April 2023. The operator panel charges around $1000 per
month and ships a builder, a victim web panel, a MetaMask
brute-forcer, and Telegram log delivery. Multiple public
malware writeups profile the family. AMOS spawned the Banshee,
Cthulhu, Poseidon, and Odyssey forks tracked separately in
this catalog.

The artifact documented here is the operator-facing summary
written as `UserInformation.txt` inside per-victim folders of
AMOS log aggregator packs. The file opens with four flush-left
panel section headers in a fixed order (`MetaMask Info:`,
`Debanks:`, `Userinfo:`, then `Software:` / `Hardware:` /
`Graphics/Displays:` introducing the verbatim
`system_profiler` output for the SPSoftwareDataType,
SPHardwareDataType, and SPDisplaysDataType data types).
`MetaMask Info` and `Debanks` sit empty in most samples
because the panel surfaces wallet artifacts in sibling folders
(`Wallets/`, `Keychain/`) rather than inlined into this
summary.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Atomic Stealer`, `Atomic macOS Stealer`, `AMOS`, `Atomic Mac`
- Variants observed: **1**
- CyStack observations represented: **19,149**

## What it targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions (MetaMask, Phantom, Coin98, Trust Wallet, 50+ targeted)
- Desktop crypto wallets (Electrum, Exodus, Atomic, Wasabi, Ledger Live, Trezor Suite)
- macOS Keychain database and login password (AppleScript prompt)
- Apple Notes content and Telegram session files
- Documents and Desktop file grabber (.txt, .pdf, .docx, .wallet, .key)

## Detection notes

The line-anchored `MetaMask Info:` + `Debanks:` + `Userinfo:`
triple is unique to this AMOS panel render and does not
collide with the Cthulhu (`BuildID:` + `Hardware Overview:`)
or MacSync (`MacSync Stealer` banner) macOS forks the catalog
tracks. Family attribution rests on a community stealer-format
catalog mapping this exact `UserInformation.txt` shape to
Atomic Mac; the underlying AMOS family is publicly confirmed
elsewhere but no public writeup shows a sample showing this
specific section-header layout, so the profile carries
medium attribution confidence. During incident response, check for sibling `FileGrabber/`,
`BrowserVersion.txt`, `keychain.txt`, and `Passwords.txt`
artifacts in the same victim directory; those sibling
filenames corroborate AMOS attribution.

## Observed log variants

### `v_93dd7400af7f5eefc3087e22c6b99a1c`

- Format ID: `amos`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **medium**
- Historical records represented: **19,149**
- Representative sample: [open sample](samples/v_93dd7400af7f5eefc3087e22c6b99a1c/sample.txt)
- Sample SHA-256: `2356e0c8ea7177f7e7d33714b3b37bf74a3bbab1633e9f21b73d1d5fe30c7437`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Debanks:`, `MetaMask Info:`, `Userinfo:`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Credentials from Password Stores: Keychain |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [Odyssey Stealer](../odyssey-stealer/)
- [MacSync](../mac-sync/)

## Related external families

- `banshee-stealer`
- `poseidon-stealer`

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://www.sentinelone.com/blog/atomic-stealer-threat-actor-spawns-second-variant-of-macos-malware-sold-on-telegram/>
- <https://www.esentire.com/blog/fake-deepseek-site-infects-mac-users-with-atomic-stealer>
- <https://www.picussecurity.com/resource/blog/atomic-stealer-amos-macos-threat-analysis>
- <https://moonlock.com/atomic-macos-stealer>
- <https://www.bleepingcomputer.com/news/security/new-atomic-macos-info-stealing-malware-targets-50-crypto-wallets/>
- <https://cyble.com/blog/threat-actor-selling-new-atomic-macos-amos-stealer-on-telegram/>

Machine-readable record: [family.json](family.json)
