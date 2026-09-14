# CSBrowsersDisplayStealer

CSBrowsersDisplayStealer is a CyStack-coined identifier for
the most-stripped BRADMAX-redistributed per-victim folder
layout: a root with exactly two named subdirs, `Browsers/` and
`Display/`, optionally with a packer empty-name DIR sibling.
Cred files live under `Browsers/<browser>/Passwords.txt` with
a simple three-line `URL:` / `Login:` / `Password:` block per
credential. No `Information.txt`, no `System.txt`, no
`Cookies/` or `Wallets/` sibling dirs.

The 2-dir layout sits below the 4-dir
`Browsers/Discord/Files/System` layout that
is represented by `CSBradmaxCategoryStealer`. The underlying builder is
unidentified from the root listing alone: BRADMAX
redistribution strips per-builder branding before repacking.
Family attribution is provisional pending a published mapping
for this exact layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credentials
- Display info or screenshot

## Detection notes

The strict 2-or-3 entry root with `Browsers/` and
`Display/` plus the BRADMAX path token is the
fingerprint. Richer Stealerium-fork layouts would add
`Discord/`, `Files/`, `System/`, etc.; canonical family
folders would add `Information.txt` or similar text
dumps at root. This profile records the most-stripped BRADMAX panel-build
variant.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSDiscordDataTokensStealer](../cs-discord-data-tokens-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
