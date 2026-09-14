# CSOlsonTzGeoStealer

CSOlsonTzGeoStealer is a CyStack-coined identifier for a
minimal 5-field geo-only ``info.txt`` panel observed inside
the ``25-26 JUNE - 5000 LOGS2.rar`` aggregator pack. The
panel emits only ``City``, ``Region``, ``IP``, ``TimeZone``,
and ``ZIP`` fields with a distinctive tight-colon convention
(no space between the colon and the value) and an IANA / Olson
timezone format (``TimeZone:Europe/Paris`` instead of the
``UTC±HH:MM`` offset shape most canonical stealers emit).
The 5-field set matches an ``ipinfo.io`` or ``ip-api.com``
geo-lookup response verbatim, so the underlying builder is
likely a Python-based stealer that ships the raw geo-API
response as its ``info.txt``.

No banner, no HWID line, no host fingerprint (OS, CPU, RAM,
user, hostname all absent). The HWID appears in the folder-path prefix ``<CC>[<HWID>][<TIMESTAMP>]/`` but the body
itself is heavily truncated. Family attribution is
provisional pending a published threat-intel mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Olson TZ geo-only info.txt`, `Tight-colon 5-field geo panel`
- Variants observed: **0**

## What it targets

- Geo-IP enrichment only: victim IP, city, region name,
ZIP / postal code, IANA timezone name

## Detection notes

Fingerprint requires four line-anchored no-space-after-colon
anchors: ``City:``, ``Region:``, ``ZIP:``, and ``TimeZone:``
followed by an Olson-format value. The combination is
distinctive across this catalog. During triage, correlate with
companion files in the victim folder (browser exports,
wallet artifacts, cookie dumps, credential stores) to identify
the underlying stealer family. The `info.txt` contributes only the geo block; use companion credential artifacts to establish the underlying family.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
