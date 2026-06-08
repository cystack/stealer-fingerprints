# CSRussia34Stealer

CSRussia34Stealer is a CyStack-coined identifier for a
`russia34.com` / `Private Russia 34` stripped Redline-shape
`UserInformation.txt` observed inside
`@ft7links-redline-<TS>-<COUNT>pcs.rar` aggregator packs in
`@ft7links_redline_<NN>_bogonip_<HWIDPFX>/` victim folders.
The panel emits an ASCII-art `REDLINE` banner with three
repeated `https://russia34.com` subscriber lines, then a
stripped Redline-shape field set.

**Also known as:** `russia34`, `Private Russia 34`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `russia34.com aggregator (legacy mixed-shape)`
**Distribution channels:** `russia34.com`

## Variants

### `russia34.com aggregator (legacy mixed-shape)`

**Fingerprint id:** `russia34_com_aggregator_legacy_mixed_sha`

**Distribution channel:** `russia34.com`

**Attribution confidence:** `unknown`

**Field keys:**
`Age of Empires III`, `Batman`, `Call of Duty`, `Cores`, `Grand Theft Auto IV`, `PUBG`, `Processor`, `Project Reality`, `RAM`, `Threads`, `Umamusume`, `VideoCard`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
030b.                 w         d00b   d0 
0  .0 0   3 d00b d00b w .d00     wwP  dP0 
3wwK' 0b d3 `Yb. `Yb. 0 0  0       0 dPw0 
0  Yb `Y0P0 Y00P Y00P 0 `Y00    Y00P    0
==========<url>
Processor: 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz
Cores: 8
Threads: 8
RAM: 16064 MB
VideoCard: Intel(R) Iris(R) Xe Graphics

[Processes]
System
Secure System
Registry
smss.exe
csrss.exe
wininit.exe
csrss.exe
winlogon.exe
services.exe
LsaIso.exe
lsass.exe
svchost.exe
fontdrvhost.exe
fontdrvhost.exe
svchost.exe
WUDFHost.exe
svchost.exe
svchost.exe
dwm.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
svchost.exe
[... truncated; full sample at ``sample.txt`` (approx. 223 more lines) ...]
```

## Detection

ASCII-art REDLINE banner inside an asterisk-bordered box
followed by `https://russia34.com` subscriber lines is the
cleanest trigger. Pair with the stripped Redline-shape field
set to confirm.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redline`](../redline/)
- [`redlinelike-stealer`](../redlinelike_stealer/)

## References

- russia34.com
