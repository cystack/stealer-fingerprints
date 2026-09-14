# CryptBot

CryptBot is a Delphi-built info-stealer first publicly
documented in December 2019. The family is best known for its
`_Information.txt` victim summary plus sibling files
`_AllPasswords_list.txt`, `_AllCookies_list.txt`,
`_AllForms_list.txt`, `_AllWallets_list.txt`, and
`Screen.png`, all written into a per-victim folder under
`%TEMP%`. Multiple builder versions have been observed (v2.0,
v3.0, v3.1 per public analyses); the field set in the summary
file is stable across versions, with the v3.x line moving the
qualifier on `UserName` and `Data` fields from parentheses to
a brackets variant in some rebrand samples.

CryptBot distribution leans on SEO-poisoned cracked-software
landing pages and bundled freeware installers. The malware
writes the victim summary to disk, packs it with the harvested
credential / cookie / wallet files into a ZIP, and POSTs the
archive to a hard-coded C2 gate.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `CryptBot Stealer`, `Crypt Bot`
- Variants observed: **2**
- Historical Logmine records represented: **5**

## What it targets

- Browser saved credentials (Chromium and Gecko)
- Browser cookies and autofill data
- Cryptocurrency wallet files and browser extensions
- Saved form data
- System hardware and locale inventory
- Screenshot of the desktop

## Detection notes

The `_Information.txt` filename is the strongest folder-level signal: paired with the `_AllPasswords_list.txt` /
`_AllCookies_list.txt` / `_AllForms_list.txt` sibling
set, no other family in the registry uses this exact
naming. Content-level fingerprint anchors on the
bracket-suffixed `UserName [ComputerName]:` and
`Data [Time]:` keys plus `Keyboard Languages:`; the
no-space `UserName` spelling distinguishes CryptBot from
Vidar / StealC / Mars (which use `User Name:`).

## Observed log variants

### `v_ab2260210a1222f2c7c15c25c8251227`

- Parser: `logmine.ioc.parsers.cryptbot.CryptBotParser`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `bracket-user-host`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ab2260210a1222f2c7c15c25c8251227/sample.txt)
- Sample SHA-256: `090c3bba8e01bf881bd061fb18d3c0a591a57433376c133a38838a3bb6eec86d`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Data [Time]:`, `UserName [`
- Field labels: `Installed software`, `Keyboard Languages`

### `v_cbcdfdbccf53d49530cd7b152470af8a`

- Parser: `logmine.ioc.parsers.cryptbot.CryptBotParser`
- Observed filenames: `_Information.txt`
- Panel brand: `Ottoman`
- Distribution channel: `@OttoSup`
- Attribution confidence: **high**
- Layout: `bracket-user-host`
- Historical records represented: **4**
- Representative sample: [open sample](samples/v_cbcdfdbccf53d49530cd7b152470af8a/sample.txt)
- Sample SHA-256: `967be06238c92a4ffb1e3b21a0ce1d53ba66ecb9ccf7dc9f921eab0e605576e8`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Data [Time]:`, `Installed software:`, `UserName [`
- Field labels: `Keyboard Languages`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |

## Related catalog profiles

- None recorded.

## Sources

- <https://research.openanalysis.net/cryptbot/botnet/yara/config/2024/12/06/cryptbot2.html>
- <https://fr3d.hk/blog/cryptbot-too-good-to-be-true>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.cryptbot>
- <https://any.run/malware-trends/cryptbot/>
- <https://www.deepinstinct.com/blog/cryptbot-how-free-becomes-a-high-price-to-pay>

Machine-readable record: [family.json](family.json)
