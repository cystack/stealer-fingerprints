# BracketSection Stealer

Unidentified `[System]` / `[Hardware]`-sectioned stealer log
variant observed inside `@bugatti_cloud` aggregator packs.
The `UserInformation.txt` body is split into bracket-titled
sections (`[System]`, `[Hardware]`, etc.) each followed by a
flat key-value block. Family attribution is provisional; the
format has not been mapped to a published threat-intel name.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- Historical Logmine records represented: **893**

## What it targets

- No target inventory published yet.

## Detection notes

The combination of bracket-titled sections (`[System]`,
`[Hardware]`) with a flat key-value block under each is the
primary signature. Distributed via the `@bugatti_cloud`
aggregator channel.

## Observed log variants

### `v_516063da5807a1399ea249ebe8f60e04`

- Parser: `logmine.ioc.parsers.bracket_section_stealer.BracketSectionStealerParser`
- Observed filenames: `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `system-hardware-buildtag`
- Historical records represented: **893**
- Representative sample: [open sample](samples/v_516063da5807a1399ea249ebe8f60e04/sample.txt)
- Sample SHA-256: `d2b797c2c1bdd70b592fa28112165e11e0771335756c9f8f390412be2fea2708`
- Sample provenance: Logmine runtime output, scrubbed for public use

Recognition anchors:

- Stable markers: `[Hardware]`, `[System]`
- Field labels: `Buildtag`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Sources

- <https://heroic.com/darkhive-breaches/bugatti-cloud-telegram-stealer-log-july-2023-timeline/>
- <https://socradar.io/blog/top-stealer-log-telegram-channels/>

Machine-readable record: [family.json](family.json)
