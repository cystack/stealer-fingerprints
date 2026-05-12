# CSNewLogStealer

CSNewLogStealer is a CyStack-coined identifier for an
eight-line `Information.txt` panel notification stub
observed inside `!! 2025 OCT.part01.rar`-style aggregator
packs in `<id>_<CC>_<IPv4>_<DD-MM-YY>/` victim folders
(e.g. `1175_CE_25.189.215.194_21-10-25/`). The body opens
with the literal banner `⚡️NEW LOG (NOT ENCRYPTED)` (the
trailing flag implies the panel also has an encrypted
payload variant), follows with a comma-separated data
line `Username: <user>, Location: <country> [<CC>],
<city>`, then enumerates six emoji-prefixed table-of-
contents section names: `🖥General information`,
`🌐Browser Data`, `🌐Browser History`, `🎆Screenshots`,
`⚙️Process List`, `📦Desktop Files`. The TOC entries are
*pointers* to sibling sub-folders that ship the actual
harvest inside the per-victim archive; this file is the
panel's notification stub rather than the data itself.

The `(NOT ENCRYPTED)` annotation is the panel's developer
side quirk and serves as the disambiguating signal: no
other registered parser keys on this literal. Family
attribution is provisional pending a published threat-
intel mapping for this banner-plus-TOC layout. The
closest documented candidates checked - Continental
Stealer (Cyberint), AuraStealer (Foresiet, Gen Digital),
Mystic Stealer (Malpedia), Lumma (Cloudflare /
Cloudforce One), PXA Stealer panel caption (SentinelOne
Labs) - publish different banner conventions.

**Also known as:** `!! 2025 OCT aggregator notification stub`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials and cookies (in sibling Browser Data folder)
- Browser history (in sibling Browser History folder)
- Victim screenshots (in sibling Screenshots folder)
- Running-process list (in sibling Process List folder)
- Desktop files (in sibling Desktop Files folder)

## Variants

### `cystack_6a5a1e72`

**Attribution confidence:** `unknown`

**Field keys:**
`Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
⚡️NEW LOG (NOT ENCRYPTED)
Username: <redacted>
🖥General information
🌐Browser Data
🌐Browser History
🎆Screenshots
⚙️Process List
📦Desktop Files
```

## Detection

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

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1113 Screen Capture](https://attack.mitre.org/techniques/T1113/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)

## Related families

- [`cs-emoji-info-stealer`](../cs_emoji_info_stealer/)
- [`cs-browers-stealer`](../cs_browers_stealer/)
- [`cs-gads-panel-stealer`](../cs_gads_panel_stealer/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://github.com/MalBeacon/what-is-this-stealer
