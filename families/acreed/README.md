# Acreed

Acreed Stealer is one of the few infostealer families that
emits structured JSON instead of free-form key/value text. The
victim metadata is written to `pc_info.json` with PascalCase
keys (`PcName`, `Os`, `Cpu`, etc.).

**Also known as:** `Acreed Stealer`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions and desktop clients
- Discord and Telegram session data
- Document grabber for sensitive file types

## Variants

### `cystack_c65f37b2`

**Filenames:** `pc_info.json`

**Sample (sanitized):**

```
{
  "PcName": "PCDEMIGUEL",
  "Os": "Windows 10",
  "Ip": "<ip>",
  "GPU": [
    "Intel(R) G41 Express Chipset (Microsoft Corporation - WDDM 1.1)"
  ],
  "RAM": 3037,
  "ScreenSize": "1024x768",
  "Arch": "x64",
  "CpuCores": 2,
  "Country": "BR",
  "City": "S\u00E3o Jo\u00E3o del Rei",
  "ZipCode": "36300",
  "LocalTime": "null",
  "LocalAdapterIpList": [],
  "IsElevator": false,
  "ProcessList": [],
  "InstalledSoftware": [],
  "UserName": "migue",
  "Domain": "null",
  "Hwid": "PCDEMIGUEL1d6e60eb-5006-48c8-bf30-e1bb5efa0401"
}
```

## Detection

Structured JSON shape with a top-level `PcName` key (PascalCase,
no spaces) is unique among the families this catalog tracks; no
other parser claims `pc_info.json` content.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## References

- https://www.kaspersky.com/blog/acreed-stealer/
