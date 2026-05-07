# Lumma

Lumma C2 (LummaC2) logs. The panel writes `System.txt` with a
YAML-like dash-prefix list (`- LummaC2 Build:`,
`- Configuration:`, etc.) and a distinctive `(sig:UNIX.HEX)`
signature on the `Time:` line. Build banners reference the
`@lummanowork` channel; the panel is sold MaaS via
`@lummamarketplace_bot`.

**Also known as:** `LummaC2`, `Lumma Stealer`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions (focus on MetaMask, Phantom, and similar)
- Steam, Telegram, Discord session tokens
- 2FA seeds from Authy and similar desktop clients
- Cryptocurrency seed phrases harvested from text files

## Variants

### `cystack_4177c9d7`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Domain`, `GPU`, `HWID`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot
[... 28 blank lines ...]
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>
[... 14 blank lines ...]
Domain: <redacted>
HWID: <redacted>
CPU Vendor: AuthenticAMD
CPU Name: AMD Ryzen 5 3600 6-Core Processor
CPU Threads: 12
CPU Cores: 6
GPU: NVIDIA GeForce RTX 3060 Ti
Display resolution: 3440x1440
Country: LT
```

### `cystack_c65f37b2`

**Filenames:** `System.txt`, `UserInformation.txt`

**Sample (sanitized):**

```
- User: erenh
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
- Display resolution: 1720x1080

- Clipboard: <url>
M0N2QoLgcrUX6qNuwGZwYDFZKJOpTHvlpk

- IP Address: <ip>
- Time: 02.02.2026 <ip>
- Country: NL
```

## Detection

High-confidence trigger: the `(sig:UNIX.HEX)` parenthesised
signature on the `- Time:` line. Together with the
`- LummaC2 Build:` banner this is unambiguous Lumma. Several
derivative families (Remus, AL Stealer, BabaStealer,
ArtHouseCloud, CashFlow) share the dash-prefix shape but lack
the signature; they should be tracked separately.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1119 Automated Collection](https://attack.mitre.org/techniques/T1119/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`remus-stealer`](../remus-stealer/)
- [`csalstealer`](../csalstealer/)
- [`csbabastealer`](../csbabastealer/)
- [`csarthousecloudstealer`](../csarthousecloudstealer/)
- [`cscashflowstealer`](../cscashflowstealer/)

## References

- @lummanowork
- @lummamarketplace_bot
- https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/
