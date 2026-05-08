# CSProcessElevationStealer

CSProcessElevationStealer is a CyStack-coined identifier for
a Redline-shape `System.txt` observed inside `@ft7links-lumma`
aggregator packs in `@ft7links_lumma_<NN>_bogonip_<HWIDPFX>/`
victim folders. The body carries the canonical Redline
`Operation System:` (sic) typo and `Hardwares:` block, but
adds a `Process Elevation: True|False` line that canonical
Redline never emits, joins `ScreenSize:` and `TimeZone:` on
a single line with whitespace around the `=` (canonical
Redline emits no spaces and breaks them onto separate lines),
and strips Redline's identity preamble (`Build ID:`, `IP:`,
`FileLocation:`, `MachineName:`, `Location:`, `Log date:`)
entirely on bogon-IP victims.

The MalBeacon `what-is-this-stealer` community catalogue
maps this exact field shape to ArechClient2 / SectopRAT, and
a third-party malware-analysis blog (malwr-analysis.com)
independently confirms ArechClient2's collector emits a
matching field set (`OSVersion`, `ScreenSize`, `TimeZone`,
`AvailableLanguages`, `SystemHardwares`). The canonical
ArechClient2 / SectopRAT family is documented by SentinelOne
Labs, ANY.RUN, Elastic Security Labs, and Malpedia, but none
of those curated CTI sources publish a sample log showing
the exact label set above, so the format-to-family mapping
remains provisional and the `CS` prefix is retained pending
a curated-CTI confirmation.

**Also known as:** `ArechClient2 (provisional)`, `SectopRAT (provisional)`

## Targets

- Browser saved credentials, cookies, autofill
- Crypto wallet extensions and desktop clients
- System hardware, locale, and timezone inventory
- Anti-virus product enumeration

## Variants

### `cystack_3f8964db`

**Field keys:**
`Available KeyboardLayouts`, `Buy`, `Country`, `Current Language`, `HWID`, `Hardwares`, `Name`, `Operation System`, `Process Elevation`, `Reserve Link`, `ScreenSize`, `UserName`, `Zip Code`

**Filenames:** `System.txt`

**Sample (sanitized):**

```

│    [

The Best fresh logs and ULP Cloud

t.me/WichLoveFromR
t.me/WichLoveFromR
t.me/WichLoveFromR

Reserve Link: <url>
Buy: @AltairSupport


UserName: <redacted>
Country: UNKNOWN
Zip Code: <redacted>
HWID: <redacted>
Current Language: Turkish (Türkiye)
ScreenSize: {Width = 1920,Height = 1080}TimeZone: (UTC+03:00) İstanbul
Operation System: Windows 10 Pro x64
Process Elevation: True
Available KeyboardLayouts: 
Turkish (Türkiye)
Hardwares: 
Name: 12th Gen Intel(R) Core(TM) i5-1235U, 10 Cores
Name: Intel(R) UHD Graphics, 4129648640 bytes
Name: Total of RAM, 7876.68 MB or 8259297280 bytes
Windows Defender
```

### `cystack_658ba444`

**Field keys:**
`Available KeyboardLayouts`, `Buy`, `Country`, `Current Language`, `HWID`, `Hardwares`, `Name`, `Operation System`, `Process Elevation`, `Reserve Link`, `ScreenSize`, `Zip Code`

**Filenames:** `System.txt`

**Sample (sanitized):**

```

│    [

The Best fresh logs and ULP Cloud

t.me/WichLoveFromR
t.me/WichLoveFromR
t.me/WichLoveFromR

Reserve Link: <url>
Buy: @AltairSupport


Country: UNKNOWN
Zip Code: <redacted>
HWID: <redacted>
Current Language: English (United States)
ScreenSize: {Width = 1920,Height = 1080}TimeZone: (UTC+07:00) Bangkok, Hanoi, Jakarta
Operation System: Windows 10 Pro x64
Process Elevation: True
Available KeyboardLayouts: 
English (United States)
Vietnamese (Vietnam)
Hardwares: 
Name: Intel(R) UHD Graphics 630, 1073741824 bytes
Name: Total of RAM, 8064.33 MB or 8456065024 bytes
Windows Defender
Microsoft Defender
```

### `cystack_9a452d98`

**Field keys:**
`Available KeyboardLayouts`, `Country`, `Current Language`, `HWID`, `Hardwares`, `Name`, `Operation System`, `Process Elevation`, `ScreenSize`, `UserName`, `Zip Code`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
UserName: <redacted>
Country: UNKNOWN
Zip Code: <redacted>
HWID: <redacted>
Current Language: Turkish (Türkiye)
ScreenSize: {Width = 1536,Height = 864}TimeZone: (UTC+03:00) İstanbul
Operation System: Windows 10 Pro x64
Process Elevation: True
Available KeyboardLayouts: 
Turkish (Türkiye)
Hardwares: 
Name: 13th Gen Intel(R) Core(TM) i5-13420H, 8 Cores
Name: Intel(R) UHD Graphics, 2147479552 bytes
Name: NVIDIA GeForce RTX 4060 Laptop GPU, 4293918720 bytes
Name: Total of RAM, 16087.57 MB or 16869044224 bytes
Windows Defender
```

## Detection

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

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`redline`](../redline/)
- [`redlinelike-stealer`](../redlinelike_stealer/)
- [`csenchantcloudstealer`](../csenchantcloudstealer/)
- [`csrussia34stealer`](../csrussia34stealer/)

## References

- https://github.com/MalBeacon/what-is-this-stealer
- https://malwr-analysis.com/2025/02/18/arechclient2-malware-analysis-sectoprat/
- https://www.sentinelone.com/blog/reverse-engineering-walkthrough-analyzing-a-sample-of-arechclient2/
- https://any.run/malware-trends/arechclient2/
- https://malpedia.caad.fkie.fraunhofer.de/details/win.sectop_rat
- https://www.elastic.co/security-labs/a-wretch-client
