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

**Also known as:** `PureLog Stealer`, `PureLogStealer`, `win.purelogs`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Browser extension list and metadata
- Outlook and other application data
- Clipboard contents
- System hardware and locale inventory

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `log.json`

**Sample (sanitized):**

```
{
  "FirstTime": false,
  "Username_Hwid": "user_DBE3B384D3C4",
  "IPAddress": "<ip>",
  "Date": "2026-01-23_08-01-25.867",
  "StubVersion": "v4.0.1",
  "Country": "GB",
  "Group": "MH",
  "Note": null,
  "DomainDetector": null,
  "BrowserPasswords": 478,
  "BrowserCookies": 0,
  "BrowserCreditCards": 0,
  "BrowserExtenstions": 0,
  "BrowserExtenstionsNames": null,
  "DesktopCryptoWallets": null,
  "Applications": "Outlook",
  "LogFolder": "C:\\PureLogs v4\\Logs\\GB\\user_DBE3B384D3C4_2026-01-23_08-01-25.867",
  "BotInfo": {
    "System": {
      "WindowsVersion": "Windows 11 Pro 64bit",
      "Username": "user",
      "Domain": "DESKTOP-1O59BJU",
      "Country": "GB",
      "Antivirus": "McAfee",
      "Clipboard": ""
    },
    "Hardware": {
      "Cpu": "Intel(R) Core(TM) i5-6400T CPU @ 2.20GHz",
      "Gpu": "Intel(R) HD Graphics 530",
      "Ram": "7 GB",
      "ScreenSize": "1920x1080"
    },
    "Network": {
      "Public_IP": "<ip>",
      "Private_IP": "<ip>",
      "Gateway": "<ip>"
    }
  }
}
```

## Detection

The `"StubVersion"`, `"Username_Hwid"`, and `"BotInfo"`
JSON-key trio is the cleanest fingerprint. The literal
`PureLogs v4` substring inside the `LogFolder` value
self-identifies the family. The misspelled
`BrowserExtenstions` (note missing `i`) field name is
invariant across observed samples and useful as a sanity
check during triage.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1115 Clipboard Data](https://attack.mitre.org/techniques/T1115/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1027 Obfuscated Files or Information](https://attack.mitre.org/techniques/T1027/)

## Related families

- [`pureminer`](../pureminer/)
- [`purecrypter`](../purecrypter/)

## References

- https://malpedia.caad.fkie.fraunhofer.de/details/win.purelogs
- https://any.run/malware-trends/purelogs/
- https://flashpoint.io/blog/purelogs-low-cost-infostealer-high-impact-threat/
- https://www.swisspost-cybersecurity.ch/news/purelogs-infostealer-analysis-dont-judge-a-png-by-its-header
