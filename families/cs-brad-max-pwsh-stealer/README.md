# CSBradMaxPwshStealer

CSBradMaxPwshStealer is a CyStack-coined identifier for a
banner-less `system.txt` panel distributed through the
@BRADMAX Telegram channel. The body opens with a flat `Build:
<8-char>` / `IP:` / `Country:` / `MachineGuid:` / `Computer:`
/ `User:` key block, then ships raw PowerShell cmdlet output:
a `Get-WmiObject Win32_Processor | Format-Table
Name,NumberOfCores,NumberOfEnabledCore,
NumberOfLogicalProcessors` CPU table (with the literal dashed
underline row), an `AV List:` block emitting raw `<Name>.
Product State: <DWORD>` Win32_Reg_AV records, host fields
(`OS:`, `Monitors:`, `Resolution(s):`, `AD:`, `GPU:`, `RAM:`,
`System Language:`, `Timezone:`), a `Processes:` section with
`Get-Process | Format-List
ProcessId,ParentProcessId,Name,CommandLine,Level` records, and
a `Software:` line-per-package installed-software list.

The custom `Level` Get-Process column is not a native
System.Diagnostics.Process property, which points to a
PowerShell or .NET launcher harness that enriches each process
record with an integrity-level or tree-depth value before
formatting. Family attribution is provisional pending a
published threat-intel mapping for this harness layout; no
public reporting or community catalogue documents this exact
PowerShell-cmdlet-output shape.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX PowerShell-harness system.txt slice`, `BRADMAX Build+MachineGuid+Level-column variant`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU, GPU, RAM, monitor
count, screen resolution, OS version)
- Network identity (IP address, country, system language,
timezone)
- Account identity (Windows username, computer name,
MachineGuid, Active Directory join state)
- Installed software inventory (line-per-package)
- Running-process tree snapshot with parent process IDs and
full command lines
- Resident antivirus product list with Win32_Reg_AV
productState DWORD

## Detection notes

Fingerprint requires both the misspelled
`NumberOfEnabledCore` PowerShell Format-Table column
header AND the line-anchored `Level           : 0` custom
Format-List column on the Processes block. The two-anchor
combination is mutually exclusive with every other
BRADMAX-distributed slice (the @BRADMAX_CLOUD slices all
carry the aBradMax Figlet banner; the sibling @BRADMAX
`=== SYSTEM INFO ===` slice uses a triple-equals header).
During triage, treat the underlying stealer family as
unattributable and rely on the channel and panel_brand
metadata to bucket samples for analyst review. The
`MachineGuid` UUID is the registry-resident
`HKLM\SOFTWARE\Microsoft\Cryptography\MachineGuid` value
and is suitable as a cross-victim host pivot when paired
with the same IP / `Computer` triple.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1059.001](https://attack.mitre.org/techniques/T1059/001/) | PowerShell |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSGeoSysInfoStealer](../cs-geo-sys-info-stealer/)
- [Lumma](../lumma/)
- [DCRat](../dc-rat/)
- [CSBradMaxCloudPCStealer](../cs-brad-max-cloud-pc-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
