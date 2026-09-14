# CSStartBuildInfoStealer

CSStartBuildInfoStealer is a CyStack-coined identifier for a
fixed-width column-aligned ``_Information.txt`` panel observed
inside the ``4,5 MAY - 5433 LOGS2.part1.rar`` aggregator pack
at ``[<CC>][<HWID>]/_Information.txt`` victim folders. The
panel uses a distinctive ``Start Build:`` first-line field
whose value is the harvester's running executable path
(typically ``C:\WINDOWS\SysWOW64\nslookup.exe`` when the
stealer process-hollowed into a Windows built-in), followed by
fixed-width column-aligned key/value pairs where every value
starts at column 25.

Distinctive fields include ``UserName (ComputerName):`` with a
paren-annotated ``<user> (<hostname>)`` value, ``Total RAM:``
with the ``Total`` prefix, ``CPU:`` with a parenthesised
``(Cores: N)`` suffix, ``Display Resolution:`` with spaces
around the ``x``, ``UTC:`` as a bare 4-digit hhmm offset
without colon, and a bracketed ``[Installed software]``
section header followed by a free-form program-list body. The
2020-12-17 log timestamp on observed samples suggests an older
builder whose panel-format research pre-dates current public
reporting. Family attribution is provisional pending a
published threat-intel mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Start Build Information.txt stealer`, `Column-aligned nslookup.exe process-hollow stealer`
- Variants observed: **0**

## What it targets

- Host OS + hardware fingerprint (Windows version + build,
CPU with core count, GPU, RAM, resolution, language,
timezone offset)
- Account identity (user name + computer name from the paren-annotated ``UserName (ComputerName)`` field)
- Installed software inventory (bracketed ``[Installed
software]`` section with per-program version tags)

## Detection notes

Fingerprint requires four line-anchored anchors: ``Start
Build:``, ``UserName (ComputerName):``, ``Total RAM:``, and
the ``[Installed software]`` bracketed section header. The
four-anchor combination is unique across the registry.
During triage, correlate the ``Start Build:`` value with the
stealer process-hollow target (a Windows built-in exe path
like ``nslookup.exe`` is a strong process-hollow indicator).
The path-embedded HWID and country code fall out of the
``[<CC>][<HWID>]`` folder name convention; the body itself
does not emit IP or country fields.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1055.012](https://attack.mitre.org/techniques/T1055/012/) | Process Hollowing |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
