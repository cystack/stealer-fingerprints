# Predator The Thief

Predator The Thief is a C/C++ information stealer first
advertised in July 2018 on Russian-language forums by an
actor known as ``Alexuiop1337`` (later also
``Kongress_nlt``). Sold under a paid model through the
Telegram channel ``t.me/sett9`` (v3.x paid channel) and
``t.me/PredatorSoftwareChannel`` (update notes). Priced
around USD 30 on Russian-speaking forums, positioning it
as a low-cost commodity stealer.

Grabs browser passwords, cookies, autofill data, and
saved forms; crypto wallets; Steam, Telegram, Discord,
FileZilla, and WinFTP client credentials; the current
clipboard; and system fingerprint (HWID, OS version,
CPU / GPU / RAM / resolution). Later builds add webcam
photo capture and clipboard cryptocurrency-address
swapping. Distinguishing on-disk artifact is the
``Information.txt`` log with an ASCII-art ``PREDATOR``
banner and a dash-fenced
``| Developed by Alexuiop1337 |`` /
``| Buy Predator at t.me/sett9 |`` credit block above
the tally section.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Predator Stealer`, `PredatorTheThief`, `win.predator`
- Variants observed: **0**

## What it targets

- Browser credentials, cookies, autofill data, and saved
form entries (Passwords / Cookies / Forms / Cards
counters in the log tally section)
- Cryptocurrency wallet files (Wallets tally in the log)
- Steam, Telegram, Discord, FileZilla, WinFTP client
credentials (dedicated tallies in the log)
- System fingerprint (HWID, OS version, CPU, GPU, RAM,
screen resolution, machine name, keyboard layouts,
system locale)
- Geolocation (City, Country, Coordinates, IP, Timezone,
Zip code) resolved from the harvest-time public IP
- Installed applications inventory (numbered
``Installed applications:`` list)
- Clipboard contents at grab time
- Startup / persistence path of the harvester payload

## Detection notes

Fingerprint on the family-self-identifying banner literal
``Predator The Thief :`` at line start. The banner appears
in every observed sample and does not clash with any
other stealer log format. Confidence triggers include:
the ASCII-art ``PREDATOR`` header on the first non-blank
lines, the ``| Buy Predator at t.me/sett9 |`` sale-channel
watermark, the ``--- ID: <numeric>`` trailer that carries
the campaign / customer identifier, and the specific
field-label spellings (``User name`` / ``Machine name`` /
``UTC time`` / ``CPU info`` / ``GPU info`` /
``Amount of RAM``). During incident response, treat the
campaign ID as the pivot for cross-victim correlation and
the ``Startup folder:`` value as the persistence-path
artifact.

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
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |
| [T1125](https://attack.mitre.org/techniques/T1125/) | Video Capture |

## Related catalog profiles

- None recorded.

## Related external families

- `Kongress`

## Observed distribution channels

- <https://t.me/sett9>
- <https://t.me/PredatorSoftwareChannel>

## Sources

- <https://research.checkpoint.com/2020/predator-the-thief/>
- <https://www.fortinet.com/blog/threat-research/predator-the-thief-recent-versions>
- <https://securelist.com/a-predatory-tale/89779/>
- <https://fumik0.com/2018/10/15/predator-the-thief-in-depth-analysis-v2-3-5/>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.predator>
- <https://any.run/malware-trends/predator/>

Machine-readable record: [family.json](family.json)
