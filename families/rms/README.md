# RMS

RMS (Remote Manipulator System, also tracked as RuRAT
and R-Server) is a legitimate Russian remote
administration tool developed by TektonIT. Each host
that registers with the vendor's relay server receives
a 12-digit Internet ID grouped into four 3-digit blocks
(for example `528-230-158-783`) so the operator can
reach the machine through NAT. The tool is frequently
abused as a remote access trojan and is tracked by
Malpedia under `win.rms`.

Kaspersky ICS-CERT documented industrial-targeting
campaigns in 2018 that paired RMS with TeamViewer
abuse. ETDA APT Threat Actor cards attribute RMS
deployments to TA505 (Graceful Spider / Gold
Evergreen), Gamaredon, and LazyScripter. ThreatFox and
abuse.ch track current campaign indicators under the
same `win.rms` identifier with the RuRAT alias.

The harvested log this parser claims is not RMS's own
writer output. It is a single-line caption produced by
the @BRADLOGS / BRADMAX Telegram broker advertising
RMS-bound victim sessions to buyers. The line carries
the victim's RMS Internet ID, a public IPv4, the
country and city of the geo lookup, and the WMI
`Win32_Processor.Name` string.

**Also known as:** `Remote Manipulator System`, `RuRAT`, `R-Server`, `TektonIT R-Server`

**Variants observed:** 1
**Top attribution confidence:** `high`
**Operator panel brands:** `BRADMAX`
**Distribution channels:** `@BRADLOGS`

## Targets

- Interactive remote desktop and shell access
- File transfer to and from the victim host
- Webcam and microphone access
- System hardware enumeration for buyer-side ranking

## Variants

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `high`

**Field keys:**
`RMS`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
RMS: 528-230-158-783 IP: <ip> Country: Philippines City: Cagayan de Oro Processor: Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz
```

## Detection

The 12-digit 3-3-3-3 dashed Internet ID is the
documented TektonIT relay-server identifier shape. A
`RMS:` label followed by that grouped ID and the
co-occurring `IP:` / `Country:` / `City:` /
`Processor:` labels on the same line is the
@BRADLOGS broker's caption fingerprint. On a live
host, hunt for `rutserv.exe` and `rfusclient.exe` in
running processes; `rutserv.exe` is the RMS server
binary and `rfusclient.exe` is the user-mode helper.
Triage during incident response should treat any
unexpected RMS install as potentially malicious even
though the tool itself is signed by TektonIT.

## MITRE ATT&CK

- [T1219 Remote Access Software](https://attack.mitre.org/techniques/T1219/)
- [T1059 Command and Scripting Interpreter](https://attack.mitre.org/techniques/T1059/)
- [T1071.001 Application Layer Protocol: Web Protocols](https://attack.mitre.org/techniques/T1071/001/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1113 Screen Capture](https://attack.mitre.org/techniques/T1113/)
- [T1056.001 Keylogging](https://attack.mitre.org/techniques/T1056/001/)

## References

- https://malpedia.caad.fkie.fraunhofer.de/details/win.rms
- https://ics-cert.kaspersky.com/publications/reports/2018/08/01/attacks-on-industrial-enterprises-using-rms-and-teamviewer/
- https://threatfox.abuse.ch/browse/malware/win.rms/
- https://apt.etda.or.th/cgi-bin/listgroups.cgi?t=RMS
