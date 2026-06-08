# BracketSection Stealer

Unidentified `[System]` / `[Hardware]`-sectioned stealer log
variant observed inside `@bugatti_cloud` aggregator packs.
The `UserInformation.txt` body is split into bracket-titled
sections (`[System]`, `[Hardware]`, etc.) each followed by a
flat key-value block. Family attribution is provisional; the
format has not been mapped to a published threat-intel name.

**Variants observed:** 3
**Top attribution confidence:** `unknown`

## Variants

### `cystack_2784c1d7`

**Attribution confidence:** `unknown`

**Field keys:**
`Buildtag`, `CPU`, `City`, `Country`, `GPU`, `Hostname`, `Hwid`, `IP`, `Keyboard`, `OS Product`, `RAM`, `Screensize`, `System Language`, `Timezone`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Username: <redacted>
Hostname: <redacted>
IP: <redacted>
Country: Germany (DE)
Timezone: Europe/Berlin
City: <redacted>
Hwid: <redacted>
Buildtag: cherry512
[System]
OS Product: Windows 10 Pro 22H2 x64 (19045)
Screensize: 1440x1080
Keyboard: Deutsch (Deutschland)
System Language: de-DE
[Hardware]
GPU: NVIDIA GeForce GTX 1650
CPU: AMD Ryzen 7 PRO 1700X Eight-Core Processor
RAM: 16337 MB
```

### `cystack_7ea38c49`

**Attribution confidence:** `unknown`

**Field keys:**
`Buildtag`, `City`, `Country`, `GPU`, `Hostname`, `Hwid`, `IP`, `Keyboard`, `OS Product`, `RAM`, `Screensize`, `System Language`, `Timezone`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Username: <redacted>
Hostname: <redacted>
IP: <redacted>
Country: Egypt (EG)
Timezone: Africa/Cairo
City: <redacted>
Hwid: <redacted>
Buildtag: cherry512
[System]
OS Product: Windows 10 Pro 26H1 x64 (28000)
Screensize: 1920x1080
Keyboard: English (United States), Arabic (Egypt)
System Language: en-US
[Hardware]
GPU: Microsoft Basic Display Adapter
RAM: 16222 MB
```

### `cystack_9a2ff223`

**Attribution confidence:** `unknown`

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
Country: Australia (AU)
Timezone: Australia/Melbourne
City: <redacted>
Hwid: <redacted>
Logdate: 2026-01-08 <ip>
Buildtag: cherry162

[System]
OS Product: Windows 10 Pro 25H2 x64 (26200)
Screensize: 1680x1050
Keyboard: English (Australia), English (United States)
System Language: en-AU

[Hardware]
GPU: Unknown GPU
CPU: 12th Gen Intel(R) Core(TM) i7-12700K
RAM: 16125 MB
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
