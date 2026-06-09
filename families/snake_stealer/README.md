# Snake Stealer

Snake Stealer is a Telegram-distributed info-stealer observed
inside `@BRADMAX` aggregator packs. The system file opens with
an ASCII-art banner spelling SNAKE and divides the body into
seven triple-equals-bracketed sections. Not to be confused with
WhiteSnake or the Snake Keylogger family, both of which use
different formats and filenames.

**Also known as:** `Snake Stealer`

**Variants observed:** 3
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and clients
- System hardware and locale inventory

## Variants

### `cystack_2eae82db`

**Attribution confidence:** `high`

**Field keys:**
`Adapter`, `Build`, `CPU`, `CPU Cores`, `CPU Threads`, `Computer Name`, `Current Time`, `GPU(s)`, `OS Version`, `Processor Count`, `Product Name`, `SearchIndexer (PID`, `Sysmon64 (PID`, `System Directory`, `Time Zone`, `Total RAM`, `Uptime`, `User Domain`, `User Name`, `Version`, `WinSAT (PID`, `WmiPrvSE (PID`

**Filenames:** `Systeminfo.txt`

**Sample (sanitized):**

```

░██████╗███╗░░██╗░█████╗░██╗░░██╗███████╗
██╔════╝████╗░██║██╔══██╗██║░██╔╝██╔════╝
╚█████╗░██╔██╗██║███████║█████═╝░█████╗░░
░╚═══██╗██║╚████║██╔══██║██╔═██╗░██╔══╝░░
██████╔╝██║░╚███║██║░░██║██║░╚██╗███████╗
╚═════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝

=== INFO ===
Computer Name: <redacted>
User Name: <redacted>
OS Version: Microsoft Windows NT 6.1.7601 Service Pack 1
64-bit OS: True
64-bit Process: False
Processor Count: 4
System Directory: C:\Windows\system32
User Domain: vault

=== WINDOWS VERSION ===
Product Name: Windows 7 Professional
Version: Unknown
Build: 7601

=== HARDWARE INFORMATION ===
CPU: AMD EPYC-Milan Processor
CPU Cores: 2
CPU Threads: 2
Total RAM: 1 GB
GPU(s): Standard VGA Graphics Adapter

=== NETWORK INFORMATION ===
Adapter: Local Area Connection
  IP Address: <redacted>
  Subnet Mask: <ip>
  MAC Address: <redacted>

=== RUNNING PROCESSES (Top 20) ===
svchost (PID: 860, Memory: 67 MB)
WinSAT (PID: 1996, Memory: 48 MB)
explorer (PID: 1976, Memory: 42 MB)
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_39d2da82`

**Attribution confidence:** `high`

**Field keys:**
`Adapter`, `Build`, `CPU`, `CPU Cores`, `CPU Threads`, `Computer Name`, `Current Time`, `GPU(s)`, `OS Version`, `OSPPSVC (PID`, `Processor Count`, `Product Name`, `Sysmon64 (PID`, `System Directory`, `Time Zone`, `Total RAM`, `Uptime`, `User Domain`, `User Name`, `Version`, `WmiPrvSE (PID`

**Filenames:** `Systeminfo.txt`

**Sample (sanitized):**

```

░██████╗███╗░░██╗░█████╗░██╗░░██╗███████╗
██╔════╝████╗░██║██╔══██╗██║░██╔╝██╔════╝
╚█████╗░██╔██╗██║███████║█████═╝░█████╗░░
░╚═══██╗██║╚████║██╔══██║██╔═██╗░██╔══╝░░
██████╔╝██║░╚███║██║░░██║██║░╚██╗███████╗
╚═════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝

=== INFO ===
Computer Name: <redacted>
User Name: <redacted>
OS Version: Microsoft Windows NT 6.1.7601 Service Pack 1
64-bit OS: True
64-bit Process: False
Processor Count: 4
System Directory: C:\Windows\system32
User Domain: vault

=== WINDOWS VERSION ===
Product Name: Windows 7 Professional
Version: Unknown
Build: 7601

=== HARDWARE INFORMATION ===
CPU: AMD EPYC-Milan Processor
CPU Cores: 2
CPU Threads: 2
Total RAM: 1 GB
GPU(s): Standard VGA Graphics Adapter

=== NETWORK INFORMATION ===
Adapter: Local Area Connection
  IP Address: <redacted>
  Subnet Mask: <ip>
  MAC Address: <redacted>

=== RUNNING PROCESSES (Top 20) ===
svchost (PID: 868, Memory: 69 MB)
explorer (PID: 1096, Memory: 42 MB)
cuckoo-2aaaba3552a662b72 (PID: 1516, Memory: 36 MB)
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

### `cystack_fbdfb631`

**Attribution confidence:** `high`

**Field keys:**
`Adapter`, `Build`, `CPU`, `CPU Cores`, `CPU Threads`, `Computer Name`, `Current Time`, `GPU(s)`, `OS Version`, `OSPPSVC (PID`, `Processor Count`, `Product Name`, `SearchIndexer (PID`, `Sysmon64 (PID`, `System Directory`, `Time Zone`, `Total RAM`, `Uptime`, `User Domain`, `User Name`, `Version`, `WinSAT (PID`, `WmiPrvSE (PID`

**Filenames:** `Systeminfo.txt`

**Sample (sanitized):**

```

░██████╗███╗░░██╗░█████╗░██╗░░██╗███████╗
██╔════╝████╗░██║██╔══██╗██║░██╔╝██╔════╝
╚█████╗░██╔██╗██║███████║█████═╝░█████╗░░
░╚═══██╗██║╚████║██╔══██║██╔═██╗░██╔══╝░░
██████╔╝██║░╚███║██║░░██║██║░╚██╗███████╗
╚═════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝

=== INFO ===
Computer Name: <redacted>
User Name: <redacted>
OS Version: Microsoft Windows NT 6.1.7601 Service Pack 1
64-bit OS: True
64-bit Process: False
Processor Count: 4
System Directory: C:\Windows\system32
User Domain: vault

=== WINDOWS VERSION ===
Product Name: Windows 7 Professional
Version: Unknown
Build: 7601

=== HARDWARE INFORMATION ===
CPU: AMD EPYC-Milan Processor
CPU Cores: 2
CPU Threads: 2
Total RAM: 1 GB
GPU(s): Standard VGA Graphics Adapter

=== NETWORK INFORMATION ===
Adapter: Local Area Connection
  IP Address: <redacted>
  Subnet Mask: <ip>
  MAC Address: <redacted>

=== RUNNING PROCESSES (Top 20) ===
svchost (PID: 868, Memory: 67 MB)
WinSAT (PID: 1540, Memory: 48 MB)
explorer (PID: 1948, Memory: 43 MB)
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

## Detection

The ASCII-art SNAKE banner together with the seven
`=== Section ===` block headers is unambiguous, even when the
body fields are sparse.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
