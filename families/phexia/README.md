# Phexia

Phexia is a macOS info-stealer that has been operating in
private distribution since April 2024 per a developer
interview the researcher g0njxa published on Medium. The
payload is implemented in osascript (AppleScript) and the
developer states it shares roughly 85% of its code with the
Mac.c stealer module, but it is marketed and tracked as a
separate product with its own self-identification banner
and its own customer base (around 20 active operators per
the developer at the time of the interview).

The on-disk `UserInformation.txt` opens with the literal
`Phexia macOS Stealer` banner, then a flat identity block
(`Build:` / `Username:` / `Password:` / `IP Address:`), then
the verbatim `system_profiler` output under `Software:` /
`Hardware:` / `Graphics/Displays:` section headers. The
`Build:` tag is a per-customer affiliate identifier set at
build time. Captured macOS login credentials ship in the
`Username:` / `Password:` pair at the top of the file.

**Also known as:** `Phexia Stealer`, `Phexia macOS Stealer`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- macOS login credentials (captured at the panel prompt)
- Browser saved credentials, cookies, web data, login data, and history from Chromium-based browsers
- Chromium browser extension data and local extension settings
- macOS Keychain (`/Library/Keychains/login.keychain-db`)
- Crypto wallet desktop clients and browser extensions
- Notes.app passwords and small files in `~/Downloads`
- Telegram session data on macOS

## Variants

### `cystack_9f0a6be5`

**Attribution confidence:** `high`

**Field keys:**
`Build`, `Graphics/Displays`, `Hardware`, `IP Address`, `Password`, `Software`, `Username`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Phexia macOS Stealer

Build: GETWELL
Username: <redacted>
Password: Powerhouse2023
IP Address: <redacted>

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
      Time since boot: 19 days, 21 hours, 10 minutes

Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: Mac14,10
      Model Number: MNW83B/A
      Chip: Apple M2 Pro
      Total Number of Cores: 12 (8 performance and 4 efficiency)
      Memory: 16 GB
      System Firmware Version: 13822.61.10
      OS Loader Version: 13822.61.10
      Serial Number (system): NJ26WR9VQM
      Hardware UUID: A1C75F9D-9611-53D4-8272-87E6ABFC3AB6
      Provisioning UDID: 00006020-001A20D1147B401E
      Activation Lock Status: Enabled

Graphics/Displays:

[... truncated; full sample at ``sample.txt`` (approx. 17 more lines) ...]
```

## Detection

The first-line `Phexia macOS Stealer` banner is the family's
verbatim self-identification and is the cleanest single
fingerprint. The `Build:` bare-key affiliate tag distinguishes
this layout from the sibling MacSync `Build Tag:` form and
from Cthulhu`s no-space `BuildID:` form. The shared `system_profiler`
body means folder-level macOS detectors may flash on the
same artifact, but parser dispatch on file system paths runs
only the parser chain so there is no collision in practice.
Triage logs from this family by collecting the captured
macOS login credential pair, the affiliate `Build:` tag,
and the Hardware UUID as the device identifier.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.001 Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1059.002 Command and Scripting Interpreter: AppleScript](https://attack.mitre.org/techniques/T1059/002/)

## Related families

- [`MacSync`](../mac_sync/)
- [`mac.c`](../mac_c/)

## References

- https://cookie.engineer/weblog/articles/malware-insights-macos-phexia-stealer.html
- https://www.pcrisk.com/removal-guides/34957-phexia-stealer-mac
- https://g0njxa.medium.com/approaching-stealers-devs-a-brief-interview-with-phexia-38ad3772dbcd
