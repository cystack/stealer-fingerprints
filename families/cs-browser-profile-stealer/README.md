# CSBrowserProfileStealer

CSBrowserProfileStealer is a CyStack-coined identifier for a
`Logins.txt` cred-file shape observed inside `@BRADMAX 14000
MARCH.part01.rar` Telegram aggregator packs at
`[<CC>]<IPv4>/Logins.txt` victim folders (e.g. `@BRADMAX 14000
MARCH/[CO]<IPv4>/Logins.txt`). The body ships 4-line
`Key: Value` blocks in the sequence `URL:` / `Username:` /
`Password:` / `Browser:` separated by `===============` (15+
equals signs).

The distinctive `Browser:` fourth label carries a concatenated
`<UPPERCASE-BROWSER-NAME>_<Profile>` value (e.g.
`CHROME_Default`, `EDGE_Profile 1`, `FIREFOX_
default-release`). The underscore-joined form marks this shape
apart from every sibling 4-line cred-block convention in the
registry: Redline uses `Application:` as the fourth label,
`CSAppProfileStealer` uses `Application: <Browser> [Profile:
<name>]` bracket annotation, `CSLoginsPathStealer` uses
`Application: Browser/Logins/<Browser>_<Profile>[<hex>].txt`
path notation, and `CSUrlUserPassFromStealer` uses short
labels plus `From: <BareBrowserName>`.

Family attribution is provisional pending a published
threat-intel mapping for this exact serialisation. Public
reporting and community catalogues do not attest a family
emitting this exact `Browser: <NAME>_<Profile>` fourth-label
shape.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Logins.txt 4-line Browser-key panel`, `URL/Username/Password/Browser_Profile cred block`
- Variants observed: **0**

## What it targets

- Browser saved credentials (URL, username, password)
- Browser name plus profile identifier per entry

## Detection notes

Fingerprint requires 3+ 4-line blocks in the `URL:` /
`Username:` / `Password:` / `Browser: <NAME>_<...>` shape
where the `Browser:` value opens with an uppercase
browser-name prefix from a curated list (CHROME / EDGE /
FIREFOX / BRAVE / OPERA / VIVALDI / YANDEX / MOZILLA /
CHROMIUM / SAFARI / TOR / IE). Gating on the known-browser prefix keeps the sniffer off arbitrary text that
happens to include a `Browser:` line. During triage,
the `<Browser>_<Profile>` value is the per-entry source-profile hint that lets analysts pivot to the specific
Chromium Login Data / Firefox signons SQLite file the
stealer read from.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSLoginsPathStealer](../cs-logins-path-stealer/)
- [CSUrlUserPassFromStealer](../cs-url-user-pass-from-stealer/)
- [Redline](../redline/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
