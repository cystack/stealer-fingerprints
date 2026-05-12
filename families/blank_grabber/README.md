# Blank Grabber

Blank Grabber is a Python-based open-source info-stealer
hosted on GitHub (Blank-c/Blank-Grabber). Low-skill actors
compile it with PyInstaller and distribute it via cracked
software lures, weaponised PyPI packages, and Discord or
Telegram dropper campaigns. Exfiltration goes through a
Discord or Telegram webhook, so no dedicated C2 panel is
needed.

The exfil archive contains a top-level `Information.txt`
whose banner reads `Blank Grabber got a new victim: <name>`,
followed by an `IP Info` block (ip-api.com data), a
`System Info` block (Computer Name, OS, RAM, UUID, CPU,
GPU, Product Key), and a `Grabbed Info` summary that counts
each data category (Discord Accounts, Passwords, Cookies,
Roblox Cookies, Telegram Sessions, Wallets, Wifi, etc.).

**Also known as:** `BlankGrabber`, `Blank-c/Blank-Grabber`

**Variants observed:** 5
**Top attribution confidence:** `high`
**Operator panel brands:** `Dead`

## Targets

- Discord and Telegram session tokens
- Browser saved credentials, cookies, history, autofill
- Crypto wallet desktop clients (Bitcoin, Ethereum, Exodus, others)
- Roblox cookies and Minecraft sessions
- Wifi passwords and webcam captures
- System hardware and locale inventory
- Game launcher sessions (Epic, Steam, Uplay, Battle.net, Growtopia)

## Variants

### `cystack_3db9f760`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Reverse DNS`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: Juan Alejandro

IP Info

IP: <redacted>
Region: Risaralda Department
Country: Colombia
Timezone: America/Bogota

Cellular Network:❎
Proxy/VPN:   ❎
Reverse DNS: static-tu-200-10-30-227.superredes.net

System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 10 Pro
Total Memory: 4 GB
UUID: EF28B1BE-8C09-8C42-8697-D8C497AE0940
CPU: Intel64 Family 6 Model 142 Stepping 9, GenuineIntel
GPU: Intel(R) HD Graphics 620
Product Key: YC7N8-G7WR6-9WR4H-6Y2W4-KBT6X

Grabbed Info
Discord Accounts : 0
Passwords : 0
Cookies : 105
History : 0
Autofills : 0
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 0
Wallets : 0
Wifi Passwords : 0
Webcam : 0
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : No
Battle.Net Session : No
Growtopia Session : No
[... truncated; full sample at ``sample.txt`` (approx. 2 more lines) ...]
```

### `cystack_4ed137de`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: Carlos Andrés
IP Info
IP: <redacted>
Region: Valle del Cauca Department
Country: Colombia
Timezone: America/Bogota
Cellular Network:    ❎
System Info
Computer Name: <redacted>
Computer OS: Unable to detect OS
Total Memory: Unable to detect total memory
UUID: Unable to detect UUID
CPU: Intel64 Family 6 Model 154 Stepping 4, GenuineIntel
GPU: Unable to detect GPU
Product Key: FHDPX-JNVDW-FF3RD-HPDKC-MP2TB
Grabbed Info
Discord Accounts : 0
Passwords : 122
Cookies : 0
History : 0
Autofills : 0
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 7
Wallets : 0
Wifi Passwords : 0
Webcam : 0
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : No
Growtopia Session : No
Screenshot : Yes
System Info : Yes
```

### `cystack_abb02c93`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: YOU

IP Info

IP: <redacted>
Region: Tizi Ouzou
Country: Algeria
Timezone: Africa/Algiers

Cellular Network:❎
Proxy/VPN:   ❎

System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 10 Pro
Total Memory: 8 GB
UUID: 3586D34C-35C2-11B2-A85C-8564A5581A50
CPU: Intel64 Family 6 Model 142 Stepping 9, GenuineIntel
GPU: Intel(R) HD Graphics 620
Product Key: NF6HC-QH89W-F8WYV-WWXV4-WFG6P

Grabbed Info
Discord Accounts : 0
Passwords : 1
Cookies : 0
History : 13092
Autofills : 343
Roblox Cookies : 0
Telegram Sessions : 1
Common Files : 11
Wallets : 0
Wifi Passwords : 5
Webcam : 1
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : No
Growtopia Session : No
Screenshot : Yes
System Info : Yes
```

### `cystack_cde4f3d7`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Region`, `Reverse DNS`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: rbiqu
IP Info
IP: <redacted>
Region: Jalisco
Country: Mexico
Timezone: America/Mexico_City
Cellular Network:    ❎
Reverse DNS: dsl-187-212-132-189-dyn.prod-infinitum.com.mx
System Info
Computer Name: <redacted>
Computer OS: Unable to detect OS
Total Memory: Unable to detect total memory
UUID: Unable to detect UUID
CPU: AMD64 Family 25 Model 80 Stepping 0, AuthenticAMD
GPU: Unable to detect GPU
Product Key: VK7JG-NPHTM-C97JM-9MPGT-3V66T
Grabbed Info
Discord Accounts : 0
Passwords : 45
Cookies : 0
History : 0
Autofills : 0
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 0
Wallets : 0
Wifi Passwords : 0
Webcam : 0
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : No
Battle.Net Session : No
Growtopia Session : No
Screenshot : Yes
System Info : Yes
```

### `Dead`

**Fingerprint id:** `dead`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Dead got a new victim`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Dead got a new victim: wende
IP Info
IP: <redacted>
Region: Texas
Country: United States
Timezone: America/Chicago
Cellular Network:    ❎
System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 11 Pro
Total Memory: 34 GB
UUID: FDCDA900-99DD-11EE-8B47-AC9DEB28190A
CPU: Intel64 Family 6 Model 158 Stepping 13, GenuineIntel
GPU: NVIDIA GeForce RTX 2060
Product Key: VK7JG-NPHTM-C97JM-9MPGT-3V66T
Grabbed Info
Discord Accounts : 3
Passwords : 11
Cookies : 860
History : 7126
Autofills : 205
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 5
Wallets : 0
Wifi Passwords : 0
Webcam : 0
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : Yes
Growtopia Session : No
Screenshot : Yes
System Info : Yes
```

## Detection

The banner literal `Blank Grabber got a new victim:` is
unique across the registry and unique to this codebase, so
a single substring check is sufficient to claim. Forks
(notably AK-grabber) reuse the same banner verbatim, which
is a feature for triage: the fork still maps to the
Blank Grabber family. The `Grabbed Info` per-category counts
are the cleanest indicator of which artifact subfolders the
archive contains for evidence collection.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)
- [T1567 Exfiltration Over Web Service](https://attack.mitre.org/techniques/T1567/)

## Related families

- [`akgrabber`](../akgrabber/)

## References

- https://any.run/malware-trends/blankgrabber/
- https://www.splunk.com/en_us/blog/security/blankgrabber-trojan-stealer-analysis-detection.html
- https://github.com/Blank-c/Blank-Grabber
