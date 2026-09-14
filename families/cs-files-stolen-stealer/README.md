# CSFilesStolenStealer

CSFilesStolenStealer is a CyStack-coined identifier for a
compact ten-line `system.txt` panel whose distinctive
signature is the stealer-self-reporting `Files Stolen:`
counter field. Observed inside `JANUARY 15,16 - 4728
LOGS.part1.rar` Telegram aggregator packs at
`<HH-MM-SS>/system.txt` victim folders (e.g.
`00-39-28/system.txt`). The archive-name convention with
comma-separated dates matches the operator lineage of
`CSStartBuildInfoStealer` (`4,5 MAY`) and
`CSExePathInfoStealer` (`5,6 APRIL`) from the same reseller
pipeline.

The body ships ten flush-left `Key: Value` lines: PC Name,
Desktop Name, Windows Version, Files Stolen, IP Address, MAC
Address, GPU, RAM, Public IP, Antivirus. No bracketed section
headers, no banner, no trailing sections. Four features
distinguish this panel from every other registered format:

1. `PC Name:` plus `Desktop Name:` sibling pair with both
fields taking the same value on typical single-user Windows
hosts. Common stealer panels emit `Computer Name` /
`ComputerName` / `Hostname` as a single key, never as a `PC
Name` + `Desktop Name` pair. 2. `Files Stolen:` inline counter
for the number of files the harvester exfiltrated. Canonical
Vidar, StealC, and Lumma emit grab counts in a separate
summary section or not at all - in-body counter fields are
rare across surveyed families. 3. Dual IP fields side by side:
`IP Address:` carries the RFC-1918 LAN value (192.168.x.x,
10.x.x.x, 172.16-31.x.x) and `Public IP:` carries the WAN
routable value. The IOC schema emits the routable value; the
LAN value is retained in the source panel for triage. 4. `MAC
Address:` value uses hyphen byte separators (Windows ipconfig
style) rather than the more common colon-separated form.
`RAM:` value uses comma thousands separator (`18,308 MB`).

The `Windows Version:` value carries a trailing `- ` sentinel
with no product-name text after it (as if the panel builder
intended to append a Windows edition string but the resolver
returned an empty value on the observed sample). The parser
strips the tail and emits the bare NT version.

Family attribution is provisional. The ten-field combination
is unattested in public reporting and is also absent from the
community stealer-format catalogues. Multiple open-source
Python stealer builders (XillenStealer, Trap Stealer,
SPYSTEALER, py-stealer-builder) publish plain-text system
reports but none of the surveyed writeups document this exact
ten-field key spelling. Rename the family constant if a public
writeup later maps this layout to a known builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Files Stolen counter system.txt panel`, `PC Name + Desktop Name sibling-pair minimal stealer`
- Variants observed: **0**

## What it targets

- Windows hostname (`PC Name:`)
- Windows desktop / short login name (`Desktop Name:`)
- Windows NT version (`Windows Version:` with edition
placeholder tail)
- LAN interface IP (`IP Address:` RFC-1918 value)
- Public exit IP (`Public IP:` WAN value)
- MAC address (Windows ipconfig hyphen-separated form)
- GPU adapter name (`None` fallback when no discrete
adapter present)
- Installed RAM in MB (comma thousands separator)
- Antivirus product name (Windows Defender, third-party AV)
- File-exfiltration count self-reported by the stealer
(`Files Stolen:`)

## Detection notes

Fingerprint requires the four line-prefix anchors
`PC Name: `, `Desktop Name: `, `Files Stolen: `, and
`Public IP: ` all present in the same body. The
`Desktop Name:` + `Files Stolen:` pair is itself rare
enough that this triplet-plus-one cannot collide with
any other registered parser fingerprint. During
triage, the `Files Stolen:` value is a useful sanity
check: values much lower than a typical Documents /
Desktop harvest (single digits) suggest a targeted
grab or a quick-exit run, while values in the hundreds
suggest a full walk of the user profile. The
`Windows Version:` tail with an empty edition slot
suggests the panel builder queries a Windows edition
API path (registry `ProductName` or
`Get-ComputerInfo`) that failed silently on the
observed victim - a diagnostic worth carrying into
any future variants of this panel.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |

## Related catalog profiles

- [CSStartBuildInfoStealer](../cs-start-build-info-stealer/)
- [CSExePathInfoStealer](../cs-exe-path-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
