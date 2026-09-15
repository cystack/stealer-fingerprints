# CSBabaCloudStealer

CSBabaCloudStealer is a CyStack tracking name for a
Vidar-shaped `System_Info.txt` distributed by the
`@BabaCloud_New` Telegram channel operator. Victim folders
follow the shape `@BabaCloud_New {<seq>} [<CC>]_<IPv4>_
<HWID8>_<DDMMYYYY>_<HHMMSS>` and ship inside archives
named `@BabaCloudNew { <count> } Logs Cloud <DDMMYYYY>.rar`.

The body carries the Vidar-canonical identifier preamble
(`MachineID`, `GUID`, `HWID`, `Path`, `Work Dir`, `Windows`,
`Computer Name`, `User Name`, `Display Resolution`) plus the
Vidar-canonical five-field hardware tuple (`Processor`,
`Cores`, `Threads`, `RAM`, `VideoCard`) that public reporting
documents as Vidar's own build-4.x+ schema. The rebrand
strips `Version`, `Install date`, `AV`, `Display Language`,
`Keyboard Languages`, `Local Time`, `TimeZone`, and the
trailing `[Processes]` and `[Software]` sections.

Distinctive presentation differences vs the canonical Vidar
body: every field uses a space-before-colon form
(`Key : Value`), the harvest wall clock is split across
adjacent `Date :` and `Time :` lines instead of a single
combined value, the hardware block is introduced by a
`--- [ Hardware ] ---` dash-boxed header rather than a bare
`[Hardware]` bracket header, and absent-path victims carry a
`Path : >-` YAML-block-scalar sentinel. The framing banner
is an angle-bracket sandwiched caret block advertising
`Main Channel - @Baba_Logs`, `Public Logs Channel :
@BabaCloud_New`, `Public Ulp Channel : @BabaUlp_New`, and
`Admin : @Mr_Ghost_004` between two horizontal rules.

Public reporting attests `@BabaCloud_New` as a
Telegram-distributed cloud-logs operation that has released
multiple thousand-record credential dumps since mid-2025 but
does not explicitly name the underlying panel family. The
Vidar attribution here is inferred from the identifier
preamble plus the five-field hardware tuple - a combination
that is Vidar-canonical - and is retained at medium
confidence pending an explicit rebrand mapping.

This tracking name is unrelated to the `CSBabaStealer`
profile, which covers a `.B.A.B.A.` Lumma-rebrand distributed
by a different operator; the shared `Baba` substring in the
names is incidental.

## Research status

- Classification: **Family variant**
- Attribution confidence: **medium**
- Canonical family: [vidar](../vidar/)
- Aliases: `BabaCloud Logs`, `BabaCloudLogs`, `@BabaCloud_New`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions and desktop clients
- Cloud service session tokens and endpoint URLs
- System hardware and identity inventory

## Detection notes

Fingerprint requires the `@BabaCloud_New` distributor-brand
literal present in content AND at least one Vidar-canonical
field line-anchored with the space-before-colon form
(`MachineID :` OR `VideoCard :`). Canonical Vidar cleanly
declines these bodies because every canonical fingerprint
requires the `Key:` no-space form.

## Observed log variants

### `v_636e5657cf3f5ac2f89d1f6765a6f2b9`

- Format ID: `cs-baba-cloud-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: `@BabaCloud_New`
- Distribution channel: `@Baba_Logs`
- Attribution confidence: **medium**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_636e5657cf3f5ac2f89d1f6765a6f2b9/System_Info.txt)
- Sample SHA-256: `56e50db45ad291ded9819a0dee4f0c71f85ca2ae13168f5d72058a32dd0cf321`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `< Main Channel - @Baba_Logs . >`, `@BabaCloud_New`
- Field labels: `< Admin`, `< https`, `< Public Logs Channel`, `< Public Ulp Channel`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `IP`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `Time`, `User Name`, `VideoCard`, `Windows`, `Work Dir`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Vidar](../vidar/)

## Sources

- <https://www.trendmicro.com/en_us/research/25/j/how-vidar-stealer-2-upgrades-infostealer-capabilities.html>
- <https://www.kaspersky.com/resource-center/threats/vidar-stealer>
- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-22361-credentials-leaked/>
- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-breach-explained-17507-records/>

Machine-readable record: [family.json](family.json)
