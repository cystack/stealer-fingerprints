# CSPrimoCloudStealer

## Overview / Tổng quan

### English

CSPrimoCloudStealer is a CyStack-coined identifier for a
heavily-stripped `@Primo_Cloud` aggregator wrap observed
inside `@ft7links-vidar` packs. The panel emits four
repeated `@Primo_Cloud:https://t.me/+ecb2NTo6VKFhYzI0`
watermark lines followed by a Redline-canonical body that
is reduced to two fields on the verified bogon-IP victim
(`User Name:` and `Display Resolution:`).

### Tiếng Việt

CSPrimoCloudStealer là định danh do CyStack đặt cho một lớp bọc trình tổng hợp `@Primo_Cloud` đã bị lược bỏ mạnh, được phát hiện bên trong các gói `@ft7links-vidar`. Bảng điều khiển tạo dữ liệu đầu ra gồm bốn dòng watermark `@Primo_Cloud:https://t.me/+ecb2NTo6VKFhYzI0` lặp lại, theo sau là phần thân dữ liệu theo chuẩn Redline nhưng đã bị rút gọn chỉ còn hai trường trên nạn nhân có IP bogon đã xác minh (`User Name:` và `Display Resolution:`).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `Primo_Cloud`, `@Primo_Cloud`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The `@Primo_Cloud:` watermark line is the cleanest trigger.
Pair with line-anchored `User Name:` and `Display Resolution:` to confirm a heavily-stripped body, and
verify absence of `UserLanguage:` to avoid colliding with
RedlineLikeStealer variants 7 and 8 which retain the
extended `UserLanguage:` / `Keyboard Language:` /
`Display Resolution:` block on full-body @Primo_Cloud
redistribution. Family attribution is provisional pending
a published threat-intel mapping for this layout.

### Tiếng Việt

Dòng watermark `@Primo_Cloud:` là chỉ dấu kích hoạt rõ ràng nhất. Kết hợp với `User Name:` và `Display Resolution:` neo theo dòng để xác nhận phần thân dữ liệu đã bị lược bỏ mạnh, đồng thời xác minh không có `UserLanguage:` để tránh nhầm lẫn với các biến thể 7 và 8 của RedlineLikeStealer, vốn vẫn giữ khối `UserLanguage:` / `Keyboard Language:` / `Display Resolution:` mở rộng khi phân phối lại toàn bộ phần thân @Primo_Cloud. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ có ánh xạ threat-intel được công bố cho bố cục này.

## Observed log variants

### `v_238b7d97b79092d4d344e289f15c6b54`

- Format ID: `cs-primo-cloud-stealer`
- Observed filenames: `information.txt`
- Panel brand: `@Primo_Cloud`
- Distribution channel: `@ft7links`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_238b7d97b79092d4d344e289f15c6b54/information.txt)
- Sample SHA-256: `a9a8b46fb62eb75ca864d9c3da7a2944af56c5f8e5173c3583101dad9833de8b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `@Primo_Cloud`, `[Hardware]`, `[Processes]`, `[Software]`
- Field labels: `Antivirus`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `IP`, `Local Time`, `MachineID`, `MD5`, `Path`, `Processor`, `RAM`, `Threads`, `User Name`, `VideoCard`, `Windows`, `Work Dir`


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

- <https://t.me/+ecb2NTo6VKFhYzI0>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
