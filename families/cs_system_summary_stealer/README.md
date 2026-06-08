# CSSystemSummaryStealer

CSSystemSummaryStealer is a CyStack-coined identifier
for a `System.txt` panel opening with two flush-left
identity lines (`- IP:` and `- Country:`), then a
`System Summary:` section header followed by a 14-field
tab-indented dashed-key block (`- OS:`, `- Architecture:`,
`- UserName:`, `- Computer Name:`, `- Local Time:`,
`- UTC: <integer>`, `- Language:`, `- Keyboards:`,
`- Laptop: TRUE/FALSE`, `- Cores:`, `- Threads:`,
`- RAM:`, `- Display Resolution:` with nested per-monitor
block, `- GPU:` list). Three trailing section headers
`Process count:` + `Process List:` + `Installed Apps:`
add a process inventory and an installed-app inventory
split into `All Users:` and `Current User:` subsections.

Observed inside `MAY 02 - 8230 LOGS2` aggregator packs
at `[<ISO2>]<IPv4>/System.txt` victim folders, the same
country-IPv4 victim-folder convention used by
CSCookiesSoftStealer (iter #55 / #56). The field set
overlaps Cyberint`s October 2023 Continental Stealer
writeup but the exact panel layout is not documented
by any curated CTI vendor surveyed. Family attribution
is provisional pending a curated CTI report that
confirms the panel format.

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials (system summary only - this parser claims the System.txt; credentials live in sibling files)
- System fingerprint: hostname, IP, OS, CPU cores / threads, RAM, GPU list, display resolution per monitor
- Locale: country, language, keyboard locale, UTC offset
- Laptop boolean flag (TRUE / FALSE)
- Running process inventory (full process list with count)
- Installed application inventory split by HKLM (`All Users:`) and HKCU (`Current User:`) registry hives

## Variants

### `cystack_68dce857`

**Attribution confidence:** `unknown`

**Field keys:**
`Process List`, `Process count`, `System Summary`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
	- IP: <ip>
	- Country: ID
System Summary:
	- OS: Windows 11
	- Architecture: x64
	- UserName: User
	- Computer Name: LAPTOP-URHOPCJ1
	- Local Time: 2026-04-15 <ip>
	- UTC: 9
	- Language: en-ID
	- Keyboards: English (United States)
	- Laptop: TRUE
	- Cores: 6
	- Threads: 12
	- RAM: 16 GB
	- Display Resolution:
		Monitor 1
			Device Name: \\.\DISPLAY4
			Device String: NVIDIA GeForce GTX 1060
			Resolution: 1366x768
			Color Depth: 32 bits per pixel
	- GPU:
		-Intel(R) UHD Graphics 630
		-NVIDIA GeForce GTX 1060
Process count: 308
Process List:
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
	WUDFHost.exe
	fontdrvhost.exe
[... truncated; full sample at ``sample.txt`` (approx. 380 more lines) ...]
```

## Detection

The three-anchor fingerprint `System Summary:` plus
`- Laptop:` plus `- Keyboards:` is the cleanest panel
signal. The `- UTC: <integer>` bare hour offset (no `+`
sign, no `:00` minutes) is a distinctive serialisation
choice for triage: when this format appears in a log,
expect ALL-CAPS `TRUE` / `FALSE` booleans on other
flag fields too. The `Installed Apps:` split into HKLM
(`All Users:`) and HKCU (`Current User:`) is unusual
across stealer panels; most flatten the list.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)
- [T1518 Software Discovery](https://attack.mitre.org/techniques/T1518/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)

## Related families

- [`cscookiessoftstealer`](../cscookiessoftstealer/)
- [`cstiktokaccountstealer`](../cstiktokaccountstealer/)
- [`cscommonfilescategorystealer`](../cscommonfilescategorystealer/)

## References

- https://cyberint.com/blog/research/the-new-infostealer-in-town-the-continental-stealer/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://github.com/MalBeacon/what-is-this-stealer
