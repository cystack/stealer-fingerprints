# CSRFDStealer

CSRFDStealer is a CyStack-coined identifier for an
emoji-prefixed `FileGrabber/UserInformation.txt` shape
distributed through the @BRADMAX_CLOUD redistributor
portfolio. The file opens with a canonical `<================[
User Info ]>================>` section header followed by an
operator tag literal `<================RFD================>`
on the next line, then a blank line, then a 17-line
emoji-prefixed `<emoji> <Key>: <Value>` field block.

Field values place the runtime in JavaScript / Node.js: `Type:
Windows_NT` is `os.type()`, `Arch: x64` is `os.arch()`,
`Release: 10.0.19044` is `os.release()`, `Processors: <count>`
is `os.cpus().length`. The label flip between `Host name`
(which carries the canonical computer name from
`os.hostname()`) and `PC Name` (which carries the Windows
account name from `process.env.USERNAME`) is consistent with a
NodeJS or Electron stealer template. The body matches
structural features of the documented NodeJS / Electron
stealer category (NOVABLIGHT, Celestial Stealer, Mercurial),
but no public reporting quotes a field-layout match for this
exact layout, so family attribution is provisional.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `RFD banner UserInformation.txt`, `@BRADMAX_CLOUD FileGrabber sample`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU, RAM, Windows version, uptime)
- AppData and Temp paths for downstream credential harvesting
- Account username and domain identity

## Detection notes

Fingerprint requires both the
`<================RFD================>` operator tag and the
`<================[ User Info ]>` section header. Either
literal alone could plausibly appear in unrelated content (a
public writeup quoting only one of the two banners, a generic
`User Info` heading in operator documentation), so both
anchors are required. The emoji prefix set is distinctive but
not load-bearing for the fingerprint. During triage, treat the
channel attribution as the parent-folder shape
(`[<CC>]@BRADMAX_CLOUD- (<NN>)`) evidence; the file body
itself carries no IP, country, or log-time field, so the IOC
surfaces only device-level metadata. Companion files in the
victim folder carry the harvested credentials and cookies.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [Mars Stealer](../mars-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [CSBradMaxCloudBannerOnlyStealer](../cs-brad-max-cloud-banner-only-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
