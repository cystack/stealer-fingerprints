# CSBradMaxCloudBannerOnlyStealer

CSBradMaxCloudBannerOnlyStealer is a CyStack-coined
identifier for a banner-only `system_info.txt` shape
distributed through the @bradmax_cloud Telegram channel.
The file ships the aBradMax Figlet banner inside a
`*`-bordered frame with the
`Telegram: https://t.me/BRADMAX_CLOUD` watermark and
nothing else: no `Key: Value` field block, no section
separators, no installed-software inventory or environment-variable dump. The underlying stealer panel template
emitted the header but the field-population step failed
(operator-side normalization failure, anti-leech truncation, or
the source log was captured mid-write).

Observed inside `!! 2024 MAY.part01.rar` packs at
`<CC>_<IPv4>_<YYYY>_<MM>_<DD>_<HH>_<MM>_<SS>/
/system_info.txt` victim folders (e.g.
`CZ_<IPv4>_2024_04_22_16_05_20/system_info.txt`).
The all-underscore timestamp separators distinguish this
folder shape from the Mars-fork sibling that puts a space
between the date and time components. The file basename
`system_info.txt` (underscore + lowercase) is distinct
from the `system.txt` / `System.txt` / `Information.txt`
filenames the other four BRADMAX_CLOUD slices use, but
the fingerprint relies on body content rather than the filename
so that variant filenames carrying the same banner-only
body remains identifiable.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX_CLOUD empty-body system_info.txt stub`, `BRADMAX_CLOUD banner-only skeleton sample`
- Variants observed: **0**

## What it targets

- Channel-attribution metadata only; no extractable victim
or device fields

## Detection notes

Fingerprint requires both the
`Telegram: https://t.me/BRADMAX_CLOUD` watermark AND that
the file content (after rstrip) ends with at least 20
consecutive `*` characters - the closing banner border.
Body-bearing siblings (DCRat, Lumma, normalizer-generated,
Mars-fork) all end with a field line that does not
satisfy the asterisk-tail check, so the disambiguator is
unambiguous. During triage, treat the underlying stealer
family as unattributable: the banner-only sample carries
no signal that pins it to a specific builder. Companion
files in the victim folder (browser dumps, wallet
exports) carry the real harvested credentials; the
`system_info.txt` banner-only stub is just the header
stub.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [Mars Stealer](../mars-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
