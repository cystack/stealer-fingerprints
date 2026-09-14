# CSBinaryGarbageStealer

CSBinaryGarbageStealer is a CyStack-coined identifier for
a binary-garbage `information.txt` shape distributed inside
`!! 2025 NOV.part001.rar` BRADMAX aggregator packs at
`[<CC>]<IP>/information.txt` victim folders. The file is
multi-megabyte (3.6 MB observed for the PL victim that
produced this identifier) and reads back as dense CJK
mojibake (U+3000-U+9FFF range) when interpreted as UTF-8.
The pattern is consistent with an encrypted or compressed
binary payload that the panel template wrote into the
`information.txt` slot instead of structured text:
high-entropy bytes form valid 3-byte UTF-8 sequences in
the CJK-ideograph range, so random data decodes to a
wall of CJK characters.

The label groups repeated per-victim copies of these binary-garbage files across the parent log pack. The body carries no
extractable victim or device fields. Family attribution
is provisional pending a published threat-intel mapping
for the underlying stealer family that emits these files,
or reverse-engineering of the encoding scheme that would expose
structured fields.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX binary-blob information.txt`, `Multi-MB CJK-mojibake info.txt placeholder`
- Variants observed: **0**

## What it targets

- Unknown (body is opaque encrypted / compressed payload)

## Detection notes

Fingerprint requires file size > 50 KB AND CJK-range
(U+3000-U+9FFF) character density > 20% in the first
10 KB AND a BRADMAX archive-root path gate
(`!! YYYY MON` pattern). The BRADMAX anchor prevents confusion with legitimate
CJK-language documents from other archives. During triage, treat this
label as "victim infected but info.txt body is
unparseable": the infection is confirmed via the parent
archive context, but the per-victim metadata is missing
until the encoding scheme is reversed. The 10-KB sample
window keeps the density scan cheap on multi-megabyte
files.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1027](https://attack.mitre.org/techniques/T1027/) | Obfuscated Files or Information |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSSoftwareTailStealer](../cs-software-tail-stealer/)
- [CSPasswordsNotFoundStub](../cs-passwords-not-found-stub/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
