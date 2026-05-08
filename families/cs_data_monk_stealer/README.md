# CSDataMonkStealer

CSDataMonkStealer is a CyStack-coined identifier for a
shared `#BUY NOW: TG <buyer> -- <admin>` `SystemInfo.txt`
panel observed inside `@ft7links-mix-<TS>-<COUNT>pcs`
aggregator packs. The panel is a builder that multiple
Telegram resellers distribute under their own buyer /
admin handles - the body shape is identical, only the
banner-line handles differ. Two distributors observed so
far: `@DataMonk_file` / `@DataMonk_Admin` (per-victim
`Telegram @Datamonk_file - {<id>}/` subfolder) and
`@SunCloudNew` / `@MrSun00` (flat
`@ft7links_mix_<NN>_bogonip_<NN>/SystemInfo.txt` layout,
no per-victim Telegram-handle subfolder).

The panel emits a leading `#BUY NOW` banner with paired
buyer / admin contacts, then a single mixed-case
`=== System Information ===` block of bare `Key: Value`
lines terminated by a 26-character equals-sign rule. The
13-key field set covers Build, IP, HWID, System Language,
Processor, CPU Cores, CPU Threads, GPU, OS, OS Version,
Computer Name, Total RAM, and Drives. The mixed-case
header distinguishes this format from `PCInfoStealer`,
which uses the uppercase `=== SYSTEM INFORMATION ===`
form. The `Build: test_00` literal recurs across
distributors, suggesting an early or test-phase builder.

Family attribution is provisional: the panel is
undocumented in any curated CTI source surveyed
(TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare, Talos, Unit 42, Microsoft TI,
Mandiant / Google TAG, Recorded Future, eSentire,
Cybereason, BleepingComputer research, CERT-AGID, Drweb,
Proofpoint, ANY.RUN), and is also absent from deepdarkCTI
and the MalBeacon what-is-this-stealer catalogue. The
family name keeps the iteration-#7 `CSDataMonkStealer`
literal for backward compatibility with previously
emitted IOCs even though the panel is shared. Rename
when a curated CTI report identifies the underlying
builder.

**Also known as:** `@DataMonk_file`, `@SunCloudNew`, `DataMonk`

## Targets

- Browser saved credentials and cookies
- System hardware and locale fingerprint
- Discord token folder (per the @DataMonk_file Application/Discord layout)

## Variants

### `cystack_1895b35e`

**Field keys:**
`Build`, `CPU Cores`, `CPU Threads`, `Computer Name`, `Drives`, `GPU`, `HWID`, `IP`, `OS`, `OS Version`, `Processor`, `System Language`, `Total RAM`

**Filenames:** `SystemInfo.txt`

**Sample (sanitized):**

```

#BUY NOW: TG @DataMonk_file -- @DataMonk_Admin
=== System Information ===
Build: test_00
IP: <redacted>
HWID: <redacted>
System Language: en-US
Processor: Intel(R) Celeron(R) N4100 CPU @ 1.10GHz
CPU Cores: 4
CPU Threads: 4
GPU: Intel(R) UHD Graphics 600
OS: Windows 10 Pro
OS Version: 10.0.19045 (Build 19045)
Computer Name: <redacted>
Total RAM: 3913 MB
Drives: C:\
==========================
```

## Detection

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

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- t.me/DataMonk_file
- t.me/SunCloudNew
