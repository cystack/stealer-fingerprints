# CSBareVersionStealer

CSBareVersionStealer is a CyStack-coined identifier for a
`UserInformation.txt` shape observed inside `!! 2026
JAN.part01.rar`-style aggregator packs in `[CC]@BRADMAX
(<N>)/UserInformation.txt` victim folders. Public
Telegram-channel catalogues list `t.me/bradmax_cloud` and the
active `t.me/+0IAf5VIrl_EzNWRi` mirror as a Telegram
aggregator the operator self-labels "Redline and Raccoon Data
Logs", but the body lacks every Redline canonical anchor
(`Operation System:` typo, `FileLocation:`, `Hardwares:`
block, `Anti-Viruses:` block) and every Raccoon canonical
anchor (`User ID: <UUID>|<user>`, JS-date `Last seen:`, `IP
info: <CC> <IPv4>`), so the operator label cannot be trusted.

The body is structurally a stripped sibling of
`CSBuildBlockStealer`: same 12-field shape (`User time:`,
`HWID:`, `PC Name:`, `User Name:`, `CPU:`, `GPU:`, `Memory:`,
`OS:`, `Active window:`, `Admin rights:`, `IP:`, `GEO:`) but
with the four-line `Build Path:` / `Build ID:` / `Build
Version:` / `Build Comment:` group replaced by a single bare
`Version` line (no colon, no value), and the trailing
`Resolution:` line dropped. Empty `IP:` / `GEO:` values are
routine: the panel skips the geolocation lookup on bogon IPs
rather than emit a placeholder string.

Family attribution is provisional pending a published
threat-intel mapping for this stripped layout. Public
reporting and community catalogues do not document a stealer
that emits exactly this stripped-Build / bare-`Version` field
set.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX stripped Build variant`, `BradMax Cloud`
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies
- System hardware and locale inventory
- Active-window snapshot (foreground process title at exfil time)

## Detection notes

Fingerprint requires line-anchored `Active window:`,
`Admin rights:`, and `GEO:` keys plus a bare `Version`
line (no colon, no value, optional leading whitespace).
The bare `Version` line is the disambiguator from
`CSBuildBlockStealer`, which requires the full four-line
`Build Path:` / `Build ID:` / `Build Version:` /
`Build Comment:` group. The `GEO:` key (instead of
`Country:`) further excludes unrelated formats. During
triage, treat the family attribution as unknown: the
aggregator self-label (`Redline and Raccoon Data Logs`)
is misleading because the body lacks every canonical
anchor for both families.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSBuildBlockStealer](../cs-build-block-stealer/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
