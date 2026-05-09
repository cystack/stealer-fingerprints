# WhiteSnake

WhiteSnake Stealer logs. Post-2024 builds emit a `PC_info.txt`
beginning with an emoji-prefixed `🖥Computer info:` section and
containing the system, user, and time values together with
later sections covering installed software and network state.
Distributed via Telegram aggregator channels (BRADMAX-style
redistributors) and via a MaaS subscription model.

**Also known as:** `WhiteSnake Stealer`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- Discord, Telegram, Steam session data
- 2FA codes from authenticator apps
- Email and FTP client credentials

## Variants

### `cystack_b5e6aa06`

**Field keys:**
`CPU`, `GPU`, `HWID`, `Installed antivirus`, `RAM`, `Started as admin`, `System`, `System time`, `User name`

**Filenames:** `PC_info.txt`

**Sample (sanitized):**

```
🖥Computer info:
System: Microsoft Windows 10 Pro (x64)
User name: <redacted>
System time: 2026-02-14 <ip> PM
CPU: Intel(R) Core(TM) i3-8100 CPU @ 3.60GHz
GPU: Intel(R) UHD Graphics 630
RAM: 3968 MB
HWID: <redacted>

🛡Security:
Installed antivirus: Windows Defender.
Started as admin: True

📡Whois: Failed to fetch data
```

### `cystack_c501beb3`

**Field keys:**
`CPU`, `City`, `Country`, `GPU`, `HWID`, `IP`, `Installed antivirus`, `Internet provider`, `RAM`, `Region`, `Started as admin`, `System`, `System time`, `User name`

**Filenames:** `PC_info.txt`

**Sample (sanitized):**

```
    🖥Computer info:
System: Microsoft Windows 11 Home (x64)
User name: <redacted>
System time: 2026-01-15 <ip> PM
CPU: AMD Ryzen 3 7320U with Radeon Graphics         
GPU: AMD Radeon(TM) Graphics
RAM: 14069 MB
HWID: <redacted>
🛡Security:
Installed antivirus: Windows Defender.
Started as admin: False
📡Whois:
IP: <redacted>
Country: Ecuador [EC]
City: <redacted>
Region: Pichincha
Internet provider: Telconet S.A
```

## Detection

The emoji-prefixed section header (`🖥Computer info:`) is
visually distinctive. Combined with `User name:` and
`System time:` field labels (note the spaces), this is
unambiguous WhiteSnake content.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://www.cyfirma.com/research/whitesnake-stealer/
- https://socradar.io/whitesnake-stealer-malware-analysis/
