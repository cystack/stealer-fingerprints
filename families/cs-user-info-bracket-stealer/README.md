# CSUserInfoBracketStealer

CyStack tracking name for an unattributed Windows
`Information.txt` template built from `[User Info]`, `[Network]`,
`[System]`, `[Drives]`, `[GPU]`, and `[Basic]` sections. The same
field grammar has been observed with the self-labels `AETHERIS`,
`PDRstealer`, and `Banshee v1.4`, and with no surviving banner.
The AETHERIS-labelled observation carries the `Developer
@sexyweekly` watermark and was distributed in an `@BRADMAX`-style
pack. These labels are retained only as per-variant panel brands.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Aetheris Stealer (observed self-label)`, `Banshee v1.4 (observed self-label)`, `PDRstealer (observed self-label)`, `User Info / Input ISO bracket template`
- Variants observed: **3**
- Historical Logmine records represented: **5,373**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions and clients
- System hardware and locale inventory

## Detection notes

Primary shape is `[User Info]` plus `Input ISO:`. Stripped forms
retain `[Basic]` plus line-anchored `User Domain:`, or
line-anchored `Hwid:` plus `CPU Name:`. The pinned ToxSteal source
emits the same six sections and field vocabulary, while the
independent IRoveroll analysis documents the same
`Information.txt` layout and clipboard routine. Exact template
reuse is not evidence of payload identity or common lineage.
`AETHERIS`, `PDRstealer`, and `Banshee v1.4` are self-labels only;
the last does not imply a relationship to the separately
documented macOS malware named Banshee.

## Observed log variants

### `v_b5830fa7c4f172950304e99c5fa7d4ad`

- Parser: `logmine.ioc.parsers.cs_user_info_bracket_stealer.CSUserInfoBracketStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: `Banshee v1.4`
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-info-input-iso`
- Historical records represented: **613**
- Representative sample: [open sample](samples/v_b5830fa7c4f172950304e99c5fa7d4ad/sample.txt)
- Sample SHA-256: `3a4f453b631ec4229f975817dde22f10f0a70a0f8865bb56ea652392a6387318`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[User Info]`, `Banshee v1.4`
- Field labels: `Input ISO`

### `v_e4ecc884d733c891238731a7465cfa26`

- Parser: `logmine.ioc.parsers.cs_user_info_bracket_stealer.CSUserInfoBracketStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: `PDRstealer`
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-info-input-iso`
- Historical records represented: **4,755**
- Representative sample: [open sample](samples/v_e4ecc884d733c891238731a7465cfa26/sample.txt)
- Sample SHA-256: `70a0251c7ad29e86b811aad4b29c76ca4c340a5488f8e6b75bcd0194e6d21968`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[User Info]`, `PDRstealer`
- Field labels: `Input ISO`

### `v_fdb74de9cb4f98c742de98b53c54eb33`

- Parser: `logmine.ioc.parsers.cs_user_info_bracket_stealer.CSUserInfoBracketStealerParser`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `basic-user-domain`
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_fdb74de9cb4f98c742de98b53c54eb33/sample.txt)
- Sample SHA-256: `66b39fbd37357f589ba2e807edd7500ac9b026e0aa802afd53d6fbc4cc077884`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Basic]`
- Field labels: `User Domain`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- <https://github.com/onlytoxi/tox-steal/blob/a34b15b708b73e59814d7ecd233c3949da6ab708/New/Intelix.Targets.Device/SystemInfo.cs>
- <https://github.com/taogoldi/reverse-engineer/blob/b29438e0244c1f21d6eed00e2d4040736bb46944/_posts/2026-04-23-iroveroll-telegram-infostealer.md>

Machine-readable record: [family.json](family.json)
