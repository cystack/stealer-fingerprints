# CSWifiBackslashNStealer

CSWifiBackslashNStealer is a CyStack-coined identifier for a
minimal two-file victim folder observed inside `!! 2025
NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders. The pack
ships only `installed_apps.txt` plus `wifi_passwords.txt` (and
sometimes an empty-named packer directory artifact); no
companion system-info file, no browser-credential dump, no
token files.

The wifi cred file is one physical line at the OS level. The
panel serialises per-SSID entries with the literal
two-character `\n` escape (backslash + `n`) as the separator,
not real LF. Per-entry shape is `<SSID> | <password>\n`; open
networks and browser-sync placeholders emit `<SSID> | \n` with
the password segment blank.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a family that emits
exactly this 2-file minimal layout. The pipe-delimited `<SSID>
| <password>` body itself is a generic `netsh wlan show
profile name=<x> key=clear` post-processing shape used by many
.NET and Python stealer builders, so the literal `\n`
serialisation plus the 2-file root layout is what gives this
label its specificity.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX 2-file wifi+apps minimal pack`, `installed_apps + wifi_passwords literal-\n export`
- Variants observed: **0**

## What it targets

- Wifi SSIDs and saved network passwords
- Installed Windows program names

## Detection notes

Fingerprint requires (a) `installed_apps.txt` AND
`wifi_passwords.txt` in the folder root, (b) root-entry count
<= 3 (the optional third entry is an empty-named packer DIR),
and (c) 3+ `<SSID> | <password>\n` line matches in
`wifi_passwords.txt` where `\n` is the two-character escape,
not real LF. The literal-`\n` constraint plus the file-count
cap keep this off ZenRAT folders, which require 3 of 5 of
`sysinfo.txt` / `running_services.txt` / `license_info.txt` /
`installed_apps.txt` / `wifi_passwords.txt` per public ZenRAT
reporting and use conventional LF-separated wifi output.
During triage, treat this label as a "victim folder truncated
to the two cheapest panel outputs" marker: the underlying
stealer builder is not identifiable from this 2-file shape
alone, only the BRADMAX distribution channel is.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSSoftHostStealer](../cs-soft-host-stealer/)
- [CSDataCollectedStealer](../cs-data-collected-stealer/)

## Related external families

- `zenrat`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
