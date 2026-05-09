# MacSync

MacSync is a macOS-targeted infostealer first observed in
November 2025 as a rebrand of the earlier Mac.c family. Its
AppleScript payload writes an `Information.txt` file into the
victim staging directory combining a malware self-identification
banner, captured account credentials, and the verbatim output of
`system_profiler`.

**Also known as:** `Mac.c`, `MacSync Stealer`

**Variants observed:** 1
**Total observations:** 6,953
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials (Chrome, Safari, Firefox)
- Crypto wallet desktop clients (Electrum, Exodus, etc.)
- macOS Keychain entries
- Telegram and Discord session data on macOS
- System profile information for victim fingerprinting

## Variants

### `cystack_4897375d`

**Attribution confidence:** `high`

**Field keys:**
`Build Tag`, `Graphics/Displays`, `Hardware`, `Password`, `Software`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
MacSync Stealer

Build Tag: Alves

Username: <redacted>
Password: 9929

Software:

    System Software Overview:

      Boot Volume: 500
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 2 dni, 2 godziny i 31 minut

Hardware:

    Hardware Overview:

      Model Name: MacBook Pro
      Model Identifier: MacBookPro14,2
      Processor Name: Dual-Core Intel Core i7
      Processor Speed: 3,5 GHz
      Number of Processors: 1
      Total Number of Cores: 2
      L2 Cache (per Core): 256 KB
      L3 Cache: 4 MB
      Hyper-Threading Technology: Enabled
      Memory: 16 GB
      SMC Version (system): 2.44f6
      Serial Number (system): C02WM0S8HV2R
      Hardware UUID: B6B7D385-F0F0-53DC-80C7-3F89BF001BE6
      Provisioning UDID: B6B7D385-F0F0-53DC-80C7-3F89BF001BE6

Graphics/Displays:

[... truncated; full sample at ``sample.txt`` (approx. 20 more lines) ...]
```

## Detection

The `Information.txt` containing both a banner and verbatim
`system_profiler` output is unambiguous. Pair with macOS-specific
field values (Apple silicon CPU strings, macOS version) to
confirm.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.001 Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://www.cisecurity.org/insights/blog/macsync-stealer-campaign-impacting-us-sltt-macos-users
- https://www.jamf.com/blog/macsync-stealer-evolution-code-signed-swift-malware-analysis/
