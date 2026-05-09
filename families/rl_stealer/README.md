# RL Stealer

RL Stealer is a .NET infostealer derived from the open-
source `razexgod/44CALIBER` Discord-exfiltration builder.
The panel writes an `Information.txt` whose body matches
44CALIBER's upstream `SystemInfo.cs` writer character-
for-character for the first five sections, then appends a
sixth section carrying `HDD:` / `MAC:` / `BIOS caption:`
hardware identifiers that the upstream does not emit.
Each key/value line opens with a single leading space
(invariant from the upstream string concatenation), and
sections are separated by equals-sign rules.

Family attribution: confidence is medium. The MalBeacon
`what-is-this-stealer` community catalogue documents the
format under the RL Stealer label, the upstream
`razexgod/44CALIBER` GitHub source code matches the body
shape, and pcrisk.com documents RL Stealer existence as a
rebranded Ades stealer. Two curated CTI vendors do not
jointly publish the format-to-family mapping, so the
attribution rests on community catalog plus open-source
builder-code confirmation.

**Also known as:** `Ades`, `44Caliber variant`, `StormKitty variant`

**Variants observed:** 1
**Total observations:** 12
**Top attribution confidence:** `medium`

## Targets

- Browser saved credentials, cookies, autofill, history
- Crypto wallet extensions and desktop clients
- Discord, Telegram, Steam, Minecraft session data
- FTP and VPN client credentials
- Clipboard contents
- Desktop screenshot

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `medium`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```

==============================================
 Operating system: Windows 11 Pro (64 Bit)
 PC user: DESKTOP-OYF2376/SYSTEM
 ClipBoard: 
 Launch: C:\Users\<user>\AppData\Local\Temp\tempfile_22639.exe
==============================================
 Screen resolution: 1400x1050
 Current time: 1/16/2026 <ip> AM
 HWID: <redacted>
==============================================
 CPU: Intel(R) Xeon(R) CPU @ 2.80GHz
 RAM: 4194MB
 GPU: 73ZBXXKB
==============================================
 IP Geolocation: <ip> United States
 Log Date: 01/16/2026 11:52
 BSSID: <ip>
==============================================
 HDD: 2848D22B
 MAC: <redacted>
 BIOS caption: Default System BIOS
==============================================
```

## Detection

Line-anchored ` PC user:`, ` Launch:`, and
` IP Geolocation:` co-occurring is the cleanest trigger.
The leading-space prefix on each key line is invariant
across observed samples (the upstream's string
`"\n PC user: "` concatenation produces it). The base
44CALIBER builder emits five sections; the RL panel
extension appends a sixth carrying `HDD:` / `MAC:` /
`BIOS caption:`, but the parser tolerates either count.
BlackGuard Stealer is also a 44CALIBER fork; both share
the credential-collection method but emit different
log formats so they do not collide with this parser's
fingerprint.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1115 Clipboard Data](https://attack.mitre.org/techniques/T1115/)
- [T1113 Screen Capture](https://attack.mitre.org/techniques/T1113/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`44caliber`](../44caliber/)
- [`stormkitty`](../stormkitty/)
- [`blackguard`](../blackguard/)

## References

- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/razexgod/44CALIBER
- https://www.pcrisk.com/removal-guides/25759-rl-stealer-malware
