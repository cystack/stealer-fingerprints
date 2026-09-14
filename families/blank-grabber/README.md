# Blank Grabber

Blank Grabber is a Python-based open-source info-stealer
hosted on GitHub (Blank-c/Blank-Grabber). Low-skill actors
compile it with PyInstaller and distribute it via cracked
software lures, weaponised PyPI packages, and Discord or
Telegram dropper campaigns. Exfiltration goes through a
Discord or Telegram webhook, so no dedicated C2 panel is
needed.

The exfil archive contains a top-level `Information.txt`
whose banner reads `Blank Grabber got a new victim: <name>`,
followed by an `IP Info` block (ip-api.com data), a
`System Info` block (Computer Name, OS, RAM, UUID, CPU,
GPU, Product Key), and a `Grabbed Info` summary that counts
each data category (Discord Accounts, Passwords, Cookies,
Roblox Cookies, Telegram Sessions, Wallets, Wifi, etc.).

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `BlankGrabber`, `Blank-c/Blank-Grabber`
- Variants observed: **3**
- CyStack observations represented: **12,773**

## What it targets

- Discord and Telegram session tokens
- Browser saved credentials, cookies, history, autofill
- Crypto wallet desktop clients (Bitcoin, Ethereum, Exodus, others)
- Roblox cookies and Minecraft sessions
- Wifi passwords and webcam captures
- System hardware and locale inventory
- Game launcher sessions (Epic, Steam, Uplay, Battle.net, Growtopia)

## Detection notes

The banner literal `Blank Grabber got a new victim:` is
unique across this catalog and absent from other retained formats, so
a single substring check is sufficient for a structural match. Forks
(notably AK-grabber) reuse the same banner verbatim, which
is a feature for triage: the fork still maps to the
Blank Grabber family. The `Grabbed Info` per-category counts
are the cleanest indicator of which artifact subfolders the
archive contains for evidence collection.

## Observed log variants

### `v_b1e576b5520c49a68172676d7c72c40a`

- Format ID: `blank-grabber`
- Observed filenames: `Information.txt`
- Panel brand: `Dead`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **65**
- Representative sample: [open sample](samples/v_b1e576b5520c49a68172676d7c72c40a/sample.txt)
- Sample SHA-256: `bc59a06e31f57a4950bb04b1ef23c863ade1d494018e47f4ad086cb56b50e0ab`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Dead`, `Grabbed Info`, `IP Info`
- Field labels: `Dead got a new victim`, `System Info`

### `v_ccdf4b8e3fbd1fec812ef139238867e6`

- Format ID: `blank-grabber`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **12,707**
- Representative sample: [open sample](samples/v_ccdf4b8e3fbd1fec812ef139238867e6/sample.txt)
- Sample SHA-256: `c72b2968115f628d1cbda5507729dc54e4445f7f3f3386be0cff7055fc999fa5`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Grabbed Info`, `IP Info`
- Field labels: `Blank Grabber got a new victim`, `System Info`

### `v_d1192221791366c31e6fcf477e55b52b`

- Format ID: `blank-grabber`
- Observed filenames: `Information.txt`
- Panel brand: `Amnesia`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d1192221791366c31e6fcf477e55b52b/sample.txt)
- Sample SHA-256: `23cb51a4c2b4ebe3cd524606bc06c9e6498e1e41f9de8de3c4e16e475921f890`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Amnesia`, `Grabbed Info`, `IP Info`
- Field labels: `Amnesia got a new victim`, `System Info`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |
| [T1567](https://attack.mitre.org/techniques/T1567/) | Exfiltration Over Web Service |

## Related catalog profiles

- None recorded.

## Related external families

- `akgrabber`

## Sources

- <https://any.run/malware-trends/blankgrabber/>
- <https://www.splunk.com/en_us/blog/security/blankgrabber-trojan-stealer-analysis-detection.html>
- <https://github.com/Blank-c/Blank-Grabber>

Machine-readable record: [family.json](family.json)
