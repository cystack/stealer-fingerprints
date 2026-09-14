# Mars Stealer

Mars Stealer is a Windows info-stealer first publicly tracked
in mid-2021. It is a fork of the older Oski Stealer code base
and harvests browser credentials, crypto wallets, MFA
extensions, and Telegram / Discord session data. The family is
documented in public malware analyses from 2022 onward,
including the March 2022 source-code-leak disclosure, and is
tracked under the canonical literal `win.mars_stealer`. The
source-code leak in March 2022 produced a wave of derivative
builders that ship the same panel-template vocabulary with
minor field-block restructures; downstream consumers see
Mars-lineage logs from the @bradmax_cloud and other
redistributor channels that resell builder output without
naming the specific fork.

The harvested log opens with an 11-field plain `Key: Value`
system block: `Country`, `IP`, `Time Zone`, a language
sub-block, `Processor`, `Installed RAM` (with the `Installed`
prefix), `OS` (formatted as `Windows <N> build <NNNNN> (64
Bit)`), `Video card` (space + lowercase `card`), and `Display
Resolution` (as `WxH`). The native Mars language sub-block has
two fields (`Display Language:` plus `Keyboard Languages:`)
per public analyses; post-leak forks have been observed
restructuring the sub-block (for example the three-field
`System Language` / `User Language` / `Keyboard Language`
variant the @bradmax_cloud redistributor ships). Below the
system block, 33-hyphen separators delimit three sections: a
browser-version inventory listing every binary version found
on disk per browser, a 4-field installed-software inventory
(`Display Name:` / `Publisher:` / `Version:` / `Install
Source:`), and a flat `KEY = value` environment-variable dump.

## Research status

- Classification: **Known malware family**
- Attribution confidence: **medium**
- Aliases: `Mars`, `MarsStealer`, `Mars Stealer family`
- Variants observed: **1**
- CyStack observations represented: **3**

## What it targets

- Browser saved credentials (Chromium and Firefox families)
- Browser cookies, autofill, history
- Crypto wallet extensions and desktop clients
- MFA / 2FA browser extensions
- Telegram and Discord session data
- System hardware and locale inventory
- Installed-software inventory and environment-variable dump

## Detection notes

The `Installed RAM:` and `Video card:` field-key literals are
the cleanest fingerprint anchors; both are documented in
public Mars Stealer analyses and do not appear in other family
panel templates. Pair either with the `Display Resolution:`
two-word key to avoid the small residual collision risk
against unrelated text. During triage, treat post-March-2022
samples as Mars-fork lineage rather than canonical Mars: the
source-code leak produced many derivatives and the specific
fork is rarely identifiable from the panel output alone.

## Observed log variants

### `v_8de2e373e826d69cbb04e67395a898f1`

- Format ID: `cs-bradmax-cloud-mars`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **medium**
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_8de2e373e826d69cbb04e67395a898f1/sample.txt)
- Sample SHA-256: `0734e805c81bd842b214ec522243587bd305c7d319a7dc3ae94b2f57d5252ed1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Installed RAM`, `Keyboard Language`, `MachineID`, `System Language`, `User Language`, `Video card`


## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery |

## Related catalog profiles

- None recorded.

## Related external families

- `oski-stealer`

## Sources

- <https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-mars-stealer>
- <https://x-junior.github.io/malware%20analysis/2022/05/19/MarsStealer.html>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.mars_stealer>

Machine-readable record: [family.json](family.json)
