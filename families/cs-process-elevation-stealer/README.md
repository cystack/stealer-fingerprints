# CSProcessElevationStealer

CSProcessElevationStealer is a CyStack-coined identifier for a
Redline-shape `System.txt` observed inside `@ft7links-lumma`
aggregator packs in `@ft7links_lumma_<NN>_bogonip_<HWIDPFX>/`
victim folders. The body carries the canonical Redline
`Operation System:` (sic) typo and `Hardwares:` block, but
adds a `Process Elevation: True|False` line that canonical
Redline never emits, joins `ScreenSize:` and `TimeZone:` on a
single line with whitespace around the `=` (canonical Redline
emits no spaces and breaks them onto separate lines), and
strips Redline's identity preamble (`Build ID:`, `IP:`,
`FileLocation:`, `MachineName:`, `Location:`, `Log date:`)
entirely on bogon-IP victims.

A community stealer-format catalogue maps this exact field
shape to ArechClient2 / SectopRAT, and an independent
malware-analysis writeup confirms ArechClient2's collector
emits a matching field set (`OSVersion`, `ScreenSize`,
`TimeZone`, `AvailableLanguages`, `SystemHardwares`). The
canonical ArechClient2 / SectopRAT family is well documented
publicly, but none of those writeups publish a sample log
showing the exact label set above, so the format-to-family
mapping remains provisional and the `CS` prefix is retained
pending a published confirmation.

## Research status

- Classification: **CyStack tracking name**
- Attribution confidence: **medium**
- Aliases: `ArechClient2 (provisional)`, `SectopRAT (provisional)`
- Variants observed: **0**

## What it targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions and desktop clients
- System hardware, locale, and timezone inventory
- Anti-virus product enumeration

## Detection notes

The `Process Elevation:` line plus the joined
`ScreenSize: {Width = X,Height = Y}TimeZone: ...` emission
(spaces around the `=`, no separator before `TimeZone:`) is
unique to this panel among the Redline-shape rebrands in
this catalog. The `UNKNOWN` literal recurs in `Country:`
and `Zip Code:` for bogon-IP victims, so triage should
treat those values as missing rather than as a real country
or postal code. False-positive risk is low: no other
parser fingerprints on `Process Elevation:`, and the
co-required `Operation System:` typo confirms the
Redline-derived body shape.

## Observed log variants

No representative Logmine sample has been retained for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | Name |
|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [CSEnchantCloudStealer](../cs-enchant-cloud-stealer/)
- [CSRussia34Stealer](../cs-russia34-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
