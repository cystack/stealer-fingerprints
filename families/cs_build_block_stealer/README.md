# CSBuildBlockStealer

CSBuildBlockStealer is a CyStack-coined identifier for a
`UserInformation.txt` shape distributed via `@ft7links`
aggregator packs that the operator mislabels as `redline`.
The body is a flat key/value block whose distinguishing
feature is a four-line `Build Path:` / `Build ID:` /
`Build Version:` / `Build Comment:` group plus an
`Active window:` line and a two-letter `GEO:` country
code. None of the canonical Redline anchors
(`Operation System:` typo, `FileLocation:`, `Hardwares:`
block, `Anti-Viruses:` block) appear, so the aggregator
label cannot be trusted.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed sources
(TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare, Talos, Unit 42, Microsoft TI,
BleepingComputer, ANY.RUN, Drweb, Sekoia, Esentire, plus
the public stealer-format catalogues) do not document a
family using this exact `Build` block plus `Active window:`
plus `GEO:` field set. Aurora ships `Build ID` paired with
`Build Group`; RisePro ships `Build` and `HWID` only;
Mystic Stealer is documented at the protocol level rather
than the log-template level - none match.

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `4-key Build block (Path/ID/Version/Comment)`
**Distribution channels:** `@ft7links`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- System hardware and locale inventory

## Variants

### `4-key Build block (Path/ID/Version/Comment)`

**Fingerprint id:** `4_key_build_block_path_id_version_commen`

**Distribution channel:** `@ft7links`

**Attribution confidence:** `unknown`

**Field keys:**
`Active window`, `Admin rights`, `Build Comment`, `Build Path`, `Build Version`, `CPU`, `GEO`, `GPU`, `HWID`, `IP`, `Memory`, `OS`, `PC Name`, `User Name`, `User time`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
    
User time: 2025-10-22 <ip>
HWID: <redacted>
PC Name: кпкуц
User Name: <redacted>
CPU: 12th Gen Intel(R) Core(TM) i5-12400
GPU: NVIDIA GeForce RTX 3060
Memory: 32 GB 
OS: Майкрософт Windows 11 Домашняя
Active window: Администратор: Командная строка
Build Path: C:\Users\<user>\AppData\Local\wave-updater\MpDefenderCoreService.exe
Build Version: 0.25.10
Build Comment: Xeno
Admin rights: true
IP: 
<redacted>
```

## Detection

Requires all five line-anchored keys: `Build Path:`,
`Build ID:`, `Build Version:`, `Build Comment:`, and
`Active window:`. The five-key combo is unique across
the parser registry; a stray document quoting one or two
of the field names cannot accidentally claim the content.
Treat the family attribution as provisional during triage
- the aggregator labels the pack `redline` but the body
lacks every canonical Redline anchor.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redline`](../redline/)
- [`redlinelikestealer`](../redlinelikestealer/)

## References

- @ft7links
