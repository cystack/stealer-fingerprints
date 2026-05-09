# Acreed

Acreed Stealer is one of the few infostealer families that
emits structured JSON instead of free-form key/value text. The
victim metadata is written to `pc_info.json` with PascalCase
keys (`PcName`, `Os`, `Cpu`, etc.).

**Also known as:** `Acreed Stealer`

**Variants observed:** 1
**Total observations:** 1,170
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions and desktop clients
- Discord and Telegram session data
- Document grabber for sensitive file types

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `pc_info.json`

**Sample (sanitized):**

```
{
  "PcName": "NOWSHADMMAK",
  "Os": "Windows 11",
  "Ip": "<ip>",
  "GPU": [
    "Intel(R) Iris(R) Xe Graphics"
  ],
  "RAM": 7886,
  "ScreenSize": "1680x1050",
  "Arch": "x64",
  "CpuCores": 8,
  "Country": "AE",
  "City": "Sharjah",
  "ZipCode": "00000",
  "LocalTime": "null",
  "LocalAdapterIpList": [],
  "IsElevator": false,
  "ProcessList": [],
  "InstalledSoftware": [],
  "UserName": "Nowshad",
  "Domain": "null",
  "Hwid": "NOWSHADMMAK3d3c15f2-f8cf-448c-b001-e48e5049d004"
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
