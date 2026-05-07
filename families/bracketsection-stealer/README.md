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
Country:  ()
Timezone: 
City: 
<redacted>
Logdate: 2026-04-07 <ip>
Buildtag: cherry512

[System]
OS Product: Windows 10 Home Single Language 25H2 x64 (26200)
Screensize: 1920x1080
Keyboard: Espaol (Mxico), Ingls (Estados Unidos)
System Language: es-MX

[Hardware]
GPU: AMD Radeon RX 580 2048SP
CPU: AMD Ryzen 5 PRO 4650G with Radeon Graphics
RAM: 20349 MB
```

### `cystack_e81b5e96`

**Field keys:**
`CPU`, `City`, `Country`, `GPU`, `Hwid`, `IP`, `RAM`, `Screensize`, `System Language`, `Timezone`, `Username`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 28 blank lines ...]
Bot @arthouse_full_bot   <url>      Subscribe    ArtHouse
[... 14 blank lines ...]
Username: <redacted>
IP: <redacted>
Country: Pakistan (PK)
Timezone: Asia/Karachi
City: <redacted>
Hwid: <redacted>
Screensize: 1600x900
System Language: en-US
GPU: AMD Radeon R7 200 Series
CPU: Intel(R) Core(TM) i5-4590T CPU @ 2.00GHz
RAM: 8134 MB
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
