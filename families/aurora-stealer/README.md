# Aurora Stealer

Aurora Stealer is a Go-based Windows info-stealer operated as
Malware-as-a-Service by a Russian-speaking actor calling
themselves 'Cheshire' (forum handle `cheshire666` on WWH
Club). Public writeups document the family as active since at
least mid-2022. Aurora started as a multi-purpose botnet and
evolved to focus on credential and cryptocurrency theft.

The operator-side `UserInformation.txt` panel opens with two
self-declaration header lines pointing at the
`t.me/cheshire_aurora` channel and
`t.me/aurora_botnet_support` support handle, followed by four
`<================ SECTION ================>` section headers
(BUILD INFORMATION, GEO INFORMATION, USER INFORMATION, PC
INFORMATION) with tilde-equals padding around the label.
Fields include HWID, Log date, FileLocation, IP, Country,
Region, City, ScreenSize, and dash-prefixed hardware inventory
(- CPU / - RAM / - Display Devices).

The `FileLocation` value carries a WinRAR temp-extraction
path (`Rar$EX...`) with a U+3164 Hangul Filler disguise: the
observed sample pads `Script inside.txt` with many invisible
filler characters so the actual `.exe` extension gets pushed
off-screen in most file explorers. Victims see the file as
`Script inside.txt` and double-click it, executing the malware
directly from inside the RAR archive listing without
extracting first.

The C2 wire format is documented as JSON, GZIP-compressed, and
Base64-encoded. The observed plain-text panel render is the
operator-facing dashboard shape, not the wire format.
Multiple Telegram resellers repackage Aurora logs; the
observed sample ships through `@UP_DAISYCLOUD` with the Daisy
Cloud pipe-bordered banner and per-line watermark overlay.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Aurora`, `Aurora Botnet`, `Cheshire Aurora`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill
- Cryptocurrency wallet extensions and desktop clients
- Steam session data
- Telegram session data
- Screenshot capture
- Grabber for user-specified filename patterns
- System hardware and geolocation inventory

## Detection notes

Fingerprint requires the `cheshire_aurora` substring
(the operator channel handle self-declared in the
`CHANNEL:` header line) AND the `BUILD INFORMATION`
substring (the first section header). The two-anchor
combination cannot collide with unrelated documents
that mention Aurora by name because both anchors must
appear together. During triage, the `FileLocation:`
value often carries the U+3164 Hangul Filler disguise
trick; stripping the filler chars reveals the actual
`.exe` payload path. The `Log date:` format is
shared with Redline (`DD MMM YY HH:MM:SS`), reflecting
the same Russian-speaking developer ecosystem.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1036](https://attack.mitre.org/techniques/T1036/) | Masquerading |

## Related catalog profiles

- [Redline](../redline/)
- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)

## Observed distribution channels

- <https://t.me/cheshire_aurora>
- <https://t.me/aurora_botnet_support>
- <https://t.me/UP_DAISYCLOUD>

## Sources

- <https://blog.sekoia.io/aurora-a-rising-stealer-flying-under-the-radar/>
- <https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-aurora-stealer>
- <https://www.securityweek.com/multi-purpose-botnet-and-infostealer-aurora-rising-fame/>
- <https://thehackernews.com/2022/11/researchers-warn-of-cyber-criminals.html>
- <https://d01a.github.io/aurora-stealer-builder/>

Machine-readable record: [family.json](family.json)
