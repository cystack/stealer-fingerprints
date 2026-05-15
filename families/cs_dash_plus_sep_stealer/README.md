# CSDashPlusSepStealer

CSDashPlusSepStealer is a CyStack-coined identifier for an
11-stanza `Information.txt` panel summary that the
`@BRADLOGS / BRADMAX` aggregator distributes inside
`!! 2025 NOV.part001.rar` packs. Per-victim folders follow
the `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt`
layout. Every value is written on its own line, padded
with blank lines on both sides, and a
`---+---+---+---+---+---+---` dash-plus rule separates
the panel-summary block from a three-line trailing block
of opaque Facebook-Ads-Manager artefacts.

The panel-summary block carries `country : City-Region-CC`
with a space before the colon, an `ID :` value shaped
like a 15-digit Facebook user ID, a bare
`Windows-<major>-<release>-<build>-SP0` line in the
Python `platform.platform()` shape, a `Username:` line,
and a pipe-separated `CK: <n> | Card: <n>` count line.
The trailing block ships three values: a short alpha
token, an integer, and a `T-` prefixed 18-digit number
(likely Facebook page initials, page-likes count, and
ad-account ID, though the schema has no slot for these
so they are dropped at parse time). Family attribution
is provisional pending a published threat-intel mapping
for this layout. The closest documented relatives are
NodeStealer (Unit 42) and SYS01 (Morphisec), both
Facebook-targeting families, but neither publishes a
sample log showing this exact label set or the
`---+---+---` rule.

**Also known as:** `BRADMAX dash-plus separator panel summary`, `@BRADLOGS Facebook-ID panel summary`

**Variants observed:** 1
**Top attribution confidence:** `unknown`
**Operator panel brands:** `BRADMAX`
**Distribution channels:** `@BRADLOGS`

## Targets

- Browser cookies (count flag only)
- Credit cards (count flag only)
- Facebook user ID
- Facebook Ad account ID (T-prefixed)
- Host OS via Python `platform.platform()` output
- Windows username
- Victim country (ISO 3166-1 alpha-2)

## Variants

### `BRADMAX`

**Fingerprint id:** `bradmax`

**Distribution channel:** `@BRADLOGS`

**Attribution confidence:** `unknown`

**Field keys:**
`CK`, `ID`, `Username`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
country :  Ar Rifā‘-Southern Governorate-BH
ID : 103997301866391
Windows-11-10.0.26100-SP0
Username: <redacted>
CK: 0 | Card: 0
---+---+---+---+---+---+---
KCG
17
T-111111111111111111
```

## Detection

Fingerprint requires the `---+---+---+---+---+---+---`
dash-plus rule AND `country :` (with space before the
colon) AND `CK:` AND `| Card:`. Four anchors together
cannot collide with any other registered parser. During
triage, treat the family attribution as unknown: the
panel summary is the metadata view of an underlying
stealer whose canonical name has not been mapped to this
layout in any surveyed CTI source. The Facebook user ID
plus T-prefixed ad-account ID strongly suggest a
Facebook-business-account targeting family in the
NodeStealer / SYS01 / Album-Stealer lineage, but no
curated CTI source confirms the mapping.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`nodestealer`](../nodestealer/)
- [`sys01-stealer`](../sys01_stealer/)
- [`cs-facebook-profile-stealer`](../cs_facebook_profile_stealer/)
- [`cs-py-host-time-stealer`](../cs_py_host_time_stealer/)
- [`cs-count-runs-stealer`](../cs_count_runs_stealer/)

## References

- https://unit42.paloaltonetworks.com/nodestealer-2-targets-facebook-business/
- https://www.morphisec.com/blog/sys01stealer-facebook-info-stealer/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://t.me/BRADLOGS
