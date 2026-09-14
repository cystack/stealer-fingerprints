# CSMacBareGeoStealer

CSMacBareGeoStealer is a CyStack-coined identifier for a bare
2-line geo header macOS panel observed inside `!! 2025
DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/UserInformation.txt` victim folders. The body
opens with just `IP: <ipv4>` and `Country: <full English
name>` on two lines, then drops into the verbatim
`system_profiler SPSoftwareDataType` / `SPHardwareDataType` /
`SPDisplaysDataType` output. No banner, no `Country Code:`
line, no `Region:` / `City:` / lat / lon / `Zipcode:` /
`Timezone:` fields, no `BuildID:` per-build label, no
`MetaMask Info:` / `Debanks:` / `Userinfo:` section markers,
no self-banner.

The 2-line geo header is the panel's minimal-extraction quirk.
Documented macOS stealers either ship a richer geo block
(Cthulhu's 9-field block, AMOS's 3-field block) or serialise
system info to JSON (Banshee). The flat-key text shape plus
the missing country-code sibling field rules out all four
registered macOS formats (Cthulhu, MacSync, AMOS,
CSMacUserinfo).

Family attribution is provisional. Public reporting and the
public stealer-format catalogues do not document a macOS
family that emits this exact bare 2-line geo +
`system_profiler` shape. Public coverage of macOS stealers
focuses on Cthulhu, AMOS, Banshee, Poseidon / Odyssey, and
DigitStealer, but none of those writeups publish a sample
matching this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Bare 2-line geo macOS UserInformation.txt`, `Stripped IP + Country macOS panel`
- Variants observed: **0**

## What it targets

- Browser-saved credentials (UserInformation.txt itself
ships only system info; harvested credentials live in
sibling files in the operator's archive)
- Victim hostname (`Computer Name:` field)
- Victim username (`User Name:` display + shortname pair)
- macOS hardware fingerprint (Chip, Hardware UUID, Serial
Number, Memory, Resolution)
- macOS version + kernel version (`System Version:` /
`Kernel Version:`)

## Detection notes

Fingerprint requires line-anchored `IP:` AND `Country:`
AND `System Software Overview:` AND `Hardware Overview:`
substrings PLUS absence of `Country Code:` (rules out
Cthulhu and CSMacUserinfo) AND absence of `BuildID:`
(rules out Cthulhu) AND absence of `MetaMask Info:`
(rules out AMOS) AND absence of `MacSync Stealer` (rules
out MacSync). The positive anchors confirm a macOS
`system_profiler` body; the negative anchors defer to the
four richer-geo macOS formats when their banners or
fields are present. During triage, the `Country:` value
carries the full English country name (not the 2-letter
ISO code), so downstream country-based filters need a
name-to-ISO lookup.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [MacSync](../mac-sync/)
- [CSMacUserinfoStealer](../cs-mac-userinfo-stealer/)

## Related external families

- `banshee-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
