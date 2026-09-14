# CSAppProfileStealer

CSAppProfileStealer is a CyStack-coined identifier for an
orphan `All_Passwords.txt` cred-file shape distributed inside
`!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` aggregator
packs in `[<CC>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders
where the panel does not ship a companion system-info file.
Each saved credential is rendered as a 4-line `URL: /
Username: / Password: / Application: <Browser> [Profile:
<name>]` block, with records separated by a 80-character
U+2501 `━` HEAVY HORIZONTAL rule line.

The `Application:` line annotates the source browser and
profile in a bracketed form (e.g. `Application: Chrome
[Profile: Default]`, `Application: Edge [Profile: Default]`).
A public stealer-log parser grammar attests a sibling 4-line
shape and notes that `URL/Username/Password/Application` is
Redline-native, but no two independent public sources publish
a sample log showing this exact `[Profile: <name>]` bracket
annotation paired with U+2501 separators. Family attribution
is provisional pending a published threat-intel mapping for
this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX All_Passwords.txt with [Profile:] bracket annotation`, `U+2501-separated Application-Profile cred block`
- Variants observed: **0**

## What it targets

- Browser-saved credentials (URL, username, password)
- Source browser identity (Chrome, Edge, Firefox, Brave, Opera)
- Browser profile name (`Default`, named profiles)

## Detection notes

Fingerprint requires 3+ consecutive 4-line `URL: / Username: /
Password: / Application: <Browser> [Profile: <name>]` blocks.
The `[Profile:` bracket-annotation substring on the
`Application:` line is the disambiguating signal: Redline's
native shape (per a public parser grammar) uses an
`Application: Google_[Chrome]_Default` underscore-and-bracket
notation rather than the explicit `[Profile: <name>]`
annotation seen here. Empty `Username:` / `Password:` lines
are tolerated (panel emits them for entries where the browser
stored only one half of the credential pair). During triage,
treat the family attribution as unknown: the underlying
stealer that produces the cred dump has not been mapped to
this exact bracketed-profile layout in any public reporting.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [Redline](../redline/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
