# CSBugattiCloudPcInfoStealer

CSBugattiCloudPcInfoStealer is a CyStack-coined identifier for
the @Bugatti_Cloud Telegram aggregator's normalized
`pc_info.txt` slice. The body is a flat 13-field `Key: Value`
block: `IP`, `Country`, `HWID`, `OS`, `Architecture`,
`UserName`, `Computer Name`, `Local Time`, `Cores`, `RAM`, an
empty `Display Resolution`, a populated top-level
`Resolution`, and a `GPU` header with a tab-indented adapter
list. The `Local Time` field carries the lowercase JSON-null
literal `null` when the value is unset.

Two normalizer-side signatures point to a Python or Node.js
operator tool rather than a native stealer panel. First, the
`HWID` value glues the host's `Computer Name` (verbatim,
including the Windows-default `DESKTOP-` prefix) to the host's
MachineGuid UUID with no separator, a Python f-string
concatenation shape. Second, the `Local Time: null` literal
matches `json.dumps(None)` rather than any canonical stealer's
empty value or `Unknown` fallback string. Family attribution
is provisional pending a published threat-intel mapping for
this layout; public reporting and community catalogues
document @Bugatti_Cloud only as a redistribution channel,
never as a native stealer family.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@Bugatti_Cloud normalized pc_info.txt slice`, `Bugatti Cloud JSON-null Local Time variant`
- Variants observed: **0**

## What it targets

- Network identity (IP address, ISO 3166-1 alpha-2 country
code)
- Account identity (Windows username, computer name, MachineGuid
concatenated into the HWID value)
- Host hardware summary (OS name, architecture, core count, RAM
in gigabytes, screen resolution, GPU adapter list)

## Detection notes

Fingerprint requires the line-anchored `Local Time: null`
literal AND line-anchored `Architecture:` AND line-anchored
`HWID:` field keys. The `Local Time: null` literal is the
load-bearing disambiguator: no surveyed canonical stealer
emits the lowercase JSON-null placeholder for an unset
value. The other two anchors narrow the match to a system-info file shape rather than a code snippet or unrelated
document. During triage, treat the underlying source-log
family as unattributable and rely on the channel and panel
brand metadata to bucket samples. Companion files in the
victim folder (sibling `information.txt`, browser dumps,
wallet exports) may carry stronger canonical-family
fingerprints when present.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1592](https://attack.mitre.org/techniques/T1592/) | Gather Victim Host Information |

## Related catalog profiles

- [Bugatti Cloud](../bugatti-cloud/)
- [Category Stealer](../category-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
