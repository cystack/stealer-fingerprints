# Raccoon

Raccoon Stealer is a long-running malware-as-a-service infostealer also tracked as RecordBreaker. Its panel exports a compact `System Info.txt` report. Raccoon v2 uses `User ID: <MachineGuid>|<UserName>`, a JavaScript-style `Last seen:` timestamp, a truncated `Build:` value, `IP info:`, and a tab-indented `System Information:` block. Raccoon v1 uses the `Racc0_0n` self-banner and `Bot_ID: <uuid>_<user>` while keeping the same system-inventory purpose.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Raccoon Stealer`, `Raccoon v2`, `RecordBreaker`, `Racc0_0n`
- Variants observed: **2**
- Historical Logmine records represented: **402**

## What it targets

- Browser saved credentials, cookies, autofill, and history
- Crypto wallet extensions and desktop clients
- Email, FTP, and VPN client credentials
- Discord and Telegram session data
- System and installed-application inventory
- Files selected by the operator grabber configuration

## Detection notes

Treat the v1 and v2 panel exports as separate layouts. The v2 layout combines `User ID:`, `Last seen:`, `IP info:`, `System Information:`, and `Installed applications:`. The v1 layout combines `Bot_ID:` and `System Information:` with either the `Racc0_0n` self-banner or `Launched at:`. The MachineGuid/user join and those co-occurring section labels distinguish Raccoon from generic system-information logs.

## Observed log variants

### `v_35981cb9ad7bbc2326661a3e2f019f55`

- Parser: `logmine.ioc.parsers.raccoon.RaccoonStealerParser`
- Observed filenames: `System Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `panel-export-v1`
- Historical records represented: **16**
- Representative sample: [open sample](samples/v_35981cb9ad7bbc2326661a3e2f019f55/sample.txt)
- Sample SHA-256: `c5d3d1edc84c6feeb7db5208b4c367dd6bf9839fb869468ef5787260f00cba85`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Installed Apps:`, `Racc0_0n`, `System Information:`
- Field labels: `Bot_ID`, `Launched at`

### `v_69fc6a9bafa5557076540aa275f3124f`

- Parser: `logmine.ioc.parsers.raccoon.RaccoonStealerParser`
- Observed filenames: `System Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `panel-export-v2`
- Historical records represented: **386**
- Representative sample: [open sample](samples/v_69fc6a9bafa5557076540aa275f3124f/sample.txt)
- Sample SHA-256: `a1f2514c030c612051fff1c8e733a80714411d8090ba055be29059d67f23aaf8`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Installed applications:`, `System Information:`
- Field labels: `IP info`, `Last seen`, `User ID`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |

## Related catalog profiles

- None recorded.

## Sources

- <https://malpedia.caad.fkie.fraunhofer.de/details/win.raccoon>
- <https://attack.mitre.org/software/S1148/>
- <https://www.zscaler.com/blogs/security-research/raccoon-stealer-v2-latest-generation-raccoon-family>
- <https://www.darktrace.com/blog/the-resurgence-of-the-raccoon-steps-of-a-raccoon-stealer-v2-infection-part-2>
- <https://any.run/malware-trends/raccoon/>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
