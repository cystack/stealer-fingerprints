# Lumma

Lumma C2 (LummaC2) logs. The panel writes `System.txt` with a
YAML-like dash-prefix list (`- LummaC2 Build:`,
`- Configuration:`, etc.) and a distinctive `(sig:UNIX.HEX)`
signature on the `Time:` line. Build banners reference the
`@lummanowork` channel; the panel is sold MaaS via
`@lummamarketplace_bot`.

**Also known as:** `LummaC2`, `Lumma Stealer`

**Variants observed:** 4
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions (focus on MetaMask, Phantom, and similar)
- Steam, Telegram, Discord session tokens
- 2FA seeds from Authy and similar desktop clients
- Cryptocurrency seed phrases harvested from text files

## Variants

### `cystack_0df566a5`

**Attribution confidence:** `high`

**Field keys:**
`TG`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
- LummaC2 Build: Feb 23 2025
- @MAXERSTE (BRADMAX) / <url>
- Configuration: 
- Path: C:\WINDOWS\SysWOW64\explorer.exe

- OS Version: Windows 10 Home Single Language (10.0.19045) x64
- Local Date: 03.03.2025 <ip>
- Time Zone: UTC+4
- Install Date: 01.08.2020 <ip>
- Elevated: false
- Computer: AISON
- User: AIS�N
- Domain: 
- Hostname: Aison
- NetBIOS: AISON
- Language: en-US
- Anti Virus:
	- Norton 360
- HWID: 2BB1CAF18934E4DD8E7A5F48C2665F48
- RAM Size: 8192MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i5-4570T CPU @ 2.90GHz
- CPU Threads: 4
- CPU Cores: 2
- GPU:
	- Intel(R) HD Graphics 4600
- Display resolution: 1920x1080

- IP Address: <ip>
- Time: 03.03.2025 <ip> (sig:1741006955.06e122ce556622a5d752de1af3bbe448)
- Country: AE

------------------------------------

Automated log store >> t.me/lummamarketplace_bot
Tens of thousands of logs for sale, rating system, search by filters and countries, hundreds of sellers with their own storefronts. Unique development based on MaaS from LummaC2.
Purchase quality material right now - t.me/lummamarketplace_bot

------------------------------------

[... truncated; full sample at ``sample.txt`` (approx. 18 more lines) ...]
```

### `cystack_802420de`

**Attribution confidence:** `high`

**Field keys:**
`LID`

**Filenames:** `System.txt`

**Sample (sanitized):**

```


- @MAXERSTE (BRADMAX) / <url>
- Configuration: 
- Path: C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe

- OS Version: Windows 11 Home (10.0.26100) x64
- Local Date: 18.03.2025 <ip>
- Time Zone: UTC-5
- Install Date: 30.11.2024 <ip>
- Elevated: false
- Computer: MIKES
- User: micha
- Domain: 
- Hostname: Mikes
- NetBIOS: MIKES
- Language: en-US
- Anti Virus:
	- Windows Defender
- HWID: AD3A692E9BB335CB8C9A1C42E7B3F29E
- RAM Size: 12288MB
- CPU Vendor: AuthenticAMD
- CPU Name: AMD Athlon Silver 3050U with Radeon Graphics   
- CPU Threads: 2
- CPU Cores: 1
- GPU:
	- AMD Radeon(TM) Vega 3 Graphics
- Display resolution: 1366x768

- IP Address: <ip>
- Time: 18.03.2025 <ip> (sig:1742307760.8839f447a216b645675b3fa5b6cf834c)
- Country: JM
LID: FATE99--Main
```

### `cystack_b2f2fa78`

**Attribution confidence:** `high`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Computer`, `Country`, `Display resolution`, `Elevated`, `HWID`, `Hostname`, `IP Address`, `Install Date`, `LID`, `Language`, `Local Date`, `LummaC2 Build`, `NetBIOS`, `OS Version`, `Path`, `RAM Size`, `Time`, `Time Zone`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT
-- <url> | <url> |@BRADMAXCLOUD_BOT

LummaC2 Build: Jun 11 2025
Path: <redacted>
OS Version: Windows 11 Pro (10.0.22631) x64
Local Date: 16.06.2025 <ip>
Time Zone: UTC+4
Install Date: 05.10.2023 <ip>
Elevated: false
Computer: DESKTOP-TVPSAF8
User: User
Hostname: <redacted>
NetBIOS: DESKTOP-TVPSAF8
Language: en-AE
HWID: <redacted>
RAM Size: 16384MB
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 5600X 6-Core Processor             
CPU Threads: 12
CPU Cores: 6
Display resolution: 2560x1440
IP Address: <redacted>
Time: 16.06.2025 <ip> (sig:1750080426.1e13882fa064badf1bcdf155530f6200)
Country: <ip>
LID: yau6Na--1378348465
```

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `System.txt`, `system_info.txt`

**Sample (sanitized):**

```

 
- Path: C:\Users\<user>\AppData\Local\Temp\118083\Secretariat.com

- Elevated: false
- Computer: DESKTOP-PQTQDKI
- User: denan
- Domain: 
- Hostname: DESKTOP-PQTQDKI
- NetBIOS: DESKTOP-PQTQDKI
- Language: pt-BR
- Anti Virus:
	- Windows Defender
- HWID: 7183DCE3556ED14C23B78A6C75E2DD1E
- RAM Size: 8192MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
- CPU Threads: 8
- CPU Cores: 4
- GPU:
- Display resolution: 1024x768

- IP Address: <ip>
- Time: 19.07.2025 <ip> (sig:1752891423.31dc75bf4e926c574f2456308d5f28ea)
- Country: <ip>
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

- [`remus-stealer`](../remus_stealer/)
- [`csalstealer`](../csalstealer/)
- [`csbabastealer`](../csbabastealer/)
- [`csarthousecloudstealer`](../csarthousecloudstealer/)
- [`cscashflowstealer`](../cscashflowstealer/)

## References

- @lummanowork
- @lummamarketplace_bot
- https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/
