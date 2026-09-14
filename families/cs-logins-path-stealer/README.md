# CSLoginsPathStealer

CSLoginsPathStealer is a CyStack-coined identifier for a
4-line `URL/Username/Password/Application` cred-file shape
where the `Application:` line carries a
`Browser/Logins/<Browser>_<Profile>[<hex>].txt` source-file
path. Records are separated by `===============` (15-equals)
rule lines. Distributed inside `!! 2025 NOV.part001.rar`
`@BRADLOGS / BRADMAX` aggregator packs at `[<TAG>]@BRADLOGS
(BRADMAX) (<NN>)/All_Passwords.txt` victim folders that ship
no companion system-info file.

The `Application: Browser/Logins/<Browser>_<Profile>[<hex>]
.txt` path notation is the disambiguating signal. The
`<Browser>_<Profile>` slug matches Lumma's per-profile
cred-file naming convention (`Chrome_Default[<hex>].txt`,
`Edge_Default[<hex>].txt`), and the `[<hex>]` suffix is a
per-profile random hash that the panel template appends
(likely a panel-side cache or upload identifier). Family
attribution is provisional pending a published threat-intel
mapping for this layout. The closest documented relative is
Lumma Stealer, which public analyses show writing
per-browser-profile cred files with the same
`<Browser>_<Profile>[<hex>]` naming convention, but the
BRADMAX redistribution wraps the data into
`URL/Username/Password/Application` blocks rather than Lumma's
canonical `SOFT/URL/USER/PASS` 4-line shape.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX All_Passwords.txt with Browser/Logins/ path`, `4-line URL/Username/Password/Application logins-path block`
- Variants observed: **0**

## What it targets

- Browser-saved credentials (URL, username, password)
- Source browser per-profile file path
- Browser identity and profile slug from the source path

## Detection notes

Fingerprint requires 3+ consecutive 4-line blocks matching
`URL: / Username: / Password: / Application: Browser/Logins/`.
The `Application: Browser/Logins/` prefix is the
disambiguator: `CSAppProfileStealer` requires the
`Application: <Browser> [Profile:` bracket annotation instead.
During triage, treat the family attribution as unknown: the
per-profile `<Browser>_<Profile>[<hex>]` naming convention
overlaps with Lumma, but the surrounding 4-line block shape
does not match Lumma canonical `SOFT/URL/USER/PASS` and no
public source confirms the mapping.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [Lumma](../lumma/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSDateCreatedStealer](../cs-date-created-stealer/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
