# Unattributed: _information.txt - cpu / disk

**Unattributed malware-log format · unknown attribution confidence**

> The log structure is useful and believed to come from malware, but its family has not been confirmed. Treat the cluster ID as a tracking label only.

Cluster ID: `b0c832ea09ce07424887ad66a57dafb5`

## At a glance

- Aliases: —
- Typical filenames: <code>_information.txt</code>
- Published formats: 1
- Representative samples: 1

## How to recognize it

- No stable text banner is known; combine filename and field layout.
- Recurring fields: <code>cpu</code>, <code>disk</code>, <code>display resolution</code>, <code>gpu</code>, <code>installed software</code>, <code>keyboard languages</code>, <code>os</code>, <code>process</code>, <code>ram</code>, <code>uid</code>

## Formats

| Format | Evidence | Fingerprint |
|---|---|---|
| _information.txt - cpu / disk | 10 fields, filename | [`fp_376662fcd8ae73a0f2eca1a55bebe56a`](fingerprints/fp_376662fcd8ae73a0f2eca1a55bebe56a.json) |

## Representative sample

Observed text sample. Placeholders mark values removed from the original log.

[<code>_information.txt</code>](samples/_information.txt)

```text
UID: [redacted]
UserName: [redacted]
ComputerName: [redacted]
OS: Windows 10 Home x64
DateTime: 04.05.2023 || Registration:  21.12.2022 [redacted]
UserAgent: 
Keyboard Languages: French
Display Resolution: 1024 x 768
CPU: AMD Ryzen 5 PRO 4650G with Radeon Graphics core 12
RAM: physical 2047MB , virtual 2047MB
GPU: AMD Radeon(TM) Graphics
isGodMod: no
isAdmin: yes

Installed software:
Windows Driver Package - Advanced Micro Devices, Inc. AMD-RAID Config Device (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Windows Driver Package - Advanced Micro Devices, Inc. (rcbottom) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Windows Driver Package - Advanced Micro Devices, Inc. (rcraid) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Windows Driver Package - Advanced Micro Devices, Inc. (rcbottom) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
AMD Software [22.5.1]
Windows Driver Package - Advanced Micro Devices, Inc. (rcbottom) SCSIAdapter  (09/10/2020 9.3.0.00221) [09/10/2020 9.3.0.00221]
Git [2.38.1]
HWiNFO64 Version 7.26 [7.26]
Microsoft Visual J# 2.0 Redistributable Package - SE (x64) []
Notepad++ (64-bit x64) [8.4.6]
WinRAR 6.11 (64-bit) [6.11.0]
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 [12.0.40664]
AMD WVR64 [1.0.2]
Documentation Manager [redacted]
Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219 [10.0.40219]
Allgemeine Runtime Files (x86) [redacted]
Java 8 Update 251 (64-bit) [8.0.2510.8]
Branding64 [1.00.0009]
AMD Settings [2022.0428.0341.6645]
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61135 [11.0.61135]
Microsoft Visual C++ 2013 x64 Minimum Runtime - 12.0.40664 [12.0.40664]
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.7523 [9.0.30729.7523]
Microsoft Visual C++ 2019 X64 Additional Runtime - 14.28.29913 [14.28.29913]
Microsoft Update Health Tools [redacted]
Node.js [18.12.1]
DirectX 9.0c Extra Files (x86, x64) [redacted]
Microsoft Silverlight [5.1.50918.0]
Adobe Acrobat (64-bit) [22.003.20282]
Microsoft Visual C++ 2005 Redistributable (x64) [8.0.61186]
Microsoft Visual J# 2.0 Redistributable Package - SE (x64) [2.0.50728]
AMD DVR64 [1.0.2]
Microsoft Visual C++ 2012 x64 Minimum Runtime - 11.0.61135 [11.0.61135]
Microsoft Visual C++ 2019 X64 Minimum Runtime - 14.28.29913 [14.28.29913]
RyzenMasterSDK [redacted]
Epic Games Launcher Prerequisites (x64) [redacted]
MSI Afterburner 4.6.4 [4.6.4]
AMD Chipset Software [redacted]
Google Chrome [108.0.5359.125]
Microsoft Edge [108.0.1462.54]
Microsoft Edge Update [redacted]
Microsoft Edge WebView2 Runtime [108.0.1462.54]
Overwolf [redacted]
RivaTuner Statistics Server 7.3.3 [7.3.3]
WinPcap 4.1.3 [4.1.0.2980]
Intel(R) Wireless Bluetooth(R) [redacted]
Microsoft Visual C++ 2019 X86 Additional Runtime - 14.25.28508 [14.25.28508]
Epic Games Launcher [redacted]
Java 8 Update 251 [8.0.2510.8]
Microsoft Visual C++ 2019 X86 Minimum Runtime - 14.25.28508 [14.25.28508]
Launcher Prerequisites (x64) [redacted]
Java Auto Updater [redacted]
Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40664 [12.0.40664.0]
Microsoft Visual C++ 2015-2019 Redistributable (x86) - 14.25.28508 [14.25.28508.3]
Microsoft Visual C++ 2005 Redistributable [8.0.61187]
Intel® Software Installer [redacted]
Epic Online Services [redacted]
Microsoft Visual C++ 2013 x86 Minimum Runtime - 12.0.40664 [12.0.40664]
Microsoft Visual C++ 2015-2019 Redistributable (x64) - 14.28.29913 [14.28.29913.0]
Realtek Ethernet Controller Driver [10.56.119.2022]
AMD PSP Driver [redacted]
Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.7523 [9.0.30729.7523]
AMD Ryzen Balanced Driver [redacted]
AMD SBxxx SMBus Driver [redacted]
Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61135 [11.0.61135]
Promontory_GPIO Driver [redacted]
```

Preview shortened; open the sample file for the complete text.

## Try it locally

```console
python identify.py "unattributed/unattributed-b0c832ea09ce07424887ad66a57dafb5/samples/_information.txt"
```

The evidence score describes a structural comparison, not attribution certainty.

<!-- Generated by tools/catalog.py from family data, fingerprints, and samples. -->
