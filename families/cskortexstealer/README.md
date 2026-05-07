# CSKortexStealer

CSKortexStealer is a CyStack-coined identifier for the
`KORTEX // STEAL` `System.txt` log observed inside the
`APRIL 25 - 19977 LOGS` Telegram-pack distribution in
`<CC>_<IP>_<DD-MM-YY>/` victim folders alongside XFiles and
RedlineLikeStealer shapes. Format combines a dash-prefix
identity block with sectioned hardware records.

**Also known as:** `KORTEX`, `KORTEX // STEAL`

## Variants

### `cystack_c65f37b2`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
- KORTEX // STEAL
- Path: C:\Users\<user>\AppData\Local\Temp\PLD45E.tmp
- ID: s-mn731qgq-4mp

- OS Version: Windows 10.0
- Local Date: 26.03.2026 <ip>
- Time Zone: UTC+5
- Install Date: Unknown
- Elevated: true
- Computer: DESKTOP-R5F22AO
- User: MSI
- Language: en-US
- HWID: 4EF7A335
- RAM Size: 32621MB
- CPU: 12th Gen Intel(R) Core(TM) i5-12400F
- GPU: NVIDIA GeForce RTX 3060
- Display: 1920x1080
- IP: <ip>
```

## Detection

The `- KORTEX // STEAL` line-anchored banner with two
forward slashes is the cleanest trigger. The dash-prefix
field opening (`- Path:`, `- ID:`, `- OS Version:`, etc.) is
shared with Lumma-shape variants but the KORTEX banner is
unique.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`lumma`](../lumma/)
- [`xfiles`](../xfiles/)
- [`redlinelike-stealer`](../redlinelike-stealer/)

## References

- https://russianpanda.com/Pure-Logs-Stealer-Malware-Analysis
- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
