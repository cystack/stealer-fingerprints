# CSCrownBuildStealer

CSCrownBuildStealer is a CyStack-coined identifier for a
six-line `Information.txt` Telegram-bot caption observed
inside `!! 2025 JULY.part001.rar` aggregator packs under
`[<CC>]<IPv4>/Information.txt` victim folders. The panel
is a compact preview summary - one field per line, each
line opens with an emoji glyph attached directly to the
ASCII key with no separator space (`🚩IP:`, `👑Build:`,
`🔑Passwords:`, `🍪Cookies:`, `💰Wallets:`,
`📂Applications:`). The zero-space form is the panel
quirk that distinguishes this layout from other emoji-
prefixed parsers.

The IP line carries a trailing `(<CC>)` two-letter ISO
country code in parentheses after the IPv4. The Build
line carries an operator-set build / affiliate label
(`STEAM` in the observed sample, but the slot accepts
arbitrary literals). The Wallets line names a single
wallet brand (`MetaMask`) rather than emitting a count.
The Applications line uses a literal `No No / No`
placeholder when the empty-bucket sentinel applies.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Surveyed sources
(TrendMicro, SentinelOne Labs, Kaspersky, Cyfirma,
SOCRadar, Cloudflare, Talos, Unit 42, Microsoft TI,
Mandiant / Google TAG, Recorded Future, eSentire,
Cybereason, BleepingComputer research, CERT-AGID, Drweb,
Proofpoint, ANY.RUN, plus the public stealer-format
catalogues MalBeacon / what-is-this-stealer,
fastfire / deepdarkCTI, Malpedia community pages,
RussianPanda blog) do not document a family that emits
this exact six-line zero-space emoji-key shape with the
country-code-in-parens IP convention and the `Build:`
operator label slot.

**Variants observed:** 1
**Top attribution confidence:** `unknown`

## Targets

- Browser saved credentials (count surfaced as `Passwords:`)
- Browser cookies (count surfaced as `Cookies:`)
- Cryptocurrency wallet extensions (single brand surfaced as `Wallets:`)
- Application-data presence flag (`Applications:`)

## Variants

### `cystack_c65f37b2`

**Attribution confidence:** `unknown`

**Filenames:** `Information.txt`

**Sample (sanitized):**

```
🚩IP: <ip> (AL)
👑Build: STEAM
🔑Passwords: 1
🍪Cookies: 0
💰Wallets: MetaMask
📂Applications: No No / No
```

## Detection

Fingerprint requires three line-anchored zero-space
emoji-key literals: `👑Build:`, `🚩IP:`, and
`📂Applications:`. The three-anchor combination is unique
across the registry - no other parser emits any of the
three forms (CSEmojiInfo / CSEmojiCount / CSMainLoot /
CSRLPanel all separate the glyph from the ASCII key
with a space). During triage, treat the family
attribution as unknown: the compact six-line bot-
caption shape ships only IP, country, and build-label
as IOC fields, so per-victim hostname / username /
OS / HWID / timestamp cannot be recovered from this
log alone. The `Build:` slot is operator-controlled, so
one observed value (`STEAM`) does not represent the
full label space.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`cs-emoji-info-stealer`](../cs_emoji_info_stealer/)
- [`cs-emoji-count-stealer`](../cs_emoji_count_stealer/)
- [`cs-main-loot-stealer`](../cs_main_loot_stealer/)
- [`cs-rl-panel-stealer`](../cs_rl_panel_stealer/)

## References

- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
