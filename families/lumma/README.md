# Lumma

Lumma C2 (LummaC2) logs. The panel writes `System.txt` with a
YAML-like dash-prefix list (`- LummaC2 Build:`,
`- Configuration:`, etc.) and a distinctive `(sig:UNIX.HEX)`
signature on the `Time:` line. Build banners reference the
`@lummanowork` channel; the panel is sold MaaS via
`@lummamarketplace_bot`.

**Also known as:** `LummaC2`, `Lumma Stealer`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions (focus on MetaMask, Phantom, and similar)
- Steam, Telegram, Discord session tokens
- 2FA seeds from Authy and similar desktop clients
- Cryptocurrency seed phrases harvested from text files

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `System.txt`, `system_info.txt`

**Sample (sanitized):**

```

 
- Path: C:\Users\<user>\AppData\Local\Temp\118083\Secretariat.com

- Elevated: false
- Computer: DESKTOP-PQTQDKI
- User: denan
- Domain: 
- Hostname: DESKTOP-PQTQDKI
- NetBIOS: DESKTOP-PQTQDKI
- Language: pt-BR
- Anti Virus:
	- Windows Defender
- HWID: 7183DCE3556ED14C23B78A6C75E2DD1E
- RAM Size: 8192MB
- CPU Vendor: GenuineIntel
- CPU Name: Intel(R) Core(TM) i7-4790K CPU @ 4.00GHz
- CPU Threads: 8
- CPU Cores: 4
- GPU:
- Display resolution: 1024x768

- IP Address: <ip>
- Time: 19.07.2025 <ip> (sig:1752891423.31dc75bf4e926c574f2456308d5f28ea)
- Country: <ip>
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

- [`remus-stealer`](../remus_stealer/)
- [`csalstealer`](../csalstealer/)
- [`csbabastealer`](../csbabastealer/)
- [`csarthousecloudstealer`](../csarthousecloudstealer/)
- [`cscashflowstealer`](../cscashflowstealer/)

## References

- @lummanowork
- @lummamarketplace_bot
- https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/
