# CSCommonFilesCategoryStealer

CSCommonFilesCategoryStealer is a CyStack-coined identifier
for a Windows-victim folder layout shipping a four-directory
category split inside a per-victim folder named
`[<IPv4>]-<HOSTNAME>`. The four root subdirectories are
`Common Files`, `Credentials`, `Directories`, and `System`,
with a `Display (N).png` screenshot at root and an optional
packer empty-name DIR sibling. `Common Files` carries the
FileGrabber output (harvested user docs from Downloads /
Documents), `Credentials` ships the stealer-emitted credential
dumps, `Directories` carries walked-directory listings, and
`System` carries the text system-info dumps.

Observed inside `MAY 02 - 8230 LOGS2` aggregator packs that
also carry the TikTok-account harvest folders represented by CSTikTokAccountStealer. The category naming is the panel's undocumented builder choice rather than a documented stealer
convention. Family attribution is provisional pending a
published mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies
- Harvested user documents from Downloads / Documents folders
- Directory listings from the victim's drives
- System info: hostname, IP, hardware fingerprint, installed software
- Desktop screenshot (per-monitor, numbered `Display (N).png`)

## Detection notes

The four-dir set `Common Files`, `Credentials`,
`Directories`, `System` plus the `[<IPv4>]-<HOSTNAME>`
parent folder name is the fingerprint. The IP-bracketed
parent convention is distinctive: most stealer panels
use `<HOSTNAME>_<IPv4>_<date>` or `<CC>_<IPv4>` rather
than embedding the IP in brackets. Triage by walking
`System/` first for the canonical Information.txt then
`Credentials/` for stealer-emitted password files.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |

## Related catalog profiles

- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSBrowsersDisplayStealer](../cs-browsers-display-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
