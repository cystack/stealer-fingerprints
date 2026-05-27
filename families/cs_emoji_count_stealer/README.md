# CSEmojiCountStealer

CSEmojiCountStealer is a CyStack-coined identifier for an
`Information.txt` panel divided into four `- IP Info -` /
`- PC Info -` / `- Other Info -` / `- Log Info -` sections
with dash-space-name-space-dash captions. The Log Info
section ships a `Build:_____` placeholder and a per-
category count line for each artifact type using ✅ (data
harvested) or ❌ (category empty) emoji indicators. Eight
count categories are tracked: `Passwords:`, `Cookies:`,
`Wallets:`, `Files:`, `Credit Cards:`, `Servers FTP/SSH:`,
`Discord Tokens:`, `Others:`. Observed inside
`!! 2025 NOV.part001.rar` aggregator packs in
`[<CC>]<IP>/Information.txt` victim folders.

The body carries `FileLocation:` and `Current Language:`
field names that match Redline canonical, but the
surrounding section structure (dash-space captions, emoji
count indicators, `Build:_____` placeholder) does not
match Redline canonical (no `Operation System:` typo, no
`Hardwares:` block, no `Anti-Viruses:` block). Family
attribution is provisional pending a published threat-
intel mapping for this layout.

**Also known as:** `Dash-section emoji-count Information.txt panel`, `4-section ✅/❌ checkmark stealer`

**Variants observed:** 3
**Top attribution confidence:** `unknown`

## Targets

- Browser-saved credentials
- Browser cookies and session tokens
- Cryptocurrency wallets
- Grabbed files
- Credit cards
- FTP and SSH server credentials
- Discord tokens
- Per-victim IP / country / city / ISP geolocation

## Variants

### `cystack_1a0ba773`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `Build`, `CPU`, `City`, `Cookies`, `Country`, `Credit Cards`, `Current Language`, `Discord Tokens`, `FileLocation`, `Files`, `GPU`, `IP`, `ISP`, `Is Elevated`, `OS`, `Others`, `Passwords`, `Postal`, `Servers FTP/SSH`, `Timezone`, `Wallets`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
- IP Info -

IP: <redacted>
Country: Nigeria
City: <redacted>
Postal: 
ISP: Mtn Nigeria Communication Limited - A29465
Timezone:  01:00

- PC Info -

OS: Microsoft Windows 8.1
CPU: Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
GPU: 
    - Intel(R) HD Graphics 520 (1366, 768)
Current Language: English (United States)
FileLocation: <redacted>
Is Elevated: true

- Other Info -

Antivirus: 
    - Windows Defender
    - Avast Antivirus

- Log Info -


Build:_____

Passwords: ✅ 229
Cookies: ✅ 5222
Wallets: ✅ 2
Files: ✅ 33
Credit Cards: ❌
Servers FTP/SSH: ❌
Discord Tokens: ✅ 1
Others: ❌
```

### `cystack_1b6dac8d`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `CPU`, `City`, `Cookies`, `Country`, `Credit Cards`, `Current Language`, `FileLocation`, `Files`, `GPU`, `HWID`, `IP`, `ISP`, `Is Elevated`, `OS`, `Passwords`, `Postal`, `Timezone`, `Wallets`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    - IP Info -

IP: <redacted>
Country: United States
City: <redacted>
Postal: 33128
ISP: Cogent Communications, LLC - A174
Timezone: -04:00

- PC Info -

OS: Microsoft Windows 10 IoT Enterprise LTSC
CPU: AMD EPYC 7402 24-Core Processor                
GPU: 
    - Intel(R) UHD Graphics 630 (1280, 1024)
HWID: <redacted>
Current Language: English (Canada)
FileLocation: <redacted>
Is Elevated: true

- Other Info -

Antivirus: 
    - Windows Defender

- Log Info -

Passwords: ❌
Cookies: ✅ 22
Wallets: ❌
Files: ✅ 16
Credit Cards: ❌
```

### `cystack_b6fbe92c`

**Attribution confidence:** `unknown`

**Field keys:**
`Antivirus`, `Build`, `CPU`, `City`, `Cookies`, `Country`, `Credit Cards`, `Current Language`, `Discord Tokens`, `FileLocation`, `Files`, `GPU`, `HWID`, `IP`, `ISP`, `Is Elevated`, `OS`, `Others`, `Passwords`, `Postal`, `Servers FTP/SSH`, `Timezone`, `Wallets`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
    - IP Info -

IP: <redacted>
Country: Nigeria
City: <redacted>
Postal: 
ISP: Mtn Nigeria Communication Limited - A29465
Timezone:  01:00

- PC Info -

OS: Microsoft Windows 8.1
CPU: Intel(R) Core(TM) i5-6300U CPU @ 2.40GHz
GPU: 
    - Intel(R) HD Graphics 520 (1366, 768)
HWID: <redacted>
Current Language: English (United States)
FileLocation: <redacted>
Is Elevated: true

- Other Info -

Antivirus: 
    - Windows Defender
    - Avast Antivirus

- Log Info -


Build:_____

Passwords: ✅ 229
Cookies: ✅ 5222
Wallets: ✅ 2
Files: ✅ 33
Credit Cards: ❌
Servers FTP/SSH: ❌
Discord Tokens: ✅ 1
Others: ❌
```

## Detection

Fingerprint requires three section-header substrings
(`- IP Info -`, `- PC Info -`, `- Log Info -`) plus at
least one emoji count indicator (U+2705 ✅ or U+274C ❌).
The three-section trio is unique across the registry, and
the emoji confirmation rejects unrelated text that uses
the dash-delimited captions for prose section markers.
During triage, treat the family attribution as unknown:
the `FileLocation:` and `Current Language:` Redline-
canonical field names suggest Redline lineage but the
overall body shape does not match Redline canonical.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redline`](../redline/)
- [`redlinelike-stealer`](../redlinelike_stealer/)
- [`cs-emoji-info-stealer`](../cs_emoji_info_stealer/)

## References

- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
