# CSDaisyCloudStealer

CSDaisyCloudStealer is a CyStack-coined identifier for a
per-line-watermarked `UserInformation.txt` panel distributed
through the `@UP_DAISYCLOUD` Telegram channel. Each line in
the body is prefixed with an obfuscated `Daisy Private cloud`
banner (digit-noise injected between every letter of `Daisy`,
`Private`, and `cloud`) plus a 4-9-character random alphabetic
gibberish token before the actual `Key: Value` payload. The
watermark digits and gibberish vary per line as an anti-leech
mechanism: a single grep for the channel name fails on any
individual line. After stripping the watermark the body is a
canonical RedlineLike variant 3 layout (Buy-now banner plus
extended-block) with the `Operation System:` Redline-canonical
typo and the full `Computer Name:` / `Domain Name:` /
`MachineID:` / `Product Key:` / extended-block field set.

Daisy Cloud has run on Telegram since October 2023 and public
reporting describes it as "potentially linked to the notorious
RedLine Stealer family" - those attributions hedge with
"potentially" / "appears to come from", and no public analysis
confirms the channel reliably resells a single named family.
Family attribution is provisional pending a published
threat-intel report that maps the watermark directly to a
canonical builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **low**
- Aliases: `@UP_DAISYCLOUD obfuscated UserInformation.txt`, `Daisy Private cloud per-line watermark variant`
- Variants observed: **1**
- Historical Logmine records represented: **241**

## What it targets

- Browser-saved credentials (harvested by underlying stealer)
- Host metadata: hostname, NetBIOS / domain, Windows username
- OS fingerprint with build number and architecture
- Hardware inventory: CPU model, GPU model, installed RAM
- Victim public IP plus ISO country code
- HWID and Windows MachineID
- Wallpaper SHA-1 hash

## Detection notes

Fingerprint requires 3+ matches of the digit-interspersed
`Daisy Private cloud` watermark regex AND the
`Operation System:` Redline-canonical typo substring. The
3-match threshold rejects unrelated text that happens to
quote the channel name once; the OS typo confirms the
underlying body is Redline-shape rather than an arbitrary
watermarked file. During triage, the parser strips the
per-line watermark before field extraction, then recovers
the standard Redline-shape IOC fields. Treat the
attribution as low-confidence: the channel reportedly
resells RedLine logs but the body could also come from a
Redline fork or an unrelated stealer that adopted
Redline's `UserInformation.txt` field layout.

## Observed log variants

### `v_7fbb06edb08e717aa0cd6e0ecc602229`

- Parser: `logmine.ioc.parsers.cs_daisy_cloud_stealer.CSDaisyCloudStealerParser`
- Observed filenames: `UserInformation.txt`
- Panel brand: `Daisy Private cloud`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **low**
- Historical records represented: **241**
- Representative sample: [open sample](samples/v_7fbb06edb08e717aa0cd6e0ecc602229/sample.txt)
- Sample SHA-256: `9c2e50da54770183f2852eda98b311c4a1f7819af4ee6b04c0a9e459094d6e2e`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `Installed RAM:`, `Operation System:`
- Field labels: -


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [CSPrimoCloudStealer](../cs-primo-cloud-stealer/)
- [CSDarkSideCloudStealer](../cs-dark-side-cloud-stealer/)

## Observed distribution channels

- <https://t.me/UP_DAISYCLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
