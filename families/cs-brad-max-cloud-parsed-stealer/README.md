# CSBradMaxCloudParsedStealer

CSBradMaxCloudParsedStealer is a CyStack-coined identifier for
a normalizer-generated `Information.txt` shape distributed
through the @bradmax_cloud Telegram channel. The body is the
output of an in-house Python script the operator runs over raw
stealer logs before redistributing them: a leading-space
`Key: Value` block format prefixed by an `aBradMax` Figlet
banner and the literal `Telegram: https://t.me/BRADMAX_CLOUD`
watermark. The first body field is `Stealer: Unknown`, which
is the normalization tool's own admission that it could not
fingerprint the underlying family that captured the source
log.

Independent research across the indexed public stealer-log
normalizer corpus turned up no public tool that emits this
format. The `Original file:` field points to the operator's
analysis-machine path
`C:\Users\admin\Desktop\beka\<id>_<CC>_<IPv4>_<DD-MM-YY>\
/information.txt`, where `beka` is the working-folder handle
on the operator's box. The script also enriches the victim IP
via ip-api.com and records the data source explicitly via a
`Source: IP-API (https://ip-api.com/)` attribution line; no
stealer panel emits this credit.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX_CLOUD normalizer-generated Information.txt`, `BRADMAX_CLOUD Stealer:Unknown normalizer output`
- Variants observed: **0**

## What it targets

- Victim geolocation (country, region, city, ZIP, ISP)
enriched from ip-api.com
- Host hardware summary (OS, screen resolution, CPU, GPU,
RAM)
- Original-source-log path reference on the operator's
analysis machine

## Detection notes

Fingerprint requires both the
`Telegram: https://t.me/BRADMAX_CLOUD` watermark AND the
line-anchored ` Stealer: Unknown` normalizer literal. The
watermark is shared with DCRat- and Lumma-shaped sibling
profiles in the same @bradmax_cloud channel portfolio; the
` Stealer: Unknown` field distinguishes this
normalizer-generated variant. During triage, treat the underlying
stealer family as unattributable - the normalization tool itself records it as unknown. The victim
IP, country, and hardware summary are still real and
indexable.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1592](https://attack.mitre.org/techniques/T1592/) | Gather Victim Host Information |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
