# SantaStealer

SantaStealer is a malware-as-a-service info-stealer first
publicly documented in December 2025. The operation is a
rebrand of an earlier project named BluelineStealer; the
SantaStealer brand is the operator-side relaunch ahead of an
end-of-year launch push. The researchers obtained samples and
access to the affiliate web panel, and identified a
Russian-speaking developer. Pricing is Basic at $175 per month
and Premium at $300 per month, advertised on Telegram and
hacker forums.

The malware runs 14 data-collection modules in parallel
threads (browser passwords, cookies, history, credit cards,
Telegram / Discord / Steam sessions, crypto wallet apps and
browser extensions, document grabber, desktop screenshots).
Collected data is written to memory, archived into a `Log.zip`
file in `%TEMP%`, split into 10 MB chunks, and exfiltrated
over unencrypted HTTP to a hardcoded C2 IP on port 6767. The
malware self-advertises through the Telegram channel
`t.me/SantaStealer`, which is also embedded verbatim in every
artifact the malware writes.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Santa Stealer`, `BluelineStealer`
- Variants observed: **1**
- Historical Logmine records represented: **2**

## What it targets

- Browser saved credentials (Chromium and Gecko)
- Browser cookies, history, autofill
- Saved credit card data from browsers
- Cryptocurrency wallet apps and browser extensions
- Telegram, Discord, and Steam session data
- Documents matching the file-grabber filter list
- Desktop screenshots

## Detection notes

The strongest single signal is the verbatim Telegram
channel handle `t.me/SantaStealer`, embedded by the
malware's configuration and written into every artifact
the malware emits. Paired with the file-grabber
manifest header `Found N Sensitive files. Many of
these will be false positives`, the family attribution
is high-confidence. The ASCII-art `SANTA STEALER`
banner uses Unicode box-drawing characters, so triage
rules should anchor on the channel handle and template
literal rather than the banner text itself.

## Observed log variants

### `v_e8de83dfb299d4ae3148727b940ff625`

- Parser: `logmine.ioc.parsers.santastealer.SantaStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `t.me/SantaStealer`
- Attribution confidence: **high**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_e8de83dfb299d4ae3148727b940ff625/sample.txt)
- Sample SHA-256: `b73d51ba290606d47b2533020499dfb471a5d4fa39dd55b0562058503c306f66`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Sensitive files`, `t.me/SantaStealer`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/SantaStealer>

## Sources

- <https://www.rapid7.com/blog/post/tr-santastealer-is-coming-to-town-a-new-ambitious-infostealer-advertised-on-underground-forums/>
- <https://www.bleepingcomputer.com/news/security/new-santastealer-malware-steals-data-from-browsers-crypto-wallets/>
- <https://www.theregister.com/2025/12/16/santastealer_stuffs_users_credentials_crypto>

Machine-readable record: [family.json](family.json)
