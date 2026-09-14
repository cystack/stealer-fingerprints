# CSJohnDoeProjectStealer

CSJohnDoeProjectStealer is a CyStack-coined identifier for a
.NET-based stealer that self-identifies with the single-line
banner ``John Doe Project [t.me/JohnDoeProject]`` at the top
of its ``system_info.txt`` file. The body carries a flat
bare-key ``Key: Value`` identity block with .NET-canonical
fields (``CLR Version:``, ``.NET Runtime:``, ``Processor
Count:``, ``System Directory:``) plus host fingerprint
(``Computer Name``, ``User Name``, ``OS Version``, ``System
Version``, ``Local IP``, ``Default Gateway``, ``Antivirus``,
``CPU``, ``GPU``, ``RAM``, ``SCREEN``) and a trailing ``===
ENVIRONMENT VARIABLES ===`` section carrying a full ``KEY =
value`` env-var dump.

The ``@JohnDoeProject`` Telegram channel and the panel banner
are unattested in public reporting and community catalogues.
The .NET-canonical field set is consistent with a private
C#-based stealer template. Family attribution is provisional
pending a published threat-intel mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `John Doe Project banner stealer`, `@JohnDoeProject system_info.txt slice`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU, GPU, RAM,
resolution, Windows version, .NET Runtime, CLR)
- Network identity (LAN IP, default gateway)
- Account identity (Windows username, computer name)
- Full Windows Environment Variables dump

## Detection notes

Fingerprint requires the ``John Doe Project`` banner
substring, the ``t.me/JohnDoeProject`` URL literal, and a
line-anchored ``CLR Version:`` field key. The banner plus URL
form the operator self-id; pairing them with the
.NET-canonical ``CLR Version:`` keeps the claim off public
writeups that might quote the banner or URL in prose. During
triage, treat the underlying stealer family as unattributable
and rely on the channel plus panel_brand metadata to bucket
samples for analyst review. Companion files in the victim
folder (browser exports, cookie dumps, wallet artifacts) may
trigger more confident attributions through their own family
detectors.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/JohnDoeProject>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
