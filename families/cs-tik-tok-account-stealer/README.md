# CSTikTokAccountStealer

CSTikTokAccountStealer is a CyStack-coined identifier for a
TikTok account-checker aggregator output folder. The
per-victim folder is named with a 32-hex MD5 wrapped in
brackets (`[<md5>]`) and ships one `.txt` file per TikTok
account. Each filename packs nine bracket-delimited segments
encoding the account stats: number of followers, videos,
likes, coins, account dollar value, payment cards on file,
creation year, ISO 3166 alpha-2 country code, and TikTok
handle. The file body is Netscape-format cookies for
`.tiktok.com` carrying the session-cookie set (`sessionid`,
`sid_guard`, `sid_tt`, `sid_ucp_v1`, `ssid_ucp_v1`, `uid_tt`,
`odin_tt`, `ttwid`).

The folder is the aggregator-side output of an account-checker that takes raw stealer cookie logs, validates each
TikTok session, enriches the cookie with the logged-in
account's stats from the TikTok API, then rewrites the cookie
file with the stat-encoded name. Lots can be filtered and
priced by account value before resale. The same `LOGS`
distribution pipeline carries macOS SHub Stealer victims and
Windows browser-fingerprint dumps in sibling packs. Family
attribution is provisional pending a published mapping for
this specific account-checker tool.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- TikTok session cookies (sessionid, sid_guard, sid_tt, sid_ucp_v1, ssid_ucp_v1, uid_tt, odin_tt, ttwid)
- TikTok account profile metadata (follower / video / like / coin counts, payment cards, creation year)
- TikTok account-handle to country mapping

## Detection notes

The 32-hex MD5 folder name plus 5+ files matching the
nine-bracket-segment filename regex plus the `.tiktok.com`
and `sessionid` body anchors form the fingerprint. The
underlying victim is the user whose stealer log was the
cookie source, not the TikTok account owner: each
browser-cookie harvest can yield multiple TikTok
sessions if the victim was signed in across accounts.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1550.004](https://attack.mitre.org/techniques/T1550/004/) | Use Alternate Authentication Material: Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1213](https://attack.mitre.org/techniques/T1213/) | Data from Information Repositories |

## Related catalog profiles

- [SHub Stealer](../s-hub-stealer/)
- [CSBrowserFingerprintStealer](../cs-browser-fingerprint-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
