# CSMinimalGeoStealer

CSMinimalGeoStealer is a CyStack-coined identifier for a flat
5-line panel-summary `Information.txt` observed inside `22-23
SEPTEMBER - 20373 LOGS2.part1.rar` Telegram aggregator packs.
The victim folder name is a random uppercase-alphanumeric ID
plus a Python-style timestamp
(`<32-CHAR-ID>_YYYY_MM_DDTHH_MM_SS_micros/`), pointing at a
Python or Go builder that mints the folder from
`datetime.utcnow().isoformat()` with punctuation swapped for
underscores.

The body has exactly five bare `Key: Value` lines:
`Username:`, `IP Address:`, `Country Code:`, `OS Version:`,
`Antivirus:`. No banner, no HWID, no hostname, no hardware
inventory, no build tag, no timestamp inside the body.
Distinguishing key spellings: `IP Address:` (two-word form,
space between IP and Address), `Country Code:` (two-word form
with capital-C `Code`, bare ISO 3166-1 alpha-2 value),
`Antivirus:` (lowercase `v`), and `OS Version:` carrying the
WMI `Win32_OperatingSystem.Caption` prefix (e.g. `Microsoft
Windows 11 Pro`).

Family attribution is provisional pending a published
threat-intel mapping for this minimal layout. Public reporting
and the community catalogues do not attest a family emitting
exactly this 5-field shape with the specific key spellings
above. Candidates ruled out include Raven Stealer,
SamsStealer, PupkinStealer, XillenStealer, Braodo, and
BoryptGrab (all documented body shapes are richer or differ in
field-key spelling). Update this tracking profile if a public
writeup later identifies the underlying builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Flat 5-field Information.txt panel-summary`, `Bare Username/IPAddress/CountryCode/OSVersion/Antivirus panel`
- Variants observed: **0**

## What it targets

- OS user name (bare token, no bracket or slash suffix)
- Public IPv4 address
- Country code (ISO 3166-1 alpha-2)
- OS caption from WMI `Win32_OperatingSystem.Caption`
- Installed antivirus product list

## Detection notes

Fingerprint requires all five bare keys line-anchored
(`Username:`, `IP Address:`, `Country Code:`, `OS
Version:`, `Antivirus:`) PLUS absence of every richer-body anchor (`HWID:`, `PC Name:`, `User Name:` two-word
form, `Computer Name:`, `Build:`, `Build ID:`,
`Hostname:`, CamelCase `AntiVirus:`). During triage, the
body carries no cred count, hardware inventory, or
timestamp, so the public record retains victim identity, geo,
OS, and installed AV. The folder-name Python-timestamp
shape (`<ID>_YYYY_MM_DDTHH_MM_SS_micros`) is a useful
secondary signal but is not part of the format
fingerprint (the content fingerprint uses the body only).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |

## Related catalog profiles

- [CSBareUsernameAVStealer](../cs-bare-username-av-stealer/)
- [CSBareVersionStealer](../cs-bare-version-stealer/)
- [Minimal Stealer](../minimal-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
