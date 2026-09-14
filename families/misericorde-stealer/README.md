# Misericorde Stealer

Misericorde Stealer is a C++ Windows info-stealer advertised
on HackForums under the product listing `Misericorde Stealer
(C++ stub) - USER-HOST PANEL` with v10 and v20 versions. The
malware self-declares its name through an ASCII-art banner
block spelling `Misericorde` and a `Telegram -https://t.me/misericorde_supp` operator support-channel URL
emitted at the top of every `UserInformation.txt` panel.

The panel ships a compact 10-field identity preamble
(`Username`, `Hostname`, `FileLocation`, `IP`, `Country`,
`Timezone`, `City`, `Hwid`, `Logdate`, `Buildtag`), then a
`[System]` bracket-section block (`OS Product`, `Screensize`,
`Keyboard`, `System Language`), then a `[Hardware]`
bracket-section block (`GPU`, `CPU`, `RAM`). The single-word
`Username` / `Hostname` / `Hwid` / `Logdate` / `Buildtag` key
spellings distinguish Misericorde from Redline-lineage panels
(which use two-word forms like `User Name` / `Computer Name`
/ `HWID`).

The observed sample distributes through the `@UP_DAISYCLOUD`
Telegram reseller channel with the Daisy Cloud per-line
watermark overlay (obfuscated `Daisy Private cloud` scramble
on every payload line). The underlying Misericorde body is
independent of Daisy Cloud; other resellers may ship the same
panel without the watermark.

Family attribution rests on the self-declared banner literal
plus the HackForums product listing (community catalog /
underground forum). No public research publishes a Misericorde
writeup, and the community catalogues do not document it
either. `attribution_confidence = 'low'` reflects the one-underground-forum-source provenance combined with the strong
banner self-declaration signal.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **low**
- Aliases: `Misericorde`, `Misericorde C++ stub USER-HOST PANEL`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill (fields not
observed in the current sample - the UserInformation.txt
is the reconnaissance summary)
- Full identity preamble: username, hostname, HWID
- Public IPv4 plus city and IANA timezone from IP
geolocation
- OS caption with edition and build number
- Display resolution and system language
- CPU, GPU, and RAM hardware inventory
- Malware install path (observed shape:
`C:\ProgramData\<DropperName>\<Payload>.exe`)

## Detection notes

Fingerprint requires the `misericorde_supp` substring
AND at least one of the `[System]` / `[Hardware]`
bracket-section headers. The support-channel URL fragment
is the strongest single anchor: the malware writes it
into every panel as part of the banner ASCII art and it
survives the Daisy Cloud per-line watermark strip
unchanged. During triage, the `Buildtag:` value carries
the operator's build identifier (observed:
`cherry289`) and pivots to the specific reseller /
campaign. The `FileLocation:` value carries the on-victim install path; observed samples ship the payload
as `C:\ProgramData\<DropperName>\<Payload>.exe`.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)
- [Redline](../redline/)

## Observed distribution channels

- <https://t.me/misericorde_supp>
- <https://t.me/UP_DAISYCLOUD>

## Sources

- <https://hackforums.net/showthread.php?tid=6315987>
- <https://cybersecuritynews.com/daisy-cloud-hacker-group-exposed-30k-login-credentials/>
- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>

Machine-readable record: [family.json](family.json)
