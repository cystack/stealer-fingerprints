# RisePro

RisePro is a C++ info-stealer first documented in December
2022 and re-covered in 2023 when PrivateLoader began
redropping updated builds. A 2024 `gitgub` campaign writeup
catalogued RisePro v1.6 with FNV-1A dynamic import resolution,
XOR-obfuscated stack strings, TCP port 50500
command-and-control, and Base64-encoded ZIP exfiltration to
Telegram bot channels. Functionally it resembles Vidar:
browser credential grab, wallet grab, and a `brute.txt`
password aggregate for downstream brute-forcing.

The log documented here is not native RisePro output. It is
emitted by an in-house Python normalizer that a Telegram log
broker runs over raw stealer output before redistribution. The
tool writes leading-space `Key: Value` fields, a pipe-joined
`Single-line params:` hardware summary, an `Original file:`
reference to the operator working folder, and a `Source:
IP-API (https://ip-api.com/)` geolocation attribution line.
The tool self-declares the family via a `Stealer:` field; here
it points at RisePro. The BRADMAX_CLOUD sibling format handles
the same wrapper when the tool cannot fingerprint the
underlying stealer (`Stealer: Unknown`).

## Research status

- Classification: **Known malware family**
- Attribution confidence: **medium**
- Aliases: `RisePro Stealer`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions and desktop clients
- Discord and Telegram session data
- System hardware, locale, and installed-software inventory
- Password aggregate for offline brute-forcing (`brute.txt`)

## Detection notes

High-confidence trigger for the normalized wrapper: line-anchored ` Stealer: RisePro` (leading space) plus ` Original
file:` plus ` Source: IP-API (https://ip-api.com/)`. Attribution
to RisePro runs through the normalizer tool, so triage should
cross-check the raw-log fingerprint (TCP port 50500 traffic,
`brute.txt` in the archive, RISEPRO banner in `password.txt`)
before pivoting on the family label. Native RisePro panels do
not credit their geolocation data source; the `Source: IP-API`
line is the wrapper-tool tell.

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
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection |

## Related catalog profiles

- [Vidar](../vidar/)
- [StealC](../steal-c/)

## Sources

- <https://www.sekoia.com/blog/new-risepro-stealer-distributed-by-the-prominent-privateloader>
- <https://blog.gdatasoftware.com/2024/03/37885-risepro-stealer-campaign-github>
- <https://flashpoint.io/blog/risepro-stealer-and-pay-per-install-malware-privateloader/>
- <https://www.pcrisk.com/removal-guides/25589-risepro-stealer>

Machine-readable record: [family.json](family.json)
