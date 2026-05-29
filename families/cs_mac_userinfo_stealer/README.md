# CSMacUserinfoStealer

CSMacUserinfoStealer is a CyStack-coined identifier for a
macOS info-stealer that writes a bare `userinfo.txt`
(lowercase) with a 9-field IP geolocation header followed
directly by the verbatim `system_profiler` output for the
`SPSoftwareDataType`, `SPHardwareDataType`, and
`SPDisplaysDataType` sections. The file ships no operator
banner, no `BuildID:` per-build label, and no
`MetaMask Info:` / `Debanks:` / `Userinfo:` panel section
headers. Observed inside `!! 2025 JULY.part001.rar`
aggregator packs in `<CC><31-alnum>_<ISO timestamp with
microseconds>/userinfo.txt` victim folders.

The layout overlaps Darktrace's documented Cthulhu Stealer
`Userinfo.txt` shape but two structural details rule out a
direct Cthulhu attribution. First, `BuildID:` is absent.
Cthulhu always emits the line carrying its operator-set
per-build label, so an unsigned variant is undocumented.
Second, the `Region:` value uses the IP2Location-style
`Dubayy` transliteration for Dubai instead of ipinfo.io's
`Dubai` form; Cthulhu uses ipinfo.io as its geo source.
Family attribution is provisional pending a published
threat-intel mapping for this layout.

**Also known as:** `Bare macOS userinfo.txt panel`, `No-BuildID Cthulhu-shape macOS log`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- macOS hardware fingerprint (Hardware UUID, Model Identifier, Chip / Processor)
- macOS account inventory (Computer Name, User Name)
- macOS version and kernel build (System Version, Kernel Version)
- Public-IP geolocation (country, city, latitude / longitude, zipcode, timezone)
- Display configuration (Chipset Model, VRAM, resolution)

## Variants

### `cystack_e6b74373`

**Attribution confidence:** `unknown`

**Field keys:**
`City`, `Country`, `Country Code`, `Graphics/Displays`, `Hardware`, `IP`, `Latitude`, `Longitude`, `Region`, `Software`, `Timezone`, `Zipcode`

**Filenames:** `UserInformation.txt`, `userinfo.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: United Arab Emirates
Country Code: AE
Region: Dubayy
City: <redacted>
Latitude: <redacted>
Longitude: <redacted>
Zipcode: -
Timezone: +04:00

Software:

    System Software Overview:

      System Version: macOS 14.7.6 (23H626)
      Kernel Version: Darwin 23.6.0
      Boot Volume: Macintosh HD
      Boot Mode: Normal
      Computer Name: <redacted>
      User Name: <redacted>
      Secure Virtual Memory: Enabled
      System Integrity Protection: Enabled
      Time since boot: 21 minutes, 42 seconds

Hardware:

    Hardware Overview:

      Model Name: MacBook Air
      Model Identifier: MacBookAir8,1
      Processor Name: Dual-Core Intel Core i5
      Processor Speed: 1.6 GHz
      Number of Processors: 1
      Total Number of Cores: 2
      L2 Cache (per Core): 256 KB
      L3 Cache: 4 MB
      Hyper-Threading Technology: Enabled
      Memory: 8 GB
      System Firmware Version: 2075.<ip> (iBridge: 22.16.15072.0.0,0)
      OS Loader Version: 580.140.1~51
[... truncated; full sample at ``sample.txt`` (approx. 27 more lines) ...]
```

## Detection

Line-anchored `Country Code:` AND `Zipcode:` AND
`Hardware Overview:` is the fingerprint. The triple is
specific because `Country Code:` (separate from
`Country:`) plus `Zipcode:` (one word) is the geo-block
opener documented for Cthulhu, and `Hardware Overview:` is
the macOS-specific `system_profiler SPHardwareDataType`
header. CthulhuParser runs ahead and claims any sample
that also carries `BuildID:`, so this parser only sees
the BuildID-less variant. AMOSParser uses `Country:` (not
`Country Code:`) plus the `MetaMask Info:` / `Debanks:` /
`Userinfo:` section header triple - no overlap. MacSync
requires the `MacSync Stealer` banner - absent here.
During triage, treat this label as a macOS infostealer
system summary and look for sibling files (browser data,
keychain dumps, wallet folders) in the same victim folder.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1614 System Location Discovery](https://attack.mitre.org/techniques/T1614/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)

## Related families

- [`cthulhu-stealer`](../cthulhu_stealer/)
- [`amos-stealer`](../amos_stealer/)
- [`macsync-stealer`](../macsync_stealer/)

## References

- https://www.darktrace.com/blog/from-the-depths-analyzing-the-cthulhu-stealer-malware-for-macos
- https://github.com/MalBeacon/what-is-this-stealer
