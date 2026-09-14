# CSEvelatedTypoInfoStealer

CSEvelatedTypoInfoStealer is a CyStack-coined identifier for
an ``Information.txt`` panel with the distinctive ``Is
Evelated:`` typo (sic, ``Evelated`` not ``Elevated``)
admin-flag field. Observed inside the ``28 APRIL - 37817
LOGS2.part01.rar`` aggregator pack at ``[<panel-tag>]
<CC>_<IPv4>/<CC>_<IPv4>_<DDMMYYYY>_<HH>_<MM>_<SS>/
Information.txt`` victim folders where the parent folder
prefix uses a ``[<panel-tag>]`` marker like ``[login.live]``
that identifies the victim category (browser sign-in tag,
filesharing tag, etc.).

Field vocabulary is Redline-lineage (``File Location:``,
``HWID:``, ``Machine Name:``, ``Username:``), but the
distinctive ``Is Evelated:`` typo combined with paired
``GPU:`` + ``Graphical Adapter:`` duplicate fields (both
carrying the same adapter query result under two labels), plus
``Screen Resolution:`` (not ``Display Resolution:``),
``Keyboard Layout:`` singular (not ``Keyboard Languages:``
plural), and a ``Clipboard Text:`` raw-clipboard-content
field, makes it a private fork or niche family whose
fingerprint has not been mapped publicly. The 2022-02-26 log
timestamp on observed samples suggests an older builder whose
panel-format research pre-dates current public reporting.
Family attribution is provisional pending a published
threat-intel mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Is Evelated typo stealer`, `Graphical Adapter dual-GPU stealer`
- Variants observed: **0**

## What it targets

- Host OS and hardware fingerprint (CPU, GPU with duplicate
``Graphical Adapter`` label, screen resolution, HWID)
- Geo enrichment (IP, country, city, ZIP, timezone with
operator-side default timezone-city annotation)
- Account identity (Windows username, machine name)
- Current clipboard content at capture time (crypto
addresses, magnet links, other high-value clipboard data)
- Installed software inventory and running process list

## Detection notes

Fingerprint requires the ``Is Evelated:`` typo substring
and a line-anchored ``Graphical Adapter:`` field. The typo
is uniquely this panel across this catalog: no canonical
Redline / Lumma / Vidar / StealC / Rhadamanthys /
MetaStealer emits the admin flag with the ``Evelated``
misspelling. The ``Clipboard Text:`` field can carry
high-value tokens (crypto wallet addresses, magnet links,
session tokens) so triage should review the clipboard
value alongside browser credential exports.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
