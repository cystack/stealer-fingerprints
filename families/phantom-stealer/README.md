# Phantom Stealer

Phantom Stealer is a Stealerium-fork info-stealer sold as a
MaaS through the `phantomsoftwares.site` storefront and the
`@Phantomsoftwares_bot` Telegram marketplace, contact handle
`@Oldphantomoftheopera`. Public reporting documents the family
as active since February 2025 with a NativeAOT `pdh.dll` outer
loader plus a .NET inner payload (two-layer attack chain).

This catalog documents two distinct `Information.txt` panel shapes:

- v2 emoji-section panel (canonical, publicly confirmed):
banner `*Phantom stealer v2.0 - Report:*` with `📅 Date:`, `🖥️
System:`, `💻 CompName:`, `🌐 External IP:` field lines
organised under `*HARDWARE INFORMATION*` / `*NETWORK
INFORMATION*` / `*DETECTED DOMAINS*` / `*BROWSER DATA*` /
`*SOFTWARE & ACCOUNTS*` / `*DEVICE INFORMATION*` /
`*INSTALLATION STATUS*` Markdown-bold section banners
separated by U+2501 heavy horizontal `━` rules. Trailing
operator-attribution block carries `contact` / `marketplace` /
`website` URLs. - v1 flat key-colon-value
`UserInformation.txt` layout (`Username:` / `PC-name:` / `Ip:`
/ `Location:` / `System:` / `Admin rights:`). The v1 layout
was originally flagged as provisionally-attributed Phantom;
the v2 emoji-panel research has not directly confirmed the v1
key-value shape, so v1 attribution remains tentative even
though it is retained under the same canonical family
pending a published mapping.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **high**
- Aliases: `Phantom Stealer`, `Phantom stealer v2.0`
- Variants observed: **3**
- CyStack observations represented: **42**

## What it targets

- Browser saved credentials, cookies, autofill, history, bookmarks
- Crypto wallet extensions and desktop wallet clients
- Discord and Telegram session data (Tdata)
- Windows product key extraction
- Desktop screenshot capture
- Banking / crypto / adult site domain detection summary
- System hardware (CPU, GPU, RAM, screen, webcam, power) inventory
- Network info (gateway, internal, external IP)

## Detection notes

v2 fingerprint requires the literal `Phantom stealer v2.0`
banner substring AND the `HARDWARE INFORMATION` section header
AND the `External IP:` field name. The three-anchor
combination is the panel self-banner plus structural
confirmation. v2 `Date:` values use 12-hour `AM/PM` format with no explicit timezone marker; analysts should treat the timezone as unknown rather than infer it from the processing host.

v1 fingerprint requires the `PC-name:` (hyphenated) and `Admin
rights:` keys together. The v1 attribution to Phantom Stealer
is provisional - the v1 layout is structurally distinct from
the publicly confirmed v2 panel and may represent a look-alike
Russian stealer that was originally misattributed. Treat v1-shape Phantom attribution with caution during triage.

## Observed log variants

### `v_44219ba58866514b6fc62b29339a973e`

- Format ID: `cs-sys-root-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `Sys_root v-200`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_44219ba58866514b6fc62b29339a973e/sample.txt)
- Sample SHA-256: `f96fd47319862d1e47d6f98acdabde745c985b1371333bd266baa94f92aaaa0b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `External IP:`, `HARDWARE INFORMATION`, `Sys_root`
- Field labels: -

### `v_644d60f850bf17ab715debd34be84482`

- Format ID: `phantom-v2`
- Observed filenames: `Information.txt`
- Panel brand: `Phantom stealer v2.0`
- Distribution channel: `@Phantomsoftwares_bot`
- Attribution confidence: **high**
- Historical records represented: **36**
- Representative sample: [open sample](samples/v_644d60f850bf17ab715debd34be84482/sample.txt)
- Sample SHA-256: `394d2a403b0b34802ee996ad7edbf8c397b56c87d1b135c51ed808f3f0844719`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `External IP:`, `HARDWARE INFORMATION`, `Phantom stealer v`, `Phantom stealer v2.0`
- Field labels: -

### `v_c63d4009bb81da5cdadc47965e2d193d`

- Format ID: `phantom`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_c63d4009bb81da5cdadc47965e2d193d/sample.txt)
- Sample SHA-256: `5f8862643abbd18cfac5a58a9b2d6a6bc2a86f7351c86e1fdaf879f0ad81de92`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Admin rights`, `PC-name`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |

## Related catalog profiles

- [Stealerium](../stealerium/)

## Observed distribution channels

- <https://t.me/Phantomsoftwares_bot>
- <https://t.me/Oldphantomoftheopera>

## Sources

- <https://malpedia.caad.fkie.fraunhofer.de/details/win.phantom_stealer>
- <https://www.proofpoint.com/us/blog/threat-insight/not-safe-work-tracking-and-investigating-stealerium-and-phantom-infostealers>
- <https://www.group-ib.com/blog/phantom-stealer-credential-theft/>
- <https://darkatlas.io/blog/phantom-stealer-analysis-inside-the-two-layer-attack-chain-hidden-behind-a-windows-dll>
- <https://www.phantomsoftwares.site/home>

Machine-readable record: [family.json](family.json)
