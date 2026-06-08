# Antarctida Stealer

Antarctida Stealer logs. The `Information.txt` opens with a
bullet-prefixed (`• OS:`, `• CPU:`) hardware and locale block
preceded by a snowflake-decorated banner (`❄ Antarctida Stealer ❄`).

**Also known as:** `Antarctida Stealer`

**Variants observed:** 1
**Top attribution confidence:** `high`

## Targets

- Browser saved credentials and cookies
- Crypto wallet extensions and desktop clients
- System hardware inventory

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `high`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
❄ Antarctida Stealer ❄

• OS: Windows 11
• CPU: 12th Gen Intel(R) Core(TM) i7-12700
• RAM: 16 GB
• GPU: Intel(R) UHD Graphics 770
• Disk: 476 GB
• IP: <ip>
• Username: CBE
• Computer Name: DESKTOP-LPCSG1S
• System Directory: C:\WINDOWS\system32
```

## Detection

The snowflake-decorated banner is unambiguous; the bullet
(`•`) prefix on field lines also distinguishes Antarctida from
the more common dash (`-`) and tab indents used by other
families in this catalog.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
