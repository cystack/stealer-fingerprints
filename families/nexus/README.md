# Nexus

Nexus is a small C++ Windows info-stealer sold on the
exploit.in Russian-language crime forum for around $100 per
build with free updates. fr3d.hk published the first technical
reverse-engineering write-up: the stub is roughly 460 KB,
queries `SOFTWARE\Microsoft\Windows NT\CurrentVersion` for
the Windows version, and writes the small set of harvested
attributes into a HWID-named staging directory before exfil.

The on-disk `Information.txt` carries a six-line box-drawing
ASCII banner spelling NEXUS, a flat `Key: Value` system block,
and a trailer with the Russian `Тема с отзывами:`
("Reviews thread:") zelenka.guru / Lolzteam link plus the
seller's TOX and JABBER contact addresses
(`NEXUSDEVELOPER@EXPLOIT.IN` and `NEXUSSUPPORT@EXPLOIT.IN`).

Flare.io tracks Nexus as one of four distinct families it
observed across a 50,000-device sample of 2025 infections,
attributing roughly 2% of the sample to this family. The
specific `Information.txt` layout fingerprint is not yet
directly quoted in any curated-CTI deep-dive, so family
attribution rests on the JABBER self-identification literal
and the fr3d.hk technical match.

**Also known as:** `Nexus Stealer`

**Variants observed:** 1
**Top attribution confidence:** `medium`

## Targets

- Username, hostname, and machine identifiers
- Windows version and OS language
- CPU, GPU, and memory inventory
- IP address and country geolocation

## Variants

### `cystack_abc79f27`

**Attribution confidence:** `medium`

**Field keys:**
`CPU name`, `CPU vendor`, `Country`, `GPU`, `HWID`, `Hostname`, `IP Address`, `JABBER`, `Language`, `NetBIOS`, `OS Version`, `PC`, `RAM size`, `Screen resolution`, `TOX`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
╔╗─╔╗╔═══╗╔══╗╔══╗╔╗╔╗╔══╗
║╚═╝║║╔══╝╚═╗║║╔═╝║║║║║╔═╝
║╔╗─║║╚══╗──║╚╝║──║║║║║╚═╗
║║╚╗║║╔══╝──║╔╗║──║║║║╚═╗║
║║─║║║╚══╗╔═╝║║╚═╗║╚╝║╔═╝║
╚╝─╚╝╚═══╝╚══╝╚══╝╚══╝╚══╝

PC: DRQYH
User: NHU QUYNH
Hostname: <redacted>
NetBIOS: DRQYH
OS Version: Windows 11 (10.0.22621) x64
Language: en-US
HWID: <redacted>
CPU vendor: GenuineIntel
CPU name: Intel(R) Core(TM) i5-1035G4 CPU @ 1.10GHz
GPU: Intel(R) Iris(R) Plus Graphics
RAM size: 8192MB
Screen resolution: 2736x1824
IP Address: <redacted>
Country: VN
Тема с отзывами: zelenka.guru/threads/3534749

TOX: DAA5A865F91C41B3C0698680BEB7412BDD125A794B562DB9FA6522E1A456D33C24875A5D4FAA
JABBER: <email> / <email>
```

## Detection

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

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1614 System Location Discovery](https://attack.mitre.org/techniques/T1614/)
- [T1124 System Time Discovery](https://attack.mitre.org/techniques/T1124/)

## References

- https://fr3d.hk/blog/nexus-just-another-stealer
- https://flare.io/learn/resources/cybercrime-favorite-target-gamers
