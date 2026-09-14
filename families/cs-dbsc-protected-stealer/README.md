# CSDbscProtectedStealer

CSDbscProtectedStealer is a CyStack-coined identifier for a
3-line `URL / Username / Password` cred-file shape where the
`Password:` value carries Chrome 146+'s `DBSC-Protected:
Cannot decrypt without server key` placeholder or the generic
`Unable to decrypt` fallback. These placeholders are Chrome's
Device-Bound-Session- Credentials and app-bound-encryption
failure markers that the stealer's panel preserves when its
decryption bypass returns the encrypted blob but the
underlying session key is hardware-isolated and not
exportable.

Distributed inside `!! 2025 NOV.part001.rar` `@BRADLOGS /
BRADMAX` aggregator packs at `[<TAG>]@BRADLOGS (BRADMAX)
(<NN>)/All_Passwords.txt` victim folders that ship no
companion system-info file. Records are 3-line blocks
separated by a blank line; the format lacks the 4th
`Application:` line that sibling
`URL/Username/Password/Application` shapes carry
(`CSAppProfileStealer`, `CSDateCreatedStealer`,
`CSLoginsPathStealer`).

The DBSC-Protected literal is publicly documented as Chrome's
hardware-isolated session-key protection that defeats stealer
decryption. Family attribution is provisional pending a
published threat-intel mapping for the underlying stealer
family that emits this 3-line layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX 3-line URL/Username/Password Chrome-DBSC log`, `Chrome 146+ DBSC-Protected placeholder cred block`
- Variants observed: **0**

## What it targets

- Browser-saved credentials from Chromium login-data SQLite
- Chrome 146+ DBSC-protected entries (panel preserves the failure marker)
- Chrome app-bound-encryption entries the stealer could not decrypt

## Detection notes

Fingerprint requires either the literal
`DBSC-Protected: Cannot decrypt without server key`
substring OR the generic Chromium `Unable to decrypt`
failure-marker substring, AND 3+ 3-line
`URL: / Username: / Password:` blocks, AND no
`Application:` substring anywhere in the body. The
`Application:` exclusion keeps the sniffer off 4-line
`URL/Username/Password/Application` dumps whose first
three lines also satisfy the 3-line block regex - those
shapes are claimed by their own sniffers
(CSAppProfileStealer, CSDateCreatedStealer,
CSLoginsPathStealer) or by the Redline folder-level
detector. During triage, this label marks the IOC as a
Chromium victim whose passwords were partially or fully
protected by app-bound encryption or Chrome 146+
hardware-bound session keys: the stealer captured login-data rows but could not decrypt some or all of the
actual passwords. The underlying stealer family is
unknown.

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
- [CSDateCreatedStealer](../cs-date-created-stealer/)
- [CSLoginsPathStealer](../cs-logins-path-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
