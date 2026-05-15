# CSCountRunsStealer

CSCountRunsStealer is a CyStack-coined identifier for an
11-line `Information.txt` panel summary framed by U+2500
heavy box-drawing characters and split into two captioned
sections, `SYSTEM INFORMATION` and `EXTRACTION RESULTS`.
Observed inside `!! 2025 NOV.part001.rar` aggregator packs
in `[<TAG>]<IP>/Information.txt` victim folders (e.g.
`[AK]63.67.90.3/Information.txt`), distributed through the
`@BRADLOGS` Telegram aggregator that resells multiple
underlying stealer families.

The SYSTEM INFORMATION block ships five fields: a combined
`Location: City, Country (ISP)` line (consumer-grade IP
geolocation API shape), `Device:` hostname, `OS:` in
`Windows <major>.<minor> (Build <build>)` form, `IP:`, and
a `Time:` value in the JS `toLocaleString` shape
`MM/DD/YYYY, HH:MM:SS (UTC[+-]HH:MM)`. The EXTRACTION
RESULTS block ships five count fields: `Cookies:`,
`Passwords:`, `Facebook:`, `CC with CVC:` (the awkward
`with CVC` phrasing for credit-card-with-CVV), and
`Count Runs:` (an execution counter likely incremented
across repeated runs on the same victim). Family
attribution is provisional pending a published threat-
intel mapping for this caption format. The closest
documented relative is Phemedrone, which also writes a
per-victim `Information.txt` summary but uses dashed
section captions (`----- Geolocation Data -----` /
`----- Hardware Info -----`) and a different field set.

**Also known as:** `BRADMAX aggregator box-drawing panel summary`, `!! 2025 NOV.part001 EXTRACTION RESULTS panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Distribution channels:** `@BRADLOGS`

## Targets

- Browser cookies (count flag plus harvested body in sibling files)
- Browser saved credentials (count flag plus body)
- Credit cards with CVC (count flag)
- Facebook sessions (count flag)
- Host metadata: hostname, OS version with build
- Victim public IP plus city / country / ISP enrichment

## Variants

### `cystack_c65f37b2`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    ┏━━━  SYSTEM INFORMATION ━━━┓
┃  • Location: Paris, France (Orange S.A.)
┃  • Device: CHAR076
┃  • OS: Windows 10.0 (Build 26100)
┃  • IP: <ip>
┃  • Time: 10/31/2025, <ip> (UTC+01:00)
┣━━━  EXTRACTION RESULTS ━━━┫
┃  • Cookies: 3801
┃  • Passwords: 12
┃  • Facebook: 1
┃  • CC with CVC: 0
┃  • Count Runs: 79
┗━━━━━━━━━━━━━━━━━┛
```

## Detection

Fingerprint requires the `EXTRACTION RESULTS` mid-frame
caption AND the `Count Runs:` field key AND a U+2503
`┃` heavy vertical bar. The `Count Runs:` field name is
unique across the registry, and the box-drawing frame
rejects any free-form report that happens to mention the
two captions. During triage, treat the family attribution
as unknown: the panel summary is the metadata view of an
underlying stealer whose canonical name has not been
mapped to this caption layout in any surveyed CTI source.
The `Facebook:` and `CC with CVC:` count fields suggest
the underlying stealer prioritises social-account session
theft alongside browser credential harvesting.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`phemedrone`](../phemedrone/)
- [`cs-py-host-time-stealer`](../cs_py_host_time_stealer/)
- [`cs-emoji-info-stealer`](../cs_emoji_info_stealer/)

## References

- https://www.splunk.com/en_us/blog/security/unveiling-phemedrone-stealer-threat-analysis-and-detections.html
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADLOGS
