# PyInfo Stealer

Unidentified Python-based stealer observed inside `@BRADMAX`
aggregator packs under `[UN]UNKNOWN_(N)` filler folders. The
`system_info.txt` is a flat key/value record followed by two
`--- ... ---` framed sections. Family attribution is
provisional; the format has not been mapped to a published
threat-intel name.

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Variants

### `cystack_824c4bdd`

**Attribution confidence:** `unknown`

**Field keys:**
`Architecture`, `City`, `Country`, `Hostname`, `IP`, `ISP`, `OS`, `Org`, `Processor`, `Region`, `User`

**Filenames:** `system_info.txt`

**Sample (sanitized):**

```
Hostname: <redacted>
User: hacker
OS: Windows-7-6.1.7601-SP1
Architecture: 32bit
Processor: Intel64 Family 6 Model 190 Stepping 0, GenuineIntel
IP: <redacted>
Country: United States
Region: California
City: <redacted>
ISP: Cloud Software - FZCO
Org: EGIHosting

--- Top Processes ---
Image Name                     PID Session Name        Session#    Mem Usage
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0         24 K
System                           4 Services                   0      2,112 K
smss.exe                       264 Services                   0      1,088 K
csrss.exe                      344 Services                   0      3,880 K
wininit.exe                    396 Services                   0      4,336 K
csrss.exe                      408 Console                    1      6,460 K
winlogon.exe                   460 Console                    1      6,728 K
services.exe                   492 Services                   0      8,980 K
lsass.exe                      516 Services                   0     10,292 K
lsm.exe                        524 Services                   0      4,048 K
svchost.exe                    628 Services                   0      8,856 K
VBoxService.exe                692 Services                   0      5,136 K
svchost.exe                    764 Services                   0      7,576 K
svchost.exe                    852 Services                   0     19,708 K
svchost.exe                    900 Services                   0     69,520 K
svchost.exe                    932 Services                   0     30,980 K
svchost.exe                    364 Services                   0     15,264 K
svchost.exe                   1064 Services                   0     13,684 K
spoolsv.exe                   1192 Services                   0     10,896 K
svchost.exe                   1228 Services                   0     14,020 K
[... truncated; full sample at ``sample.txt`` (approx. 23 more lines) ...]
```

## Detection

The `Hostname:` opening (lowercase keys throughout) and dual
`--- Section ---` framing is the signature. The Python origin
is inferred from the field shape and snake_case key style
(e.g. lowercase `user:` and `hostname:`), not from any
explicit banner.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
