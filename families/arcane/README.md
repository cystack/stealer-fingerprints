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

**Variants observed:** 2
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
`Unhandled Exception`

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

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `Information.txt`, `information.txt`

**Sample (sanitized):**

```
藃蓂쌟枬甥䈮쉯䪌铃쉏쎿䦴裂Ԇꃂ수슜쎳슲쎍箖跂ꋃꏂ屙숒Ɛ듃鏂냃ⱆ嵞軃藃뫂鏃숄嶀뫃黃飃쌖墦铃菂䌡≨铃彍ꃂꏃ❓ἁ럃ꇂ᝭ॢ䨖ꏂ썣쎮쎺碈ꛂ썌ᾈ㉃맃곃쉄쎎瞁쌂䖶듂駃숤쎺슌슗຺n썅ল썷㲿䀒諂挹鋂蛃⬔돂숊슨쎹ᖲ眵맂맂썒슂슂슣쎷쎶䆣戆晤쉜悮郂鷂鏂곃賂귂썞슦슎쎓슧슖㺱㭾닃伶썷֫ꃃ听雃쉋᪹畏鯂썲슏璶藂썛½쉃䆚곂ᠢ扩뫂┌뿂썸嚏鷂蛃믃鯂쌤䞙胂숅⦠숎쎊ᆝ썾슖쎫㚯㙵賂썴઒ⴊⴭ獕牥䤠普ⵯⴭਊ圉牯敫㩲┠潗歲牥ਥ䐉瑡⁥湉瑳污㩬㜠ㄯ⼴〲㔲ㄠ㨰㤳㐺‰䵁ऊ卉⁏敋㩹攠੮䌉楬扰慯摲›ऊ硅整湲污䤠㩐ㄠㄵ㈮㌵㈮㌴㈮㈲ऊ湉整湲污䤠㩐ㄠ㈹ㄮ㠶㈮⸰㌲ਲ䜉瑡睥祡䤠㩐ㄠ㈹ㄮ㠶㈮⸰਱ⴊⴭ畆汬倠⁣湉潦ⴭਭऊ㴽‽偃⁕湉潦浲瑡潩⁮㴽਽उ慍䍸潬正灓敥㩤ㄠ〳രऊ三浡㩥ㄠ琳⁨敇⁮湉整⡬⥒䌠牯⡥䵔
㕩ㄭ㌳唴਍उ畎扭牥晏潃敲㩳ㄠരഊਊ㴉㴽䜠啐䤠普牯慭楴湯㴠㴽ऊ䄉慤瑰牥䅒㩍㈠㐱㐷㤷㔵ലऊ三浡㩥䤠瑮汥刨
[... truncated; full sample at ``sample.txt`` (approx. 1 more lines) ...]
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
