# PyInfo Stealer

Unidentified Python-based stealer observed inside `@BRADMAX`
aggregator packs under `[UN]UNKNOWN_(N)` filler folders. The
`system_info.txt` is a flat key/value record followed by two
`--- ... ---` framed sections. Family attribution is
provisional; the format has not been mapped to a published
threat-intel name.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **2**

## What it targets

- No target inventory published yet.

## Detection notes

The `Hostname:` opening (lowercase keys throughout) and dual
`--- Section ---` framing is the signature. The Python origin
is inferred from the field shape and snake_case key style
(e.g. lowercase `user:` and `hostname:`), not from any
explicit banner.

## Observed log variants

### `v_a3b2ccd87ba2430c6dde5f31bb7f6a42`

- Parser: `logmine.ioc.parsers.pyinfo_stealer.PyInfoStealerParser`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_a3b2ccd87ba2430c6dde5f31bb7f6a42/sample.txt)
- Sample SHA-256: `6c9f1c74223a815f4a5a14e070d86056cd05134534c8321127f6cf02da556ce4`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `--- Installed Programs (top 50) ---`, `--- Top Processes ---`
- Field labels: `ISP`, `Org`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
