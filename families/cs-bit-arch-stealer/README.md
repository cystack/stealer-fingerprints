# CSBitArchStealer

CSBitArchStealer is a CyStack-coined identifier for a
colon-no-space `info.txt` panel observed inside `!! 2026
JAN.part01.rar` aggregator packs distributed via Telegram log
channels. Per-victim folders follow a
`<id>_<2-hex>_<ip>_<DD-MM-YY>/info.txt` layout. The body is a
flat key/value block whose distinguishing markers are a
parenthesised `BitArch:(x64 bit)` architecture field and a
`WindowsVersion:` OS-name field, neither of which is used by
any other family in the parser registry.

The panel writes literal `Unknown country` / `Unknown city` /
`Unknown Region` / `Unknown IP` / `Unknown Timezone` /
`Unknown Zip` placeholders when its IP-to-geo lookup fails.
Field-name semantics deviate from convention: the panel
appears to source `Username` from Windows USERDOMAIN
(workgroup label) and `DomainName` from the machine name, so
the values are essentially swapped relative to what the labels
suggest.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting plus
public stealer-format catalogues do not document a family
using this exact field set. The `CSBitArchStealer` literal
preserves the panel's most distinctive marker as the suffix;
rename the family constant if a public writeup later
identifies the underlying builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **49**

## What it targets

- Browser saved credentials and cookies
- System hardware and locale inventory

## Detection notes

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

## Observed log variants

### `v_969a7984a60742aead582cf696200347`

- Parser: `logmine.ioc.parsers.cs_bit_arch_stealer.CSBitArchStealerParser`
- Observed filenames: `info.txt`
- Panel brand: `BitArch:(x64 bit) info.txt`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **49**
- Representative sample: [open sample](samples/v_969a7984a60742aead582cf696200347/sample.txt)
- Sample SHA-256: `579f4f22fe68541d46e241ef2292428b2063306d08c43e3961bb2c382a8bcccb`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `BitArch:(`
- Field labels: `WindowsVersion`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
