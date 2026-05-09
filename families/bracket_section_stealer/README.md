# BracketSection Stealer

Unidentified `[System]` / `[Hardware]`-sectioned stealer log
variant observed inside `@bugatti_cloud` aggregator packs.
The `UserInformation.txt` body is split into bracket-titled
sections (`[System]`, `[Hardware]`, etc.) each followed by a
flat key-value block. Family attribution is provisional; the
format has not been mapped to a published threat-intel name.

## Variants

### `cystack_9a2ff223`

**Field keys:**
`Buildtag`, `CPU`, `City`, `Country`, `FileLocation`, `GPU`, `Hostname`, `Hwid`, `IP`, `Keyboard`, `Logdate`, `OS Product`, `RAM`, `Screensize`, `System Language`, `Timezone`, `Username`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
       (|)
  _____/|\_____
 /____( * )____\ 
 __  _ |_|              +                   _     
|  \/  |_|___  ___ _ __(_) ___ ___  _ __ __| | ___ 
| |\/| | / __|/ _ \ '__| |/ __/ _ \| '__/ _` |/ _ \
| |  | | \__ \  __/ |  | | (_| (_) | | | (_| |  __/
|_|  |_|_|___/\___|_|  |_|\___\___/|_|  \__,_|\___|
       | | Telegram - <url>
       | |
       | |
       \_/
Username: <redacted>
Hostname: <redacted>
FileLocation: <redacted>
IP: <redacted>
Country: Czechia (CZ)
Timezone: Europe/Prague
City: <redacted>
Hwid: <redacted>
Logdate: 2026-01-17 <ip>
Buildtag: cherry118
[System]
OS Product: Windows 10 Pro 22H2 x64 (19045)
Screensize: 1440x900
Keyboard: English (United States)
System Language: en-US
[Hardware]
GPU: Microsoft Basic Display Adapter
CPU: Intel(R) Core(TM)Gold 6252 CPU @ 2.10GHz
RAM: 4095 MB
```

## Detection

The combination of bracket-titled sections (`[System]`,
`[Hardware]`) with a flat key-value block under each is the
primary signature. Distributed via the `@bugatti_cloud`
aggregator channel.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://heroic.com/darkhive-breaches/bugatti-cloud-telegram-stealer-log-july-2023-timeline/
- https://socradar.io/blog/top-stealer-log-telegram-channels/
