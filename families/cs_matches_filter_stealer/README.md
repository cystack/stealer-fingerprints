# CSMatchesFilterStealer

CSMatchesFilterStealer is a CyStack-coined identifier for
a four-line `Information.txt` written by a Telegram broker
bot that pre-scans the victim`s harvested cookies and
passwords for high-value domain or keyword hits, then
rolls the per-target counts into a single `Matches:` line
so prospective buyers can rank logs before purchase. The
body is `IP:` / `Country:` / `User:` / `Matches:`, no
banner, no section dividers, no trailing footer. The
`Country:` value follows the dual-token `ISO2 - Name` form
(`BD - Bangladesh`), which is the parser`s narrowest
disambiguator across flat-key shapes.

The format is a broker-side caption rather than a stealer
family`s own writer output, so the underlying family for
any given log is not recoverable from this panel alone:
multiple stealers can feed into the broker`s pre-scan
pipeline. The `Matches:` enrichment list (per-domain or
per-keyword counts) is panel-side metadata, not victim-
side data, so it is intentionally not surfaced as IOC
fields. Observed targets in the rollup line include
freelancer / payment platforms (`payoneer.com`,
`upwork.com`, `gumroad.com`), social-network accounts
(`facebook.com`, `studio.youtube.com`), and free-form
financial keywords (`bank`, `payout`).

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed sources
(TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare, Talos, Unit 42, Microsoft TI,
Mandiant / Google TAG, Recorded Future, eSentire,
Cybereason, BleepingComputer research, CERT-AGID, Drweb,
Proofpoint, ANY.RUN, plus the public stealer-format
catalogues MalBeacon / what-is-this-stealer,
fastfire / deepdarkCTI, Malpedia community pages,
RussianPanda blog, Lexfo stealer-parser blog) do not
document a family that emits this exact four-line
`IP` / `Country` / `User` / `Matches:` shape.

**Also known as:** `Broker pre-scan caption`, `Matches rollup filter bot`

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser-saved credentials and cookies (counted by `Matches:` rollup)
- Freelancer payment accounts (Payoneer, Upwork, Gumroad)
- Social-network sessions (Facebook, YouTube Studio)
- Free-form financial keywords (bank, payout)

## Variants

### `cystack_7cf7a69f`

**Attribution confidence:** `unknown`

**Field keys:**
`Country`, `IP`, `Matches`, `User`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
IP: <redacted>
Country: BD - Bangladesh
User: Redowan
Matches: studio.youtube.com (71) facebook.com (7882) payoneer.com (36) upwork.com (256) gumroad.com (4) bank (5) payout (1)
```

## Detection

Fingerprint requires four line-anchored anchor keys
(`IP:`, `Country:`, `User:`, `Matches:`) plus the
`Country: ISO2 - Name` dual-token country form. The four
anchors alone would collide with any generic flat-key
panel that ships an `IP:` / `Country:` / `User:` triple;
requiring the country value to carry both the two-letter
ISO code and the full name joined by ` - ` is what
narrows the match. The `Matches:` rollup itself is
broker-side metadata, not victim-side data, so during
triage treat the per-target counts as a relevance signal
(the broker advertised the log because these accounts
were valuable) rather than as direct evidence of
compromise for those services. Treat the family
attribution as unknown: multiple underlying stealers can
feed into the broker`s pipeline, and the panel does not
preserve the original writer`s family signature.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`cs-crown-build-stealer`](../cs_crown_build_stealer/)
- [`cs-main-loot-stealer`](../cs_main_loot_stealer/)
- [`cs-rl-panel-stealer`](../cs_rl_panel_stealer/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
- https://blog.lexfo.fr/infostealer-parser.html
