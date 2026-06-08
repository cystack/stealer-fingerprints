# CSMacBareGeoStealer

CSMacBareGeoStealer is a CyStack-coined identifier for a
bare 2-line geo header macOS panel observed inside
`!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/UserInformation.txt` victim folders. The
body opens with just `IP: <ipv4>` and `Country: <full
English name>` on two lines, then drops into the verbatim
`system_profiler SPSoftwareDataType` /
`SPHardwareDataType` / `SPDisplaysDataType` output. No
banner, no `Country Code:` line, no `Region:` / `City:` /
lat / lon / `Zipcode:` / `Timezone:` fields, no `BuildID:`
per-build label, no `MetaMask Info:` / `Debanks:` /
`Userinfo:` section markers, no self-banner.

The 2-line geo header is the panel`s minimal-extraction
quirk. Documented macOS stealers either ship a richer geo
block (Cthulhu`s 9-field block, AMOS`s 3-field block) or
serialise system info to JSON (Banshee, per Elastic
Security Labs). The flat-key text shape plus the missing
country-code sibling field rules out all four registered
macOS parsers (Cthulhu, MacSync, AMOS, CSMacUserinfo).

Family attribution is provisional. A two-vendor curated
CTI survey (TrendMicro, SentinelOne Labs, Kaspersky,
Cyfirma, SOCRadar, Cloudflare, Talos, ANY.RUN, Microsoft
TI, Mandiant / Google TAG, Recorded Future, eSentire,
Cybereason, BleepingComputer research, CERT-AGID, Drweb,
Proofpoint, Unit 42) and the public stealer-format
catalogues (MalBeacon / what-is-this-stealer, fastfire /
deepdarkCTI, Malpedia, RussianPanda) do not document a
macOS family that emits this exact bare 2-line geo +
`system_profiler` shape. Curated coverage of macOS
stealers focuses on Cthulhu (Darktrace), AMOS (SentinelOne
/ eSentire / Picus), Banshee (Elastic / Check Point /
Kaspersky), Poseidon / Odyssey (Red Canary), and
DigitStealer (Jamf), but none of those publish a sample
matching this layout.

**Also known as:** `Bare 2-line geo macOS UserInformation.txt`, `Stripped IP + Country macOS panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser-saved credentials (UserInformation.txt itself
ships only system info; harvested credentials live in
sibling files in the operator`s archive)
- Victim hostname (`Computer Name:` field)
- Victim username (`User Name:` display + shortname pair)
- macOS hardware fingerprint (Chip, Hardware UUID, Serial
Number, Memory, Resolution)
- macOS version + kernel version (`System Version:` /
`Kernel Version:`)

## Variants

### `cystack_9e4fa79f`

**Attribution confidence:** `unknown`

**Field keys:**
`Country`, `Graphics/Displays`, `Hardware`, `IP`, `Software`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: Argentina

Software:

    System Software Overview:

      System Version: macOS 26.1 (25B78)
      Kernel Version: Darwin 25.1.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 40 minutes, 11 seconds

Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: Mac14,9
      Model Number: MPHH3LL/A
      Chip: Apple M2 Pro
      Total Number of Cores: 10 (6 performance and 4 efficiency)
      Memory: 16 GB
      System Firmware Version: 13822.41.1
      OS Loader Version: 13822.41.1
      Serial Number (system): C3RQ1CJP7C
      Hardware UUID: 3AFDF2D4-639A-5FDC-9B16-3EA2BCD522F6
      Provisioning UDID: 00006020-000628C60C87401E
      Activation Lock Status: Enabled

Graphics/Displays:

    Apple M2 Pro:

      Chipset Model: Apple M2 Pro
      Type: GPU
[... truncated; full sample at ``sample.txt`` (approx. 13 more lines) ...]
```

## Detection

Fingerprint requires line-anchored `IP:` AND `Country:`
AND `System Software Overview:` AND `Hardware Overview:`
substrings PLUS absence of `Country Code:` (rules out
Cthulhu and CSMacUserinfo) AND absence of `BuildID:`
(rules out Cthulhu) AND absence of `MetaMask Info:`
(rules out AMOS) AND absence of `MacSync Stealer` (rules
out MacSync). The positive anchors confirm a macOS
`system_profiler` body; the negative anchors defer to the
four richer-geo macOS parsers when their banners or
fields are present. During triage, the `Country:` value
carries the full English country name (not the 2-letter
ISO code), so downstream country-based filters need a
name-to-ISO lookup.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1518 Software Discovery](https://attack.mitre.org/techniques/T1518/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)

## Related families

- [`cthulhu-stealer`](../cthulhu_stealer/)
- [`amos`](../amos/)
- [`macsync`](../macsync/)
- [`cs-mac-userinfo-stealer`](../cs_mac_userinfo_stealer/)
- [`banshee-stealer`](../banshee_stealer/)

## References

- https://www.darktrace.com/blog/from-the-depths-analyzing-the-cthulhu-stealer-malware-for-macos
- https://www.elastic.co/security-labs/beyond-the-wail
- https://redcanary.com/blog/threat-intelligence/atomic-odyssey-poseidon-stealers/
- https://www.jamf.com/blog/jtl-digitstealer-macos-infostealer-analysis/
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
