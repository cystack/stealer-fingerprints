# Ailurophile

Ailurophile is a subscription-style info-stealer first
publicly documented in August 2024. The stub is PHP-coded,
packaged into a Windows PE with ExeOutput, and then
virtualized with BoxedApp. Operators configure each build
through the family's own web panel, which lets them pick the
extension list, the folder list, and the filename keyword list
that drive the on-victim file grabber. Reports are sent to the
Telegram chat configured at build time.

The on-victim staging directory is
`%LOCALAPPDATA%\Ailurophile`, and the system summary is a flat
`Key: Value` `info.txt` whose distinctive fields are `Allowed
Extensions:`, `Folders to Search:`, `PC Type:`, and `Screen
Resolution:`.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Ailurophile Stealer`
- Variants observed: **1**
- CyStack observations represented: **66**

## What it targets

- Browser saved credentials, cookies, autofill, history
- Credit card data from browser autofill
- Crypto wallet extensions and desktop clients
- Generic file grabber driven by configurable keyword and extension lists

## Detection notes

The combination of `Allowed Extensions:` and `Folders to Search:`
line-anchored is the canonical fingerprint and matches the
public ail-project YARA rule. Operator rebrands prepend an
extra banner line like `HORUS B13: @HORUS B13` above the
canonical block: the underlying fields are identical, so
attribution stays under `Ailurophile` and the banner surfaces
through `panel_brand` and `distribution_channel`. False-positive
risk is low because no other family in this catalog emits the
paired `Allowed Extensions:` / `Folders to Search:` keys.

## Observed log variants

### `v_775f61d0716a746c69c9f5e6fd0c575f`

- Format ID: `ailurophile`
- Observed filenames: `info.txt`
- Panel brand: `HORUS B13`
- Distribution channel: `@HORUS B13`
- Attribution confidence: **high**
- Historical records represented: **66**
- Representative sample: [open sample](samples/v_775f61d0716a746c69c9f5e6fd0c575f/sample.txt)
- Sample SHA-256: `bb2884c73df79e130973e24e6fc3a5840a192edc7bc8f6ce207f9d5a778007af`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `HORUS B13`
- Field labels: `Allowed Extensions`, `Folders to Search`


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

- <https://www.cyfirma.com/research/ailurophile-stealer/>
- <https://blog.gdatasoftware.com/2024/08/38005-ailurophile-infostealer>
- <https://github.com/ail-project/ail-yara-rules/blob/master/rules/stealer/ailurophile.yara>

Machine-readable record: [family.json](family.json)
