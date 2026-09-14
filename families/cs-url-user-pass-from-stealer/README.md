# CSUrlUserPassFromStealer

CSUrlUserPassFromStealer is a CyStack-coined identifier for a
4-line `URL / User / Pass / From` cred-file shape distributed
inside `202605080230_@BRADMAX 11700 MAY.part1.rar` aggregator
packs at `[<ISO2>]<IPv4>/Passwords.txt` victim folders. The
folder ships a minimal 2-file layout (`Bookmarks.txt` +
`Passwords.txt`) with no companion system-info file. The cred
file body holds short-label `URL: <url>`, `User: <username>`,
`Pass: <password>`, `From: <Browser>` lines, one block per
entry; observed samples ship a single 83-byte block per
victim.

The short labels (`URL` / `User` / `Pass`) distinguish this
format from sibling 4-line shapes: Redline,
`CSAppProfileStealer`, `CSDateCreatedStealer`,
`CSLoginsPathStealer`, and `CSDbscProtectedStealer` all use
the long-form `URL: / Username: / Password:` labels. The
`From: <Browser>` fourth label, carrying a bare browser-name
word, replaces the `Application:` line those sibling shapes
use. A public Zaraza Bot writeup documents an Edge-targeting
Telegram-distributed builder that harvests `origin_url` /
`username_value` / `password_value` to an `output.txt` cred
file, but does not publish the exact serialised label
sequence, so attribution stays CyStack-coined pending a
published mapping for this exact shape.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Passwords.txt short-label URL/User/Pass/From shape`, `Bookmarks-plus-Passwords minimal 2-file BRADMAX victim layout`
- Variants observed: **0**

## What it targets

- Browser-saved credentials (URL, username, password)
- Source browser identity (`From:` line, bare browser-name word)

## Detection notes

Fingerprint requires a 4-line `URL: / User: / Pass: / From:
<Browser>` block where the `From:` line carries a known
browser-name word (Chrome, Edge, Firefox, Brave, Opera,
Vivaldi, Yandex, Mozilla, Chromium, Safari, Tor, Internet
Explorer, IE). One block is sufficient: the minimal observed
cred file is a single 83-byte record, and the short-label
sequence plus the browser-name gate is specific enough that
requiring 3+ blocks would miss the minimal variant without
adding false-positive protection. During triage, treat the
family attribution as unknown: the underlying builder that
emits this exact short-label layout is not pinned by any
public reporting.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSSoftHostStealer](../cs-soft-host-stealer/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSDbscProtectedStealer](../cs-dbsc-protected-stealer/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
