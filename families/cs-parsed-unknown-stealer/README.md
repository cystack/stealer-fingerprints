# CSParsedUnknownStealer

CSParsedUnknownStealer is a CyStack-coined identifier for
a banner-less variant of the parser-tool normalized log
wrapper that the CSBradMaxCloudParsedStealer sibling also
claims. The wrapper is an in-house Python normalizer that a
Telegram log broker runs over raw stealer output before
redistribution: leading-space `Key: Value` fields, a pipe-joined `Single-line params:` hardware summary, an `Original
file: C:\Users\admin\Desktop\<workdir>\...` reference to
the operator's analysis-machine working folder, and a
`Source: IP-API (https://ip-api.com/)` geolocation
attribution line.

This variant carries `Stealer: Unknown` (the tool ran but
could not fingerprint the underlying stealer family) and
ships without the `https://t.me/BRADMAX_CLOUD` banner that
scopes the CSBradMaxCloudParsedStealer sibling. The
`<workdir> = 2` operator ships all three sibling parser
shapes seen so far (RisePro, Rhadamanthys, Unknown) without
a channel banner, so `panel_brand` and
`distribution_channel` stay unset.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill (per underlying stealer)
- Crypto wallet extensions and desktop clients (per underlying stealer)
- System hardware, locale, and geolocation inventory (per wrapper output)

## Detection notes

High-confidence trigger: line-anchored ` Stealer: Unknown`
(leading space) plus ` Original file:` plus ` Source:
IP-API (https://ip-api.com/)`, with no
`https://t.me/BRADMAX_CLOUD` banner in the body. Attribution
is intentionally CyStack-coined because the wrapper tool
itself admits it could not fingerprint the source stealer.
Analysts triaging this variant should pivot on the raw log
if the archive preserved it (the `Original file:` field
points at the source path on the operator machine), or
match victim IPs against other stealer channels to guess
the source family.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [RisePro](../rise-pro/)
- [Rhadamanthys](../rhadamanthys/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
