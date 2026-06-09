# CSMacKeychainPassStealer

CSMacKeychainPassStealer is a CyStack-coined identifier
for a 3-line preamble macOS panel observed inside
`@Bugatti_Cloud Bugatti_Man` aggregator packs at
`@bugatti_cloudnew ch_<NNNN>/Information.txt` victim
folders. The body opens with `IP: <ipv4|ipv6>`,
`Username: <shortname>`, and `Password: <cleartext>` on
three lines, then drops directly into verbatim
`system_profiler SPSoftwareDataType` /
`SPHardwareDataType` / `SPDisplaysDataType` output. No
`Country:` line, no banner, no `BuildID:` per-build
label, no `MetaMask Info:` / `Debanks:` / `Userinfo:`
section markers, no self-banner.

The cleartext `Password:` line is the panel`s
distinguishing quirk. Documented macOS stealers that
capture the user login or keychain password (AMOS,
Banshee, Cthulhu, MacStealer) archive it to a sibling
keychain dump or zip-pack rather than expose it as a
top-level field in the system-info file.

Family attribution is provisional. A two-vendor curated
CTI survey (TrendMicro, SentinelOne Labs, Kaspersky,
Cyfirma, SOCRadar, Cloudflare, Talos, ANY.RUN, Microsoft
TI, Mandiant / Google TAG, Recorded Future, eSentire,
Cybereason, BleepingComputer research, CERT-AGID, Drweb,
Proofpoint, Unit 42) and the public stealer-format
catalogues (MalBeacon / what-is-this-stealer, fastfire /
deepdarkCTI, Malpedia, RussianPanda) do not document a
macOS family that emits exactly this 3-line preamble
plus verbatim `system_profiler` shape with the cleartext
keychain password exposed as a top-level field.

**Also known as:** `3-line preamble macOS Information.txt with cleartext password`, `IP + Username + Password macOS panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- macOS user login / keychain password (captured as
cleartext in the `Password:` preamble line)
- Victim public IP (IPv4 or IPv6)
- Victim hostname (`Computer Name:` field)
- Victim username (`User Name:` display + shortname pair)
- macOS hardware fingerprint (Chip, Hardware UUID, Serial
Number, Memory)
- macOS version + kernel version (`System Version:` /
`Kernel Version:`)

## Variants

### `cystack_009c8f5c`

**Attribution confidence:** `unknown`

**Field keys:**
`Graphics/Displays`, `Hardware`, `IP`, `Password`, `Software`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>

Username: <redacted>
Password: 1058

Software:

    System Software Overview:

      System Version: macOS 26.3.1 (a) (25D771280a)
      Kernel Version: Darwin 25.3.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 6 days, 15 hours, 6 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Air
      Model Identifier: Mac15,13
      Model Number: MC9G4LL/A
      Chip: Apple M3
      Total Number of Cores: 8 (4 Performance and 4 Efficiency)
      Memory: 16 GB
      System Firmware Version: 13822.81.10
      OS Loader Version: 13822.81.10
      Serial Number (system): D343VJM2Y9
      Hardware UUID: A956AF20-52DE-5E08-9336-5B5DFE0099C1
      Provisioning UDID: 00008122-001241340A11001C
      Activation Lock Status: Enabled

Graphics/Displays:

    Apple M3:

[... truncated; full sample at ``sample.txt`` (approx. 5 more lines) ...]
```

## Detection

Fingerprint requires line-anchored `IP:` AND `Username:`
AND `Password:` AND `System Software Overview:` AND
`Hardware Overview:` substrings PLUS absence of
`Country:` (rules out CSMacBareGeo / Cthulhu / AMOS /
MacSync) AND absence of `Country Code:` (rules out
Cthulhu and CSMacUserinfo). The positive anchors confirm
a macOS `system_profiler` body with a cleartext-password
preamble; the negative anchors defer to the five richer-
geo macOS parsers when their geo fields are present.
During triage, the `Password:` value is the victim`s
cleartext login or keychain password and should be
treated as a high-priority remediation indicator.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.001 Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1518 Software Discovery](https://attack.mitre.org/techniques/T1518/)

## Related families

- [`cthulhu-stealer`](../cthulhu_stealer/)
- [`amos`](../amos/)
- [`macsync`](../macsync/)
- [`cs-mac-userinfo-stealer`](../cs_mac_userinfo_stealer/)
- [`cs-mac-bare-geo-stealer`](../cs_mac_bare_geo_stealer/)
- [`banshee-stealer`](../banshee_stealer/)

## References

- https://spycloud.com/blog/reverse-engineering-atomic-macos-stealer/
- https://www.darktrace.com/blog/from-the-depths-analyzing-the-cthulhu-stealer-malware-for-macos
- https://www.elastic.co/security-labs/beyond-the-wail
- https://www.bleepingcomputer.com/news/security/new-macstealer-macos-malware-steals-passwords-from-icloud-keychain/
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
