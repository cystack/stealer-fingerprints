# CSMSKDateStealer

CSMSKDateStealer is a CyStack-coined identifier for an
info-stealer `information.txt` whose opening line is an
exfil timestamp suffixed with `MSK` (Moscow Standard Time).
The file is a flat `Key: Value` block: short 16-hex
`Machine UUID`, a `Machine: <hostname>/<user>` slash-suffix
identity, hardware fields, a localised `Local Time:
<date> (UTC+<offset>) <city>` clock, a geolocation block
keyed on the ip-api.com JSON shape (`CountryCode`,
`Region Name`, `IP Timezone`), and a wallet-extension
enumerator that maps wallet names to `%USERPROFILE%` paths
with right-arrow padding (`MetaMask       -> ...`).

Family attribution is provisional. The victim-profile field
set overlaps with Snake Keylogger's documented host-profile
per Fortinet's analysis, but Snake Keylogger's documented
exfiltration is an SMTP / FTP / Telegram message body, not
a standalone info.txt with a wallet-enumerator block. No
curated CTI source maps this exact shape to a named family.

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials and cookies
- Crypto wallet browser extensions (MetaMask, Phantom, ...)
- System hardware and locale inventory

## Variants

### `cystack_79d81103`

**Attribution confidence:** `unknown`

**Field keys:**
`City`, `Country`, `CountryCode`, `Date`, `GPU`, `IP`, `IP Timezone`, `Local Time`, `MAC`, `Machine`, `Machine UUID`, `Processor`, `RAM`, `Region Name`, `Windows`, `ZIP`

**Filenames:** `information.txt`

**Sample (sanitized):**

```
Date: 18.10.2022 <ip> MSK
Machine UUID: 91cc0abb57b01362
Windows: Windows 10 Home
Machine: DESKTOP-VT4F6K1/pc
Local Time: 18.10.2022 <ip> (UTC+03:00) İstanbul
Processor: Intel(R) Core(TM) i7-4770 CPU @ 3.40GHz
RAM: 8 GB
GPU: NVIDIA GeForce GTX 1050 Ti
MAC: <redacted>

IP: <redacted>
Country: Turkey
CountryCode: TR
Region Name: Istanbul
City: <redacted>
ZIP: <redacted>
IP Timezone: +03:00

MetaMask       -> %USERPROFILE%\\AppData\\Local\\Google\\Chrome\\User Data\\Default\\Local Extension Settings\\nkbihfbeogaeaoehlefnkodbefgpgknn
Phantom        -> %USERPROFILE%\\AppData\\Local\\Google\\Chrome\\User Data\\Default\\Local Extension Settings\\bfnaelmomeimhlpmgjnjophhpkkoljpa
```

## Detection

The MSK-suffixed `Date:` opener is the single most
distinctive marker: no other family in this catalog emits a
timezone abbreviation on its Date line (Lumma uses dotted
DD.MM.YYYY without trailing abbreviation, .B.A.B.A. uses
DD/MM/YYYY, Snake Stealer uses M/D/YYYY with AM/PM). The
`Machine UUID:` co-requirement closes the loop against a
stray readme that mentions an MSK-suffixed date by
coincidence. If a published threat-intel report later
attributes this format to a known stealer family, rename
the `family` constant on the parser rather than adding a
second parser.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1124 System Time Discovery](https://attack.mitre.org/techniques/T1124/)

## References

- https://www.fortinet.com/blog/threat-research/deep-analysis-of-snake-keylogger-new-variant
- https://zw01f.github.io/malware%20analysis/snake/
