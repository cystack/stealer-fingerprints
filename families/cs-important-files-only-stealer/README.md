# CSImportantFilesOnlyStealer

CSImportantFilesOnlyStealer is a CyStack-coined
identifier for the most-stripped BRADMAX-redistributed
per-victim ``[<CC>]<IPv4>`` folder shape that ships a
single ``Important Files/`` subdirectory at root plus
the BRADMAX packer's empty-name DIR artifact. Harvested
content lives under ``Important Files/<subfolder>/
<name>.txt``, typically random ``Documents/`` and
``Desktop/`` text notes swept off the victim host.

Observed inside 2024-era BRADMAX aggregator packs at
``!! <YYYY> <MONTH>/@BRADMAX <count> <MONTH>/
[<CC>]<IPv4>/`` paths, distinct from the newer
``@BRADLOGS (BRADMAX) (<NN>)/`` per-victim shape.
The layout has no ``Browsers/`` per-browser credential
section, no aggregate ``Passwords.txt`` or
``All Passwords.txt``, and no ``System.txt`` /
``Information.txt`` system fingerprint - the
aggregator kept only the harvested-files bucket. The
underlying stealer family that captured the original
log cannot be recovered from this stripped shape
because the BRADMAX channel resells multiple families'
logs under a single packer.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Important Files only bundle`, `BRADMAX 1-dir victim folder`
- Variants observed: **0**

## What it targets

- Random victim-Documents / Desktop text notes swept by
the underlying stealer's file-grabber module

## Detection notes

Fingerprint requires three conditions: (1) root
contains an ``Important Files`` directory, (2) the
only other root entry is the BRADMAX packer empty-name
DIR artifact (strict 1-or-2 entry root), and (3) the
system_path ID carries a ``BRADMAX`` or ``BRADLOGS``
token. The path-side anchor excludes generic ``Important Files/``-only folders distributed
through other channels. During triage, treat the
underlying stealer family as unattributable and rely
on the channel + panel_brand metadata to bucket samples
for analyst review.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSBrowsersDisplayStealer](../cs-browsers-display-stealer/)

## Related external families

- `cs-bradmax-category-bundle`
- `cs-applications-discord-bundle`
- `cs-discord-data-tokens-bundle`

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
