# CSSoftHostStealer

CSSoftHostStealer is a CyStack-coined identifier for a
title-cased `Soft:` / `Host:` / `Login:` / `Password:` 4-line
credential block observed inside `@BRADMAX` aggregator-pack
victim folders that ship only a `Password.txt` with no
companion system-info file. Folder layout in the wild is
`[<CC>]@BRADMAX (<N>)/Original/... /Password.txt` with a
sibling `Smart Checker/` directory that holds post-exfil
credential-validator output.

Public Telegram-channel catalogues label the BRADMAX channel
as a redistributor of "Redline and Raccoon Data Logs", but the
title-cased 4-line block matches neither family canonically.
Redlines native cred output is `URL: / Username: / Password: /
Application:` and Raccoons is a tab-or pipe-separated row
layout; the `Soft:` keyword with title-case capitalisation
does not appear in either. A public stealer-log format writeup
records this exact 4-line shape as one of five common
credential formats but does not attribute it to a specific
malware family.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting does
not document a stealer that emits exactly this title-cased
4-line block. Treat the family attribution as unknown during
triage: the aggregator self-label is misleading because the
body lacks every canonical anchor for both named families.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX Password.txt 4-line block`, `BradMax Cloud Soft/Host/Login/Password`
- Variants observed: **0**

## What it targets

- Browser saved credentials (Chrome, Edge, Brave, Firefox, Opera, Vivaldi, Yandex)
- Mobile-app credentials (`android://...` host scheme entries)

## Detection notes

Fingerprint requires 3+ consecutive line-anchored
`Soft: ... \n Host: ... \n Login: ... \n Password: ...`
blocks. The title-case capitalisation is the disambiguator
from the Lumma-like uppercase `SOFT:/URL:/USER:/PASS:`
fingerprint and from Redlines native `URL:/Username:/
Password:/Application:` cred shape. Detected only when the
cred file basename contains `password`, so the regex never
has to discriminate against non-cred files. Empty `Login:`
and `Password:` fields are routine and do not invalidate a
block - browser sync entries often store the host with
blank credentials.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSBareVersionStealer](../cs-bare-version-stealer/)
- [Redline](../redline/)
- [Raccoon](../raccoon/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
