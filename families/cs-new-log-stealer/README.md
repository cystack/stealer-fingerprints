# CSNewLogStealer

CSNewLogStealer is a CyStack-coined identifier for an
eight-line `Information.txt` panel notification stub observed
inside `!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/` victim folders (e.g.
`1175_CE_<IPv4>_21-10-25/`). The body opens with the
literal banner `⚡️NEW LOG (NOT ENCRYPTED)` (the trailing flag
implies the panel also has an encrypted payload variant),
follows with a comma-separated data line `Username: <user>,
Location: <country> [<CC>], <city>`, then enumerates six
emoji-prefixed table-of-contents section names: `🖥General
information`, `🌐Browser Data`, `🌐Browser History`,
`🎆Screenshots`, `⚙️Process List`, `📦Desktop Files`. The TOC
entries are *pointers* to sibling sub-folders that ship the
actual harvest inside the per-victim archive; this file is the
panel's notification stub rather than the data itself.

The `(NOT ENCRYPTED)` annotation is the panel's developer side
quirk and serves as the disambiguating signal: no other
registered parser keys on this literal. Family attribution is
provisional pending a published threat-intel mapping for this
banner-plus-TOC layout. The closest documented candidates
checked - Continental Stealer, AuraStealer, Mystic Stealer,
Lumma, and the PXA Stealer panel caption - publish different
banner conventions.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator notification stub`
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies (in sibling Browser Data folder)
- Browser history (in sibling Browser History folder)
- Victim screenshots (in sibling Screenshots folder)
- Running-process list (in sibling Process List folder)
- Desktop files (in sibling Desktop Files folder)

## Detection notes

Fingerprint requires the literal `⚡️NEW LOG (NOT ENCRYPTED)`
substring (27 chars including the U+26A1 + U+FE0F lightning
sequence - preserve both glyphs in source) plus the
line-anchored `Username: <user>, Location:` inline-CSV data
line. The banner phrase is distinctive enough on its own
that the data-line check is mainly a sanity guard against
fragments that merely quote the banner phrase out of
context. During triage, treat the family attribution as
unknown: the file is a notification stub with no harvested
credential body, and the underlying stealer cannot be
identified from the TOC alone. The per-victim archive's
sibling sub-folders (`Browser Data/`, `Process List/`,
etc.) carry the actual exfiltrated data and are where any
follow-on family fingerprinting should run.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSBrowersStealer](../cs-browers-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
