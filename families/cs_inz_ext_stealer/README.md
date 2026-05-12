# CSInzExtStealer

CSInzExtStealer is a CyStack-coined identifier for a
snake_case `_info.json` panel observed inside
`!! 2025 NOV.part001.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/<HOST>$<USER>_<YYMMDD>_
<HHMMSS>/` per-victim folders. The body is a single flat
JSON object with eleven keys: `channel`, `pc_name`,
`pc_login`, `pc_info`, `path`, `uuid`, `sid`,
`inz_ext_count`, `python`, `timestamp`, `client_utc`.

The panel self-identifies as Python-built: `pc_info`
carries Python's `platform.platform()` dash-joined
string (`Windows-<release>-<build>-<service_pack>`) and
`python` is the absolute path to the interpreter that
produced the log (e.g. `C:\Users\<u>\AppData\Local\
Programs\Python\Python3127\python.exe`). The `channel`
value is an alphanumeric campaign / builder code (first
observed literal `A7-574`) the operator uses to retag
each victim - it is an internal campaign id rather than
a Telegram handle. The `inz_ext_count` key is the panel-
unique marker; the `inz_` prefix is unusual and reads as
the panel author's shorthand for an installed-extension
or inzip-extension counter. Family attribution is
provisional pending a published threat-intel mapping for
this layout. The Python-runtime self-reference suggests
a relative of the Vietnamese-speaking-actor cluster
around PXA, Braodo, and Lone None, but none of those
families publishes this exact JSON schema.

**Also known as:** `_info.json snake_case panel`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `_info.json inz_ext_count schema`

## Targets

- Browser saved credentials and cookies (in sibling cred files)
- Windows machine identity (SID, machine UUID)
- System hardware and locale inventory

## Variants

### `_info.json inz_ext_count schema`

**Fingerprint id:** `info_json_inz_ext_count_schema`

**Attribution confidence:** `unknown`

**Filenames:** `_info.json`

**Sample (sanitized):**

```
{
    "channel": "A7-574",
    "pc_name": "WTL314",
    "pc_login": "Admin",
    "pc_info": "Windows-11-10.0.26100-SP0",
    "path": "D:\\Shubham\\veg\\VegetableMarket-MobileApp",
    "uuid": "00000000-0000-0000-0000-b278d02ef0dd",
    "sid": "S-1-5-21-3058702912-1689282778-2706428528",
    "inz_ext_count": 0,
    "python": "C:\\Users\\Admin\\AppData\\Local\\Programs\\Python\\Python3127\\python.exe",
    "timestamp": 1760697813,
    "client_utc": "2025-10-17 <ip>"
}
```

## Detection

Fingerprint requires the `"inz_ext_count"` JSON-key
substring (the panel-unique marker) plus the `"pc_login"`
and `"client_utc"` snake_case keys as cross-confirmation.
The marker alone is enough to discriminate against any
currently-registered parser, but the snake_case pair
guards against fragments that quote the marker name in
prose (e.g. a write-up that references the field). All
three together cannot collide with Acreed (PascalCase
`PcName` / `IsElevator` shape) or any plain-text panel
parser. During triage, treat family attribution as
unknown: the `_info.json` is panel metadata only, and
the underlying stealer cannot be identified from these
eleven fields alone. The per-victim folder ships sibling
credential / cookie files where any follow-on family
fingerprinting should run.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)

## Related families

- [`acreed`](../acreed/)
- [`pxa`](../pxa/)

## References

- https://www.sentinelone.com/labs/ghost-in-the-zip-new-pxa-stealer-and-its-telegram-powered-ecosystem/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://github.com/MalBeacon/what-is-this-stealer
