# CSInfoNetworkSectionStealer

CSInfoNetworkSectionStealer is a CyStack-coined identifier for
a heavily-padded fixed-width ``_Info.txt`` panel with
underscored field names and ``[Info_Network]`` /
``[Info_Software]`` bracketed-underscore section headers.
Observed inside the ``25 APRIL - 25729 LOGS.part01.rar``
aggregator pack at ``<32-char>_<TIMESTAMP>/_Info.txt`` victim
folders. The 2020-07-10 log timestamp on observed samples
suggests an older builder whose panel-format research
pre-dates current public reporting.

The emitter replaces spaces with underscores inside multi-word
field keys (``Local_Date_and_Time:``, ``OS_Language:``,
``Keyboard_Languages:``, ``Display_Resolution:``) and uses a
paren-with-spaces annotation convention (``UTC ( TimeZone )
:``, ``UserName ( ComputerName ) :``). The ``UTC ( TimeZone
)`` value packs a bare 4-digit hhmm offset alongside an IANA
Olson timezone name (``-0400 ( America/New_York )``). Related
to the ``CSStartBuildInfoStealer`` sibling by the
shared ``_Info<...>.txt`` leading-underscore filename
convention and paren-annotated UserName field, but the
specific field-name spellings and bracketed-underscore section
format make it a distinct panel-emit variant.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Info_Network + Info_Software section stealer`, `Underscored-field _Info.txt stealer`
- Variants observed: **0**

## What it targets

- Host OS + hardware fingerprint (Windows version + build,
CPU with core count, GPU, display resolution, language,
IANA Olson timezone)
- Account identity (user + computer name from the paren-annotated ``UserName ( ComputerName )`` field)
- Geo enrichment (IP, country name + ISO code, city)
- Installed software inventory (bracketed ``[Info_Software]``
section with per-program version tags)

## Detection notes

Fingerprint requires three line-anchored anchors:
``[Info_Network]``, ``[Info_Software]``, and the
``UserName ( ComputerName ) :`` paren-with-spaces literal.
The bracketed-underscore section headers and the paren-with-spaces literal together are unique across this
catalog. During triage, correlate with the sibling
``CSStartBuildInfoStealer`` variant which
shares the ``_Info<...>.txt`` filename convention but
uses direct labels and tight parens instead of the
underscored + spaced form observed here.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- [CSStartBuildInfoStealer](../cs-start-build-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
