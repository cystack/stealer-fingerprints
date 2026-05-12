# CSCountCoreStealer

CSCountCoreStealer is a CyStack-coined identifier for a
fifteen-line `Information.txt` panel summary that opens
with a `🔐 Passwords Count: <n>` banner and a
`⚙ System Information:` header, then ships a keyed field
block carrying NodeJS `os` module values. Observed inside
`!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/` victim folders (e.g.
`1273_UN_86.80.140.21_16-10-25/`). The keyed block
carries `Mac:`, `Gpu:`, `Cpu:`, `Uuid:`, `Hostname:`,
`User Info:`, `IP Address:`, `Version:`, `Type:`,
`Arch:`, `Release:`, `Count Core:`, `File Location:`.
Multi-GPU systems put the second GPU name on its own line
after `Gpu:` with no key prefix.

The NodeJS `os` module fingerprint is unmistakable:
`Type: Windows_NT` is the `os.type()` literal, `Arch: x64`
is `os.arch()`, `Release: 10.0.22631` is `os.release()`,
and `Count Core: 8` is the transposed phrasing for
`os.cpus().length`. The transposed `Count Core` plus the
`User Info:` label (rather than `Username:`) is the
panel's developer-side quirk. Family attribution is
provisional pending a published threat-intel mapping for
this exact caption format. The closest documented
JavaScript / NodeJS infostealer candidates surveyed -
Celestial Stealer (Trellix / CyberInsider), Bizfum
Stealer (Cyfirma), Wish Stealer (Cyfirma) - do not
publish a matching caption format in their write-ups.

**Also known as:** `!! 2025 OCT aggregator NodeJS-os panel summary`

**Variants observed:** 2
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials (count flag plus harvested body in sibling files)
- Host metadata: MAC address, hardware UUID, hostname
- Hardware inventory: CPU model, GPU list
- OS fingerprint: NodeJS os.type/arch/release plus friendly Windows version
- Victim public IP
- Stealer install path under `C:\WINDOWS\System32`

## Variants

### `cystack_58103687`

**Attribution confidence:** `unknown`

**Field keys:**
`Arch`, `Count Core`, `Cpu`, `File Location`, `Gpu`, `Hostname`, `IP Address`, `Mac`, `Release`, `Type`, `User Info`, `Uuid`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
🔐 Passwords Count: 7
⚙ System Information:

Mac: <redacted>
Gpu: AMD Radeon(TM) Graphics
Cpu: AMD Ryzen 7 7735H with Radeon Graphics         
Uuid: 20230908-14AC-6026-1ECB-14AC60261ECC
Hostname: <redacted>
User Info: Admin
IP Address: <redacted>
Version: Windows 10 Home
Type: Windows_NT
Arch: x64
Release: 10.0.26100
Count Core: 16
File Location: <redacted>
```

### `cystack_93fdb3ac`

**Attribution confidence:** `unknown`

**Field keys:**
`Arch`, `Count Core`, `File Location`, `Hostname`, `IP Address`, `Release`, `Type`, `User Info`, `Version`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
⚙ System Information:

Hostname: <redacted>
User Info: ADMIN
IP Address: <redacted>
Version: Windows 10 Pro
Type: Windows_NT
Arch: x64
Release: 10.0.19045
Count Core: 4
File Location: <redacted>
```

## Detection

Fingerprint requires the line-anchored `Count Core:` key
(the transposed phrasing is the disambiguator - no other
registered parser keys on it) plus the
`Type: Windows_NT` NodeJS `os.type()` literal. Together
the pair cannot collide with other registered formats.
During triage, treat the family attribution as unknown:
the panel summary is the metadata view of a JavaScript /
NodeJS infostealer whose canonical name has not been
mapped to this caption layout in any surveyed CTI source.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`celestial-stealer`](../celestial_stealer/)
- [`cs-emoji-info-stealer`](../cs_emoji_info_stealer/)
- [`cs-newlog-stealer`](../cs_newlog_stealer/)

## References

- https://www.trellix.com/blogs/research/anatomy-of-celestial-stealer-malware-as-a-service-revealed/
- https://cyberinsider.com/new-celestial-stealer-javascript-maas-platform-springs-into-action/
- https://nodejs.org/api/os.html
