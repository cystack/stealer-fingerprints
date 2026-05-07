# Lumma

Lumma C2 (LummaC2) logs. The panel writes `System.txt` with a
YAML-like dash-prefix list (`- LummaC2 Build:`,
`- Configuration:`, etc.) and a distinctive `(sig:UNIX.HEX)`
signature on the `Time:` line. Build banners reference the
`@lummanowork` channel; the panel is sold MaaS via
`@lummamarketplace_bot`.

**Also known as:** `LummaC2`, `Lumma Stealer`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions (focus on MetaMask, Phantom, and similar)
- Steam, Telegram, Discord session tokens
- 2FA seeds from Authy and similar desktop clients
- Cryptocurrency seed phrases harvested from text files

## Variants

### `cystack_00237ee6`

**Field keys:**
`CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Domain`, `GPU`, `HWID`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>
@Primo_Cloud:<url>  

Domain: <redacted>
HWID: <redacted>
CPU Vendor: GenuineIntel
CPU Name: 12th Gen Intel(R) Core(TM) i5-12450HX
CPU Threads: 12
GPU: NVIDIA GeForce RTX 3050 6GB Laptop GPU
Display resolution: 1536x864
Country: TN
```

### `cystack_2f855a8f`

**Field keys:**
`Version`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
__________________________________________________________
|                                                                                                                                                        |
|             .d8888888b.  8888888b. 8888888 88b   d88P 8888888888 888      .d8888b.   .d8888b.  888      .d88888b.  888     888 8888888b.              |
|            d88P"   "88b 888   88b  888    88b d88P  888        888     d88P  88b d88P  88b 888     d88P" "88b 888     888 888  "88b             |
|            888  d8b  888 888    888  888     88o88P   888        888     88b.      888    888 888     888     888 888     888 888    888             |
|            888  888  888 888   d88P  888      888P    8888888    888      "888b.   888        888     888     888 888     888 888    888             |
|            888  888bd88P 8888888P"   888      d888b    888        888         "88b. 888        888     888     888 888     888 888    888             |
|            888  8888P"  888         888     d88888b   888        888           "888 888    888 888     888     888 888     888 888    888             |
|            88b.     .d8 888         888    d88P 88b  888        888     88b  d88P 88b  d88P 888     88b. .d88P 88b. .d88P 888  .d88P             |
|             "88888888P" 888       8888888 d88P   88b 8888888888 88888888 "8888P"   "8888P"  88888888 "88888P"   "88888P"  8888888P"              |
|                                                                                                                                                        |
|                                                                    JOIN OUR CHANNEL!                                                                   |
|                                                                                                                                                        |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|        <url>      |      <url>      |      <url>      |      <url>         |
|_________________________________________________________|
[... 3 blank lines ...]
- Path: C:\Windows\SysWOW32\install.exe

Version: *         Telegram: t . me/Link_CashFlow = C4SHFL0W PR3M1UM CL0UD L0G5 — fresh daily              *
- Local Date: 30.12.2024 <ip>
- Time Zone: UTC+1
- Install Date: 22.11.2024 <ip>
- Elevated: false
- Computer: DESKTOP-4K0MSLL
- User: HotelRecepcja
- Domain: 
- Hostname: DESKTOP-4K0MSLL
- NetBIOS: DESKTOP-4K0MSLL
- Language: pl-PL
- Anti Virus:
	- Windows Defender
- HWID: 0917F65960D50CCE2EC3-c0ee86b5-28e9
- RAM Size: 16384MB
- CPU Vendor:  
- CPU Name: 12th Gen Intel(R) Core(TM) i5-12400
- CPU Threads: 12
- CPU Cores: 6
- GPU:
	- Intel(R) UHD Graphics 730
- Display resolution: 1920x1080

- IP Address: <ip>
- Time: 30.12.2024 <ip> (sig:1735573306.2690de43c0dccd1fc1cb57af14ca406e)
- Country: PL

------------------------------------

Automated log store >> t.me/lummamarketplace_bot
Tens of thousands of logs for sale, rating system, search by filters and countries, hundreds of sellers with their own storefronts. Unique development based on MaaS from LummaC2.
Purchase quality material right now - t.me/lummamarketplace_bot

------------------------------------

Italiano - это пример достойного сервиса. Качественный брут и отработка папки Wallets (Metamask, Exodus, Phantom, .dat и другие).
В наличии около 500 видеокарт, ≈50.000.000 паролей в секунду. Опыт работы в этой сфере более 5 лет. Онлайн 20 часов в сутки.
Общий депозит на форумах 1.5btc.


Принимаю балансы от 5.000$
Процент за работу - 70/30 (70% Клиенту)


Заработать вместе >> <url>
```

### `cystack_4177c9d7`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Domain`, `GPU`, `HWID`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot
[... 28 blank lines ...]
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 14 blank lines ...]
Domain: <redacted>
HWID: <redacted>
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 3600 6-Core Processor
CPU Threads: 12
CPU Cores: 6
GPU: NVIDIA GeForce RTX 3060 Ti
Display resolution: 3440x1440
Country: LT
```

### `cystack_c65f37b2`

**Filenames:** `System.txt`, `UserInformation.txt`

**Sample (sanitized):**

```
- User: erenh
- Domain: Failed to Fetch.
- Hostname: Failed to Fetch.
- Anti Virus:
  - Windows Defender
- HWID: Failed to Fetch.
- RAM Size: Failed to Fetch.
- CPU Vendor: Failed to Fetch.
- CPU Name: Failed to Fetch.
- CPU Threads: Failed to Fetch.
- CPU Cores: Failed to Fetch.
- GPU: Failed to Fetch.
- Display resolution: 1720x1080

- Clipboard: <url>
M0N2QoLgcrUX6qNuwGZwYDFZKJOpTHvlpk

- IP Address: <ip>
- Time: 02.02.2026 <ip>
- Country: NL
```

## Detection

High-confidence trigger: the `(sig:UNIX.HEX)` parenthesised
signature on the `- Time:` line. Together with the
`- LummaC2 Build:` banner this is unambiguous Lumma. Several
derivative families (Remus, AL Stealer, BabaStealer,
ArtHouseCloud, CashFlow) share the dash-prefix shape but lack
the signature; they should be tracked separately.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`remus-stealer`](../remus-stealer/)
- [`csalstealer`](../csalstealer/)
- [`csbabastealer`](../csbabastealer/)
- [`csarthousecloudstealer`](../csarthousecloudstealer/)
- [`cscashflowstealer`](../cscashflowstealer/)

## References

- @lummanowork
- @lummamarketplace_bot
- https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/
