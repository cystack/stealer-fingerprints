# CSExceptionCookiesOnlyStealer

CSExceptionCookiesOnlyStealer is a CyStack-coined identifier
for a LOGS-pack per-victim folder-style IOC shipping only a
``Cookies/`` subdirectory (Netscape cookies.txt dumps) plus
a root-level ``Exception.txt`` file (the harvester panel-side exception log). Observed inside the ``23-24 JUNE - 25597
LOGS.part01.rar`` aggregator pack at
``<CC>-    -<HWID>-<TIMESTAMP>/`` victim folders where the
folder name uses a distinctive 2-letter country code + dash
+ 4-space padding + dash + ~30-character alphanumeric HWID +
dash + full dash-separated ISO 8601 timestamp with
microsecond precision.

The LOGS pack ships multiple stealer families (canonical
Lumma, StealC, Mars-fork, AMOS, Cthulhu per prior LOGS-pack
format research), so the minimal cookies-plus-exception-log
layout carries no remaining family signal beyond ``cookie-jar exporter with .NET / Python exception traceback dump``.
The label exists to attribute the artifact by its fingerprint
rather than guessing which stealer harvested the cookie jar.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `LOGS-pack cookies + Exception.txt bundle`, `Space-padded folder-name cookies-only bundle`
- Variants observed: **0**

## What it targets

- Browser session cookies (Chromium / Firefox) exported
as Netscape cookies.txt files per browser profile

## Detection notes

Fingerprint requires the folder root to be a subset of
``{cookies, exception.txt, ""}`` (case-insensitive) with
both ``cookies`` and ``exception.txt`` present, plus at
least two canonical Netscape cookies.txt rows in the cred
file body. The ``Exception.txt`` sibling is typically
non-empty (contains the harvester traceback), distinguishing
this from :class:`CSBradmaxCookiesOnlyBundle` which requires
empty panel-placeholder siblings. During triage, correlate
the folder-name prefix with the LOGS pack archive to
identify the redistributor; the underlying harvester
family is unattributable from the cookies-only layout
alone.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSBradmaxCookiesOnlyStealer](../cs-bradmax-cookies-only-stealer/)

## Related external families

- `CSDaisyCloudCookiesOnlyStealer`
- `CSBradmaxAppCookiesStealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
