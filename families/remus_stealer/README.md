# Remus Stealer

Remus Stealer is an operator-branded Lumma-shaped infostealer
distributed via the `@rmsops` Telegram channel. The
`Info.txt` opens with `# BUY STEALER - https://t.me/rmsops`
followed by a `# REMUS LOG` banner and a YAML-style `build:`
block. Field shape parallels Lumma's dash-prefix list but with
a different banner and distribution channel.

**Also known as:** `Remus`

**Variants observed:** 2
**Top attribution confidence:** `high`
**Operator panel brands:** `Daisy Cloud`
**Distribution channels:** `@UP_DAISYCLOUD`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and clients
- System hardware and locale inventory

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
|                                                                                                                      |
|     @stealerboss - Buy daily fresh logslerboss - Buy daily fresh logs     @stealerboss - Buy daily fresh logslerboss - Buy daily fresh logs     @stealerboss - Buy daily fresh logslerboss - Buy daily fresh logs     @stealerboss - Buy daily fresh logs  CLOUD     @stealerboss - Buy daily fresh logslerboss - Buy daily fresh logs     @stealerboss - Buy daily fresh logslerboss - Buy daily fresh logs     @stealerboss - Buy daily fresh logslerboss - Buy daily fresh logs     |
|______________________________________________________________________________________________________________________|
 
# REMUS LOG

build:
  date: 12.04.2026
  path: <redacted>
  elevated: true
  ip-address: <ip>
  country: VE
  time: 17.04.2026, <ip>
os:
  version: Windows 10 Home Single Language (10.0.19045) x64
  time-zone: UTC-4
  local-date: 17.04.2026 <ip>
  install-date: 29.01.2026 <ip>
  language: es-SV
  computer-name: DESKTOP-UDVVIKD
  user-name: lenovo
  netbios: DESKTOP-UDVVIKD
  domain: 
  <redacted>
  anti-virus:
  - name: Windows Defender
    state: active
hardware:
  motherboard:
    manufacturer: LENOVO
    product: VIUS3
  cpu:
  - manufacturer: Intel(R) Corporation
    product: Intel(R) Core(TM) i3-2377M CPU @ 1.50GHz
    core count: 2
    core enabled: 2
    thread count: 4
  ram:
  - product: LN-SD304160011SA7L
    size: 4096MB
[... truncated; full sample at ``sample.txt`` (approx. 3 more lines) ...]
```

### `Daisy Cloud`

**Fingerprint id:** `daisy_cloud`

**Distribution channel:** `@UP_DAISYCLOUD`

**Attribution confidence:** `high`

**Filenames:** `Info.txt`

**Sample (sanitized):**

```
|______________________________________________________________________________________________________________________|
| These logs belong to Daisy Cloud, if you see these logs elsewhere, you are being scammed and let us know immediately |
|                                                                                                                      |
| D           Join: <url>                      _..._             .-'''-.                        D |
| A  _______  Join: <url>                   .-'_..._''. .---.   '   _    \       _______        A |
| I  \  ___ `'.            .--.                                .' .'      '.\|   | /   /` '.   \      \  ___ `'.     I |
| S   ' |--.\  \           |__|     .-.          .-           / .'           |   |.   |     \  '       ' |--.\  \    S |
| Y   | |    \  '          .--.      \ \        / /          . '             |   ||   '      |  '      | |    \  '   Y |
|     | |     |  '    __   |  |       \ \      / /           | |             |   |\    \     / /       | |     |  '    |
| C   | |     |  | .:--.'. |  |     _  \ \    / /            | |             |   | `.   ` ..' /_    _  | |     |  |  C |
| L   | |     ' .'/ |   \ ||  |   .' |  \ \  / /             . '             |   |    '-...-'`| '  / | | |     ' .'  L |
| O   | |___.' /' `" __ | ||  |  .   | / \ `  /               \ '.          .|   |           .' | .' | | |___.' /'   O |
| U  /_______.'/   .'.''| ||__|.'.'| |//  \  /                 '. `._____.-'/|   |           /  | /  |/_______.'/    U |
| D  \_______|/   / /   | |_ .'.'.-'  /   / /                    `-.______ / '---'          |   `'.  |\_______|/     D |
|                 \ \._,\ '/ .'   \_.'|`-' /                              `                 '   .'|  '/                |
|                  `--'  `"            '..'                                                  `-'  `--'                 |
[... truncated; full sample at ``sample.txt`` (approx. 61 more lines) ...]
```

## Detection

The `# REMUS LOG` banner together with the `@rmsops` channel
reference is unambiguous. The YAML-shaped `build:` opening
also distinguishes Remus from Lumma proper, which uses the
dash-prefix `- LummaC2 Build:` form instead.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`lumma`](../lumma/)

## References

- https://t.me/rmsops
