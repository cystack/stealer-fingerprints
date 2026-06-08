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

**Variants observed:** 17
**Top attribution confidence:** `high`
**Operator panel brands:** `Amnesia`, `Dead`

## Targets

- Discord and Telegram session tokens
- Browser saved credentials, cookies, history, autofill
- Crypto wallet desktop clients (Bitcoin, Ethereum, Exodus, others)
- Roblox cookies and Minecraft sessions
- Wifi passwords and webcam captures
- System hardware and locale inventory
- Game launcher sessions (Epic, Steam, Uplay, Battle.net, Growtopia)

## Variants

### `Amnesia`

**Fingerprint id:** `amnesia`

**Attribution confidence:** `high`

**Field keys:**
`Amnesia got a new victim`, `Autofills`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Amnesia got a new victim: HomePC

IP Info

IP: <redacted>
Region: Lagos
Country: Nigeria
Timezone: Africa/Lagos

Cellular Network:    ✅
Proxy/VPN:           ❎

System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 11 Pro
Total Memory: 8 GB
UUID: B7DEC4B0-3449-11E6-9360-9118E4020038
CPU: Intel64 Family 6 Model 78 Stepping 3, GenuineIntel
GPU: Intel(R) HD Graphics 515
Product Key: YC7N8-G7WR6-9WR4H-6Y2W4-KBT6X

Grabbed Info
Discord Accounts : 0
Passwords : 2
Cookies : 0
History : 2089
Autofills : 208
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 1
Wallets : 0
Wifi Passwords : 17
Webcam : 1
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : No
Battle.Net Session : No
Growtopia Session : No
Screenshot : Yes
[... truncated; full sample at ``sample.txt`` (approx. 1 more lines) ...]
```

### `cystack_05506afb`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Timezone`, `Total Memory`, `Uplay Session`, `Webcam`, `Wifi Passwords`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: HTC
IP Info
IP: <redacted>
Region: Cairo Governorate
Country: Egypt
Timezone: Africa/Cairo
Cellular Network:    ❎
System Info
Computer Name: <redacted>
Computer OS: ??Microsoft Windows 10 Pro
Total Memory: 8 GB
CPU: Intel64 Family 6 Model 60 Stepping 3, GenuineIntel
GPU: NVIDIA GeForce GT 710
Grabbed Info
Discord Accounts : 0
Passwords : 25
Cookies : 534
History : 0
Autofills : 794
Roblox Cookies : 0
Common Files : 241
Wifi Passwords : 7
Webcam : 0
Minecraft Sessions : 3
Epic Session : Yes
Steam Session : No
Uplay Session : No
Growtopia Session : No
Screenshot : Yes
System Info : Yes
```

### `cystack_12bb25c3`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

***********************************************
*         _   _   _   _   _   _   _           *
*        / \ / \ / \ / \ / \ / \ / \          *
*       ( O | T | T | O | M | A | N )         *
*        \_/ \_/ \_/ \_/ \_/ \_/ \_/          *
*                                             *
*  Telegram : <url>  *
***********************************************

Blank Grabber got a new victim: USUARIO

IP Info
(Unable to get IP info)

System Info
Computer Name: <redacted>
Computer OS: Unable to detect OS
Total Memory: Unable to detect total memory
UUID: Unable to detect UUID
CPU: Intel64 Family 6 Model 189 Stepping 1, GenuineIntel
GPU: Unable to detect GPU
Product Key: HBY4H-RNXB8-Y2YTR-443VB-MY6F8

Grabbed Info
Discord Accounts : 0
Passwords : 57
Cookies : 0
History : 0
Autofills : 0
Roblox Cookies : 0
@OttoSup - Buy daily fresh logs Sessions : 0
Common Files : 31
Wallets : 0
Wifi Passwords : 0
Webcam : 0
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : No
[... truncated; full sample at ``sample.txt`` (approx. 4 more lines) ...]
```

### `cystack_22dec19e`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Reverse DNS`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: jessi

IP Info

IP: <redacted>
Region: Santiago Metropolitan
Country: Chile
Timezone: America/Santiago

Cellular Network:    ❎
Proxy/VPN:           ❎
Reverse DNS: 181-212-27-33.baf.movistar.cl

System Info
Computer OS: Unable to detect OS
Total Memory: Unable to detect total memory
UUID: Unable to detect UUID
CPU: Intel64 Family 6 Model 186 Stepping 3, GenuineIntel
GPU: Unable to detect GPU
Product Key: FHDPX-JNVDW-FF3RD-HPDKC-MP2TB

Grabbed Info
Discord Accounts : 0
Passwords : 61
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
[... truncated; full sample at ``sample.txt`` (approx. 1 more lines) ...]
```

### `cystack_2ec99495`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    Blank Grabber got a new victim: roke25

IP Info

IP: <redacted>
Region: Salta
Country: Argentina
Timezone: America/Argentina/Salta

Cellular Network:    ❎
Proxy/VPN:           ❎

System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 11 Home Single Language
Total Memory: 68 GB
UUID: 2F96AAF2-74A2-11EF-A4F7-40C2BA84B6B8
CPU: AMD64 Family 25 Model 68 Stepping 1, AuthenticAMD
GPU: NVIDIA GeForce RTX 4050 Laptop GPU
Product Key: FHDPX-JNVDW-FF3RD-HPDKC-MP2TB

Grabbed Info
Discord Accounts : 0
Passwords : 26
Cookies : 149
History : 0
Autofills : 0
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 106
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

### `cystack_30a7fa5c`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `CPU`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    Blank Grabber got a new victim: maximo.ariza31

IP Info
(Unable to get IP info)

System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 10 IoT Enterprise
Total Memory: 8 GB
UUID: 03000200-0400-0500-0006-000700080009
CPU: Intel64 Family 6 Model 94 Stepping 3, GenuineIntel
GPU: NVIDIA GeForce 605
Product Key: XQQYW-NFFMW-XJPBH-K8732-CKFFD

Grabbed Info
Discord Accounts : 0
Passwords : 522
Cookies : 30
History : 0
Autofills : 0
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 52
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

### `cystack_531d6bd4`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Reverse DNS`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

***********************************************
*         _   _   _   _   _   _   _           *
*        / \ / \ / \ / \ / \ / \ / \          *
*       ( O | T | T | O | M | A | N )         *
*        \_/ \_/ \_/ \_/ \_/ \_/ \_/          *
*                                             *
*  Telegram : <url>  *
***********************************************

Blank Grabber got a new victim: Mary

IP Info

IP: <redacted>
Region: Bogota D.C.
Country: Colombia
Timezone: America/Bogota

Cellular Network:    ❎
Proxy/VPN:           ❎
Reverse DNS: dynamic-ip-cr20011862179.cable.net.co

System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 10 Pro
Total Memory: 8 GB
UUID: 03C00218-044D-0577-9706-B20700080009
CPU: Intel64 Family 6 Model 158 Stepping 9, GenuineIntel
GPU: USB Mobile Monitor Virtual Display
Product Key: YC7N8-G7WR6-9WR4H-6Y2W4-KBT6X

Grabbed Info
Discord Accounts : 0
Passwords : 3
Cookies : 0
History : 0
Autofills : 0
Roblox Cookies : 0
@OttoSup - Buy daily fresh logs Sessions : 0
[... truncated; full sample at ``sample.txt`` (approx. 11 more lines) ...]
```

### `cystack_57d3f2a5`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Common Files`, `Computer OS`, `Cookies`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: jorge

IP Info
(Unable to get IP info)

System Info
Computer OS: Unable to detect OS
Total Memory: Unable to detect total memory
UUID: Unable to detect UUID
CPU: Intel64 Family 6 Model 165 Stepping 2, GenuineIntel
GPU: Unable to detect GPU
Product Key: NTRHT-XTHTG-GBWCG-4MTMP-HH64C

Grabbed Info
Discord Accounts : 0
Passwords : 357
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
Growtopia Session : No
Screenshot : Yes
System Info : Yes
```

### `cystack_8547d387`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

***********************************************
*         _   _   _   _   _   _   _           *
*        / \ / \ / \ / \ / \ / \ / \          *
*       ( O | T | T | O | M | A | N )         *
*        \_/ \_/ \_/ \_/ \_/ \_/ \_/          *
*                                             *
*  Telegram : <url>  *
***********************************************

Blank Grabber got a new victim: SOPORTE ING

IP Info

IP: <redacted>
Region: Bogota D.C.
Country: Colombia
Timezone: America/Bogota

Cellular Network:    ❎
Proxy/VPN:           ❎

System Info
Computer Name: <redacted>
Computer OS: Microsoft Windows 10 Pro N
Total Memory: 4 GB
UUID: A140BB21-E5B2-BAF1-BD49-305A3A59331E
CPU: Intel64 Family 6 Model 60 Stepping 3, GenuineIntel
GPU: Intel(R) HD Graphics
Product Key: 2B87N-8KFHP-DKV6R-Y2C8J-PKCKT

Grabbed Info
Discord Accounts : 0
Passwords : 115
Cookies : 0
History : 0
Autofills : 0
Roblox Cookies : 0
@OttoSup - Buy daily fresh logs Sessions : 0
Common Files : 22
[... truncated; full sample at ``sample.txt`` (approx. 11 more lines) ...]
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

### `cystack_d36c2a31`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: USUARIO

IP Info
(Unable to get IP info)

System Info
Computer Name: <redacted>
Computer OS: Unable to detect OS
Total Memory: Unable to detect total memory
UUID: Unable to detect UUID
CPU: Intel64 Family 6 Model 189 Stepping 1, GenuineIntel
GPU: Unable to detect GPU
Product Key: HBY4H-RNXB8-Y2YTR-443VB-MY6F8

Grabbed Info
Discord Accounts : 0
Passwords : 57
Cookies : 0
History : 0
Autofills : 0
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 31
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

### `cystack_dc1d861b`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `CPU`, `Cellular Network`, `Common Files`, `Computer Name`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Reverse DNS`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    Blank Grabber got a new victim: mauri

IP Info

IP: <redacted>
Region: Buenos Aires
Country: Argentina
Timezone: America/Argentina/Buenos_Aires

Cellular Network:    ❎
Proxy/VPN:           ❎
Reverse DNS: 115-131-17-190.fibertel.com.ar

System Info
Computer Name: <redacted>
Computer OS: Unable to detect OS
Total Memory: Unable to detect total memory
UUID: Unable to detect UUID
CPU: Intel64 Family 6 Model 151 Stepping 2, GenuineIntel
GPU: Unable to detect GPU
Product Key: VK7JG-NPHTM-C97JM-9MPGT-3V66T

Grabbed Info
Discord Accounts : 0
Passwords : 2
Cookies : 4080
History : 0
Autofills : 0
Roblox Cookies : 0
Telegram Sessions : 1
Common Files : 2
Wallets : 0
Wifi Passwords : 0
Webcam : 0
Minecraft Sessions : 0
Epic Session : No
Steam Session : No
Uplay Session : No
Growtopia Session : No
Screenshot : Yes
[... truncated; full sample at ``sample.txt`` (approx. 1 more lines) ...]
```

### `cystack_e5b29e31`

**Attribution confidence:** `high`

**Field keys:**
`Autofills`, `Blank Grabber got a new victim`, `CPU`, `Cellular Network`, `Common Files`, `Computer OS`, `Cookies`, `Country`, `Discord Accounts`, `Epic Session`, `GPU`, `Growtopia Session`, `History`, `IP`, `Minecraft Sessions`, `Passwords`, `Product Key`, `Proxy/VPN`, `Region`, `Roblox Cookies`, `Screenshot`, `Steam Session`, `System Info`, `Telegram Sessions`, `Timezone`, `Total Memory`, `UUID`, `Uplay Session`, `Wallets`, `Webcam`, `Wifi Passwords`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Blank Grabber got a new victim: MEGABYTE

IP Info

IP: <redacted>
Region: Santa Fe
Country: Argentina
Timezone: America/Argentina/Cordoba

Cellular Network:    ❎
Proxy/VPN:           ✅

System Info
Computer OS: Microsoft Windows 10 Pro
Total Memory: 17 GB
UUID: 032E02B4-0499-056F-5606-610700080009
CPU: Intel64 Family 6 Model 158 Stepping 11, GenuineIntel
GPU: NVIDIA GeForce GTX 1050 Ti
Product Key: YC7N8-G7WR6-9WR4H-6Y2W4-KBT6X

Grabbed Info
Discord Accounts : 0
Passwords : 8
Cookies : 99
History : 0
Autofills : 754
Roblox Cookies : 0
Telegram Sessions : 0
Common Files : 3
Wallets : 0
Wifi Passwords : 0
Webcam : 0
Minecraft Sessions : 1
Epic Session : Yes
Steam Session : Yes
Uplay Session : Yes
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
