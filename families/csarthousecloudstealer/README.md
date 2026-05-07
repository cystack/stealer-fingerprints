# CSArtHouseCloudStealer

CSArtHouseCloudStealer is a CyStack-coined identifier for the
heavily-stripped ArtHouse Cloud `System.txt` log observed inside
`@ft7links`-distributed packs alongside canonical Lumma content
and the `CSBabaStealer` rebrand. The body wraps an
XFiles-derivative victim-info block in two ArtHouse Cloud
banners (header + footer) framed with U+2500 box-drawing
horizontal rules. The `@ft7links` operator labels the archive
`lumma` and resells multiple panels under one cover.

**Also known as:** `ArtHouse Cloud`, `ArtHouse_Cloud_Team`

## Variants

### `cystack_4177c9d7`

**Field keys:**
`CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Country`, `Display resolution`, `Domain`, `GPU`, `HWID`

**Filenames:** `System.txt`

### `cystack_4afc8936`

**Field keys:**
`Country`, `HWID`, `IP`, `Operation System`, `ScreenSize`, `UserName`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>




























<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



IP: <redacted>
UserName: <redacted>
Country: UNKNOWN
HWID: <redacted>
ScreenSize: {Width = 1536,Height = 864}TimeZone: (UTC+04:00) Abu Dhabi, Muscat
Operation System: Windows 10 Home x64
```

### `cystack_604764a3`

**Field keys:**
`CPU (Processor)`, `Country`, `IP`, `Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
<url>      Subscribe    ArtHouse    Cloud 2021-2026  <url>




























<url>          @arthouse_full_bot   Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



IP: <redacted>
Country: IN (India)
Operating System: Windows 11
Username: <redacted>
CPU (Processor): 13th Gen Intel(R) Core(TM) i7-1355U
```

### `cystack_931e4ef2`

**Field keys:**
`Country`, `IP`, `Operating System`, `Username`

**Filenames:** `System.txt`

**Sample (sanitized):**

```
Bot @arthouse_full_bot




























<url>          @arthouse_full_bot       @cloud_arthouse       Subscribe    ArtHouse    Cloud 2021-2026  <url>

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────





🏪 Support: @HUNTER_CLOUDS 🖤

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────



IP: <redacted>
Country: IT (Italy)
Operating System: Windows 11
Username: <redacted>
```

## Detection

ArtHouse Cloud header/footer banners with `linktr.ee/ArtHouse_Cloud_Team`
reference plus the U+2500 horizontal rule framing. Two
field-set shapes have been observed (5-field and richer
variants); both share the banner.

## MITRE ATT&CK

- [T1555 Credentials from Password Stores](https://attack.mitre.org/techniques/T1555/)
- [T1555.003 Credentials from Web Browsers](https://attack.mitre.org/techniques/T1555/003/)
- [T1539 Steal Web Session Cookie](https://attack.mitre.org/techniques/T1539/)
- [T1005 Data from Local System](https://attack.mitre.org/techniques/T1005/)
- [T1082 System Information Discovery](https://attack.mitre.org/techniques/T1082/)

## Related families

- [`lumma`](../lumma/)
- [`xfiles`](../xfiles/)
- [`csbabastealer`](../csbabastealer/)
- [`cscashflowstealer`](../cscashflowstealer/)

## References

- https://heroic.com/darkhive-breaches/arthouse-cloud-logs-macos-v1-uploaded-by-a-telegram-user/
- https://insecureweb.com/arthouse-cloud-logs-exposed-899mb-leak-on-telegram/
- https://insecureweb.com/arthouse-clouds-private-logs-exposed-2-24gb-leak-hits-telegram/
- https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md
