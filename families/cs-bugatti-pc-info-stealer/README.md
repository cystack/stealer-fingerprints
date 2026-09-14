# CSBugattiPcInfoStealer

CSBugattiPcInfoStealer is a CyStack-coined identifier for the
@Bugatti_Cloud aggregator's ``pc_info.txt`` bare-key text
slice. The file is a flat ``Key: Value`` body whose vocabulary
resembles the publicly documented Acreed pc_info.json key set
but with operator-side renames throughout: ``PcName`` becomes
``Computer Name``, ``Arch`` becomes ``Architecture``,
``CpuCores`` becomes ``Cores``, ``ScreenSize`` becomes
``Resolution``. The panel also emits a duplicate ``Display
Resolution:`` line with an empty value on the line just before
the populated ``Resolution:`` key, and the ``HWID:`` value is
a Computer-Name-prefixed UUID composite rather than a bare
UUID or hex blob.

The @Bugatti_Cloud channel is a documented multi-family
aggregator that redistributes Redline and other stealer logs
in a custom container format. This ``pc_info.txt`` variant may
be an operator-normalized text output of Acreed data or a
different underlying builder's panel; the renamed vocabulary
is too far from documented Acreed JSON to attribute directly.
Family attribution is provisional pending a published
threat-intel mapping for this exact text layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `@Bugatti_Cloud pc_info.txt slice`, `Bugatti operator-normalized Acreed-adjacent variant`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU cores, RAM, GPU,
screen resolution, Windows version and architecture)
- Network identity (IP address, country)
- Account identity (Windows username, computer name)

## Detection notes

Fingerprint requires four bare-key line-anchored labels
together: ``UserName:``, ``Architecture:``, ``Cores:``,
and ``Local Time:``. The combination is disjoint from
PyInfoStealer (which pairs ``Architecture:`` with
``Processor:`` and ``ISP:`` / ``Org:`` ip-api.com keys)
and from CSRussia34Stealer (which pairs
``Architecture:`` with ``Laptop:`` and the
``russia34.com`` channel substring). During triage,
treat the underlying stealer family as unattributable
and rely on the channel + panel_brand metadata to bucket
samples for analyst review. Companion files in the
victim folder (browser exports, wallet artifacts) may provide more confident family attribution.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [Acreed](../acreed/)
- [Bugatti Cloud](../bugatti-cloud/)
- [Category Stealer](../category-stealer/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
