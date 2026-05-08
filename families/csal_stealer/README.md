# CSALStealer

CSALStealer is a CyStack-coined identifier for a self-named
AL Stealer log family observed inside `APRIL 25 - 19966 LOGS`
Telegram packs in `DZ_<IP>_<DD-MM-YY>/` victim folders. The
format is Lumma-shaped (dash-prefix YAML list) but carries a
distinct build banner, a different distribution channel, and
lacks Lumma's canonical `(sig:UNIX.HEX)` signature. The
malware self-identifies as AL Stealer (likely "Additional
Libraries", matching its Telegram channel) and targets
Hypixel Skyblock players via fake Minecraft mods. Family
identification is provisional; no published threat-intel
source attests this specific log template, hence the `CS`
prefix.

**Also known as:** `AL Stealer`

## Targets

- Browser saved credentials
- Crypto wallet extensions
- Minecraft account credentials and Hypixel Skyblock data

## Variants

### `cystack_32fa8e1f`

**Field keys:**
`Buy`, `Reserve Link`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
The Best fresh logs and ULP Cloud

t.me/WichLoveFromR
t.me/WichLoveFromR
t.me/WichLoveFromR

Reserve Link: <url>
Buy: @AltairSupport


t.✅me/🙌Link_CashFlow = CASHFLOW•PREMIUM•CLOUD•LOGS — premium Cashflow logs

# Join now: t.me/additionallibraries
# Best Hypixel Skyblock free rat
- AL Stealer Build: May 17 2025

- OS Version: Failed to Fetch.
- Local Date: 08.02.2026 <ip>
- Time Zone: Failed to Fetch.
- Install Date: Failed to Fetch.
- Computer: Mumen2010
- User: yaser
- Domain: Failed to Fetch.
- Hostname: Failed to Fetch.
- Anti Virus:
  - Windows Defender
- HWID: Failed to Fetch.
- RAM Size: Failed to Fetch.
- CPU Vendor: Failed to Fetch.
- CPU Name: Failed to Fetch.
- CPU Threads: Failed to Fetch.
- CPU Cores: Failed to Fetch.
- GPU: Failed to Fetch.
- Display resolution: 2560x1440

- Clipboard: null

- IP Address: <ip>
- Time: 08.02.2026 <ip>
- Country: IQ

------------------------------------
Free/Best hypixel rat >> t.me/additionallibraries
Free, discord bot, cookies, passwords, crypto wallets, non dhooked, more than 180 applications that can be stealed and much more.
Become better right now - t.me/additionallibraries
```

### `cystack_c65f37b2`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
# Join now: t.me/additionallibraries
# Best Hypixel Skyblock free rat
- AL Stealer Build: May 17 2025

- OS Version: Microsoft Windows 11 Home Single Language (10.0.26200) x64
- Local Date: 08.02.2026 <ip>
- Time Zone: UTC+05:30 Chennai, Kolkata, Mumbai, New Delhi
- Install Date: 01.12.2024 <ip>
- Computer: MSI
- User: tripa
- Domain: WORKGROUP
- Hostname: MSI
- Anti Virus:
  - null
- HWID: E1B373ADA970A142A7EBEA656E56BF51
- RAM Size: 8192MB
- CPU Vendor: GenuineIntel
- CPU Name: 12th Gen Intel(R) Core(TM) i3-1215U
- CPU Threads: 8
- CPU Cores: 6
- GPU: Intel(R) UHD Graphics
- Display resolution: 1536x864

- Clipboard: tghhhhgrgdgg00.aternos.me

- IP Address: <ip>
- Time: 08.02.2026 <ip>
- Country: IN

------------------------------------
Free/Best hypixel rat >> t.me/additionallibraries
Free, discord bot, cookies, passwords, crypto wallets, non dhooked, more than 180 applications that can be stealed and much more.
Become better right now - t.me/additionallibraries
```

## Detection

Dash-prefix `- AL Stealer Build:` line is the cleanest
trigger. The `t.me/additionallibraries` channel reference in
the join-now header is a backup signature for variants that
strip the build banner.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`lumma`](../lumma/)

## References

- t.me/additionallibraries
