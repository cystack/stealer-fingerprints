# CSSoftwareTailStealer

CSSoftwareTailStealer is a CyStack-coined identifier for a
heavily-stripped `information.txt` panel tail distributed
through the `@BRADLOGS / BRADMAX` Telegram channel inside
`!! 2025 NOV.part001.rar` packs at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/information.txt` victim
folders. The body opens with a bare `<exe>.exe` process
list (no tab indent, no `[<PID>]` annotation), then the
Vidar-canonical `[Software]` section marker appears
concatenated onto the last process entry as
`<exe>.exe [Software]` rather than on its own line.
Versioned-app entries follow in `<Name> - <Version>`
form. No system info block, no IP / Country / Computer
Name / HWID / Local Time field survives.

The `[Software]` section header is Vidar-canonical per
Kaspersky's Vidar Stealer write-up, but the heavily-
stripped body carries no other Vidar fingerprint field
(no `VideoCard:`, `Work Dir:`, `Keyboard Languages:`,
`Local Time:`, `Windows:` / `AV:` pair). Family attribution
is provisional pending a published threat-intel mapping
for this layout. The structural similarity to Vidar is
suggestive but not sufficient to claim Vidar directly:
the BRADMAX aggregator resells multiple stealer families
under a shared redistribution shell, and any panel that
emits a Vidar-style section marker as the only signal
could come from a Vidar fork or an unrelated builder.

**Also known as:** `BRADMAX heavily-stripped information.txt tail`, `Bare-exe + `[Software]` marker labeling artifact`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `BRADMAX`
**Distribution channels:** `@BRADLOGS`

## Targets

- Running process names (no PIDs preserved)
- Installed Windows applications with version strings

## Variants

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Field keys:**
`All Users`, `CPU`, `Chrome Version`, `Color Depth`, `Computer Name`, `ComputerName`, `Cores`, `Country`, `Date`, `DateTime`, `Device Name`, `Device String`, `Disk`, `Display Name`, `Display Resolution`, `Domain Name`, `Edge Version`, `GPU`, `GUID`, `HWID`, `IP`, `Install Date`, `Install Source`, `Installed Apps`, `Installed RAM`, `Installed software`, `KOPLAYER Pro version`, `Keyboard Language`, `Keyboard Languages`, `MachineID`, `Network Info`, `OS`, `Path`, `Process`, `Process List`, `Process count`, `Processor`, `Publisher`, `RAM`, `Resolution`, `System Language`, `Threads`, `Time Zone`, `Traffic Name`, `UID`, `Unknown Version`, `User Language`, `User Name`, `UserName`, `Version`, `Video card`, `VideoCard`, `WallPaper Hash`

**Filenames:** `_Information.txt`, `information.txt`, `system.txt`, `system_info.txt`

**Sample (sanitized):**

```
    
conhost.exe
powershell.exe
svchost.exe
msedgewebview2.exe
svchost.exe
SystemSettings.exe
svchost.exe
svchost.exe
SystemSettingsAdminFlows.exe
WmiPrvSE.exe
powershell.exe
conhost.exe
powershell.exe
svchost.exe
svchost.exe
msiexec.exe
CelerityModule32.exe
dllhost.exe
DeltaOrchestr.exe
lJ5IwxN.exe
svchost.exe
svchost.exe
hPXwsPq.exe
XPFix.exe
RuntimeBroker.exe [Software]
MSI App Player Engine - 5.21.151.6303
BlueStacks - 5.22.102.1002
Clownfish Voice Changer
Google Play Games - <ip>
O+ Connect - <ip>
Microsoft Visual C++ 2013 x64 Additional Runtime - 12.0.40664 - 12.0.40664
ENE_AIC_Marvell_HAL - <ip>
Microsoft Visual C++ 2010 x64 Redistributable - 10.0.40219 - 10.0.40219
ENE_External_Device_HAL - <ip>
Verbatim_SureFireGaming_Product - <ip>
ENE_EHD_M2_HAL - <ip>
Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030 - 11.0.61030
Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.42.34433 - 14.42.34433
Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.4148 - 9.0.30729.4148
[... truncated; full sample at ``sample.txt`` (approx. 29 more lines) ...]
```

## Detection

Fingerprint requires the `[Software]` substring AND 5+
bare `<exe>.exe` lines (line-anchored, no tab indent, no
`[<PID>]` bracket) AND 3+ `<Name> - <Version>` versioned-
app lines. The three-anchor combination cannot collide
with canonical Vidar / StealC / Aetheris / Aura because
all four claim via their own banner or block-header
anchors before this fallback runs. During triage, treat
this label as a "victim infected but system-info
truncated" marker: the IOC carries no extractable
victim or device fields, only the family literal and
distribution metadata. The underlying stealer family is
unknown; the Vidar-canonical `[Software]` section marker
suggests but does not confirm Vidar lineage.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1057 Process Discovery](https://attack.mitre.org/techniques/T1057/)

## Related families

- [`vidar`](../vidar/)
- [`cs-passwords-not-found-stub`](../cs_passwords_not_found_stub/)
- [`cs-facebook-market-stealer`](../cs_facebook_market_stealer/)

## References

- https://www.kaspersky.com/resource-center/threats/vidar-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADLOGS
