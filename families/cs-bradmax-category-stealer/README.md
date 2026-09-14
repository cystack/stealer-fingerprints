# CSBradmaxCategoryStealer

CSBradmaxCategoryStealer is a CyStack-coined identifier
for a BRADMAX-redistributed victim folder that ships the
4-category subdirectory layout
(`Browsers/Discord/Files/System`) at root and no
companion system-info file at the root level. Observed
inside `!! 2025 JULY.part001.rar` at
`[<CC>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders.

The 4-subdir shape is a generic Stealerium-fork
categorical layout used by multiple builders. The
BRADMAX redistribution strips per-builder branding from
the System/ subdirectory contents before repacking, so
the underlying family cannot be pinned from the root
listing alone. The cred-file selector often picks an
unrelated harvested file from inside `Files/` (e.g. a
victim's pip `AUTHORS.txt` swept up alongside the real
stealer drop) so the folder root alone carries no useful per-victim
fields. Family attribution is
provisional pending a published threat-intel mapping
for this BRADMAX-distributed layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX 4-category victim folder`, `@BRADLOGS Browsers/Discord/Files/System layout`
- Variants observed: **0**

## What it targets

- Browser-saved credentials, cookies, autofills (inside Browsers/)
- Discord LevelDB session tokens (inside Discord/)
- Desktop / Documents / Downloads files (inside Files/)
- Victim system info (inside System/)

## Detection notes

Fingerprint requires all four canonical subdirectory
names (`Browsers`, `Discord`, `Files`, `System`) at
folder root AND a `BRADLOGS` or `BRADMAX` token in the
system_path. The path-side anchor excludes generic Stealerium-fork 4-category layouts
distributed through unrelated channels. During triage,
inspect the `System/` subdirectory contents for the
underlying stealer banner: canonical Lumma, Phantom,
Stealerium, and BlackGuard all emit recognisable
self-IDs inside the system-info text file that
lives under `System/`, but the BRADMAX repacker's
naming on the system file is not consistent enough to
fingerprint at the folder root.

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

## Related catalog profiles

- [CSSoftHostStealer](../cs-soft-host-stealer/)
- [CSWifiBackslashNStealer](../cs-wifi-backslash-n-stealer/)
- [CSCcApostropheStealer](../cs-cc-apostrophe-stealer/)

## Related external families

- `programs-system-bundle`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
