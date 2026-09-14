# RL Stealer

RL Stealer is a .NET infostealer derived from the open-source
`razexgod/44CALIBER` Discord-exfiltration builder. The panel
writes an `Information.txt` whose body matches 44CALIBER's
upstream `SystemInfo.cs` writer character-for-character for
the first five sections, then appends a sixth section carrying
`HDD:` / `MAC:` / `BIOS caption:` hardware identifiers that
the upstream does not emit. Each key/value line opens with a
single leading space (invariant from the upstream string
concatenation), and sections are separated by equals-sign
rules.

Family attribution: confidence is medium. A community
stealer-format catalogue documents the format under the RL
Stealer label, the upstream `razexgod/44CALIBER` GitHub source
code matches the body shape, and public write-ups describe RL
Stealer as a rebranded Ades stealer. Two independent public
sources do not jointly publish the format-to-family mapping,
so the attribution rests on community catalog plus open-source
builder-code confirmation.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **medium**
- Aliases: `Ades`, `44Caliber variant`, `StormKitty variant`
- Variants observed: **2**
- CyStack observations represented: **197**

## What it targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Discord, Telegram, Steam, Minecraft session data
- FTP and VPN client credentials
- Clipboard contents
- Desktop screenshot

## Detection notes

Line-anchored ` PC user:`, ` Launch:`, and
` IP Geolocation:` co-occurring is the cleanest trigger.
The leading-space prefix on each key line is invariant
across observed samples (the upstream's string
`"\n PC user: "` concatenation produces it). The base
44CALIBER builder emits five sections; the RL panel
extension appends a sixth carrying `HDD:` / `MAC:` /
`BIOS caption:`, but the fingerprint covers either section count.
BlackGuard Stealer is also a 44CALIBER fork; both share
the credential-collection method but emit different
log formats so they do not collide with this format's
fingerprint.

## Observed log variants

### `v_1c8a415ef2a9f5b685b573ec7b10c602`

- Format ID: `cs-rl-panel-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `==== RL STEALER ====`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **medium**
- Historical records represented: **36**
- Representative sample: [open sample](samples/v_1c8a415ef2a9f5b685b573ec7b10c602/sample.txt)
- Sample SHA-256: `036cf7de6574dbefbbe8241c2adce9b08567ab90410c31bbb83b83f943589314`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `==== RL STEALER ====`
- Field labels: -

### `v_48d2f4aed8930a82db85d16176d3d75f`

- Format ID: `rl-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **medium**
- Historical records represented: **161**
- Representative sample: [open sample](samples/v_48d2f4aed8930a82db85d16176d3d75f/sample.txt)
- Sample SHA-256: `75f23d19d1f2a8300b762a7cd58d72872f59669ac6e9fdf1571c5fc5b554f053`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `IP Geolocation`, `Launch`, `PC user`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- None recorded.

## Related external families

- `44caliber`
- `stormkitty`
- `blackguard`

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://github.com/razexgod/44CALIBER>
- <https://www.pcrisk.com/removal-guides/25759-rl-stealer-malware>

Machine-readable record: [family.json](family.json)
