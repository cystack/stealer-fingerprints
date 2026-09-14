# CSLeakClickCloudCookiesStealer

CSLeakClickCloudCookiesStealer is a CyStack-coined identifier
for a LOGS-pack per-victim folder-style IOC distributed through
the ``Leak Click Private`` / ``LEAK Click Cloud`` Telegram
channel. Observed inside the ``23-24 JUNE - 25597 LOGS.part01.rar``
aggregator pack at ``logs/<CC>- Leak Click Private -<HWID>-
<TIMESTAMP>/`` victim folders. The folder-name convention
embeds the literal ``- Leak Click Private -`` operator label
between the country-code prefix and the alphanumeric HWID.

The pack ships a four-entry root: a ``Cookies/`` subdirectory
with Netscape cookies dumps per browser profile, a Windows
URL shortcut file ``Link LEAK Click Cloud.url`` pointing to
the operator's Telegram channel, a short-random-name ``.txt``
decoy file (6-8 char lowercase, e.g. ``GgcvKn.txt``), and an
empty-name packer DIR. The LOGS pack ships multiple stealer
families under a single archive convention, so the minimal
cookies-plus-channel-shortcut layout carries no remaining
family signal beyond ``cookie-jar exporter with LEAK Click
channel promo file``. Family attribution is provisional
pending a published threat-intel mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `LEAK Click Cloud cookies bundle`, `Leak Click Private folder-name cookies bundle`
- Variants observed: **0**

## What it targets

- Browser session cookies (Chromium / Firefox) exported
as Netscape cookies.txt files per browser profile

## Detection notes

Fingerprint requires either the folder-name literal ``Leak
Click Private`` or a root-level ``Link LEAK Click Cloud.url``
file, plus a ``cookies`` subdirectory at root, plus at least
two canonical Netscape cookies.txt rows in the cred file body.
The dual-anchor design handles cases where the folder-name
has been renamed by the analyst but the operator channel-shortcut file survives. During triage, correlate with the
LOGS pack archive; the underlying harvester family is
unattributable from the cookies-only layout alone.

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

## Related external families

- `CSDaisyCloudCookiesOnlyStealer`
- `CSBradmaxAppCookiesStealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
