# CSDataMonkStealer

CSDataMonkStealer is a CyStack-coined identifier for a shared
`#BUY NOW: TG <buyer> -- <admin>` `SystemInfo.txt` panel
observed inside `@ft7links-mix-<TS>-<COUNT>pcs` aggregator
packs. The panel is a builder that multiple Telegram resellers
distribute under their own buyer / admin handles - the body
shape is identical, only the banner-line handles differ. Two
distributors observed so far: `@DataMonk_file` /
`@DataMonk_Admin` (per-victim `Telegram @Datamonk_file -
{<id>}/` subfolder) and `@SunCloudNew` / `@MrSun00` (flat
`@ft7links_mix_<NN>_bogonip_<NN>/SystemInfo.txt` layout, no
per-victim Telegram-handle subfolder).

The panel emits a leading `#BUY NOW` banner with paired buyer
/ admin contacts, then a single mixed-case `=== System
Information ===` block of bare `Key: Value` lines terminated
by a 26-character equals-sign rule. The 13-key field set
covers Build, IP, HWID, System Language, Processor, CPU Cores,
CPU Threads, GPU, OS, OS Version, Computer Name, Total RAM,
and Drives. The mixed-case header distinguishes this format
from `PCInfoStealer`, which uses the uppercase `=== SYSTEM
INFORMATION ===` form. The `Build: test_00` literal recurs
across distributors, suggesting an early or test-phase
builder.

Family attribution is provisional: the panel is undocumented
in public reporting, and is also absent from the community
stealer-format catalogues. The family name keeps the
iteration-#7 `CSDataMonkStealer` literal for backward
compatibility with previously emitted IOCs even though the
panel is shared. Rename when a public writeup identifies the
underlying builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@DataMonk_file`, `@SunCloudNew`, `DataMonk`
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies
- System hardware and locale fingerprint
- Discord token folder (per the @DataMonk_file Application/Discord layout)

## Detection notes

The `#BUY NOW: TG @` panel banner plus the mixed-case
`=== System Information ===` header is the cleanest
fingerprint pair. PCInfoStealer uses the uppercase
header variant and emits `PC Username:` / `PC Name:` keys
instead of `Computer Name:`, so the two parsers do not
collide. The `Build:` value (`test_00` in surveyed
samples) suggests an early or test-phase builder; later
production samples may emit a different value. The
banner-line handles vary by distributor, so triage based
on the channel handles in the banner rather than
assuming a single source.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/DataMonk_file>
- <https://t.me/SunCloudNew>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
