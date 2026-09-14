# CSTaggedInfoStealer

CSTaggedInfoStealer is a CyStack-coined identifier for a
sectioned ``Information.txt`` panel observed inside the
``17-20 AUGUST - 23791 LOGS.part01.rar`` aggregator pack. The
panel uses ``- IP Info -`` / ``- PC Info -`` / ``- Other Info
-`` / ``- Log Info -`` dash-bordered section headers, a
Redline-derivative body vocabulary (``FileLocation:``,
``Current Language:``, ``Is Elevated:``, ``HWID:`` in
22-character alphanumeric shape), Cthulhu-derived geo fields
(``Postal:``, ``ISP:`` with trailing ``- A<ASN>`` autonomous
system suffix), and a distinctive credential-categorization
block: ``Tags Passwords:`` with comma-separated category tags
(SOCIAL, CRYPTO, SENSITIVE), ``Tagged URLs:``, and ``Tagged
Cookies:``.

The sectioned layout plus the tag-category block are
unattested in public reporting and community catalogues. The
categorization scheme resembles StealC panel-side markers
described in public ACR Stealer research, but the log-side
output shape does not match StealC's canonical ``Network
Info:`` + ``System Summary:`` layout. Family attribution is
provisional pending a published mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Dash-section Info-tagged stealer`, `- IP Info - / - PC Info - sectioned Information.txt`
- Variants observed: **1**
- CyStack observations represented: **30**

## What it targets

- Browser passwords with SOCIAL / CRYPTO / SENSITIVE
category tags
- Browser cookies with per-URL / per-cookie tag lists
- File grabs, wallets, credit cards, FTP/SSH credentials,
and Discord tokens (per-count summary)
- Host fingerprint (CPU, GPU with embedded resolution,
HWID, OS, current language, admin flag)
- Geo enrichment (IP, country, city, postal code, ISP
with autonomous system number, timezone offset)

## Detection notes

Fingerprint requires four line-anchored anchors: ``- IP Info
-``, ``- PC Info -``, ``- Log Info -``, and ``Tags
Passwords:``. The dash-bordered section headers plus the
categorization key together are unique across this catalog.
During triage, correlate the sample with sibling LOGS-pack
variants (John Doe Project, Slurm Cloud) shipping in the same
archive to identify shared operator infrastructure. The
Redline-derivative body vocabulary means the underlying
builder could be a Redline fork with an added categorization
panel layer, but no published mapping confirms this.

## Observed log variants

### `v_d522c2ef9147f26c4d0f1a60ec97fcbd`

- Format ID: `cs-tagged-info-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **30**
- Representative sample: [open sample](samples/v_d522c2ef9147f26c4d0f1a60ec97fcbd/sample.txt)
- Sample SHA-256: `965cb66d0e3e1f37e871eb94de9df4ebc4aae708f37f253a9fe910aa72353d43`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `- IP Info -`, `- Log Info -`, `- PC Info -`
- Field labels: `Tags Passwords`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery |

## Related catalog profiles

- [CSJohnDoeProjectStealer](../cs-john-doe-project-stealer/)
- [CSSlurmCloudStealer](../cs-slurm-cloud-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
