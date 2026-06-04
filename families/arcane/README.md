# Arcane

Arcane is a Russian-targeted info-stealer first publicly
documented in March 2025 by Kaspersky Securelist. The
family is a successor to the VGS stealer, itself a
Phemedrone derivative. Distribution runs through YouTube
videos and Discord servers advertising game cheats and
VPN cracks: a password-protected archive contains a
`start.bat` that downloads a second payload via PowerShell
and drops both a miner and the Arcane binary. Most
observed victims are in Russia, Belarus, and Kazakhstan.
A distinguishing on-host artifact is the embedded
`xaitax.exe` utility (also seen as `xaitx.exe`) that
Arcane drops to disk to crack Chromium DPAPI keys by
reading the keys off the utility's console output.

The operator-facing system summary is a flat
`Information.txt` opened with a triple-dash
`---User Info---` section (Worker, Date Install, ISO Key,
Clipboard, External IP, Internal IP, Gateway IP) and a
triple-dash `---Full Pc Info---` section whose body is a
series of triple-equals `=== <subsection> Information ===`
blocks carrying raw WMI query output for CPU, GPU, RAM,
Disk, Network Adapter, Windows Version, Motherboard, BIOS,
User Account, Time Zone, Screen, AntiVirus, and Logical
Processes. Failed WMI queries leave a Russian-language
`Произошла ошибка` ('An error occurred') line in place of
the subsection body.

**Also known as:** `Arcane Stealer`, `VGS Stealer (predecessor)`

**Variants observed:** 43
**Top attribution confidence:** `high`
**Operator panel brands:** `@BRADLOGS (BRADMAX)`
**Distribution channels:** `https://t.me/+0IAf5VIrl_EzNWRi`

## Targets

- Browser saved credentials, cookies, autofill, history (Chromium and Gecko)
- Browser DPAPI keys cracked via embedded xaitax utility
- VPN client configs (OpenVPN, Mullvad, NordVPN, IPVanish, Surfshark, Proton, hide.me, PIA, CyberGhost, ExpressVPN)
- Network utility configs (ngrok, Playit, Cyberduck, FileZilla, DynDNS)
- Gaming client tokens (Riot Client, Epic, Steam, Ubisoft Connect, Roblox, Battle.net)
- Cryptocurrency wallets
- Telegram and Discord session data
- System hardware inventory and saved Wi-Fi networks

## Variants

### `@BRADLOGS (BRADMAX)`

**Fingerprint id:** `bradlogs_bradmax`

**Distribution channel:** `https://t.me/+0IAf5VIrl_EzNWRi`

**Attribution confidence:** `high`

**Field keys:**
`ADMH`, `Anime Eyes`, `Broken Glasses`, `CEP`, `CNPJ`, `Cidade`, `Dados para faturamento`, `Disguise`, `Eye Patch`, `FUNDO`, `HITS`, `Inverted Eyes`, `Realistic Eyes`, `Ribbon Bow`, `Stuck Out Tongue`, `Unhandled Exception`, `Vampire Fangs`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

                                    
     @BRADLOGS (BRADMAX) / <url>


---User Info---

	Worker: %Worker%
	Date Install: 7/14/2025 <ip> PM
	ISO Key: en
	Clipboard: 
	External IP: <redacted>
	Internal IP: <ip>
	Gateway IP: <ip>

---Full Pc Info---

	=== CPU Information ===
		MaxClockSpeed: 2112
		Name: Intel(R) Core(TM) i5-10210U CPU @ 1.60GHz
		NumberOfCores: 4


	=== GPU Information ===
		AdapterRAM: 1073741824
		Name: Intel(R) UHD Graphics


	=== RAM Information ===
		Capacity: 8589934592


	=== Disk Information ===
		Model: INTEL SSDPEKNW512G8H
		Size: 512105932800


	=== Network Adapter Information ===
		MACAddress: <ip>
		Name: WAN Miniport (IP)
[... truncated; full sample at ``sample.txt`` (approx. 641 more lines) ...]
```

### `cystack_02e9220b`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Date Install: 6/5/2025 <ip> PM
ISO Key: ar
Clipboard: youga.45
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3401
Name: Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA GeForce GT 730
=== RAM Information ===
Capacity: 4294967296
Capacity: 8589934592
Capacity: 4294967296
=== Disk Information ===
Model: Dahua C800 2.5 inch SATA 256GB SSD
Size: 256052966400
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) 82579LM Gigabit Network Connection
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: USB 802.11N Wireless USB Adapter
Speed: 72000000
MACAddress: <ip>
Name: TAP-Windows Adapter V9
Speed: 100000000
[... truncated; full sample at ``sample.txt`` (approx. 72 more lines) ...]
```

### `cystack_0449c360`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3593
Name: AMD Ryzen 5 3600 6-Core Processor
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 2147483648
Name: NVIDIA GeForce GT 710
=== RAM Information ===
Capacity: 8589934592
=== Disk Information ===
Model: PNY CS900 M.2 250GB SSD
Size: 250056737280
=== Network Adapter Information ===
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Realtek Gaming GbE Family Controller
Speed: 100000000
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
OSArchitecture: 64-bit
Version: 10.0.19045
Manufacturer: Gigabyte Technology Co., Ltd.
Product: B450M DS3H V2
SerialNumber: Default string
[... truncated; full sample at ``sample.txt`` (approx. 70 more lines) ...]
```

### `cystack_0b07137c`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 6/5/2025 <ip> PM
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 1000
Name: 12th Gen Intel(R) Core(TM) i5-1230U
NumberOfCores: 10
=== GPU Information ===
AdapterRAM: 134217728
Name: Intel(R) Iris(R) Xe Graphics
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: MTFDKBA512TFH-1BC1AABHA
Size: 512105932800
=== Network Adapter Information ===
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Intel(R) Wi-Fi 6E AX211 160MHz
Speed: 725850000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #5
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #6
=== Windows Version Information ===
[... truncated; full sample at ``sample.txt`` (approx. 64 more lines) ...]
```

### `cystack_0c04da39`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 6/5/2025 <ip> PM
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3000
Name: Intel(R) Core(TM) i5-8500 CPU @ 3.00GHz
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) UHD Graphics 630
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: WDC WDS240G2G0C-00AJM0
Size: 240054796800
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 100000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
OSArchitecture: 64-bit
Version: 10.0.19045
=== Motherboard Information ===
[... truncated; full sample at ``sample.txt`` (approx. 64 more lines) ...]
```

### `cystack_136a5150`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Date Install: 6/5/2025 <ip> PM
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2400
Name: Intel(R) Pentium(R) CPU 2020M @ 2.40GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 2214592512
Name: Intel(R) HD Graphics
=== RAM Information ===
Capacity: 4294967296
Capacity: 2147483648
=== Disk Information ===
Model: TwinMOS SSD
Size: 128034708480
=== Network Adapter Information ===
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: 802.11n USB Wireless LAN Card #2
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #3
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller #2
[... truncated; full sample at ``sample.txt`` (approx. 67 more lines) ...]
```

### `cystack_15636cf8`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Date Install`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 5/6/2025 <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2801
Name: Intel(R) Core(TM) i7-2640M CPU @ 2.80GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 2210398208
Name: Intel(R) HD Graphics 3000
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: ADATA HD710M PRO USB Device
Size: 1000202273280
Model: CT480BX500SSD1 ATA Device
Size: 480101368320
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) 82579LM Gigabit Network Connection
MACAddress: <ip>
Name: Intel(R) Centrino(R) Advanced-N 6205
Speed: 270000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
[... truncated; full sample at ``sample.txt`` (approx. 77 more lines) ...]
```

### `cystack_1578f5ea`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `Gateway IP`, `HandleCount`, `IPEnabled`, `ISO Key`, `Internal IP`, `LastBootUpTime`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `NumberOfLogicalProcessors`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 29.05.2025 <ip>
ISO Key: en
Clipboard: Здравствуйте у меня проблема
при заходе на аккаунт у меня пишет что попробуйте через 20-22 часа хотя я уже ждал и так уже происходит на протяжение недели можете пожалуйста удалить аккаунт так как у меня его к тому-же и украли сменив аватарку и имя
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::1%13
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2500
Name: 12th Gen Intel(R) Core(TM) i5-12400F
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA GeForce GTX 1650
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: T-FORCE TM8FPL500G
Size: 500105249280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller #2
Speed: 100000000
=== Windows Version Information ===
Caption: Майкрософт Windows 11 Домашняя
OSArchitecture: 64-разрядная
Version: 10.0.22631
=== Motherboard Information ===
Manufacturer: Micro-Star International Co., Ltd.
Product: PRO H610M-E DDR4 (MS-7D48)
SerialNumber: Default string
=== BIOS Information ===
Manufacturer: American Megatrends International, LLC.
ReleaseDate: 20230516000000.000000+000
SMBIOSBIOSVersion: A.A1
=== User Account Information ===
[... truncated; full sample at ``sample.txt`` (approx. 520 more lines) ...]
```

### `cystack_18688c6e`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 6/5/2025 <ip> PM
ISO Key: en
Clipboard: 5 goals in 9 minutes
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2304
Name: Intel(R) Core(TM) i3-6100U CPU @ 2.30GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 2147483648
Name: NVIDIA GeForce 930MX
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 520
=== RAM Information ===
Capacity: 4294967296
=== Disk Information ===
Model: TOSHIBA MQ01ABD050V
Size: 500105249280
Model: Apacer AS340 120GB
Size: 120031511040
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek RTL8723BE Wireless LAN 802.11n PCI-E NIC
Speed: 150000000
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
[... truncated; full sample at ``sample.txt`` (approx. 82 more lines) ...]
```

### `cystack_1ece189c`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `HandleCount`, `IPEnabled`, `ISO Key`, `Internal IP`, `LastBootUpTime`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `NumberOfLogicalProcessors`, `OSArchitecture`, `ReleaseDate`, `SMBIOSBIOSVersion`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 5/29/2025 <ip> PM
ISO Key: en
Clipboard: g
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2800
Name: Intel(R) Xeon(R) CPU @ 2.80GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 0
Name: Microsoft Basic Display Adapter
=== RAM Information ===
Capacity: 4399824896
=== Disk Information ===
Model: WDC WD20EARS
Size: 85896599040
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) 82574L Gigabit Network Connection
Speed: 1000000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
OSArchitecture: 64-bit
Version: 10.0.19044
=== Motherboard Information ===
=== BIOS Information ===
[... truncated; full sample at ``sample.txt`` (approx. 393 more lines) ...]
```

### `cystack_3bd693b6`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Date Install`, `Default`, `Description`, `DeviceID`, `FileSystem`, `FreeSpace`, `FullName`, `IPEnabled`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 5/6/2025 <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3801
Name: AMD Ryzen 7 5700G with Radeon Graphics
NumberOfCores: 8
=== GPU Information ===
AdapterRAM: 536870912
Name: AMD Radeon(TM) Graphics
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: HS-SSD-WAVE(P) 1024G
Size: 1024203640320
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
MACAddress: <ip>
Name: TP-Link Wireless USB Adapter
Speed: 120000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
Caption: Microsoft Windows 11 Home
OSArchitecture: 64 bits
Version: 10.0.26100
Manufacturer: ASUSTeK COMPUTER INC.
[... truncated; full sample at ``sample.txt`` (approx. 58 more lines) ...]
```

### `cystack_40dc705d`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
ISO Key: en
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3000
Name: Intel(R) Core(TM) i5-7400 CPU @ 3.00GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 630
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: BR 256GB
Size: 256052966400
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 1000000000
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Intel(R) Dual Band Wireless-AC 7260 #2
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #3
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #4
=== Windows Version Information ===
OSArchitecture: 64-bit
Version: 10.0.19045
Manufacturer: ZR
Product: ZRA1104
SerialNumber: Default string
=== BIOS Information ===
[... truncated; full sample at ``sample.txt`` (approx. 49 more lines) ...]
```

### `cystack_503a7665`

**Attribution confidence:** `high`

**Field keys:**
`BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `HandleCount`, `IPEnabled`, `ISO Key`, `Internal IP`, `LastBootUpTime`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `NumberOfLogicalProcessors`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 29/05/2025 <ip>
ISO Key: fr
Clipboard: <email>
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2201
Name: Intel(R) Core(TM) i7-4702MQ CPU @ 2.20GHz
NumberOfCores: 4
=== GPU Information ===
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: WDC WD5000LPVX-75V0TT0
Size: 500105249280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Qualcomm Atheros AR5BWB222 Wireless Network Adapter
Speed: 144400000
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Broadcom NetLink (TM) Gigabit Ethernet
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
[... truncated; full sample at ``sample.txt`` (approx. 627 more lines) ...]
```

### `cystack_5119e83c`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `HandleCount`, `IPEnabled`, `ISO Key`, `Internal IP`, `LastBootUpTime`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `NumberOfLogicalProcessors`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 5/29/2025 <ip> AM
ISO Key: en
Clipboard: <url>
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3501
Name: Intel(R) Core(TM) i5-4690 CPU @ 3.50GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 4600
=== RAM Information ===
Capacity: 2147483648
Capacity: 2147483648
Capacity: 4294967296
=== Disk Information ===
Model: SanDisk SSD PLUS 120 GB
Size: 120039736320
Model: Hitachi HDS721050CLA662
Size: 500105249280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) Ethernet Connection I217-LM
Speed: 100000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
[... truncated; full sample at ``sample.txt`` (approx. 512 more lines) ...]
```

### `cystack_5914a963`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
ISO Key: en
Clipboard: <url>
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 1190
Name: Intel(R) Core(TM) i3-1005G1 CPU @ 1.20GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) UHD Graphics
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: TS128GMTE110S
Size: 128034708480
Model: MMC Card
Size: 1998743040
Model: WDC WD10SPZX-75Z10T3
Size: 1000202273280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Qualcomm QCA9377 802.11ac Wireless Adapter
Speed: 150000000
MACAddress: <ip>
Name: Realtek PCIe FE Family Controller
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
[... truncated; full sample at ``sample.txt`` (approx. 78 more lines) ...]
```

### `cystack_5d41b2c9`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `ChassisTypes`, `Clipboard`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
ISO Key: zh
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3408
Name: Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 630
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: Coocaa-256G
Size: 256052966400
=== Network Adapter Information ===
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Intel(R) Dual Band Wireless-AC 7260
MACAddress: <ip>
Name: Realtek PCIe GBE Family Controller
Speed: 100000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
[... truncated; full sample at ``sample.txt`` (approx. 56 more lines) ...]
```

### `cystack_6d23dc0d`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Data Check-in`, `Data Check-out`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `Quarto individual 1`, `Quarto individual 2`, `Quarto individual 3`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 05/06/2025 <ip>
Clipboard: Segue:
Quarto individual 1: Gonzaga Ribeiro Pires
Quarto individual 2: João Paulo Gehlen
Quarto individual  3: Giovanni Pegoraro
Data Check-in: 09/06/2025
Data Check-out: 13/06/2025
Diária em quarto individual superior: R$170,00
Cobrar no cartão abaixo, somente diárias.
VL 0429. Seg 861
KATIA R KOERICH
NF em nome do hóspede
Aguardo confirmação.
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3193
Name: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 2214592512
Name: Intel(R) HD Graphics
=== RAM Information ===
Capacity: 8589934592
=== Disk Information ===
Model: SSD NTC 120GB
Size: 120031511040
Model: ST1000VM002-1SD102
Size: 1000202273280
Model: SanDisk Cruzer Blade USB Device
Size: 3997486080
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 1000000000
MACAddress: <ip>
Name: WAN Miniport (IP)
[... truncated; full sample at ``sample.txt`` (approx. 79 more lines) ...]
```

### `cystack_77a73812`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
ISO Key: en
Clipboard: 5 goals in 9 minutes
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2304
Name: Intel(R) Core(TM) i3-6100U CPU @ 2.30GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 2147483648
Name: NVIDIA GeForce 930MX
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 520
=== RAM Information ===
Capacity: 4294967296
=== Disk Information ===
Model: TOSHIBA MQ01ABD050V
Size: 500105249280
Model: Apacer AS340 120GB
Size: 120031511040
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek RTL8723BE Wireless LAN 802.11n PCI-E NIC
Speed: 150000000
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
[... truncated; full sample at ``sample.txt`` (approx. 80 more lines) ...]
```

### `cystack_8729d4c3`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 05.06.2025 <ip>
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::1%6
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 1101
Name: Intel(R) Pentium(R) Silver N5000 CPU @ 1.10GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) UHD Graphics 605
=== RAM Information ===
Capacity: 4294967296
=== Disk Information ===
Model: TOSHIBA EXTERNAL_USB USB Device
Size: 2000396321280
Model: SanDisk SD9SN8W256G
Size: 256052966400
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) Dual Band Wireless-AC 3168
Speed: 90000000
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
[... truncated; full sample at ``sample.txt`` (approx. 64 more lines) ...]
```

### `cystack_8c7dcc2b`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Data Check-in`, `Data Check-out`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `Quarto individual 1`, `Quarto individual 2`, `Quarto individual 3`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 05/06/2025 <ip>
ISO Key: pt
Clipboard: Segue:
Quarto individual 1: Gonzaga Ribeiro Pires
Quarto individual 2: João Paulo Gehlen
Quarto individual  3: Giovanni Pegoraro
Data Check-in: 09/06/2025
Data Check-out: 13/06/2025
Diária em quarto individual superior: R$170,00
Cobrar no cartão abaixo, somente diárias.
VL 0429. Seg 861
KATIA R KOERICH
NF em nome do hóspede
Aguardo confirmação.
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3193
Name: Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 2214592512
Name: Intel(R) HD Graphics
=== RAM Information ===
Capacity: 8589934592
=== Disk Information ===
Model: SSD NTC 120GB
Size: 120031511040
Model: ST1000VM002-1SD102
Size: 1000202273280
Model: SanDisk Cruzer Blade USB Device
Size: 3997486080
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 1000000000
[... truncated; full sample at ``sample.txt`` (approx. 82 more lines) ...]
```

### `cystack_8cd26306`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Date Install`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Date Install: 05-06-2025 <ip>
ISO Key: ar
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3001
Name: Intel(R) Core(TM) i5-4430 CPU @ 3.00GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 4600
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: ST3250318AS
Size: 250056737280
=== Network Adapter Information ===
MACAddress: <ip>
Name: 802.11n USB Wireless LAN Card
Speed: 312000000
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
[... truncated; full sample at ``sample.txt`` (approx. 59 more lines) ...]
```

### `cystack_8ef32c6e`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
External IP: <redacted>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3696
Name: Intel(R) Xeon(R) W-2255 CPU @ 3.70GHz
NumberOfCores: 10
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA RTX A5000
=== RAM Information ===
Capacity: 17179869184
Capacity: 17179869184
Capacity: 17179869184
Capacity: 17179869184
=== Disk Information ===
Model: WDC WD10EZEX-60WN4A0
Size: 1000202273280
Model: NVMe KXG60PNV512G NVM
Size: 512105932800
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) Ethernet Connection (5) I219-LM
Speed: 1000000000
=== Windows Version Information ===
Caption: Microsoft Windows 11 Pro
OSArchitecture: 64-bit
Version: 10.0.26100
Manufacturer: Dell Inc.
Product: 06JWJY
SerialNumber: /7SFRSH3/CNFCW000B500H5/
=== BIOS Information ===
Manufacturer: Dell Inc.
ReleaseDate: 20250214000000.000000+000
SMBIOSBIOSVersion: 2.41.0
=== User Account Information ===
FullName:
Name: Administrator
FullName:
[... truncated; full sample at ``sample.txt`` (approx. 56 more lines) ...]
```

### `cystack_92d9c0c1`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 6/5/2025 <ip>
ISO Key: en
Clipboard: Íåïîêîëåáèìûé
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3101
Name: Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: AMD Radeon HD 6570
=== RAM Information ===
Capacity: 4294967296
Capacity: 2147483648
Capacity: 2147483648
Capacity: 4294967296
=== Disk Information ===
Model: Intel Raid 1 Volume
Size: 250048512000
Model: ST2000DM001-1CH164
Size: 2000396321280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 100000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
[... truncated; full sample at ``sample.txt`` (approx. 82 more lines) ...]
```

### `cystack_a4de6217`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3592
Name: Intel(R) Core(TM) i3-4160 CPU @ 3.60GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 4400
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: WAR 128GB
Size: 128034708480
Model: KingFast
Size: 128034708480
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe FE Family Controller
Speed: 100000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Tenda Wireless USB Adapter
Speed: 68500000
MACAddress: <ip>
[... truncated; full sample at ``sample.txt`` (approx. 78 more lines) ...]
```

### `cystack_a9b66300`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `HandleCount`, `IPEnabled`, `ISO Key`, `Internal IP`, `LastBootUpTime`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `NumberOfLogicalProcessors`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 29/05/2025 <ip>
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2100
Name: 13th Gen Intel(R) Core(TM) i7-13700HX
NumberOfCores: 16
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA RTX 2000 Ada Generation Laptop GPU
AdapterRAM: 2147479552
Name: Intel(R) UHD Graphics
=== RAM Information ===
Capacity: 17179869184
Capacity: 17179869184
=== Disk Information ===
Model: SAMSUNG MZVL21T0HDLU-00BH1
Size: 1024203640320
Model: ADATA USB Flash Drive USB Device
Size: 15512878080
=== Network Adapter Information ===
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Intel(R) Wi-Fi 6E AX211 160MHz
Speed: 362000000
MACAddress: <ip>
Name: Intel(R) Ethernet Connection (22) I219-V
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
=== Windows Version Information ===
[... truncated; full sample at ``sample.txt`` (approx. 673 more lines) ...]
```

### `cystack_ac2da406`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `HandleCount`, `IPEnabled`, `ISO Key`, `Internal IP`, `LastBootUpTime`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `NumberOfLogicalProcessors`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 29/05/2025 <ip>
ISO Key: es
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3600
Name: AMD Ryzen 5 5500
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA GeForce RTX 4060
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: KINGSTON SNV3S1000G
Size: 1000202273280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 1000000000
=== Windows Version Information ===
Caption: Microsoft Windows 11 Pro
OSArchitecture: 64 bits
Version: 10.0.26100
=== Motherboard Information ===
Manufacturer: ASUSTeK COMPUTER INC.
Product: PRIME B450M-A II
SerialNumber: 240943369500175
=== BIOS Information ===
Manufacturer: American Megatrends Inc.
ReleaseDate: 20240322000000.000000+000
SMBIOSBIOSVersion: 4604
=== User Account Information ===
FullName:
[... truncated; full sample at ``sample.txt`` (approx. 642 more lines) ...]
```

### `cystack_ac63f435`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Default`, `Description`, `DeviceID`, `FileSystem`, `FreeSpace`, `FullName`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Internal IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2808
Name: Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 0
Name: Microsoft Basic Display Adapter
=== RAM Information ===
Capacity: 8589934592
=== Disk Information ===
Model: Generic- Multiple Reader USB Device
Size:
Model: ST1000DM003-1SB10C
Size: 1000202273280
Model: WDC WD10EZEX-08WN4A0
Size: 1000202273280
Model: WD Elements 1023 USB Device
Size: 500105249280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 1000000000
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
OSArchitecture: 64-bit
Version: 10.0.19045
Manufacturer: LENOVO
Product: 313A
SerialNumber:
=== BIOS Information ===
Manufacturer: LENOVO
ReleaseDate: 20181126000000.000000+000
SMBIOSBIOSVersion: M1YKT39A
=== User Account Information ===
[... truncated; full sample at ``sample.txt`` (approx. 72 more lines) ...]
```

### `cystack_b3ce378e`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 05/06/2025 <ip> PM
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2500
Name: 13th Gen Intel(R) Core(TM) i5-13400F
NumberOfCores: 10
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA GeForce RTX 4060
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: CT4000P3SSD8
Size: 4000784417280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek Gaming 2.5GbE Family Controller
Speed: 1000000000
MACAddress: <ip>
Name: Intel(R) Wi-Fi 6 AX201 160MHz
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
=== Windows Version Information ===
Caption: Microsoft Windows 11 Pro
OSArchitecture: 64-bit
Version: 10.0.26100
=== Motherboard Information ===
[... truncated; full sample at ``sample.txt`` (approx. 62 more lines) ...]
```

### `cystack_b4076b3a`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 05/06/2025 <ip>
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::<ip>%8
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2500
Name: 12th Gen Intel(R) Core(TM) i5-12400F
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 4293918720
Name: AMD Radeon RX 580 2048SP
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: ST9500325AS
Size: 500105249280
Model: SanDisk SSD Plus 500GB A3N
Size: 500105249280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 100000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Hyper-V Virtual Ethernet Adapter
Speed: 10000000000
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
[... truncated; full sample at ``sample.txt`` (approx. 65 more lines) ...]
```

### `cystack_b8186015`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Date Install: 05/06/2025 <ip> ?
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2301
Name: Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 2147483648
Name: NVIDIA GeForce GT 740M
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics Family
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: KINGSTON SA400S37240G
Size: 240054796800
Model: HGST HTS545050A7E380
Size: 500105249280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe FE Family Controller
MACAddress: <ip>
Name: Ralink RT3290 802.11bgn Wi-Fi Adapter
Speed: 332500000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
[... truncated; full sample at ``sample.txt`` (approx. 85 more lines) ...]
```

### `cystack_bcbae85e`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Date Install`, `Default`, `Description`, `DeviceID`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 5/6/2025 <ip>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2904
Name: Intel(R) Core(TM) i5-10400 CPU @ 2.90GHz
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 4293918720
Name: AMD Radeon (TM) R9 380 Series
=== RAM Information ===
Capacity: 17179869184
Capacity: 17179869184
=== Disk Information ===
Model: WDC WD10EFRX-68PJCN0
Size: 1000202273280
Model: XPG SPECTRIX S20G
Size: 500105249280
Model: WD Green SN350 1TB 2G0C
Size: 1000202273280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek Gaming 2.5GbE Family Controller
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: Intel(R) Wi-Fi 6E AX210 160MHz
Speed: 108300000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #3
MACAddress: <ip>
[... truncated; full sample at ``sample.txt`` (approx. 72 more lines) ...]
```

### `cystack_bdbe703a`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Annex 2a`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 6/5/2025 <ip> PM
Clipboard: Dear Sir,
Greetings from Shushilan.
We trust that our proposal reflects the goals and priorities shared between our organizations. Should you require any further information or clarification, we remain at your disposal.
We look forward to the opportunity to collaborate with you in making a meaningful impact on the lives of those most vulnerable to climate change. Please find the Annexs attached below.
Annex 2a: Budget and Financial Report Template.
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::<ip>%7
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2712
Name: Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 620
=== RAM Information ===
Capacity: 8589934592
Capacity: 4294967296
=== Disk Information ===
Model: HS-SSD-C100 120G
Size: 120031511040
Model: HGST HTS721010A9E630
Size: 1000202273280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) Dual Band Wireless-AC 3168
Speed: 86700000
MACAddress: <ip>
Name: Realtek PCIe GBE Family Controller
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
[... truncated; full sample at ``sample.txt`` (approx. 104 more lines) ...]
```

### `cystack_c003336d`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Description`, `DeviceID`, `FileSystem`, `FreeSpace`, `FullName`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Internal IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 2500
Name: 13th Gen Intel(R) Core(TM) i5-13400F
NumberOfCores: 10
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA GeForce RTX 4060
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: CT4000P3SSD8
Size: 4000784417280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek Gaming 2.5GbE Family Controller
Speed: 1000000000
MACAddress: <ip>
Name: Intel(R) Wi-Fi 6 AX201 160MHz
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Bluetooth Device (Personal Area Network)
Speed: 3000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
=== Windows Version Information ===
Caption: Microsoft Windows 11 Pro
OSArchitecture: 64-bit
Version: 10.0.26100
Manufacturer: ASUSTeK COMPUTER INC.
Product: PRIME B760M-A WIFI D4
SerialNumber: 240537639000747
=== BIOS Information ===
Manufacturer: American Megatrends Inc.
ReleaseDate: 20240418000000.000000+000
SMBIOSBIOSVersion: 1656
[... truncated; full sample at ``sample.txt`` (approx. 54 more lines) ...]
```

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `Information.txt`, `information.txt`

**Sample (sanitized):**

```
藃蓂쌟枬甥䈮쉯䪌铃쉏쎿䦴裂Ԇꃂ수슜쎳슲쎍箖跂ꋃꏂ屙숒Ɛ듃鏂냃ⱆ嵞軃藃뫂鏃숄嶀뫃黃飃쌖墦铃菂䌡≨铃彍ꃂꏃ❓ἁ럃ꇂ᝭ॢ䨖ꏂ썣쎮쎺碈ꛂ썌ᾈ㉃맃곃쉄쎎瞁쌂䖶듂駃숤쎺슌슗຺n썅ল썷㲿䀒諂挹鋂蛃⬔돂숊슨쎹ᖲ眵맂맂썒슂슂슣쎷쎶䆣戆晤쉜悮郂鷂鏂곃賂귂썞슦슎쎓슧슖㺱㭾닃伶썷֫ꃃ听雃쉋᪹畏鯂썲슏璶藂썛½쉃䆚곂ᠢ扩뫂┌뿂썸嚏鷂蛃믃鯂쌤䞙胂숅⦠숎쎊ᆝ썾슖쎫㚯㙵賂썴઒ⴊⴭ獕牥䤠普ⵯⴭਊ圉牯敫㩲┠潗歲牥ਥ䐉瑡⁥湉瑳污㩬㜠ㄯ⼴〲㔲ㄠ㨰㤳㐺‰䵁ऊ卉⁏敋㩹攠੮䌉楬扰慯摲›ऊ硅整湲污䤠㩐ㄠㄵ㈮㌵㈮㌴㈮㈲ऊ湉整湲污䤠㩐ㄠ㈹ㄮ㠶㈮⸰㌲ਲ䜉瑡睥祡䤠㩐ㄠ㈹ㄮ㠶㈮⸰਱ⴊⴭ畆汬倠⁣湉潦ⴭਭऊ㴽‽偃⁕湉潦浲瑡潩⁮㴽਽उ慍䍸潬正灓敥㩤ㄠ〳രऊ三浡㩥ㄠ琳⁨敇⁮湉整⡬⥒䌠牯⡥䵔
㕩ㄭ㌳唴਍उ畎扭牥晏潃敲㩳ㄠരഊਊ㴉㴽䜠啐䤠普牯慭楴湯㴠㴽ऊ䄉慤瑰牥䅒㩍㈠㐱㐷㤷㔵ലऊ三浡㩥䤠瑮汥刨
[... truncated; full sample at ``sample.txt`` (approx. 1 more lines) ...]
```

### `cystack_c8278fe6`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Date Install`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 05-06-2025 <ip>
ISO Key: ar
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3001
Name: Intel(R) Core(TM) i5-4430 CPU @ 3.00GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 4600
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: ST3250318AS
Size: 250056737280
=== Network Adapter Information ===
MACAddress: <ip>
Name: 802.11n USB Wireless LAN Card
Speed: 312000000
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
[... truncated; full sample at ``sample.txt`` (approx. 61 more lines) ...]
```

### `cystack_d061dd05`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Date Install: 6/5/2025 <ip> PM
ISO Key: en
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::1%8
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3504
Name: 11th Gen Intel(R) Core(TM) i9-11900K @ 3.50GHz
NumberOfCores: 8
=== GPU Information ===
AdapterRAM: 4293918720
Name: NVIDIA GeForce RTX 3060
=== RAM Information ===
Capacity: 34359738368
Capacity: 34359738368
Capacity: 34359738368
Capacity: 34359738368
=== Disk Information ===
Model: Samsung SSD 970 EVO Plus 2TB
Size: 2000396321280
Model: WD_BLACK SN770 1TB
Size: 1000202273280
Model: Samsung SSD 870 EVO 1TB
Size: 1000202273280
Model: Samsung SSD 970 EVO Plus 2TB
Size: 2000396321280
Model: Samsung SSD 870 QVO 2TB
Size: 2000396321280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) Wi-Fi 6E AX210 160MHz
Speed: 144400000
MACAddress: <ip>
Name: Intel(R) Ethernet Controller (3) I225-V
Speed: 2500000000
MACAddress: <ip>
Name: Intel(R) Ethernet Controller (3) I225-V #2
[... truncated; full sample at ``sample.txt`` (approx. 110 more lines) ...]
```

### `cystack_d88f8bcc`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Pass`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 6/5/2025 <ip> AM
ISO Key: en
Clipboard: <email>
Pass: devilhere47k
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3700
Name: Intel(R) Core(TM) i3-4170 CPU @ 3.70GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 4400
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: LITEON CV8-8E128-11 SATA 128GB
Size: 128034708480
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GBE Family Controller
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: 4G MIFI USB Ethernet/RNDIS
Speed: 425984000
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
[... truncated; full sample at ``sample.txt`` (approx. 62 more lines) ...]
```

### `cystack_daec173d`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 05/06/2025 <ip>
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3900
Name: Intel(R) Core(TM) i3-7100 CPU @ 3.90GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 630
=== RAM Information ===
Capacity: 8589934592
=== Disk Information ===
Model: KINGSTON SA400S37240G
Size: 240054796800
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
Speed: 100000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: TunnelBear Adapter V9
Speed: 1073741824
MACAddress: <ip>
Name: VPN Client Adapter - VPN
Speed: 100000000
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
[... truncated; full sample at ``sample.txt`` (approx. 70 more lines) ...]
```

### `cystack_ddbcb63f`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 6/5/2025 <ip> PM
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::<ip>%21
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 1300
Name: 12th Gen Intel(R) Core(TM) i5-1235U
NumberOfCores: 10
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) Iris(R) Xe Graphics
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: NVMe HFS512GEJ9X108N
Size: 512105932800
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) Wireless-AC 9462
Speed: 205850000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: VMware Virtual Ethernet Adapter for VMnet1
Speed: 100000000
[... truncated; full sample at ``sample.txt`` (approx. 84 more lines) ...]
```

### `cystack_e1e902cd`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `BatteryStatus`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `EstimatedChargeRemaining`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Worker: %Worker%
Date Install: 6/5/2025 <ip> PM
Clipboard:
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 1896
Name: Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) UHD Graphics 620
=== RAM Information ===
Capacity: 8589934592
=== Disk Information ===
Model: SAMSUNG MZVLQ256HAJD-000H1
Size: 256052966400
=== Network Adapter Information ===
MACAddress: <ip>
Name: Intel(R) Ethernet Connection (6) I219-LM
MACAddress: <ip>
Name: Intel(R) Wi-Fi 6 AX200 160MHz
Speed: 156000000
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter
MACAddress: <ip>
Name: Microsoft Wi-Fi Direct Virtual Adapter #2
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
Caption: Microsoft Windows 11 Pro
[... truncated; full sample at ``sample.txt`` (approx. 74 more lines) ...]
```

### `cystack_e3a59380`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Worker`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Worker: %Worker%
Date Install: 05/06/2025 <ip>
ISO Key: ar
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::<ip>%3
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3600
Name: Intel(R) Core(TM) i3-8100 CPU @ 3.60GHz
NumberOfCores: 4
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) UHD Graphics 630
=== RAM Information ===
Capacity: 4294967296
=== Disk Information ===
Model: KingFast
Size: 128034708480
Model: WDC WD5000AZLX-60K2TA0
Size: 500105249280
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek Gaming GbE Family Controller
Speed: 100000000
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
OSArchitecture: 64 bits
Version: 10.0.17763
=== Motherboard Information ===
[... truncated; full sample at ``sample.txt`` (approx. 67 more lines) ...]
```

### `cystack_f7f66d05`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `From`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`, `Vhicile no`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Date Install: 05/06/2025 <ip>
ISO Key: en
Clipboard:               Serves & Labour Cost
From:
Vhicile no : Lo 4472
Model       : Fj Fuso (india)
External IP: <redacted>
Internal IP: <ip>
Gateway IP: fe80::<ip>%10
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3901
Name: AMD Ryzen 5 5600G with Radeon Graphics
NumberOfCores: 6
=== GPU Information ===
AdapterRAM: 2147483648
Name: AMD Radeon(TM) Graphics
=== RAM Information ===
Capacity: 8589934592
Capacity: 8589934592
=== Disk Information ===
Model: TOSHIBA DT01ABA100V
Size: 1000202273280
Model: ADATA SX6000LNP
Size: 128034708480
Model: Samsung SSD 980 250GB
Size: 250056737280
Model: Hitachi HTS545050A7E380
Size: 500105249280
Model: MAXTOR STM3160215AS
Size: 160039272960
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe 2.5GbE Family Controller
MACAddress: <ip>
Name: Realtek RTL8188FTV Wireless LAN 802.11n USB 2.0 Network Adapter
Speed: 150000000
MACAddress: <ip>
Name: Realtek PCIe GbE Family Controller
[... truncated; full sample at ``sample.txt`` (approx. 103 more lines) ...]
```

### `cystack_fda3ddcb`

**Attribution confidence:** `high`

**Field keys:**
`AdapterRAM`, `Capacity`, `Caption`, `ChassisTypes`, `Clipboard`, `Date Install`, `Default`, `Description`, `DeviceID`, `External IP`, `FileSystem`, `FreeSpace`, `FullName`, `Gateway IP`, `IPEnabled`, `ISO Key`, `Internal IP`, `MACAddress`, `Manufacturer`, `MaxClockSpeed`, `Model`, `Name`, `NumberOfCores`, `OSArchitecture`, `Pass`, `Product`, `ReleaseDate`, `SMBIOSBIOSVersion`, `SerialNumber`, `Size`, `Speed`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
---User Info---
Date Install: 6/5/2025 <ip> AM
ISO Key: en
Clipboard: <email>
Pass: devilhere47k
External IP: <redacted>
Internal IP: <ip>
Gateway IP: <ip>
---Full Pc Info---
=== CPU Information ===
MaxClockSpeed: 3700
Name: Intel(R) Core(TM) i3-4170 CPU @ 3.70GHz
NumberOfCores: 2
=== GPU Information ===
AdapterRAM: 1073741824
Name: Intel(R) HD Graphics 4400
=== RAM Information ===
Capacity: 4294967296
Capacity: 4294967296
=== Disk Information ===
Model: LITEON CV8-8E128-11 SATA 128GB
Size: 128034708480
=== Network Adapter Information ===
MACAddress: <ip>
Name: Realtek PCIe GBE Family Controller
MACAddress: <ip>
Name: WAN Miniport (IP)
Speed:
MACAddress: <ip>
Name: WAN Miniport (IPv6)
Speed:
MACAddress: <ip>
Name: WAN Miniport (Network Monitor)
Speed:
MACAddress: <ip>
Name: 4G MIFI USB Ethernet/RNDIS
Speed: 425984000
=== Windows Version Information ===
Caption: Microsoft Windows 10 Pro
OSArchitecture: 64-bit
[... truncated; full sample at ``sample.txt`` (approx. 60 more lines) ...]
```

## Detection

Fingerprint: line-anchored `---User Info---` AND
`---Full Pc Info---`. The triple-dash section pair is
unique to Arcane's Information.txt across the registry.
Two strong triage signals on top: a Russian
`Произошла ошибка` line where WMI subsections failed
(targets are predominantly Russian-speaking), and a
`xaitax.exe` or `xaitx.exe` process in the `=== Logical
Processes Information ===` block (the embedded Chromium
DPAPI cracker is the malware-specific binary). During
incident response, check sibling files for browser-data
dumps, wallet folders, and VPN config exports - Arcane
collects each artifact class into a separate file.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1614 System Location Discovery](https://attack.mitre.org/techniques/T1614/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1016 System Network Configuration Discovery](https://attack.mitre.org/techniques/T1016/)

## Related families

- [`phemedrone-stealer`](../phemedrone_stealer/)
- [`vgs-stealer`](../vgs_stealer/)

## References

- https://securelist.com/arcane-stealer/115919/
- https://cyberinsider.com/new-arcane-stealer-malware-targets-vpn-accounts-via-youtube-cheats/
- https://www.bleepingcomputer.com/news/security/new-arcane-infostealer-infects-youtube-discord-users-via-game-cheats/
- https://thehackernews.com/2025/03/youtube-game-cheats-spread-arcane.html
