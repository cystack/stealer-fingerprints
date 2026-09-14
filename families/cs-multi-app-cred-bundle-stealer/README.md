# CSMultiAppCredBundleStealer

CSMultiAppCredBundleStealer is a CyStack-coined identifier
for a per-victim application-loot bundle observed inside the
``16,17 APRIL - 27206 LOGS.part01.rar`` aggregator pack at
``<32-char alphanumeric>_<TIMESTAMP>/`` victim folders. The
pack ships an 11-application subdirectory tree covering the
credential-manager, VPN, FTP, chat, cloud, and gaming
application slots that stealer families commonly harvest:
``AnyDesk``, ``Azure``, ``Bitwarden``, ``Discord``,
``FileZilla``, ``FTPGetter``, ``OpenVPN``, ``ProtonVPN``,
``Steam``, ``Telegram``, ``TotalCommander``.

The ``Azure/credentials`` filename is a panel mislabel: the
file body is a boto-style AWS credentials INI file (with
``[default]`` block, ``aws_access_key_id``,
``aws_secret_access_key``), not an Azure resource-manager
token file. The stealer's harvest routine likely grabbed
``%USERPROFILE%\.aws\credentials`` and dropped it under an
``Azure/`` subdir because both cloud vendors share the
"cloud" category slot in the panel harvest configuration.
Multiple stealer families target subsets of this application
set (Redline, Vidar, Lumma, StealC, Meta all harvest
FileZilla / Discord / Telegram / Steam), so the underlying
harvester could be any of them. Family attribution is
provisional pending a published threat-intel mapping.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **unknown**
- Aliases: `Multi-app credentials bundle`, `Cloud + VPN + FTP + chat + gaming loot bundle`
- Variants observed: **0**

## What it targets

- Cloud provider credentials (AWS access key + secret from
``~/.aws/credentials`` dropped under ``Azure/``)
- Password manager vaults (Bitwarden)
- VPN configurations and credentials (OpenVPN, ProtonVPN)
- FTP client credentials (FileZilla sitemanager.xml,
FTPGetter, TotalCommander wcx_ftp.ini)
- Chat app session tokens (Discord Local Storage tokens,
Telegram tdata session bundles)
- Remote-desktop session identifiers (AnyDesk)
- Gaming session tokens (Steam JWT session, config.vdf)

## Detection notes

Fingerprint requires at least 5 of 11 known application-loot subdir names at root (``AnyDesk``, ``Azure``,
``Bitwarden``, ``Discord``, ``FileZilla``, ``FTPGetter``,
``OpenVPN``, ``ProtonVPN``, ``Steam``, ``Telegram``,
``TotalCommander``) plus a strict allow-list rejecting
any other content-carrying root entry. The 5-of-11
minimum guards against generic 1-2-app folders that might
trigger on a single sibling category. During triage, the
``Azure/credentials`` AWS INI file is a high-value pivot
point (cloud IAM credentials imply full account access).
Companion Discord tokens and Telegram tdata sessions in
sibling subdirs offer account-takeover paths that the
analyst should rotate immediately.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1552.001](https://attack.mitre.org/techniques/T1552/001/) | Credentials in Files |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1552.004](https://attack.mitre.org/techniques/T1552/004/) | Private Keys |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
