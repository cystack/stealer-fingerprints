# AMOS Stealer

Atomic macOS Stealer (AMOS) is a Go and C++ macOS info-stealer
sold as malware-as-a-service through private Telegram channels
since April 2023. The operator panel charges around $1000 per
month and ships a builder, a victim web panel, a MetaMask
brute-forcer, and Telegram log delivery. SentinelOne, eSentire,
Picus Security, Moonlock, Cyble, and BleepingComputer all
profile the family. AMOS spawned the Banshee, Cthulhu,
Poseidon, and Odyssey forks tracked separately in this catalog.

The artifact this parser claims is the operator-facing summary
written as `UserInformation.txt` inside per-victim folders of
AMOS log aggregator packs. The file opens with four flush-left
panel section headers in a fixed order (`MetaMask Info:`,
`Debanks:`, `Userinfo:`, then `Software:` / `Hardware:` /
`Graphics/Displays:` introducing the verbatim `system_profiler`
output for the SPSoftwareDataType, SPHardwareDataType, and
SPDisplaysDataType data types). `MetaMask Info` and `Debanks`
sit empty in most samples because the panel surfaces wallet
artifacts in sibling folders (`Wallets/`, `Keychain/`) rather
than inlined into this summary.

**Also known as:** `Atomic Stealer`, `Atomic macOS Stealer`, `AMOS`, `Atomic Mac`

**Variants observed:** 2
**Top attribution confidence:** `medium`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions (MetaMask, Phantom, Coin98, Trust Wallet, 50+ targeted)
- Desktop crypto wallets (Electrum, Exodus, Atomic, Wasabi, Ledger Live, Trezor Suite)
- macOS Keychain database and login password (AppleScript prompt)
- Apple Notes content and Telegram session files
- Documents and Desktop file grabber (.txt, .pdf, .docx, .wallet, .key)

## Variants

### `cystack_3311417f`

**Attribution confidence:** `medium`

**Field keys:**
`AMD Radeon Pro 5500M`, `City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel UHD Graphics 630`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AF
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 15.0 (24A335)
  Kernel Version: Darwin 24.0.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 10 hours, 37 minutes

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro16,1
  Processor Name: 8-Core Intel Core i9
  Processor Speed: 2.4 GHz
  Number of Processors: 1
  Total Number of Cores: 8
  L2 Cache (per Core): 256 KB
  L3 Cache: 16 MB
  Hyper-Threading Technology: Enabled
  Memory: 64 GB
  System Firmware Version: 2075.<ip> (iBridge: 22.16.15072.0.0,0)
  OS Loader Version: 582~1023
  Serial Number (system): C02DV8JLMD6T
  Hardware UUID: 12844F3C-078A-59F1-9034-B1820F8F7D08
[... truncated; full sample at ``sample.txt`` (approx. 45 more lines) ...]
```

### `cystack_4a8d83d3`

**Attribution confidence:** `medium`

**Field keys:**
`City`, `Color LCD`, `Country`, `Debanks`, `Graphics/Displays`, `Hardware`, `Hardware Overview`, `IP`, `Intel Iris Graphics 6100`, `MetaMask Info`, `Software`, `System Software Overview`, `Userinfo`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
MetaMask Info:
Debanks: 


Userinfo:
Country: AE
IP: <redacted>
City: <redacted>
Software:

System Software Overview:

  System Version: macOS 12.7.2 (21G1974)
  Kernel Version: Darwin 21.6.0
  Boot Volume: Macintosh HD
  Boot Mode: Normal
  Computer Name: <redacted>
  User Name: <redacted>
  Secure Virtual Memory: Enabled
  System Integrity Protection: Enabled
  Time since boot: 42 days 2:56

Hardware:

Hardware Overview:

  Model Name: MacBook Pro
  Model Identifier: MacBookPro12,1
  Processor Name: Dual-Core Intel Core i5
  Processor Speed: 2.9 GHz
  Number of Processors: 1
  Total Number of Cores: 2
  L2 Cache (per Core): 256 KB
  L3 Cache: 3 MB
  Hyper-Threading Technology: Enabled
  Memory: 8 GB
  System Firmware Version: <ip>.0
  OS Loader Version: 540.120.3~37
  SMC Version (system): 2.28f7
  Serial Number (system): C02Q38CDFVH7
[... truncated; full sample at ``sample.txt`` (approx. 25 more lines) ...]
```

## Detection

The line-anchored `MetaMask Info:` + `Debanks:` + `Userinfo:`
triple is unique to this AMOS panel render and does not collide
with the Cthulhu (`BuildID:` + `Hardware Overview:`) or MacSync
(`MacSync Stealer` banner) macOS forks the catalog tracks.
Family attribution rests on MalBeacon's `what-is-this-stealer`
community catalog mapping this exact `UserInformation.txt`
shape to Atomic Mac; the underlying AMOS family is curated-CTI
confirmed elsewhere but no vendor publishes a sample showing
this specific section-header layout, so the parser ships with
medium attribution confidence. Triaging an AMOS folder during
incident response: check for sibling `FileGrabber/`,
`BrowserVersion.txt`, `keychain.txt`, and `Passwords.txt`
artifacts in the same victim directory - the folder-level
AMOS detector fires on those names.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1555.001 Credentials from Password Stores: Keychain](https://attack.mitre.org/techniques/T1555/001/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1217 Browser Information Discovery](https://attack.mitre.org/techniques/T1217/)

## Related families

- [`banshee-stealer`](../banshee_stealer/)
- [`cthulhu-stealer`](../cthulhu_stealer/)
- [`odyssey-stealer`](../odyssey_stealer/)
- [`poseidon-stealer`](../poseidon_stealer/)
- [`macsync`](../macsync/)

## References

- https://github.com/MalBeacon/what-is-this-stealer
- https://www.sentinelone.com/blog/atomic-stealer-threat-actor-spawns-second-variant-of-macos-malware-sold-on-telegram/
- https://www.esentire.com/blog/fake-deepseek-site-infects-mac-users-with-atomic-stealer
- https://www.picussecurity.com/resource/blog/atomic-stealer-amos-macos-threat-analysis
- https://moonlock.com/atomic-macos-stealer
- https://www.bleepingcomputer.com/news/security/new-atomic-macos-info-stealing-malware-targets-50-crypto-wallets/
- https://cyble.com/blog/threat-actor-selling-new-atomic-macos-amos-stealer-on-telegram/
