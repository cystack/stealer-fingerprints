# CSKortexStealer

CSKortexStealer is a CyStack-coined identifier for the
`KORTEX // STEAL` `System.txt` log observed inside the
`APRIL 25 - 19977 LOGS` Telegram-pack distribution in
`<CC>_<IP>_<DD-MM-YY>/` victim folders alongside XFiles and
RedlineLikeStealer shapes. Format combines a dash-prefix
identity block with sectioned hardware records.

## Research status

- Classification: **Family variant**
- Attribution confidence: **low**
- Canonical family: [lumma](../lumma/)
- Aliases: `KORTEX`, `KORTEX // STEAL`
- Variants observed: **0**

## What it targets

- No target inventory published yet.

## Detection notes

The `- KORTEX // STEAL` line-anchored banner with two
forward slashes is the cleanest trigger. The dash-prefix
field opening (`- Path:`, `- ID:`, `- OS Version:`, etc.) is
shared with Lumma-shape variants but the KORTEX banner is
unique.

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

## Related catalog profiles

- [Lumma](../lumma/)
- [XFiles](../x-files/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
