# CSInternalIpStealer

CSInternalIpStealer is a CyStack-coined identifier for a
flattened `Information.txt` panel with square-bracket section
headers (`[Basic]` / `[Network]` / `[Drives]` / `[GPU]`) and a
distinctive `Internal IP:` LAN-IP field paired with the
public-IP `Ip:` field. Observed inside `@BRADMAX 12000
FEB-MARCH.part1.rar` at `@BRADMAX <count>
<MONTHS>/[<CC>]<IPv4>/Information.txt` victim folders (e.g.
`[UN]<IPv4>`).

The body ships three physical lines that concatenate the
entire identity preamble plus four bracket-marked section
blocks. Fields include `Ip:` (lowercase `p`), `Internal IP:`
(LAN address), `HWID:` (64-hex SHA256), `Clipboard:`
(opportunistic content), `Build:` (Windows build number), `OS
Arch:` (x64/x86), `CPU Name:`, `Logical Cores:`, `RAM Total
(MB):`, `RAM Available (MB):`, and `Domain:`. Section headers
appear inline mid-line rather than on their own rows because
of the aggressive-collapse repacking.

The `HWID` SHA256 length points at newer stealer builds
(Arkanix Stealer is publicly documented as using SHA256 for
HWID). The dual public + LAN IP pair is unusual: most
canonical stealers emit only the public IP. The `RAM Total
(MB):` / `RAM Available (MB):` parenthesised-unit value shape
is also unusual.

Family attribution is provisional pending a published
threat-intel mapping. Public reporting and community
catalogues do not attest a family emitting this exact flat
bracket-section layout. Candidates ruled out include Arkanix
Stealer (JSON wire format serialised to
`%LOCALAPPDATA%\Arkanix_lol\<class>.json`), Valkyrie Stealer
(JSON output), Easy Stealer (Dashboard-panel view without
published log-file format), Redline (uses `Hardwares:` block
with `Name:` sub-entries), `BracketSectionStealer` (uses
`[System]` + `[Hardware]` sections), AMOS (macOS-specific
`system_profiler` output).

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Flat bracket-section Information.txt with Internal IP`, `BRADMAX dual-IP panel with [Basic]/[Network]/[Drives]/[GPU]`
- Variants observed: **0**

## What it targets

- Public IPv4 (external) plus LAN IPv4 (internal)
- HWID as SHA256 hash
- Clipboard content (opportunistic per-victim data)
- Windows build number and architecture
- CPU name and logical core count
- Total and available RAM (MB)
- GPU adapters list
- Windows domain / hostname

## Detection notes

Fingerprint requires line-anchored `Ip:` AND `Internal IP:`
AND `HWID:` PLUS at least two of the four bracket-section
markers (`[Basic]` / `[Network]` / `[Drives]` / `[GPU]`)
present anywhere in the body. The `Internal IP:` field is
unique across the registered parsers - no other family emits
both an external and internal IP as separate fields. The four-section bracket-header set differs from every existing
bracket-section parser (`BracketSectionStealer` uses
`[System]` + `[Hardware]`; AMOS uses `[System Info]` +
`[Hardware]`). During triage, the SHA256 HWID length and the
dual-IP shape point at a newer stealer build; the specific
builder is not yet mapped in public reporting, so treat the
family label as a placeholder. Rename the family constant if a
public writeup later publishes this exact layout.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |

## Related catalog profiles

- [BracketSection Stealer](../bracket-section-stealer/)

## Related external families

- `arkanix-stealer`
- `valkyrie-stealer`
- `easy-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
