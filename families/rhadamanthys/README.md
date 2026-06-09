# Rhadamanthys

Rhadamanthys info-stealer logs (v0.9.x device-fingerprint shape).
Writes a flat `systeminfo.txt` opening with `IP:`, `Country:`
and continuing with a hardware and locale block. Distinguished
from Redline-shape logs by the `Wallpaper Hash:` and
`MachineID:` field combination, which Rhadamanthys emits but
Redline never does. Continuously updated through 2025 with
expanded crypto-wallet, browser, and messenger coverage.

**Also known as:** `Rhadamanthys Stealer`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, history
- Crypto wallet extensions and desktop clients
- 2FA codes from authenticator browser extensions
- PDF, Office, and other document grabber
- Messenger and email clients

## Variants

### `cystack_05ddd107`

**Attribution confidence:** `high`

**Field keys:**
`Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `HWID`, `IP`, `Installed RAM`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `Traffic`, `User Language`, `User Name`, `Video card`, `Wallpaper Hash`

**Filenames:** `UserInformation.txt`

**Sample (sanitized):**

```
Log date: 23 Oct 24 00:36 UTC
Traffic: @BradMax_CLOUD
HWID: <redacted>
Country: CO
IP: <redacted>
TimeZone: UTC-5
User Language: Spanish
System Language: Spanish
Keyboard Language: Spanish
Processor: AMD Athlon 3000G with Radeon Vega Graphics     
Installed RAM: 5596 MB
Operation System: Windows 10 build 19045 (64 Bit)
Video card: AMD Radeon(TM) Vega 3 Graphics
Display Resolution: 1366x768
Computer Name: <redacted>
User Name: <redacted>
Domain Name: <redacted>
MachineID: <redacted>
Wallpaper Hash: c657abafdc1d4b498461d712447663868eae3afb
```

## Detection

High-confidence trigger: `Wallpaper Hash:` + `MachineID:`
field pair. The `IP:` + `Country:` opening is shared with
Vidar but Rhadamanthys lacks Vidar's `Version:` third-line
field.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)

## References

- https://research.checkpoint.com/2025/rhadamanthys-0-9-x-walk-through-the-updates/
- https://thehackernews.com/2025/10/rhadamanthys-stealer-evolves-adds.html
- https://any.run/malware-trends/rhadamanthys/
