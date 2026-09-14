# CSPlutusStealer

CSPlutusStealer is a CyStack-coined identifier for the
``Plutus Stealer v 3.0`` ``SystemInfo.txt`` panel. The malware
self-brands via a Figlet ``Plutus`` ASCII-art banner and a
bare ``Plutus Stealer v <MAJOR>.<MINOR>`` line, followed by
five uppercase bracket sections in fixed order: ``[GENERAL]``,
``[LOCATION]``, ``[SYSTEM]``, ``[HARDWARE]``, ``[CLIPBOARD]``.

The ``[GENERAL]`` block carries a two-line ``Build Tag`` +
``Build Version`` panel-versioning pair, a ``Machine Id``
panel-issued victim identifier (two-letter panel prefix plus a
24-character alphanumeric tail), an ``Is running as admin``
boolean flag, and a ``File Location`` path pointing at the
malware install location. The ``[LOCATION]`` block reports IP
plus a full geo-IP profile (Country, ISO, City, ZIP, Postal,
Time Zone with Olson name and UTC offset, Location with
European comma-decimal latitude / longitude). The
``[HARDWARE]`` block ships a Windows registry ``MachineGuid``
wrapped in curly braces under the ``HWID`` key, distinct from
the panel-issued ``Machine Id`` above. The ``[CLIPBOARD]``
block captures the foreground clipboard contents at capture
time and can carry chat fragments and account-transfer
templates in the victim locale.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting returns
no hits for a ``Plutus Stealer`` name paired with an
infostealer format. Community catalogues also carry no
attestation. The operator self-brand is preserved verbatim in
``panel_brand`` but not trusted as an attribution mapping.
Rename the family constant when a public writeup identifies
the underlying builder.

The single observed pack was delivered through the
``@bugatti_cloud`` Telegram channel, a publicly catalogued
multi-family stealer-log aggregator. Sibling slices of the
same channel already carry DCRat, BracketSection, and
CyStack-coined variants; this Plutus-branded slice extends
that portfolio.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Plutus Stealer`, `Plutus Stealer v 3.0`
- Variants observed: **0**

## What it targets

- Browser saved credentials and cookies (indicated by the
stealer nomenclature and the WinRAR SFX temp-folder
install-path shape)
- Clipboard contents at capture time via the ``[CLIPBOARD]``
section (chat fragments, account-transfer templates in the
victim locale)
- System hardware and locale fingerprint (OS, CPU, GPU, RAM,
HWID / MachineGuid, screen resolution, keyboard layouts)
- Geo-IP profile (Country, ISO, City, ZIP, Postal, Olson
timezone, latitude / longitude)

## Detection notes

Line-anchored ``Plutus Stealer v `` self-brand (with the
trailing space and a version digit immediately after) plus the
``[GENERAL]`` section marker on its own line is the cleanest
fingerprint pair. Neither alone is safe: a public writeup or
catalog entry may quote the family name in prose without
carrying the uppercase bracketed section headers, and a stray
README with a ``[GENERAL]`` section may share the header
spelling without the self-brand. During triage, treat the
panel-issued ``Machine Id`` and the ``HWID`` MachineGuid as
separate identifiers: the former is the operator-side victim
key (useful for correlating multiple logs from the same
infection) while the latter is the host fingerprint (useful
for correlating across families).

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/bugatti_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
