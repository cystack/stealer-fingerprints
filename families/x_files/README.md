# XFiles

X-FILES (XFiles / DeerStealer) is a long-running C#-written
infostealer first observed on Russian hacker forums in March
2021. Later evolutions (2024+) are sold under the rebranded name
DeerStealer by the same actor on dark-web forums and Telegram
with a tiered subscription model. Targets Chromium and Gecko
browsers, 80+ browser-based crypto wallet extensions, plus
VPN, FTP, RDP, and messenger client data.

**Also known as:** `X-FILES`, `DeerStealer`, `X-Files Stealer`

**Variants observed:** 10
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies (Chromium and Gecko)
- 80+ browser-based crypto wallet extensions
- Crypto wallet desktop clients
- VPN, FTP, RDP client configs
- Messenger session data (Telegram, Discord, Steam)

## Variants

### `cystack_1a8fdd10`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f3a1d7b6f-8b8e-ae9e-a470-b58c9fe582d8

IP: <redacted>
Country: AE (United Arab Emirates)
Operating System: Windows 11
Username: <redacted>
Hardware ID: <redacted>
CPU (Processor): 12th Gen Intel(R) Core(TM) i7-1255U
GPU (Display Devices): Intel(R) UHD Graphics
RAM (Memory): 
Screens: 1920x1200
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Secure System
   Registry
   smss.exe
   csrss.exe
   wininit.exe
   csrss.exe
   services.exe
   LsaIso.exe
   lsass.exe
   winlogon.exe
   svchost.exe
   fontdrvhost.exe
   fontdrvhost.exe
   WUDFHost.exe
   svchost.exe
   svchost.exe
   WUDFHost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 333 more lines) ...]
```

### `cystack_4007d694`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f3a1ccb2f-e112-dd1d-4e74-3cf1201756ee

IP: <redacted>
Country: KR (South Korea)
Operating System: Windows 11
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): 13th Gen Intel(R) Core(TM) i5-1335U
GPU (Display Devices): Intel(R) Iris(R) Xe Graphics
RAM (Memory): 
Screens: 2560x1600
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Registry
   smss.exe
   csrss.exe
   wininit.exe
   services.exe
   lsass.exe
   svchost.exe
   fontdrvhost.exe
   WUDFHost.exe
   svchost.exe
   svchost.exe
   WUDFHost.exe
   WUDFHost.exe
   WUDFHost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   IntelCpHDCPSvc.exe
[... truncated; full sample at ``sample.txt`` (approx. 259 more lines) ...]
```

### `cystack_534fb995`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Channel with contacts`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `Processed parts`, `RAM (Memory)`, `Screens`, `Telegram`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
██╗  ██╗███████╗██╗██╗     ███████╗███████╗
╚██╗██╔╝██╔════╝██║██║     ██╔════╝██╔════╝
 ╚███╔╝ █████╗  ██║██║     █████╗  ███████╗
 ██╔██╗ ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██╔╝ ██╗██║     ██║███████╗███████╗███████║
╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
* Official Support Links
* TOX ——————— C96EA8DFB780D9053728816F20901315F6284CB73B735559100696FB30B31364CE0AD357E634
* Jabber ———— <email>
* Links ————— <url>

------------------- Official Partners --------------------------------------
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)

• We have been withdrawing cryptocurrency from logs for over 4 years, with a total amount withdrawn exceeding $15.000.000
• Our total deposit on forums exceeds 5 BTC (over $500.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
• In addition to manual work, we use a powerful ML model we created and trained as an auxiliary tool. It has been trained on over 1.000.000 logs, allowing us to speed up the process and improve the accuracy of password cracking.

Telegram: @m2fa_brute
Channel with contacts: @maife2fa
----------------------------------------------------------------------------

Operation ID: 3a19ad4e-2453-2ed7-7be8-6b0ac23dff363a19f2d2-4197-308b-9771-72d956abcc9e

IP: <redacted>
Country: US (United States)
Operating System: Windows 11
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): AMD Ryzen 5 7600 6-Core Processor
GPU (Display Devices): Radeon RX 5500 XT
RAM (Memory): 
Screens: 3840x2160
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Secure System
   Registry
[... truncated; full sample at ``sample.txt`` (approx. 194 more lines) ...]
```

### `cystack_7098e015`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Processed parts`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f/3a1e1069-b1b7-7b83-d388-1a36f6319473

IP: <redacted>
Country: BD (Bangladesh)
Operating System: Windows 11
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): AMD Ryzen 7 7435HS
GPU (Display Devices): NVIDIA GeForce RTX 4050 Laptop GPU
RAM (Memory): 
Screens: 1920x1080
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Registry
   smss.exe
   csrss.exe
   wininit.exe
   services.exe
   lsass.exe
   svchost.exe
   fontdrvhost.exe
   WUDFHost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 239 more lines) ...]
```

### `cystack_779697d2`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f/3a1e1069-b1b7-7b83-d388-1a36f6319473

IP: <redacted>
Country: AF (Afghanistan)
Operating System: Windows 11
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel(R) Core(TM) i5-8350U CPU @ 1.70GHz
GPU (Display Devices): Intel(R) UHD Graphics 620
RAM (Memory): 
Screens: 1920x1080
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Secure System
   Registry
   smss.exe
   csrss.exe
   wininit.exe
   csrss.exe
   winlogon.exe
   services.exe
   LsaIso.exe
   lsass.exe
   svchost.exe
   fontdrvhost.exe
   fontdrvhost.exe
   WUDFHost.exe
   svchost.exe
   svchost.exe
   WUDFHost.exe
   dwm.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 286 more lines) ...]
```

### `cystack_9b8ee162`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Jabber`, `Operating System`, `Operation ID`, `RAM (Memory)`, `Screens`, `Telegram`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
██╗  ██╗███████╗██╗██╗     ███████╗███████╗
╚██╗██╔╝██╔════╝██║██║     ██╔════╝██╔════╝
 ╚███╔╝ █████╗  ██║██║     █████╗  ███████╗
 ██╔██╗ ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██╔╝ ██╗██║     ██║███████╗███████╗███████║
╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
* Official Support Links
* TOX ——————— C96EA8DFB780D9053728816F20901315F6284CB73B735559100696FB30B31364CE0AD357E634
* Jabber ———— <email>
* Links ————— <url>

===== ПОДБОР ПАРОЛЕЙ К КОШЕЛЬКАМ / CRYPTO BRUTE-FORCE EXPERT =====

- Brute-force (password cracking) for crypto wallets (MetaMask, Trust Wallet, cold wallets, and more). 70/30 %

- 5 years of experience.

- Using my own trained neural network for faster and more efficient password recovery.

- Cold wallet processing with guaranteed confidentiality.

- I take on wallets that others couldn’t crack.

Telegram: @bcstg  <url>
Jabber:   <email>

=====================================


Operation ID: 3a19ad4e-2453-2ed7-7be8-6b0ac23dff363a1a2ec6-91f3-77f1-eaf0-e9d6296e3a3d

IP: <redacted>
Country: AR (Argentina)
Operating System: Windows 11
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GHz
GPU (Display Devices): Intel(R) UHD Graphics
RAM (Memory): 
[... truncated; full sample at ``sample.txt`` (approx. 319 more lines) ...]
```

### `cystack_a4048dad`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `Processed parts`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f3a1d84ee-ed20-af35-aa82-2abb61008bfd

IP: <redacted>
Country: US (United States)
Operating System: Windows 10
Username: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel(R) Core(TM)2 CPU 6600 @ 2.40 GHz
GPU (Display Devices): Jivyxnnli Jkrwh Uiajimk Rsdqbpt
RAM (Memory): 
Screens: 1280x1024
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Registry
   smss.exe
   csrss.exe
   wininit.exe
   csrss.exe
   winlogon.exe
   services.exe
   lsass.exe
   svchost.exe
   fontdrvhost.exe
   fontdrvhost.exe
   svchost.exe
   svchost.exe
   dwm.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 105 more lines) ...]
```

### `cystack_c10789f1`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `Processed parts`, `RAM (Memory)`, `Screens`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
Operation ID: 3a1b0807-9710-4e49-3ecf-15d29caf161f/3a1e1069-b1b7-7b83-d388-1a36f6319473

IP: <redacted>
Country: AE (United Arab Emirates)
Operating System: Windows 10
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel(R) Xeon(R) CPU E5-2670 0 @ 2.60GHz
GPU (Display Devices): AMD Radeon HD 6800 Series
RAM (Memory): 
Screens: 1920x1080
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Registry
   smss.exe
   csrss.exe
   csrss.exe
   wininit.exe
   winlogon.exe
   services.exe
   lsass.exe
   svchost.exe
   fontdrvhost.exe
   fontdrvhost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
   dwm.exe
   svchost.exe
   svchost.exe
   svchost.exe
   svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 243 more lines) ...]
```

### `cystack_f0d30fc2`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Jabber`, `Operating System`, `Operation ID`, `Processed parts`, `RAM (Memory)`, `Screens`, `Telegram`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
██╗  ██╗███████╗██╗██╗     ███████╗███████╗
╚██╗██╔╝██╔════╝██║██║     ██╔════╝██╔════╝
 ╚███╔╝ █████╗  ██║██║     █████╗  ███████╗
 ██╔██╗ ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██╔╝ ██╗██║     ██║███████╗███████╗███████║
╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
* Official Support Links
* TOX ——————— C96EA8DFB780D9053728816F20901315F6284CB73B735559100696FB30B31364CE0AD357E634
* Jabber ———— <email>
* Links ————— <url>

===== ПОДБОР ПАРОЛЕЙ К КОШЕЛЬКАМ / CRYPTO BRUTE-FORCE EXPERT =====

- Brute-force (password cracking) for crypto wallets (MetaMask, Trust Wallet, cold wallets, and more). 70/30 %

- 5 years of experience.

- Using my own trained neural network for faster and more efficient password recovery.

- Cold wallet processing with guaranteed confidentiality.

- I take on wallets that others couldn’t crack.

Telegram: @bcstg  <url>
Jabber:   <email>

=====================================


Operation ID: 3a19ad4e-2453-2ed7-7be8-6b0ac23dff363a1a2ec6-91f3-77f1-eaf0-e9d6296e3a3d

IP: <redacted>
Country: HU (Hungary)
Operating System: Windows 10
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): Intel(R) Core(TM) i7-5500U CPU @ 2.40GHz
GPU (Display Devices): Intel(R) HD Graphics 5500
RAM (Memory): 1966.9375
[... truncated; full sample at ``sample.txt`` (approx. 221 more lines) ...]
```

### `cystack_fc2b93d4`

**Attribution confidence:** `high`

**Field keys:**
`CPU (Processor)`, `Channel with contacts`, `Computer Name`, `Country`, `Desktop Screenshot Taken`, `GPU (Display Devices)`, `Hardware ID`, `IP`, `Operating System`, `Operation ID`, `RAM (Memory)`, `Screens`, `Telegram`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
██╗  ██╗███████╗██╗██╗     ███████╗███████╗
╚██╗██╔╝██╔════╝██║██║     ██╔════╝██╔════╝
 ╚███╔╝ █████╗  ██║██║     █████╗  ███████╗
 ██╔██╗ ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██╔╝ ██╗██║     ██║███████╗███████╗███████║
╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
* Official Support Links
* TOX ——————— C96EA8DFB780D9053728816F20901315F6284CB73B735559100696FB30B31364CE0AD357E634
* Jabber ———— <email>
* Links ————— <url>

------------------- Official Partners --------------------------------------
Brute-force (password cracking) for crypto wallets (Metamask, Exodus, .dat files, and others)

• We have been withdrawing cryptocurrency from logs for over 4 years, with a total amount withdrawn exceeding $15.000.000
• Our total deposit on forums exceeds 5 BTC (over $500.000), which confirms our reliability, while feedback from satisfied clients confirms successful cases.
• In addition to manual work, we use a powerful ML model we created and trained as an auxiliary tool. It has been trained on over 1.000.000 logs, allowing us to speed up the process and improve the accuracy of password cracking.

Telegram: @m2fa_brute
Channel with contacts: @maife2fa
----------------------------------------------------------------------------

Operation ID: 3a19ad4e-2453-2ed7-7be8-6b0ac23dff363a19f2d2-4197-308b-9771-72d956abcc9e

IP: <redacted>
Country: US (United States)
Operating System: Windows 11
Username: <redacted>
Computer Name: <redacted>
Hardware ID: <redacted>
CPU (Processor): 13th Gen Intel(R) Core(TM) i5-13400F
GPU (Display Devices): NVIDIA GeForce RTX 3050
RAM (Memory): 
Screens: 1920x1080
Desktop Screenshot Taken: Yes

Windows Processes [
   System
   Secure System
   Registry
[... truncated; full sample at ``sample.txt`` (approx. 214 more lines) ...]
```

## Detection

XFiles `Information.txt` carries the panel banner together with
victim hardware and locale fields. Older 2021-2022 variants and
the rebranded 2024+ DeerStealer share the same field set so the
family rule covers both eras. An aggregator-stripped variant
redistributed via the Cloud WLFR project (`t.me/WichLoveFromR`,
`linktr.ee/WLFRcloud`, support `@AltairSupport`) drops the
`Operation ID:` panel-run identifier but keeps the rest of the
XFiles-canonical field set; the parser fingerprint covers both
shapes.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)

## References

- https://www.zscaler.com/blogs/security-research/x-files-stealer-evolution-analysis-and-comparison-study
- https://any.run/malware-trends/xfiles/
- https://www.esentire.com/blog/dont-get-caught-in-the-headlights-deerstealer-analysis
- https://cyberint.com/blog/research/xfiles-stealer-campaign-abusing-follina/
- https://www.bleepingcomputer.com/news/security/xfiles-info-stealing-malware-adds-support-for-follina-delivery/
