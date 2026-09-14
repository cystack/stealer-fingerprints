# Meduza

Meduza Stealer is a Windows .NET info-stealer first publicly
documented in June 2023. It is sold as a malware-as-a-service
offering on Russian-language hacking forums and is
geo-excluded against several CIS targets (Russia, Kazakhstan,
Belarus) per public write-ups. The family is tracked under the
canonical literals `win.meduza` and `Meduza` in public malware
databases, with corroborating public analysis. CERT-UA has
referenced Meduza in UAC-0050 phishing waves against Ukraine
and Poland.

The harvested log opens with a seven-line ASCII-art banner
spelling MEDUZA using Unicode block characters inside a
`*`-bordered frame, followed by a flat `Key: Value` body. The
field set is `HWID`, `Log Date`, `Build Name`, `Country Code`,
`User Name`, `Computer Name`, `Operation System` (panel-side
typo, sic), `Time Zone` (bracket-wrapped offset joined with
the verbose name), `Screen Resolution`, `CPU` (name plus
padded comma plus logical-core count), `GPU`, `RAM`
(dot-decimal `GB` with four-decimal precision), `IP`, and
`Execute Path`. The `Log Date` value is DD-MM-YYYY HH:MM:SS
European format with a comma separating date and time.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Meduza Stealer`, `MeduzaStealer`
- Variants observed: **1**
- Historical Logmine records represented: **80**

## What it targets

- Browser saved credentials (Chromium and Firefox-family)
- Browser cookies, autofill, history, bookmarks
- Crypto wallet extensions and desktop clients
(documented coverage: ~76 wallets)
- Password managers (~19 supported per public reporting)
- Steam and Discord session data
- Telegram session files
- System hardware and locale inventory

## Detection notes

The MEDUZA ASCII-art banner is the family's verbatim
self-identification; the bottom-feet row substring
`██║░╚═╝░██║` is the cleanest fingerprint anchor and
is shared with the folder-level
`logmine.detection.stealers.Meduza` detector. Pair the
banner anchor with the Meduza-specific `Build Name:`
field key to avoid the residual collision risk against
Redline (which also emits `Operation System:` sic).
During triage, the `Execute Path` value typically
points at the malware's installation location and is
high-signal for sandbox replay and host clean-up.

## Observed log variants

### `v_3c577d49d344f5721058cf29ee36de42`

- Parser: `logmine.ioc.parsers.meduza.MeduzaParser`
- Observed filenames: `System.txt`
- Panel brand: `One-Go`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **80**
- Representative sample: [open sample](samples/v_3c577d49d344f5721058cf29ee36de42/sample.txt)
- Sample SHA-256: `1f0c3cbded5028c2a8cb14c58fb89b7902d2049506d1e9b59ff41a0f38ebdf22`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `One-Go`
- Field labels: `Build Name`, `Execute Path`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |

## Related catalog profiles

- [Aurora Stealer](../aurora-stealer/)

## Sources

- <https://www.uptycs.com/blog/threat-research-report-team/what-is-meduza-stealer-and-how-does-it-work>
- <https://www.splunk.com/en_us/blog/security/meduza-stealer-analysis.html>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.meduza>
- <https://any.run/malware-trends/meduza/>
- <https://russianpanda.com/Meduza-Stealer-or-The-Return-of-The-Infamous-Aurora-Stealer>
- <https://www.silentpush.com/blog/meduza-stealer/>

Machine-readable record: [family.json](family.json)
