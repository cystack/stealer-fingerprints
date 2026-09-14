# CSBugattiUserInfoStealer

CSBugattiUserInfoStealer is a CyStack-coined identifier for
the @Bugatti_Cloud aggregator's ``UserInformation.txt`` hybrid
slice. The file is a flat ``Key: Value`` body whose vocabulary
mixes markers from multiple documented stealer families.
Redline contributes the ``Operation System:`` typo,
``ScreenSize:``, and ``Log date:`` keys. Lumma contributes the
``# Buy now: TG`` operator banner template with the affiliate
value stripped. Rhadamanthys contributes the ``MachineID:``
UUID bot fingerprint. Mars Stealer contributes ``Installed
RAM:`` and ``Graphics card:``. Bugatti-specific additions
include CamelCase no-space ``UserName:`` / ``ComputerName:``,
a ``UUID:`` line for the system product UUID, a ``Current
Path:`` label for the malware install path, and a 3-language
block with spaced keys.

The @Bugatti_Cloud channel is a documented multi-family
aggregator that redistributes Redline and other stealer logs
in custom container formats. The mixed vocabulary observed
here is consistent with an operator-side reformatter that
normalises logs from multiple underlying panels into a unified
template. The ``UserInformation.txt`` filename is publicly
documented as Aurora Stealer's canonical exfil filename, but
no public writeup publishes the exact field-label mapping.
Family attribution is provisional pending a published
threat-intel writeup for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@Bugatti_Cloud UserInformation.txt slice`, `Bugatti hybrid Redline/Lumma/Rhadamanthys/Mars variant`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU model, GPU adapter
list, installed RAM, screen resolution, Windows version)
- Network identity (IP address, country)
- Account identity (Windows username, computer name)
- Bot fingerprint identifiers (MachineID GUID, system
product UUID)
- Malware install path (Current Path field)

## Detection notes

Fingerprint requires four line-anchored labels together:
``# Buy now: TG`` (Lumma-affiliate template with stripped
value), ``Current Path:`` (Bugatti-specific label),
``Installed RAM:`` (Mars / Rhadamanthys v0.5 marker),
and ``MachineID:`` (Rhadamanthys bot fingerprint). The
four together are disjoint from Lumma (needs
``@lummanowork`` / ``LummaC2 Build:``), Rhadamanthys
(needs ``Wallpaper Hash:`` / family banner / BRADMAX +
``Traffic Name:``), Redline (needs ``FileLocation:``),
and RedlineLike (needs ``Version Build:`` / ``BUILD
NAME:`` / DARKSIDE banner / extended-block triple).
During triage, treat the underlying stealer family as
unattributable and rely on the channel + panel_brand
metadata to bucket samples for analyst review.
Companion files in the victim folder (browser exports,
wallet artifacts, screenshot.jpg) may provide more confident family attribution.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |

## Related catalog profiles

- [Aurora Stealer](../aurora-stealer/)
- [Bugatti Cloud](../bugatti-cloud/)
- [CSBugattiPcInfoStealer](../cs-bugatti-pc-info-stealer/)
- [Category Stealer](../category-stealer/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [Rhadamanthys](../rhadamanthys/)
- [Lumma](../lumma/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
