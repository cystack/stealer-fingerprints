# CSTabbedUserPassStealer

CSTabbedUserPassStealer is a CyStack-coined identifier
for a 2-line tab-padded `Username:` / `Pass:` credential
note shape harvested by stealers and redistributed inside
`!! 2024 SEPTEMBER.part001.rar` BRADMAX aggregator packs
at `[<ISO2>]<IPv4>/Important Files/Documents/Account
<Descriptor>.txt` paths (e.g. `[ID]<IPv4>/
Important Files/Documents/Account Office.txt`, 53-byte
body). The file is a victim-curated password note that
the operator wrote themselves with a text editor (Notepad
or VS Code with tab-indent setting); the stealer's
FileGrabber dragneted the victim's Documents folder and
scooped up the note alongside the panel-emitted cred files.

The 2-line body holds `Username\t+:<email-or-username>`
on the first line and `Pass\t+:<password>` on the second
line, with tab characters (one or two) padding the label
so the colons align across both lines. The tab-before-colon padding is a hand-written-note convention; no
stealer panel template emits this shape. Family
attribution is CyStack-coined (Case C, attribution
confidence unknown): the BRADMAX redistributor resells
logs from multiple underlying stealer families and the
cred-file body carries no signal that pins the harvester
to a specific builder.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX harvested-Documents tabbed Username/Pass note`, `Account <Descriptor>.txt 2-line tab-padded victim note`
- Variants observed: **0**

## What it targets

- Hand-written `Account <Service>.txt` notes from the
victim's Documents / Desktop folder
- Microsoft Office account credentials (observed sample)
- Any browser-or-app account whose username and password
the victim recorded in a plain-text reminder note

## Detection notes

Fingerprint requires the cred file body to match exactly
two tab-padded lines (`\AUsername\t+:\S[^\n]*\n`
`Pass\t+:\S[^\n]*\s*\Z`) with no additional content
before or after. The strict `\A` / `\Z` anchors keep a
longer victim-curated note that happens to contain these
two lines somewhere in the body from mis-claiming. During
triage, treat the credentials as real (the email and
password values are the victim's actual account, not
placeholder text), but treat the family attribution as
unknown: the underlying stealer that swept the note is
not identifiable from this body alone.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1552](https://attack.mitre.org/techniques/T1552/) | Unsecured Credentials |
| [T1552.001](https://attack.mitre.org/techniques/T1552/001/) | Credentials In Files |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |

## Related catalog profiles

- [CSUrlUserPassFromStealer](../cs-url-user-pass-from-stealer/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
