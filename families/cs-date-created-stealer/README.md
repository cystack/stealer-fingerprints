# CSDateCreatedStealer

CSDateCreatedStealer is a CyStack-coined identifier for a
5-line `URL` / `Username` / `Password` / `Date Created` /
`Application` cred-file format distributed inside `!! 2025
NOV.part001.rar` `@BRADLOGS / BRADMAX` aggregator packs in
`[<TAG>]<IP>/Pass/Pass.txt` victim folders. The per-entry
`Date Created:` creation-timestamp line wedged between
`Password:` and `Application:` is the disambiguating signal:
no other registered cred-file shape includes a per-credential
creation timestamp.

The `Date Created:` value uses a US-locale `M/D/YYYY, H:MM:SS
AM/PM` format. The `Application:` line carries a bare
browser-profile name (`Default`, `Profile 2`) with no
bracketed annotation (distinct from `CSAppProfileStealer`,
which uses `Application: Chrome [Profile: Default]`). Records
are separated by a blank line. The panel preserves
Chrome-synced Android-app credential URLs in the
`android://<base64>@com.<pkg>/` form alongside HTTPS desktop
URLs, indicating the underlying stealer reads Chromium's
`Login Data` SQLite directly rather than filtering by URL
scheme. Family attribution is provisional pending a published
threat-intel mapping for this layout. The format resembles the
publicly documented PXA Stealer Vietnamese-targeting cred
dumps (PXA targets Chromium and Android credentials), but no
public write-up shows a sample log with the verbatim 5-line
`Date Created:` layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Pass.txt with Date Created field`, `5-line URL/Username/Password/Date Created/Application block`
- Variants observed: **0**

## What it targets

- Browser-saved credentials (URL, username, password)
- Source browser profile name (`Default` / `Profile <n>`)
- Per-credential creation timestamp from `Login Data` SQLite
- Chrome-synced Android app credentials (`android://` package URLs)

## Detection notes

Fingerprint requires 3+ consecutive 5-line blocks matching
`URL: / Username: / Password: / Date Created: / Application:`.
The `Date Created:` line is the disambiguator: it does not
appear in any other registered cred-file shape. During triage,
treat the family attribution as unknown: the underlying
stealer that produces the cred dump has not been mapped to
this exact 5-line layout in any public reporting. The
structural overlap with PXA Stealer targeting (Chromium plus
Android credentials) is suggestive but not confirmed.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSPasswordsNotFoundStub](../cs-passwords-not-found-stub/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
