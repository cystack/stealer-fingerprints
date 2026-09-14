# Arcane

Arcane is a Russian-targeted info-stealer first publicly
documented in March 2025. The family is a successor to the VGS
stealer, itself a Phemedrone derivative. Distribution runs
through YouTube videos and Discord servers advertising game
cheats and VPN cracks: a password-protected archive contains a
`start.bat` that downloads a second payload via PowerShell and
drops both a miner and the Arcane binary. Most observed
victims are in Russia, Belarus, and Kazakhstan. A
distinguishing on-host artifact is the embedded `xaitax.exe`
utility (also seen as `xaitx.exe`) that Arcane drops to disk
to crack Chromium DPAPI keys by reading the keys off the
utility's console output.

The operator-facing system summary is a flat `Information.txt`
opened with a triple-dash `---User Info---` section (Worker,
Date Install, ISO Key, Clipboard, External IP, Internal IP,
Gateway IP) and a triple-dash `---Full Pc Info---` section
whose body is a series of triple-equals `=== <subsection>
Information ===` blocks carrying raw WMI query output for CPU,
GPU, RAM, Disk, Network Adapter, Windows Version, Motherboard,
BIOS, User Account, Time Zone, Screen, AntiVirus, and Logical
Processes. Failed WMI queries leave a Russian-language
`Произошла ошибка` ('An error occurred') line in place of the
subsection body.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Arcane Stealer`, `VGS Stealer (predecessor)`
- Variants observed: **3**
- Historical Logmine records represented: **5,874**

## What it targets

- Browser saved credentials, cookies, autofill, history (Chromium and Gecko)
- Browser DPAPI keys cracked via embedded xaitax utility
- VPN client configs (OpenVPN, Mullvad, NordVPN, IPVanish, Surfshark, Proton, hide.me, PIA, CyberGhost, ExpressVPN)
- Network utility configs (ngrok, Playit, Cyberduck, FileZilla, DynDNS)
- Gaming client tokens (Riot Client, Epic, Steam, Ubisoft Connect, Roblox, Battle.net)
- Cryptocurrency wallets
- Telegram and Discord session data
- System hardware inventory and saved Wi-Fi networks

## Detection notes

Fingerprint: line-anchored `---User Info---` AND
`---Full Pc Info---`. The triple-dash section pair is
unique to Arcane's Information.txt across the registry.
Two strong triage signals on top: a Russian
`Произошла ошибка` line where WMI subsections failed
(targets are predominantly Russian-speaking), and a
`xaitax.exe` or `xaitx.exe` process in the `=== Logical
Processes Information ===` block (the embedded Chromium
DPAPI cracker is the malware-specific binary). During
incident response, check sibling files for browser-data
dumps, wallet folders, and VPN config exports - Arcane
collects each artifact class into a separate file.

## Observed log variants

### `v_19485e2d3464f1a74cdca2500ccf3e84`

- Parser: `logmine.ioc.parsers.arcane.ArcaneParser`
- Observed filenames: `Information.txt`
- Panel brand: `@BRADLOGS (BRADMAX)`
- Distribution channel: `https://t.me/+0IAf5VIrl_EzNWRi`
- Attribution confidence: **high**
- Layout: `sectioned-user-info`
- Historical records represented: **1,865**
- Representative sample: [open sample](samples/v_19485e2d3464f1a74cdca2500ccf3e84/sample.txt)
- Sample SHA-256: `24f0266761c4632f0193bb3dbe0f7dc86e8663ac46b44a15480a7beab470b03f`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `---Full Pc Info---`, `---User Info---`, `@BRADLOGS (BRADMAX)`
- Field labels: -

### `v_84d2bdd1450ee03b1b2ff559425b8999`

- Parser: `logmine.ioc.parsers.arcane.ArcaneParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `headerless-user-info`
- Historical records represented: **61**
- Representative sample: [open sample](samples/v_84d2bdd1450ee03b1b2ff559425b8999/sample.txt)
- Sample SHA-256: `0fd16cf0e0aa38c2ddf07c36e415814e0f789197bf6bfb70dafbce7a57b6cc86`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `---Full Pc Info---`
- Field labels: `Date Install`, `Worker`

### `v_bfc7cdab5eb8146d9a2c2a389822e6a7`

- Parser: `logmine.ioc.parsers.arcane.ArcaneParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `sectioned-user-info`
- Historical records represented: **3,948**
- Representative sample: [open sample](samples/v_bfc7cdab5eb8146d9a2c2a389822e6a7/sample.txt)
- Sample SHA-256: `1e43077bef0e93188a47aba5c2d7bb00535a4a016fe5707baa8f7f61dc211b41`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `---Full Pc Info---`, `---User Info---`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |

## Related catalog profiles

- [Phemedrone](../phemedrone/)

## Related external families

- `vgs-stealer`

## Sources

- <https://securelist.com/arcane-stealer/115919/>
- <https://cyberinsider.com/new-arcane-stealer-malware-targets-vpn-accounts-via-youtube-cheats/>
- <https://www.bleepingcomputer.com/news/security/new-arcane-infostealer-infects-youtube-discord-users-via-game-cheats/>
- <https://thehackernews.com/2025/03/youtube-game-cheats-spread-arcane.html>

Machine-readable record: [family.json](family.json)
