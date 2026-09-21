# CSHunterCloudStealer

## Overview / Tổng quan

### English

CSHunterCloudStealer is a CyStack-coined identifier for the
`HUNTER CLOUD` watermarked Redline-derivative
`UserInformation.txt` observed inside `@ft7links`-distributed
packs. The `HUNTER_CLOUD` Telegram channel re-distributes
Redline-derivative logs (the same shape as
RedlineLikeStealer variant 4: `BUILD NAME:` plus extended
block) under a per-line anti-scrape watermark that prevents the line-anchored RedlineLike fingerprint from
matching the content.

### Tiếng Việt

CSHunterCloudStealer là định danh do CyStack đặt cho biến thể `HUNTER CLOUD` có gắn watermark, phái sinh từ Redline `UserInformation.txt`, được quan sát bên trong các gói phân phối bởi `@ft7links`. Kênh Telegram `HUNTER_CLOUD` phân phối lại các log phái sinh từ Redline (có cùng cấu trúc dữ liệu với RedlineLikeStealer biến thể 4: `BUILD NAME:` cộng thêm khối mở rộng) dưới một watermark chống thu thập dữ liệu (anti-scrape) theo từng dòng, khiến dấu vân tay (fingerprint) RedlineLike dựa trên vị trí dòng không thể khớp với nội dung.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `HUNTER CLOUD`, `HUNTER_CLOUD`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

Spaced-letter ASCII banner `H U N T E R C L O U D` plus the
per-line anti-scrape watermark and the subscription pricing
block (`💵 1 Week / 1 Month / 3 Months / Lifetime`) is the
fingerprint. The underlying Redline-derivative field set
(`BUILD NAME:`, `Admin Group:`, `Integrity:`, `Wallpaper Hash:`)
is preserved but spaced apart by the watermark.

### Tiếng Việt

Banner ASCII có các ký tự cách nhau `H U N T E R C L O U D` cùng với watermark chống thu thập dữ liệu theo từng dòng và khối thông tin giá gói đăng ký (`💵 1 Week / 1 Month / 3 Months / Lifetime`) chính là dấu vân tay (fingerprint) nhận diện. Tập trường dữ liệu gốc phái sinh từ Redline (`BUILD NAME:`, `Admin Group:`, `Integrity:`, `Wallpaper Hash:`) vẫn được giữ nguyên nhưng bị watermark chèn cách quãng.

## Observed log variants

### `v_62e4072dbdc87f967274fc6ed782fe5c`

- Format ID: `cs-hunter-cloud-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `HUNTER_CLOUD watermark`
- Distribution channel: `t.me/HUNTER_CLOUD`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_62e4072dbdc87f967274fc6ed782fe5c/Information.txt)
- Sample SHA-256: `f57ea119366cd9af09120c9adf0fe4d3dcce331ad9ba58d7cc7fe70530c6802e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Category`, `Cores/Threads`, `CPU`, `Displays`, `GPU`, `Keyboards`, `Language`, `Local Time`, `OS`, `RAM`, `System`, `Timezone`, `UTC Time`, `⚡Join`, `🌧 Payment Method`, `🏪 Support`, `💵 1 Month`, `💵 1 Week`, `💵 3 Months`, `💵 Lifetime`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Observed distribution channels

- <https://t.me/HUNTER_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
