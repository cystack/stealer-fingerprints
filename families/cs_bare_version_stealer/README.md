# CSBareVersionStealer

CSBareVersionStealer is a CyStack-coined identifier for a
`UserInformation.txt` shape observed inside
`!! 2026 JAN.part01.rar`-style aggregator packs in
`[CC]@BRADMAX (<N>)/UserInformation.txt` victim folders. The
`deepdarkCTI/telegram_infostealer.md` catalog lists
`t.me/bradmax_cloud` and the active
`t.me/+0IAf5VIrl_EzNWRi` mirror as a Telegram aggregator the
operator self-labels "Redline and Raccoon Data Logs", but
the body lacks every Redline canonical anchor
(`Operation System:` typo, `FileLocation:`, `Hardwares:`
block, `Anti-Viruses:` block) and every Raccoon canonical
anchor (`User ID: <UUID>|<user>`, JS-date `Last seen:`,
`IP info: <CC> <IPv4>`), so the operator label cannot be
trusted.

The body is structurally a stripped sibling of
`CSBuildBlockStealer`: same 12-field shape (`User time:`,
`HWID:`, `PC Name:`, `User Name:`, `CPU:`, `GPU:`,
`Memory:`, `OS:`, `Active window:`, `Admin rights:`, `IP:`,
`GEO:`) but with the four-line `Build Path:` / `Build ID:` /
`Build Version:` / `Build Comment:` group replaced by a
single bare `Version` line (no colon, no value), and the
trailing `Resolution:` line dropped. Empty `IP:` / `GEO:`
values are routine: the panel skips the geolocation lookup
on bogon IPs rather than emit a placeholder string.

Family attribution is provisional pending a published
threat-intel mapping for this stripped layout. Surveyed
curated CTI sources (TrendMicro, SentinelOne Labs,
Kaspersky, Cyfirma, SOCRadar, Cloudflare, Talos, Unit 42,
Microsoft TI, Mandiant, Recorded Future, eSentire,
Cybereason, BleepingComputer, ANY.RUN, CERT-AGID, Drweb,
Proofpoint) and community catalogues
(`MalBeacon/what-is-this-stealer`, `fastfire/deepdarkCTI`)
do not document a stealer that emits exactly this
stripped-Build / bare-`Version` field set.

**Also known as:** `@BRADMAX stripped Build variant`, `BradMax Cloud`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `bare Version line (Build block stripped)`
**Distribution channels:** `@BRADMAX`

## Targets

- Browser saved credentials and cookies
- System hardware and locale inventory
- Active-window snapshot (foreground process title at exfil time)

## Variants

### `bare Version line (Build block stripped)`

**Fingerprint id:** `bare_version_line_build_block_stripped`

**Distribution channel:** `@BRADMAX`

**Attribution confidence:** `unknown`

**Field keys:**
`Active window`, `Admin rights`, `Build Comment`, `CPU`, `GEO`, `GPU`, `HWID`, `IP`, `Memory`, `OS`, `PC Name`, `User Name`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
    User time: 2025-10-16 <ip>
HWID: <redacted>
PC Name: MSI-7D17
User Name: <redacted>
CPU: Intel(R) Core(TM) i5-10400F CPU @ 2.90GHz
GPU: NVIDIA GeForce RTX 3050
Memory: 32 GB 
OS: Майкрософт Windows 11 Pro
Active window: %username%-Cryptor [GUI] {@%username%}
Version
Admin rights: true
IP: 
<redacted>
```

## Detection

Fingerprint requires line-anchored `Active window:`,
`Admin rights:`, and `GEO:` keys plus a bare `Version`
line (no colon, no value, optional leading whitespace).
The bare `Version` line is the disambiguator from
`CSBuildBlockStealer`, which requires the full four-line
`Build Path:` / `Build ID:` / `Build Version:` /
`Build Comment:` group. The `GEO:` key (instead of
`Country:`) further excludes unrelated formats. During
triage, treat the family attribution as unknown: the
aggregator self-label (`Redline and Raccoon Data Logs`)
is misleading because the body lacks every canonical
anchor for both families.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`csbuildblockstealer`](../csbuildblockstealer/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- t.me/bradmax_cloud
