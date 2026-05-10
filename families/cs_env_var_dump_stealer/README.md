# CSEnvVarDumpStealer

CSEnvVarDumpStealer is a CyStack-coined identifier for a
.NET-based stealer panel whose `system_info.txt` opens with
a `=== SYSTEM INFORMATION ===` header followed by a
`=== ENVIRONMENT VARIABLES ===` block that dumps the full
Win32 environment table verbatim. Distributed through the
`@BRADMAX` Telegram aggregator (deepdarkCTI lists
`t.me/bradmax_cloud` as a Redline / Raccoon Data Logs
channel), with per-victim folders named
`[<CC>]@BRADMAX (<N>)/`.

Distinctive to this panel are the `CLR Version:` and
`.NET Runtime:` fields (pointing to a .NET builder), the
`Default Gateway:` / `Antivirus:` / `Local IP:` triple, and
a verbatim Win32 environment dump as the second section. A
panel bug emits `RAM: NoSystemBattery (100%)` as a duplicate
`RAM:` line: a battery-detection result mislabeled with the
RAM key. The `NoSystemBattery (100%)` literal is shared with
Stealerium's `Info.txt` `BATTERY:` field per MalBeacon, but
Stealerium's layout uses bracket-titled `[Machine]` /
`[Virtualization]` sections, never the `===` triple-equals
headers seen here, so the relationship is at most a snippet
lift, not a fork.

**Also known as:** `@BRADMAX system_info.txt`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Distribution channels:** `@BRADMAX`

## Targets

- Browser saved credentials and cookies (panel companion files)
- System hardware and locale inventory
- Verbatim Win32 environment-variable dump
- Antivirus product enumeration

## Variants

### `cystack_6d185ced`

**Distribution channel:** `@BRADMAX`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `CLR Version`, `CPU`, `Computer Name`, `Default Gateway`, `GPU`, `Local IP`, `OS Version`, `Processor Count`, `RAM`, `SCREEN`, `System Directory`, `System Version`, `Timestamp`, `User Name`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
=== SYSTEM INFORMATION ===
Timestamp: 20/01/2026 <ip>
Computer Name: <redacted>
OS Version: Microsoft Windows NT 6.2.9200.0
User Name: <redacted>
System Directory: C:\WINDOWS\system32
Processor Count: 6
CLR Version: 4.0.30319.42000
.NET Runtime: 4.0.30319.42000
System Version: Microsoft Windows 10 Pro (64 Bit)
Default Gateway: <ip>
Antivirus: Windows Defender
Local IP: <redacted>
CPU: AMD Ryzen 5 3500 6-Core Processor
GPU: Microsoft Basic Display Adapter
RAM: 6138MB
SCREEN: 1360x768
RAM: NoSystemBattery (100%)

=== ENVIRONMENT VARIABLES ===
Path = <redacted>
PATHEXT = .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC
USERDOMAIN = DESKTOP-JGLLJLD
PROCESSOR_ARCHITECTURE = x86
ProgramW6432 = C:\Program Files
DriverData = C:\Windows\System32\Drivers\DriverData
PUBLIC = C:\Users\<user>
APPDATA = C:\Users\<user>\AppData\Roaming
windir = C:\WINDOWS
LOCALAPPDATA = C:\Users\<user>\AppData\Local
CommonProgramW6432 = C:\Program Files\Common Files
OneDrive = C:\Users\<user>\OneDrive
USERPROFILE = C:\Users\<user>
ProgramFiles = C:\Program Files (x86)
PROCESSOR_LEVEL = 23
CommonProgramFiles(x86) = C:\Program Files (x86)\Common Files
HOMEPATH = \Users\admin
COMPUTERNAME = DESKTOP-JGLLJLD
PROCESSOR_ARCHITEW6432 = AMD64
USERNAME = <redacted>
[... truncated; full sample at ``sample.txt`` (approx. 19 more lines) ...]
```

## Detection

Triple fingerprint: `=== SYSTEM INFORMATION ===` substring
AND `=== ENVIRONMENT VARIABLES ===` substring AND
`.NET Runtime:` substring. The `.NET Runtime:` key is unique
across the registry; the env-var section header excludes
PCInfoStealer (which requires `=== NETWORK INFO ===`) and
CSWmicDumpStealer (snake_case keys, no env-var dump). The
family attribution is provisional pending a published
threat-intel mapping for this layout.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1518.001 Security Software Discovery](https://attack.mitre.org/techniques/T1518/001/)
- [T1614 System Location Discovery](https://attack.mitre.org/techniques/T1614/)

## Related families

- [`stealerium`](../stealerium/)

## References

- https://t.me/bradmax_cloud
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
