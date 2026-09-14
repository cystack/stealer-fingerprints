# CSApplicationsDiscordStealer

CSApplicationsDiscordStealer is a CyStack-coined identifier
for a per-victim folder shipping a single `Applications/`
subdirectory with per-application token harvests inside a
`[<ISO2>]<IPv4>` parent folder. Each app under `Applications/`
carries its own `Tokens.txt` file (e.g.
`Applications/Discord/Tokens.txt` for Discord auth tokens).
The Discord file body carries one token per line: the leading
base64 segment encodes the user's Discord snowflake ID,
followed by dotted timestamp / signature parts (3-part form
for standard auth tokens, 2-part for refresh / MFA tokens).

Observed inside `MAY 02 - 8230 LOGS` aggregator packs (the
`LOGS` sibling of `LOGS2` claimed by CSCookiesSoftStealer iter
#55 / #56 / #58). Same `[<ISO2>]<IPv4>` parent-folder
convention, but a different categorical subdir name
(`Applications/` vs `Soft/`) and a different per-app harvest
convention (Discord auth tokens vs Steam JWT sessions). Family
attribution is provisional pending a published mapping for
this exact layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Discord auth tokens (full sessions, refresh tokens, MFA tokens)
- Other Chromium-Electron desktop app session tokens (potentially shipped under `Applications/<App>/Tokens.txt`)

## Detection notes

The `[<ISO2>]<IPv4>` parent name plus the strict
`{Applications, ""}` root subset plus the
`Applications/<NonEmpty>/Tokens.txt` cred-file path
pattern is the fingerprint. Disambiguates from
CSCookiesSoftStealer via the categorical-subdir name
(`Applications/` vs `Soft/`) and from
CSDiscordDataTokensBundle (which ships a verbatim
LevelDB binary blob under `DiscordData/tokens.txt`).
Decode each token's leading base64 segment with a
standard base64 decoder to recover the victim's
Discord snowflake ID for cluster tracking.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1528](https://attack.mitre.org/techniques/T1528/) | Steal Application Access Token |
| [T1550.001](https://attack.mitre.org/techniques/T1550/001/) | Use Alternate Authentication Material: Application Access Token |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |

## Related catalog profiles

- [CSCookiesSoftStealer](../cs-cookies-soft-stealer/)
- [CSDiscordDataTokensStealer](../cs-discord-data-tokens-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
