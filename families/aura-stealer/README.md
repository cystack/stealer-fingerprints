# AuraStealer

Aura Stealer (a.k.a. AuraStealer) is a C++ infostealer-as-a-service advertised on underground forums from July 2025 by the
threat actor AuraCorp. Subscription tiers ship a builder plus
a web panel that aggregates harvested logs. Antivirus
signatures catalogue it under the detection name
`Trojan:MSIL/AuraStealer.AUKB!MTB`; Public malware trackers
list it as `win.aurastealer`.

The on-wire exfil is JSON, GZIP-compressed and Base64-encoded
to the C2. The artifact this parser claims is the operator-facing panel render written as `System.txt` inside each per-victim folder. The render opens with an `AURA v<x.y.z>` build
banner, then a top block of identity fields (`HWID:`, the
`Launched at:` local/UTC pair, `Location:`, the elevation
flags), then four square-bracket sections in order: `[System
Info]`, `[Hardware]`, `[Processes List]`, `[Installed
Software]`. The `Location:` field carries the
process-hollowing target, usually
`C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\RegAsm.exe`
per the publicly documented injection chain.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Aura Stealer`, `AuraStealer`
- Variants observed: **1**
- Historical Logmine records represented: **3,537**

## What it targets

- Browser saved credentials, cookies, autofill (110+ browsers)
- Crypto wallet extensions and desktop clients (250+ extensions)
- Authenticator and 2FA app data (70+ apps)
- System hardware and installed-software inventory

## Detection notes

The line-anchored `AURA v<digits>` banner on the opening line
is the cleanest fingerprint and is the panel's own self-identifier. The `[System Info]` + `[Hardware]` + `[Processes
List]` + `[Installed Software]` bracket-section quartet with
this exact spelling is unique to Aura. False-positive risk is
negligible: prose that quotes the banner phrase will fail the
bracket-section + `HWID:` guard.

When triaging a panel-render log, treat `Location:` ending in
`RegAsm.exe` as the injection-host signal. The on-wire JSON
transport is not captured by this parser; pair host telemetry
on RegAsm.exe outbound HTTPS with the published Aura C2 domain
list.

## Observed log variants

### `v_97204ede3c0a7a80adbe42a20d7509b3`

- Parser: `logmine.ioc.parsers.aura_stealer.AuraStealerParser`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **3,537**
- Representative sample: [open sample](samples/v_97204ede3c0a7a80adbe42a20d7509b3/sample.txt)
- Sample SHA-256: `30d64ac0e523bea150efddfa0d23068ef181f08d4d13250e20ba3b71dd1a7cc8`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Hardware]`, `[System Info]`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1055.012](https://attack.mitre.org/techniques/T1055/012/) | Process Injection: Process Hollowing |

## Related catalog profiles

- [Lumma](../lumma/)

## Sources

- <https://www.microsoft.com/en-us/wdsi/threats/malware-encyclopedia-description?Name=Trojan:MSIL/AuraStealer.AUKB!MTB&ThreatID=2147957435>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.aurastealer>
- <https://www.gendigital.com/blog/insights/research/defeating-aurastealer-obfuscation>
- <https://www.intrinsec.com/en/analysis-of-aurastealer-an-emerging-infostealer/>

Machine-readable record: [family.json](family.json)
