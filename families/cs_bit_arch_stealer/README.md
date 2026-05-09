# CSBitArchStealer

CSBitArchStealer is a CyStack-coined identifier for a
colon-no-space `info.txt` panel observed inside
`!! 2026 JAN.part01.rar` aggregator packs distributed via
Telegram log channels. Per-victim folders follow a
`<id>_<2-hex>_<ip>_<DD-MM-YY>/info.txt` layout. The body
is a flat key/value block whose distinguishing markers are
a parenthesised `BitArch:(x64 bit)` architecture field and
a `WindowsVersion:` OS-name field, neither of which is
used by any other family in the parser registry.

The panel writes literal `Unknown country` / `Unknown city`
/ `Unknown Region` / `Unknown IP` / `Unknown Timezone` /
`Unknown Zip` placeholders when its IP-to-geo lookup fails.
Field-name semantics deviate from convention: the panel
appears to source `Username` from Windows USERDOMAIN
(workgroup label) and `DomainName` from the machine name,
so the values are essentially swapped relative to what the
labels suggest.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed curated CTI
sources (TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare / Cloudforce One, Talos, Unit 42,
Microsoft TI, BleepingComputer, ANY.RUN, Drweb, Sekoia,
Esentire) plus public stealer-format catalogues
(`MalBeacon/what-is-this-stealer`, `fastfire/deepdarkCTI`)
do not document a family using this exact field set. The
`CSBitArchStealer` literal preserves the panel's most
distinctive marker as the suffix; rename the family
constant if a curated CTI report later identifies the
underlying builder.

**Variants observed:** 1
**Total observations:** 4
**Top attribution confidence:** `unknown`
**Operator panel brands:** `BitArch:(x64 bit) info.txt`

## Targets

- Browser saved credentials and cookies
- System hardware and locale inventory

## Variants

### `BitArch:(x64 bit) info.txt`

**Fingerprint id:** `bitarch_x64_bit_info_txt`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `BitArch`, `CPU`, `City`, `Country`, `Date`, `DomainName`, `GPU`, `IP`, `RAM`, `Region`, `ScreenSize`, `TimeZone`, `Username`, `WindowsVersion`, `ZIP`

**Filenames:** `info.txt`

**Sample (sanitized):**

```
Username:<redacted>
DomainName:DESKTOP-FLFR2G3
Date:1/2/2025 <ip> AM
GPU:Intel(R) HD Graphics 4600
CPU:Intel(R) Core(TM) i7-4700HQ CPU @ 2.40GHz
RAM:8107MB
WindowsVersion:Windows 11 Pro
BitArch:(x64 bit)
Antivirus:Windows Defender
ScreenSize:1920x1080
Country:Unknown country
City:<redacted>
Region:Unknown Region
IP:<redacted>
TimeZone:Unknown Timezone
ZIP:<redacted>
```

## Detection

Requires the `BitArch:(` parenthesised-value substring AND
the `WindowsVersion:` substring. Either alone is too weak
(a stray document could mention `BitArch` without the
parenthesis, or quote `WindowsVersion` in unrelated text);
the pair together is unique to this panel. The literal
`Unknown <field>` placeholders for failed geolocation are
stripped to null at IOC emission so triage queries on
`country` / `city` / `ip` / `time_zone` / `zip_code`
reflect actual information content rather than the
panel's placeholder string.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
