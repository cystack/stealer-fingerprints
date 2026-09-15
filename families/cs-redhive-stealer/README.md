# CSRedhiveStealer

CSRedhiveStealer is a CyStack-coined identifier for a
Lumma-shape `System.txt` panel that self-brands as
`Redhive Stealer` on its build banner line. Observed inside
`BONUS$#01(c)_NEW_ROYCLOUD_HQ_MIX_<n>_<Mon>_<YYYY>.part1.rar`
archives at `<CC>_<IPv4>-<HWID>/System.txt` victim folders
(e.g. `CO_181.52.194.15-043BD157EE/System.txt`), preceded by
the same stylised `RÔýĆløud` reseller banner that wraps the
Remus and bare key-value variants distributed through the same
channel.

The body opens with `- Redhive Stealer: <DD.MM.YYYY>` and
`- Lid: <numeric>`, then continues with the Lumma-canonical
dash-prefixed field set: `- OS Version`, `- System Installed`
(ISO calendar date, replaces canonical Lumma `- Install
Date`), `- Local Date`, `- Time Zone`, `- Computer`, `- User`,
`- Language`, `- Anti Virus`, `- HWID`, `- RAM Size`, `- CPU
Name`, `- CPU Threads`, `- CPU Cores`, `- GPU`, `- Display
resolution`, `- IP Address`, `- Time Save Log` (ISO datetime,
replaces canonical Lumma `- Time`), `- Country`. The `- CPU
Vendor` field canonical Lumma always emits is absent, and the
Lumma-canonical `(sig:UNIX.HEX)` watermark is stripped
entirely from the timestamp line. HWID is short-form 8-hex
rather than the canonical Lumma 32-hex hash.

The `- Lid`, `- Computer`, `- User`, `- Anti Virus`, `- HWID`,
`- RAM Size`, `- GPU`, `- IP Address`, `- Country`
dash-prefixed vocabulary is documented as Lumma-canonical by
MalBeacon `what-is-this-stealer`, Outpost24 LummaC2 analysis,
and Cloudflare Cloudforce One playbook analysis of Lumma
panel output. The `Redhive Stealer` self-brand string is
novel and unattested in curated CTI mappings at time of
integration; the profile is classified as a Lumma variant
because the field lattice unambiguously matches documented
Lumma output.

## Research status

- Classification: **Family variant**
- Attribution confidence: **high**
- Canonical family: [lumma](../lumma/)
- Aliases: `Redhive Stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets

- Browser saved credentials and cookies
- Crypto wallet extensions
- Host metadata: hostname, Windows username, language
- OS fingerprint with build number and architecture
- Hardware inventory: CPU model with cores/threads, GPU, installed RAM
- Installed antivirus product name
- Victim public IP plus ISO country code

## Detection notes

Fingerprint requires the `- Redhive Stealer` self-brand
literal AND the Lumma-canonical `- Lid:` panel affiliate
identifier line. Canonical Lumma declines because of the
absent `- LummaC2 Build:` header, absent `- CPU Vendor:`
field, absent `- Install Date:` field (replaced by
`- System Installed:` with an ISO calendar date shape),
and absent `(sig:UNIX.HEX)` timestamp watermark. The
Redhive self-brand is also carried in the Lumma parser's
rebrand-exclusion list so canonical Lumma's stripped-variant
fallback paths cannot accidentally claim a Redhive body. During triage, treat the panel as a Lumma affiliate
or fork rebrand until published research maps the `Redhive`
brand to a specific Lumma successor or to an independent
builder.

## Observed log variants

### `v_a661ca4b8afb41bbbc2591fb49278974`

- Format ID: `cs-redhive-stealer`
- Observed filenames: `System.txt`
- Panel brand: `Redhive Stealer`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_a661ca4b8afb41bbbc2591fb49278974/System.txt)
- Sample SHA-256: `5eb4654b9b9709cac361932eab0785222777a42c3c9c5aefb98d5297dc6d5257`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Redhive Stealer`
- Field labels: `Anti Virus`, `Computer`, `Configuration`, `Country`, `CPU Cores`, `CPU Name`, `CPU Threads`, `Display resolution`, `GPU`, `HWID`, `IP Address`, `Language`, `Lid`, `Local Date`, `OS Version`, `RAM Size`, `Redhive Stealer`, `System Installed`, `Time Save Log`, `Time Zone`, `User`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery |

## Related catalog profiles

- [Lumma](../lumma/)

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://outpost24.com/blog/everything-you-need-to-know-lummac2-stealer/>
- <https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/>

Machine-readable record: [family.json](family.json)
