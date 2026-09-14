# PureLogs

PureLogs is a 64-bit C# infostealer in the Pure malware
family, distributed since 2022 under a malware-as-a-service
subscription model. The stub is obfuscated with ConfuserEx,
.NET Reactor, and custom virtualization, with the C2
configuration carried as a Protobuf-serialized, XOR plus
3DES-encrypted blob in the binary resources.

The exfiltrated artifact is a flat JSON `log.json` with a
nested `BotInfo` sub-object split into `System` /
`Hardware` / `Network` sections. The top-level fields
carry a `Username_Hwid` (literal `user_<hwid>` join), a
`StubVersion` (e.g. `v4.0.1`) and a `LogFolder` whose
path begins with `C:\PureLogs v4\Logs\<COUNTRY>\`.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `PureLog Stealer`, `PureLogStealer`, `win.purelogs`
- Variants observed: **1**
- Historical Logmine records represented: **4,180**

## What it targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Browser extension list and metadata
- Outlook and other application data
- Clipboard contents
- System hardware and locale inventory

## Detection notes

The `"StubVersion"`, `"Username_Hwid"`, and `"BotInfo"`
JSON-key trio is the cleanest fingerprint. The literal
`PureLogs v4` substring inside the `LogFolder` value
self-identifies the family. The misspelled
`BrowserExtenstions` (note missing `i`) field name is
invariant across observed samples and useful as a sanity
check during triage.

## Observed log variants

### `v_d9e2bb74fa7cf17912df704a74ceef77`

- Parser: `logmine.ioc.parsers.purelogs.PureLogsParser`
- Observed filenames: `log.json`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **4,180**
- Representative sample: [open sample](samples/v_d9e2bb74fa7cf17912df704a74ceef77/sample.txt)
- Sample SHA-256: `75548851886dcc2cb5b6f01b793f80d67b95c5a13aa54672fb53e591edf4d065`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `BotInfo`, `StubVersion`, `Username_Hwid`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1027](https://attack.mitre.org/techniques/T1027/) | Obfuscated Files or Information |

## Related catalog profiles

- None recorded.

## Related external families

- `pureminer`
- `purecrypter`

## Sources

- <https://malpedia.caad.fkie.fraunhofer.de/details/win.purelogs>
- <https://any.run/malware-trends/purelogs/>
- <https://flashpoint.io/blog/purelogs-low-cost-infostealer-high-impact-threat/>
- <https://www.swisspost-cybersecurity.ch/news/purelogs-infostealer-analysis-dont-judge-a-png-by-its-header>

Machine-readable record: [family.json](family.json)
