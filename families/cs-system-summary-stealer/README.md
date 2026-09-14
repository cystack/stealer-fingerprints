# CSSystemSummaryStealer

CSSystemSummaryStealer is a CyStack-coined identifier for a
`System.txt` panel opening with two flush-left identity lines
(`- IP:` and `- Country:`), then a `System Summary:` section
header followed by a 14-field tab-indented dashed-key block
(`- OS:`, `- Architecture:`, `- UserName:`, `- Computer
Name:`, `- Local Time:`, `- UTC: <integer>`, `- Language:`, `-
Keyboards:`, `- Laptop: TRUE/FALSE`, `- Cores:`, `- Threads:`,
`- RAM:`, `- Display Resolution:` with nested per-monitor
block, `- GPU:` list). Three trailing section headers `Process
count:` + `Process List:` + `Installed Apps:` add a process
inventory and an installed-app inventory split into `All
Users:` and `Current User:` subsections.

Observed inside `MAY 02 - 8230 LOGS2` aggregator packs at
`[<ISO2>]<IPv4>/System.txt` victim folders, the same
country-IPv4 victim-folder convention used by
CSCookiesSoftStealer. The field set overlaps
an October 2023 Continental Stealer writeup but the exact
panel layout is not documented in public reporting. Family
attribution is provisional pending a public writeup that
confirms the panel format.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credentials retained in sibling files
- System fingerprint: hostname, IP, OS, CPU cores / threads, RAM, GPU list, display resolution per monitor
- Locale: country, language, keyboard locale, UTC offset
- Laptop boolean flag (TRUE / FALSE)
- Running process inventory (full process list with count)
- Installed application inventory split by HKLM (`All Users:`) and HKCU (`Current User:`) registry hives

## Detection notes

The three-anchor fingerprint `System Summary:` plus
`- Laptop:` plus `- Keyboards:` is the cleanest panel
signal. The `- UTC: <integer>` bare hour offset (no `+`
sign, no `:00` minutes) is a distinctive serialisation
choice for triage: when this format appears in a log,
expect ALL-CAPS `TRUE` / `FALSE` booleans on other
flag fields too. The `Installed Apps:` split into HKLM
(`All Users:`) and HKCU (`Current User:`) is unusual
across stealer panels; most flatten the list.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSCookiesSoftStealer](../cs-cookies-soft-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSCommonFilesCategoryStealer](../cs-common-files-category-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
