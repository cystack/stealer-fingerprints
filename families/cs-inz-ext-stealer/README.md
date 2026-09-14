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
a Telegram handle. The `inz_ext_count` key is the panel-unique marker; the `inz_` prefix is unusual and reads as
the panel author's shorthand for an installed-extension
or inzip-extension counter. Family attribution is
provisional pending a published threat-intel mapping for
this layout. The Python-runtime self-reference suggests
a relative of the Vietnamese-speaking-actor cluster
around PXA, Braodo, and Lone None, but none of those
families publishes this exact JSON schema.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `_info.json snake_case panel`
- Variants observed: **1**
- Historical Logmine records represented: **295**

## What it targets

- Browser saved credentials and cookies (in sibling cred files)
- Windows machine identity (SID, machine UUID)
- System hardware and locale inventory

## Detection notes

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

## Observed log variants

### `v_c52c47cb76eaf34248ee6f663ac79205`

- Parser: `logmine.ioc.parsers.cs_inz_ext_stealer.CSInzExtStealerParser`
- Observed filenames: `_info.json`
- Panel brand: `_info.json inz_ext_count schema`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **295**
- Representative sample: [open sample](samples/v_c52c47cb76eaf34248ee6f663ac79205/sample.txt)
- Sample SHA-256: `c0f891c635e29ba0908c8c9d920feaf518868b7c534b3f6179a63033d6e2ceba`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: -
- Field labels: `client_utc`, `inz_ext_count`, `pc_login`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- [Acreed](../acreed/)
- [PXA Stealer](../pxa-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
