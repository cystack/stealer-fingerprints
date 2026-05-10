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

**Variants observed:** 1
**Total observations:** 1
**Top attribution confidence:** `high`

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
