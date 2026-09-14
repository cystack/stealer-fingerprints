# Nexus

Nexus is a small C++ Windows info-stealer sold on the
exploit.in Russian-language crime forum for around $100 per
build with free updates. The first technical
reverse-engineering write-up describes a stub of roughly 460
KB that queries `SOFTWARE\Microsoft\Windows NT\CurrentVersion`
for the Windows version, and writes the small set of harvested
attributes into a HWID-named staging directory before exfil.

The on-disk `Information.txt` carries a six-line box-drawing
ASCII banner spelling NEXUS, a flat `Key: Value` system block,
and a trailer with the Russian `Тема с отзывами:` ("Reviews
thread:") zelenka.guru / Lolzteam link plus the seller's TOX
and JABBER contact addresses (`NEXUSDEVELOPER@EXPLOIT.IN` and
`NEXUSSUPPORT@EXPLOIT.IN`).

Public infection-telemetry research counts Nexus as one of
four distinct families observed across a 50,000-device sample
of 2025 infections, attributing roughly 2% of the sample to
this family. The specific `Information.txt` layout fingerprint
is not yet directly quoted in any public deep-dive, so family
attribution rests on the JABBER self-identification literal
and an independent technical match.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **medium**
- Aliases: `Nexus Stealer`
- Variants observed: **0**

## What it targets

- Username, hostname, and machine identifiers
- Windows version and OS language
- CPU, GPU, and memory inventory
- IP address and country geolocation

## Detection notes

The `NEXUSDEVELOPER@EXPLOIT.IN` JABBER literal is the
strongest single fingerprint, since it carries the malware
author's own seller-contact handle and is written into every
log by the panel. The six-line NEXUS box-drawing banner and
the Russian `Тема с отзывами:` zelenka.guru reviews-thread
line provide secondary confirmation. Triage logs from this
family by collecting the flat `Key: Value` system block plus
the HWID; the exfil set is small and contains no banking,
wallet, or session-cookie data on its own (file-grabber
output ships in sibling files inside the same victim folder).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- None recorded.

## Sources

- <https://fr3d.hk/blog/nexus-just-another-stealer>
- <https://flare.io/learn/resources/cybercrime-favorite-target-gamers>

Machine-readable record: [family.json](family.json)
