# CSMSKDateStealer

CSMSKDateStealer is a CyStack-coined identifier for an
info-stealer `information.txt` whose opening line is an exfil
timestamp suffixed with `MSK` (Moscow Standard Time). The file
is a flat `Key: Value` block: short 16-hex `Machine UUID`, a
`Machine: <hostname>/<user>` slash-suffix identity, hardware
fields, a localised `Local Time: <date> (UTC+<offset>) <city>`
clock, a geolocation block keyed on the ip-api.com JSON shape
(`CountryCode`, `Region Name`, `IP Timezone`), and a
wallet-extension enumerator that maps wallet names to
`%USERPROFILE%` paths with right-arrow padding (`MetaMask ->
...`).

Family attribution is provisional. The victim-profile field
set overlaps with Snake Keylogger's publicly documented host
profile, but Snake Keylogger's documented exfiltration is an
SMTP / FTP / Telegram message body, not a standalone info.txt
with a wallet-enumerator block. No public source maps this
exact shape to a named family.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet browser extensions (MetaMask, Phantom, ...)
- System hardware and locale inventory

## Detection notes

The MSK-suffixed `Date:` opener is the single most
distinctive marker: no other family in this catalog emits a
timezone abbreviation on its Date line (Lumma uses dotted
DD.MM.YYYY without trailing abbreviation, .B.A.B.A. uses
DD/MM/YYYY, Snake Stealer uses M/D/YYYY with AM/PM). The
`Machine UUID:` co-requirement closes the loop against a
stray readme that mentions an MSK-suffixed date by
coincidence. If published threat intelligence later attributes this format to a known family, update this tracking profile rather than creating a duplicate record.

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
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
