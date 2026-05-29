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

**Variants observed:** 1
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
