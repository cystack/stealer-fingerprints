# CSMacKeychainPassStealer

CSMacKeychainPassStealer is a CyStack-coined identifier for a
3-line preamble macOS panel observed inside `@Bugatti_Cloud
Bugatti_Man` aggregator packs at `@bugatti_cloudnew
ch_<NNNN>/Information.txt` victim folders. The body opens with
`IP: <ipv4|ipv6>`, `Username: <shortname>`, and `Password:
<cleartext>` on three lines, then drops directly into verbatim
`system_profiler SPSoftwareDataType` / `SPHardwareDataType` /
`SPDisplaysDataType` output. No `Country:` line, no banner, no
`BuildID:` per-build label, no `MetaMask Info:` / `Debanks:` /
`Userinfo:` section markers, no self-banner.

The cleartext `Password:` line is the panel's distinguishing
quirk. Documented macOS stealers that capture the user login
or keychain password (AMOS, Banshee, Cthulhu, MacStealer)
archive it to a sibling keychain dump or zip-pack rather than
expose it as a top-level field in the system-info file.

Family attribution is provisional. Public reporting and the
public stealer-format catalogues do not document a macOS
family that emits exactly this 3-line preamble plus verbatim
`system_profiler` shape with the cleartext keychain password
exposed as a top-level field.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `3-line preamble macOS Information.txt with cleartext password`, `IP + Username + Password macOS panel`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets

- macOS user login / keychain password (captured as
cleartext in the `Password:` preamble line)
- Victim public IP (IPv4 or IPv6)
- Victim hostname (`Computer Name:` field)
- Victim username (`User Name:` display + shortname pair)
- macOS hardware fingerprint (Chip, Hardware UUID, Serial
Number, Memory)
- macOS version + kernel version (`System Version:` /
`Kernel Version:`)

## Detection notes

Fingerprint requires line-anchored `IP:` AND `Username:`
AND `Password:` AND `System Software Overview:` AND
`Hardware Overview:` substrings PLUS absence of
`Country:` (rules out CSMacBareGeo / Cthulhu / AMOS /
MacSync) AND absence of `Country Code:` (rules out
Cthulhu and CSMacUserinfo). The positive anchors confirm
a macOS `system_profiler` body with a cleartext-password
preamble; the negative anchors defer to the five richer-geo macOS formats when their geo fields are present.
During triage, the `Password:` value is the victim's
cleartext login or keychain password and should be
treated as a high-priority remediation indicator.

## Observed log variants

### `v_8fb0dfa34c44e8492fb4af61d80eddea`

- Format ID: `cs-mac-keychain-pass-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_8fb0dfa34c44e8492fb4af61d80eddea/sample.txt)
- Sample SHA-256: `815c1774c393562a2cf1801750a44176d858ec6cc38cb6e2c29bfaf3ecd8d7cc`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Hardware Overview:`, `System Software Overview:`
- Field labels: `IP`, `Password`, `Username`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [MacSync](../mac-sync/)
- [CSMacUserinfoStealer](../cs-mac-userinfo-stealer/)
- [CSMacBareGeoStealer](../cs-mac-bare-geo-stealer/)

## Related external families

- `banshee-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
