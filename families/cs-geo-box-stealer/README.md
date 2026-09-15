# CSGeoBoxStealer

## Overview / Tổng quan

### English

CSGeoBoxStealer is a CyStack-coined identifier for a no-banner
`@ft7links` `UserInformation.txt` variant containing an
`═══` `IP GEOLOCATION DATA` boxed enrichment block. Observed in
the same folder layout as `CSEnchantCloudStealer` (channel-banner
variants) and the RedlineLikeStealer DARKSIDE-banner variants,
but this rebrand strips the panel banner entirely and replaces
the identity preamble with a box-drawing geolocation block.

### Tiếng Việt

CSGeoBoxStealer là định danh do CyStack đặt cho một biến thể `UserInformation.txt` không có banner, được phân phối qua `@ft7links` và chứa khối làm giàu `IP GEOLOCATION DATA` đóng khung bằng ký tự `═══`. Biến thể này được quan sát trong cùng bố cục thư mục với `CSEnchantCloudStealer` (các biến thể có banner kênh) và các biến thể có banner DARKSIDE của RedlineLikeStealer, nhưng bản đổi thương hiệu này loại bỏ hoàn toàn banner panel và thay phần mở đầu định danh bằng một khối dữ liệu định vị địa lý vẽ bằng ký tự khung.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `@ft7links geo-box variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

Box-drawing horizontal rule (`═══...`) followed by an
`IP GEOLOCATION DATA` heading is the cleanest trigger. Field
shape parallels the Redline extended-block (`UserLanguage:`,
`Keyboard Language:`, `Display Resolution:`, `Wallpaper Hash:`)
but the explicit panel banner is absent.

### Tiếng Việt

Dấu hiệu kích hoạt rõ ràng nhất là một đường kẻ ngang dạng box-drawing (`═══...`) theo sau bởi một tiêu đề `IP GEOLOCATION DATA`. Cấu trúc dữ liệu của các trường tương đồng với khối mở rộng của Redline (`UserLanguage:`, `Keyboard Language:`, `Display Resolution:`, `Wallpaper Hash:`), nhưng banner panel tường minh thì không xuất hiện.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

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
- [CSEnchantCloudStealer](../cs-enchant-cloud-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
