# CSJsonCookiesOnlyStealer

CSJsonCookiesOnlyStealer is a CyStack-coined identifier for
a LOGS2-pack per-victim folder-style IOC shipping a minimal
``cookies/`` subdirectory with JSON-array cookie exports
(the Cookie-Editor / EditThisCookie extension format used
by many post-processing tools). Observed inside the
``23-24 JUNE - 25597 LOGS2.part01.rar`` aggregator pack at
``<CC>-    -<HWID>-<TIMESTAMP>/`` victim folders where the
folder name uses the same space-padded convention as the
sibling ``CSExceptionCookiesOnly`` LOGS-pack variant.

The per-profile cookie file uses a
``<Browser>_<Profile>_json.txt`` filename with the ``_json``
infix, and the body is a JSON array of cookie objects with
``domain`` / ``expirationDate`` / ``httpOnly`` / ``name`` /
``path`` / ``secure`` / ``value`` keys. The stealer likely
uses a Chromium ``Cookies`` SQLite export routine that
serialises directly to JSON rather than to the Netscape
flat-file layout. Family attribution is provisional pending
a published threat-intel mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `JSON cookies-only bundle`, `Cookie-Editor export format cookies bundle`, `_json.txt suffix per-profile cookie bundle`
- Variants observed: **0**

## What it targets

- Browser session cookies (Chromium) exported as JSON
arrays per browser profile

## Detection notes

Fingerprint requires a ``cookies`` subdirectory at root
and no other content-carrying siblings (any ``system.txt``
or ``information.txt`` panel-placeholder must be empty),
plus at least two JSON cookie objects in the cred file body
that carry both ``domain`` and ``name`` keys. During triage,
correlate the ``<Browser>_<Profile>_json.txt`` filename
convention and the space-padded folder name with the LOGS2
pack archive to identify the redistributor; the underlying
harvester family is unattributable from the cookies-only
layout alone.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSExceptionCookiesOnlyStealer](../cs-exception-cookies-only-stealer/)
- [CSBradmaxCookiesOnlyStealer](../cs-bradmax-cookies-only-stealer/)
- [CSLeakClickCloudCookiesStealer](../cs-leak-click-cloud-cookies-stealer/)

## Related external families

- `CSDaisyCloudCookiesOnlyStealer`
- `CSBradmaxAppCookiesStealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
