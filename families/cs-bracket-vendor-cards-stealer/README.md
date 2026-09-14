# CSBracketVendorCardsStealer

CSBracketVendorCardsStealer is a CyStack-coined identifier for
a `CreditCards/` victim-folder layout that ships one cred file
per Chromium-based browser vendor / profile combination,
naming each file after the AppData/Local vendor subdirectory
in square brackets. Observed inside `!! 2025 JUNE.part001.rar`
at `CreditCards/ CreditCards_[AVAST Software]_Default.txt`,
`CreditCards_[BraveSoftware]_Default.txt`, and
`CreditCards_[Microsoft]_Default.txt` siblings.

The bracketed-vendor tokens (`[AVAST Software]`,
`[BraveSoftware]`, `[Microsoft]`, `[Google]`, `[Yandex]`,
etc.) are literal copies of the subdirectory names under
`AppData/Local/<Vendor>/` where Chromium-derivative browsers
keep their User Data tree. The stealer reads each browser's
Web Data SQLite `credit_cards` table and writes one file per
source profile. The cred-file body uses `Exp: <MM/YYYY>` for
expiry. Many files are minimal (expiry-only, ~12 bytes)
because the panel app-bound-encryption bypass returned the
encrypted PAN but could not decrypt it on Chrome builds
shipping hardware-bound session keys.

A public stealer-log parser writeup documents the sibling
`Autofills/Google_[Chrome]_Default.txt` /
`Autofills/Microsoft_[Edge]_Default.txt` bracketed-vendor
convention as a generic Chromium-credential-extract shape used
by multiple stealers (RedLine, META, Raccoon, Stealc appear in
the same article), but does not pin the
`CreditCards_[<Vendor>]_<Profile>.txt` shape to a named
family. Family attribution is provisional pending a published
threat-intel mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `CreditCards bracketed-vendor per-browser cred-file split`, `CreditCards_[<Vendor>]_<Profile>.txt layout`
- Variants observed: **0**

## What it targets

- Saved credit cards from Chromium-based browser profiles
- Per-vendor extracts from AppData/Local/<Vendor>/ User Data trees
- Card PAN and expiry from Web Data SQLite `credit_cards` table

## Detection notes

Fingerprint requires at least one file at folder root
whose basename matches the regex
`^CreditCards_\[[^\]]+\]_[^.]+\.txt$` (case-insensitive).
The `CreditCards_` prefix, square-bracketed vendor token,
underscore separator, profile name, and `.txt` suffix is
unique enough across the registry that one match is
sufficient to claim. Folder root may also carry an
empty-named packer DIR artifact, which the fingerprint
ignores. During triage, treat the family attribution as
unknown: the underlying Chromium-credential extractor
lineage (RedLine / META / Raccoon / Stealc / fork) cannot
be pinned from the filename alone. Many cred files carry
only an `Exp:` expiry line because the panel bypass
failed to decrypt the PAN, so a victim flagged by this
detector may have no recoverable card numbers but still
attests browser-stored card presence.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSCardTargetStealer](../cs-card-target-stealer/)
- [CSCcApostropheStealer](../cs-cc-apostrophe-stealer/)
- [Redline](../redline/)
- [StealC](../steal-c/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
