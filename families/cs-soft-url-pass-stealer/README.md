# CSSoftUrlPassStealer

CSSoftUrlPassStealer is a CyStack-coined identifier for a
Passwords.txt-shaped block-record file mis-routed to the
``System.txt`` slot inside ``<N> LOGS.rar`` aggregator packs.
Observed inside ``4 APRIL - 2950 LOGS.rar`` at
``JM[<HWID>][<TIMESTAMP>]/System.txt`` victim folders where
the pack builder wrote per-victim credentials under a
``System.txt`` basename rather than the canonical
``Passwords.txt``.

The body is a block-record format with four line-anchored
fields per record in fixed order: ``SOFT:`` (browser
identifier, ``Chrome Profile <N> (<version>)``), ``URL:``
(login origin, HTTPS or Android autofill
``android://<b64hash>@<pkg>/``), ``USER:`` (account handle),
and ``PASS:`` (stored credential). Records are separated by
blank lines. The SOFT/URL/USER/PASS block layout is common
across multiple stealers per a public stealer-log parser
writeup (one of five documented Passwords.txt shapes) and
cannot be uniquely mapped to a specific underlying builder
from format alone. Family attribution is provisional pending a
published threat-intel mapping for this specific mis-routing
pattern.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `SOFT/URL/USER/PASS block Passwords.txt (mis-routed to System.txt)`
- Variants observed: **0**

## What it targets

- Browser credentials (Chrome profile passwords), the URL
origin the credential belongs to, and the account
identifier (email, phone, or username handle)
- Android autofill entries (``android://<b64hash>@<pkg>/``
origins that Chrome for Android replicates into the
desktop credential store via Sync)

## Detection notes

Fingerprint requires four line-anchored anchors, all four
in the same body: ``SOFT: ``, ``URL: ``, ``USER: ``, and
``PASS: ``. The four-anchor combination is exclusive to
Passwords.txt-shaped content: no canonical system-info
panel across the registry carries all four spelling
variants at line start. During incident response, treat
the file as a credentials dump: pull each URL / USER /
PASS triple as a leaked-credential IOC and correlate the
``JM[<HWID>][<TIMESTAMP>]`` sibling folder name for
victim identification.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
