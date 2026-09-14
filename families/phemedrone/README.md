# Phemedrone

Phemedrone Stealer is an open-source .NET info-stealer first
surfaced in August 2023 at
`github.com/nullixx/Phemedrone-Stealer`. Public research
documented its use in a CVE-2023-36025 Windows SmartScreen
bypass campaign in January 2024, with detailed technical
analyses following. Public malware databases track the family
under `win.phemedrone_stealer` and list Ov3r_Stealer as an
alias. Forks include VGS Stealer and its successor Arcane
(publicly documented in March 2025).

The on-victim panel is a plain-text `Information.txt` with
three dashed-section headers spelled `----- Geolocation Data
-----`, `----- Hardware Info -----`, and `----- Miscellaneous
-----`. Fields under each header use a column-aligned `Key:`
plus multi-space plus value shape. The Geolocation block ships
IP, Country (name plus alpha-2 code), City, Postal, and MAC.
The Hardware block ships Username (as `<user>\<hostname>`, the
reverse of the Windows `USERDOMAIN\USER` order), Windows name,
Hardware ID (32-hex MachineGuid hash), GPU, CPU, and RAM. The
Miscellaneous block ships Antivirus products (comma-separated
from the WMI SecurityCenter2 query), File Location (usually
`C:\Users\<user>\Downloads\Build.exe`), and Clipboard text.
Treat the Clipboard text field as unreliable for family
attribution: it captures whatever was on the victim clipboard
at exfil time, including coincidental strings that mention
other stealers' names.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Phemedrone Stealer`, `Ov3r_Stealer`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill, credit cards
- Crypto wallet browser extensions and desktop clients
- Discord, Telegram, Steam session data
- Filezilla / VPN / gaming client configs
- Clipboard content at time of execution
- System hardware and geolocation inventory

## Detection notes

Fingerprint requires all three dashed section headers
(`----- Geolocation Data -----`,
`----- Hardware Info -----`,
`----- Miscellaneous -----`) line-anchored. The triple
anchor is unique to Phemedrone across this catalog: Arcane
uses triple-dash `---User Info---` / `---Full Pc Info---`
with no spaces around the section name, and canonical bracket-section formats such as Aura and Vidar use `[Section]`
square brackets. During triage, corroborate the profile with a sibling `moi.jpg` selfie screenshot and a `passwords.txt` file opening with `PASSWORDS FROM: <browser path>`. Clipboard content in the Miscellaneous block
sometimes carries other stealers' banners as unrelated
strings the victim happened to copy; do not use that field
to reassign family attribution.

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
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |

## Related catalog profiles

- [Arcane](../arcane/)

## Related external families

- `vgs-stealer`

## Sources

- <https://www.trendmicro.com/en_us/research/24/a/cve-2023-36025-exploited-for-defense-evasion-in-phemedrone-steal.html>
- <https://www.splunk.com/en_us/blog/security/unveiling-phemedrone-stealer-threat-analysis-and-detections.html>
- <https://spycloud.com/blog/phemedrone-stealer/>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.phemedrone_stealer>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
