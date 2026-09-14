# CSMinutesFromGmtStealer

CSMinutesFromGmtStealer is a CyStack-coined identifier for
a `System Info.txt` panel whose timezone field is emitted
as `+NNN minutes from GMT` (a signed integer minute
offset with a trailing GMT literal). The format mirrors
the JavaScript `Date.prototype.getTimezoneOffset` semantics,
hinting at a Node.js or Electron-based panel. Cyfirma's
LTX Stealer writeup and Microsoft's Node.js-abuse guidance
both document Node.js-runtime stealers as a growing
category, but no curated CTI vendor documents this exact
panel layout.

Observed inside `MARCH 15 - 3059 LOGS.part01.rar`
aggregator packs at
`[<CC>]<32-hex-lowercase-HWID>/System Info.txt` victim
folders. The filename carries a literal ASCII space; the
folder shape uses lowercase 32-hex HWID with a bracketed
country-code prefix. Body opens with a bare `IP info: <CC>
<IPv4>` two-word first-line key that packs the country
code and IPv4 on one line, followed by a bare
`System Information:` section header, tab-indented
`- Key: Value` sub-fields (Locale, Time zone, OS,
Architecture, CPU, RAM, Display size, Display Devices
nested numbered list), and a bare `Installed applications:`
section with tab-indented `<Name> <Version>` per-app
entries. Family attribution is provisional pending a
published threat-intel mapping for this layout.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets

- Installed-software inventory (bare `Installed applications:` block)
- System hardware and locale (`System Information:` block)
- Geolocation (country code + IPv4 in `IP info:` composite)

## Detection notes

High-confidence trigger: line-anchored `IP info:` key
plus the `minutes from GMT` timezone-suffix literal plus
line-anchored `Installed applications:` bare section
header. The `minutes from GMT` literal is the panel's
unique developer-side quirk: no other family in this
catalog emits timezone as a signed integer minute count
with a `GMT` trailing literal. During triage, the
`Installed applications:` block enumerates the victim's
installed programs with a `<name> <version>` shape and
can be paired with the `IP info:` country + IPv4 pair
for per-victim asset inventory.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- None recorded.

## Sources

- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>
- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://www.cyfirma.com/research/ltx-stealer-analysis-of-a-node-js-based-credential-stealer/>

Machine-readable record: [family.json](family.json)
