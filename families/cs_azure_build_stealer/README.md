# CSAzureBuildStealer

CSAzureBuildStealer is a CyStack-coined identifier for a
dash-prefixed `System.txt` panel observed inside
`!! 2025 JULY` aggregator packs under `[<CC>]<IP>/System.txt`
victim folders. Every line is shaped `- Key: Value` with a
leading ASCII hyphen plus space. The panel ships an
`Azure Build:` date stamp and a `Worker Tag:` operator-set
label as the first two fields, then a fixed system summary
covering OS, hardware, network, and the local clock.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The `Worker Tag` value
observed in the first sample was `XwormExp`, which hints at
an operator affiliation with XWorm but does not match XWorm's
own published log shape, so attribution to XWorm would be
misleading.

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `Azure Build`

## Targets

- System hardware and locale inventory
- Anti-virus product name (Windows Defender / installed AV)
- Geo-IP country code

## Variants

### `Azure Build`

**Fingerprint id:** `azure_build`

**Attribution confidence:** `unknown`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
- Azure Build: 27.05.2025
- Worker Tag: XwormExp
- Configuration: 

- OS Version: Windows 10 Pro (10.0.26100) x64
- Local Date: 18.06.2025 <ip>
- Time Zone: UTC4
- Computer: AYAAN-ROCKS
- User: Ayaan Rocks
- Language: en-AE

- Anti Virus: Windows Defender
- HWID: 0494e865
- RAM Size: 16 GB
- CPU Name: 13th Gen Intel(R) Core(TM) i7-13620H
- CPU Threads: 16
- CPU Cores: 10
- GPU: Intel(R) UHD Graphics
- Display resolution: 1920x1080

- IP Address: <ip>
- Time Save Log: 18.06.2025 <ip>
- Country: AE
```

## Detection

Line-anchored `- Azure Build:` plus `- Worker Tag:` plus
`- HWID:` plus `- Time Save Log:` is the fingerprint. The
`- ` dash prefix is part of every key literal so a bare
`Azure Build` mention (Microsoft Azure DevOps build-task
documentation uses that phrase) cannot false-claim.
Timestamps are in `DD.MM.YYYY HH:MM:SS` form and the
`Time Zone` field is bare `UTC<N>` with no sign or minutes.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1614 System Location Discovery](https://attack.mitre.org/techniques/T1614/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1518.001 Security Software Discovery](https://attack.mitre.org/techniques/T1518/001/)
