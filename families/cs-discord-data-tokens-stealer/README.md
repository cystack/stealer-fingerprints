# CSDiscordDataTokensStealer

CSDiscordDataTokensStealer is a CyStack-coined identifier for
a stripped victim-folder shape observed inside `!! 2025
JULY.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/DiscordData/` subfolders.
The folder root carries `tokens.txt` plus optionally a
`leveldb/` companion subdirectory and the BRADMAX repacker's
empty-named DIR artifact, with no companion system-info file,
no browser-credential dump, no wifi or installed-apps export.

`tokens.txt` is the verbatim Discord LevelDB sstable content
lifted from `%AppData%/discord/Local Storage/leveldb/*.ldb`
and concatenated into one binary blob. Sample files run
hundreds of kilobytes and decode as high-entropy CJK mojibake
when interpreted as UTF-8 (random bytes forming valid 3-byte
UTF-8 sequences in the ideograph range). When the `leveldb/`
sidecar is present it holds the per-file LevelDB pages
(`*.ldb` / `*.log` / `MANIFEST-*` / `CURRENT`) the panel
copied verbatim from the victim's Chromium `Local
Storage/leveldb/` directory; the `tokens.txt` blob is the same
data concatenated for downstream convenience. The panel
exported the raw leveldb pages rather than the parsed
`<userId>.<timestamp>.<hmac>` token string that most
documented Discord-token stealers emit, so the operator runs
the leveldb parse offline.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a stealer that emits this
exact `DiscordData/tokens.txt` single-binary-file shape.
Documented sibling layouts write parsed-token text under
different folder names (PupkinStealer `Grabbers/Discord/`,
BlackGuard `Discord/`, Bizfum `Account-Tokens.txt`, Octalyn
`Discord/Tokens.txt`) or capture the whole leveldb directory
verbatim under the canonical `Local Storage/leveldb/` path.
The `DiscordData/` folder name and the single-binary-blob
layout are a private builder choice the BRADMAX repacker
preserved on its way through the aggregator.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX DiscordData/tokens.txt single-blob pack`
- Variants observed: **0**

## What it targets

- Discord authentication tokens harvested from leveldb

## Detection notes

Fingerprint requires (a) the IOC folder basename equals
`DiscordData` (case-insensitive), (b) `tokens.txt` in the
folder root, (c) every other root entry is one of the
allowed siblings (`leveldb` subdirectory or the empty-named packer DIR artifact), and (d) the system_path id
contains a `BRADLOGS` or `BRADMAX` token. The allowlist
(rather than a count cap) keeps the fingerprint specific as
new wrapper-side artifacts surface without dropping the
constraint that no unrelated cred / system file appears
at root. The folder-name plus path-side BRADMAX anchor
distinguishes generic Discord-loot folders distributed
through unrelated channels.

During triage, treat this label as a "BRADMAX victim where
the panel exported only the raw Discord leveldb dump"
marker: the underlying stealer builder is not identifiable
from this 1-file shape alone, only the BRADMAX
distribution channel is. To extract tokens from the
binary blob, decode as leveldb and grep for Discord's
`dQw4w9WgXcQ` encryption prefix or the parsed
`<userId>.<timestamp>.<hmac>` shape, the same way an
incident responder would handle a stolen `*.ldb` file.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |

## Related catalog profiles

- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSWifiBackslashNStealer](../cs-wifi-backslash-n-stealer/)
- [CSCcApostropheStealer](../cs-cc-apostrophe-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
