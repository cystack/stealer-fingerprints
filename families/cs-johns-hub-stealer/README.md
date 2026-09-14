# CSJohnsHubStealer

CSJohnsHubStealer is a CyStack-coined identifier for a stealer
that self-identifies with the ``JOHN GOT RIPPED`` Figlet
ASCII-art banner and the ``https://t.me/johns_hub`` Telegram
channel URL. The panel writes a flat bare-key ``UserInfo.txt``
body with 12 identity fields: ``Build: @johns_hub``
(self-referencing tag), ``Stealer version: <N.N.N>``
self-declared version, plus ``Country``, ``IP``, ``HWID``
(32-character uppercase hex), ``Username``, ``OS``,
``Language``, ``CPU``, ``GPU``, ``RAM``, ``Resolution``, and a
US-format ``Date:`` timestamp.

The @johns_hub channel and JOHN GOT RIPPED banner are not
documented in any public reporting or community catalog. The
flat field set is consistent with a generic .NET stealer
template that could be a new family, a rebrand of an existing
one, or a private-panel build. Family attribution is
provisional pending a published threat-intel mapping for this
layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `JOHN GOT RIPPED banner stealer`, `@johns_hub UserInfo.txt slice`
- Variants observed: **0**

## What it targets

- Host hardware and OS fingerprint (CPU, GPU, RAM,
resolution, Windows version, HWID)
- Network identity (IP, country, language)
- Account identity (Windows username)

## Detection notes

Fingerprint requires both the ``https://t.me/johns_hub``
channel URL and the line-anchored ``Stealer version:`` field
key. Neither anchor alone is unique enough (the URL could
appear in prose in a public writeup), so both are required.
During triage, treat the underlying stealer family as
unattributable and rely on the channel + panel_brand metadata
to bucket samples for analyst review. Companion files in the
victim folder (browser exports, wallet artifacts, cookie
dumps) may trigger more confident attributions through their
own family detectors.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/johns_hub>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
