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

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- System hardware and locale inventory

## Variants

### `cystack_4d2b2a7e`

**Field keys:**
`Active window`, `Admin rights`, `Build Comment`, `Build ID`, `Build Path`, `Build Version`, `CPU`, `GEO`, `GPU`, `HWID`, `IP`, `Memory`, `OS`, `PC Name`, `Resolution`, `User Name`, `User time`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
============================================================

User time: 2026-03-14 <ip>
HWID: <redacted>
PC Name: 264711-1-1
User Name: <redacted>
CPU: AMD Ryzen 5 3600 6-Core Processor              
GPU: Meta Virtual Monitor, LuminonCore IDDCX Adapter, NVIDIA GeForce RTX 3060 Ti
Memory: 64 GB 
OS: Microsoft Windows 11 Pro
Active window: Speed Dial - Opera
Build Path: C:\Users\<user>\AppData\Local\Resolume Avenue\logioptionsplus_agent.exe
Build ID: zN8hEq769bkgWGsvS7gE
Build Version: 0.27.0
Build Comment: 
Admin rights: true
IP: <redacted>
GEO: GB
Resolution: 1920x1080, 1920x1080
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
