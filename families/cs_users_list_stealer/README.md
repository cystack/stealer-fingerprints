# CSUsersListStealer

CSUsersListStealer is a CyStack-coined identifier for a
five-line minimal `Information.txt` panel distributed
through the `@BRADLOGS` Telegram channel (active mirror of
the `@BRADMAX` / `t.me/bradmax_cloud` aggregator that
deepdarkCTI catalogs as a "Redline and Raccoon Data Logs"
reseller). Observed at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt`
victim folders inside `!! 2025 JULY.part001.rar` packs.

The body is three space-before-colon header lines
(`HWID : <uuid>`, `IP : <ipv4>`, `Users : <comma-list>`)
followed by two emoji-prefixed per-category count lines
(`🔑 Passwords: <n>`, `🍪 Cookies: <n>`) separated from the
header block by blank-line padding. No hostname, OS, build
label, timestamp, country, or antivirus field is emitted.

The plural `Users :` line carries every Windows user profile
enumerated from `C:\Users\`, including the real victim plus
stale `TEMP` / `TEMP.DESKTOP-XXXX` / `TEMP.DESKTOP-XXXX.000`
remnants left behind when `LoadUserProfile` failed and the
OS created a throwaway profile directory. The multi-profile
enumeration is unique to this panel across the parser
registry; canonical stealers ship only the current
`Environment.UserName` value. The plural form points at a
Python builder calling `os.listdir(r"C:\Users")` rather
than a .NET runtime API.

Family attribution is provisional pending a published
threat-intel mapping. MalBeacon`s `what-is-this-stealer`
catalog and deepdarkCTI do not document a family that emits
this exact five-line space-before-colon shape with a
plural-profile `Users :` line and `🔑` / `🍪` per-category
count tail. The closest documented relative is LucaStealer,
whose summary format uses `✅`/`❌` count indicators rather
than the `🔑` / `🍪` category emoji used here, and which
ships no plural-profile `Users :` enumeration. The aggregator
self-label (Redline / Raccoon) cannot be trusted because the
body lacks every Redline canonical anchor (`Operation System:`
typo, `Hardwares:` block) and every Raccoon canonical anchor
(`User ID:` UUID, `Last seen:` JS-date).

**Also known as:** `@BRADLOGS five-line HWID-IP-Users panel`, `BRADMAX minimal Information.txt with emoji counts`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `BRADMAX`
**Distribution channels:** `@BRADLOGS`

## Targets

- Browser-saved credentials (count flag on `🔑 Passwords:`)
- Browser cookies (count flag on `🍪 Cookies:`)
- Windows HWID (`HWID :` GetSystemUUID 8-4-4-4-12 form)
- Public IPv4 address (`IP :` line)
- Full Windows user-profile enumeration (`Users :` plural list)

## Variants

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Field keys:**
`HWID`, `IP`, `Users`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
HWID : <redacted>
IP : <redacted>
Users : priya, TEMP, TEMP.DESKTOP-4EDCE2O, TEMP.DESKTOP-4EDCE2O.000, TEMP.DESKTOP-4EDCE2O.001


🔑 Passwords: 808


🍪 Cookies: 4818
```

## Detection

Fingerprint requires line-anchored `HWID :` AND `IP :` AND
`Users :` (all three with the space-before-colon separator)
AND the `🔑 Passwords:` substring AND the `🍪 Cookies:`
substring. The five-anchor combo is unique across the
registry: the space-before-colon trio on the header lines
is the panel`s developer-side quirk, and pairing with both
emoji count labels rules out canonical Redline (which uses
`Field : value` space-colon-space but ships an
`Operation System:` typo and `Hardwares:` / `Anti-Viruses:`
blocks not present here). During triage, treat this label
as a panel-side summary view (counts only): the actual
harvested credentials live in sibling files in the
operator`s archive, not in this Information.txt body. The
underlying builder is unidentified.

## MITRE ATT&CK

- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)
- [T1033 System Owner/User Discovery](https://attack.mitre.org/techniques/T1033/)
- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)

## Related families

- [`cs-py-host-time-stealer`](../cs_py_host_time_stealer/)
- [`cs-pc-name-snake-stealer`](../cs_pc_name_snake_stealer/)
- [`cs-main-loot-stealer`](../cs_main_loot_stealer/)
- [`cs-brad-logs-stealer`](../cs_brad_logs_stealer/)

## References

- https://github.com/MalBeacon/what-is-this-stealer
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADLOGS
- https://t.me/bradmax_cloud
