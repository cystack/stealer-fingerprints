# CSCookiesSoftStealer

CSCookiesSoftStealer is a CyStack-coined identifier for a
Windows-victim folder layout shipping a two-directory split
(`Cookies/` and `Soft/`) inside a per-victim folder named
`[<ISO2>]<IPv4>` (country code in brackets immediately
followed by a dotted-quad IPv4, no separator). `Cookies/`
carries per-browser cookie dumps; `Soft/` carries
application-specific harvest folders for games and chat
clients, including `Steam_<APPID>_<SESSIONID>/tokens.txt`
Steam JWT auth tokens that grant the operator access to the
victim's Steam account without password or 2FA.

Observed inside `MAY 02 - 8230 LOGS2` aggregator packs that
also carry the 32-hex-MD5 victim folders claimed by
CSTikTokAccountStealer (iteration #49),
CSNetflixCookiesStealer (iteration #53), and
CSBrowserCategoryDumpStealer (iteration #54), plus the
`[<IPv4>]-<HOSTNAME>` victim folders claimed by
CSCommonFilesCategoryStealer (iterations #50 / #51). The
`[<ISO2>]<IPv4>` country-coded shape is yet another
per-source-stealer naming convention the aggregator preserved
during repacking. Family attribution is provisional pending a
published mapping for this specific 2-dir + country-IP layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser cookies (Chromium and Gecko)
- Steam JWT auth tokens (sessions that bypass password and 2FA)
- Discord and Telegram session data
- Other Chromium-based desktop app session data under `Soft/`

## Detection notes

The `[<ISO2>]<IPv4>` parent folder name plus the strict
`{cookies, soft, ""}` root subset is the fingerprint.
Distinguishes from the iter #50 / #51
`[<IPv4>]-<HOSTNAME>` shape via the country-code
prefix and the absent hyphen-hostname suffix. Steam
token files inside `Soft/Steam_<id>_<id>/tokens.txt`
carry JWT auth tokens whose `sub` field is the
SteamID64 of the compromised account; treat each
`tokens.txt` as a session-takeover indicator during
triage.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1528](https://attack.mitre.org/techniques/T1528/) | Steal Application Access Token |
| [T1550.004](https://attack.mitre.org/techniques/T1550/004/) | Use Alternate Authentication Material: Web Session Cookie |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSCommonFilesCategoryStealer](../cs-common-files-category-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)
- [CSBrowserCategoryDumpStealer](../cs-browser-category-dump-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
