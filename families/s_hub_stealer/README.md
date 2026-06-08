# SHub Stealer

SHub Stealer is a macOS-targeted info-stealer first
publicly documented in March 2026 by Malwarebytes after
a fake CleanMyMac landing-page campaign delivered the
payload to crypto holders. SentinelOne analysed a
follow-on variant under the build tag `Reaper` in May
2026; the family also gets coverage from
BleepingComputer, Dark Reading, Datadog Security Labs,
and Help Net Security.

The payload is a Mach-O binary that runs an AppleScript
helper to harvest browser data, cryptocurrency wallets,
developer-related configuration files, macOS Keychain
data, iCloud session data, and Telegram session files.
Collected data is bundled into a ZIP archive and POSTed
to a hardcoded gate (e.g. `res2erch-sl0ut[.]com/gate`)
along with a hardcoded API key identifying the malware
build. Per-victim `Build Tag` campaign labels and a
32-character build hash support affiliate-level tracking.
Observed build tags include `Reaper`, `PAds`, and
`Crypto_Byte`.

**Also known as:** `SHub`, `SHub Reaper`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill
- Cryptocurrency wallet apps and browser extensions
- macOS Keychain entries
- iCloud session data
- Telegram session files
- Developer configuration files and Notes
- On-screen prompted login credentials (osascript dialog)

## Variants

### `cystack_aa3df1c7`

**Attribution confidence:** `high`

**Field keys:**
`Build Tag`, `External IP`, `Graphics/Displays`, `Hardware`, `Password`, `Software`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
=== System Info ===
SHub Stealer
Build Tag: Crypto_Byte
External IP: <redacted>

System Info
Username: <redacted>
Password: 189293

Software:

    System Software Overview:

      System Version: macOS 26.2 (25C56)
      Kernel Version: Darwin 25.2.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 11 days, 3 hours, 22 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Air
      Model Identifier: Mac16,13
      Model Number: MW1M3LL/A
      Chip: Apple M4
      Total Number of Cores: 10 (4 performance and 6 efficiency)
      Memory: 16 GB
      System Firmware Version: 13822.61.10
      OS Loader Version: 13822.61.10
      Serial Number (system): M194352K7Y
      Hardware UUID: D409CD9A-9748-5DEF-9460-9504C1201CB6
      Provisioning UDID: 00008132-001C44A00AFB801C
      Activation Lock Status: Enabled

[... truncated; full sample at ``sample.txt`` (approx. 19 more lines) ...]
```

## Detection

The strongest single signal is the verbatim `SHub Stealer`
banner literal, the family`s self-identification header.
Paired with the `Build Tag:` and `External IP:` preamble
fields, attribution is high confidence. Triage rules
should anchor on the banner literal plus the
`system_profiler` body shape rather than the build tag
value, which rotates per campaign (`Reaper`, `PAds`,
`Crypto_Byte` are documented examples).

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.001 Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1059.002 AppleScript](https://attack.mitre.org/techniques/T1059/002/)
- [T1056.002 GUI Input Capture](https://attack.mitre.org/techniques/T1056/002/)

## Related families

- [`macsync`](../macsync/)
- [`amos`](../amos/)
- [`cthulhu`](../cthulhu/)

## References

- https://www.sentinelone.com/blog/shub-reaper-macos-stealer-spoofs-apple-google-and-microsoft-in-a-single-attack-chain/
- https://www.malwarebytes.com/blog/threat-intel/2026/03/fake-cleanmymac-site-installs-shub-stealer-and-backdoors-crypto-wallets
- https://www.bleepingcomputer.com/news/security/shub-macos-infostealer-variant-spoofs-apple-security-updates/
- https://securitylabs.datadoghq.com/articles/tech-impersonators-clickfix-and-macos-infostealers/
- https://www.helpnetsecurity.com/2026/05/19/shub-reaper-macos-infostealer-apple-google-microsoft/
