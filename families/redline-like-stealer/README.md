# RedlineLike Stealer

## Overview / Tổng quan

### English

RedLine extended-block log variants. UserInformation.txt files
emitting the canonical Redline `Operation System:` typo together
with the panel's identity, locale, and hardware fields. Several
Telegram-based affiliate channels rebrand the same RedLine builder
with custom banners (DARKSIDE, ZAPLINE, and similar) while keeping
the underlying field layout intact.

### Tiếng Việt

Các biến thể log dạng khối mở rộng (extended-block) của RedLine. Tệp UserInformation.txt tạo dữ liệu đầu ra chứa lỗi đánh máy đặc trưng `Operation System:` của Redline cùng với các trường thông tin định danh, ngôn ngữ/vùng và phần cứng của bảng điều khiển. Một số kênh liên kết trên Telegram gắn thương hiệu riêng (DARKSIDE, ZAPLINE, và tương tự) lên cùng một builder RedLine, trong khi vẫn giữ nguyên bố cục trường dữ liệu gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `redline`, `redline-extended`
- Variants observed: **7**
- CyStack observations represented: **1,063,176**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chromium and Gecko families) | Thông tin xác thực đã lưu trong trình duyệt (các họ Chromium và Gecko) |
| Browser cookies and session storage | Cookie trình duyệt và dữ liệu phiên lưu trữ |
| Crypto-wallet desktop clients | Ứng dụng desktop ví tiền điện tử |
| FTP and SSH client configs | Cấu hình ứng dụng FTP và SSH |
| Discord and Telegram session tokens | Token phiên Discord và Telegram |

## Detection notes / Ghi chú nhận diện

### English

Confidence triggers, in increasing order of certainty:

1. Plain `Operation System:` field (note the typo) is suggestive
   but matches several stripped-down clones.
2. `Operation System:` plus the channel banner (e.g.
   `===DARKSIDE_BRAND_BEGIN===`) is high-confidence RedLine.
3. `Operation System:` plus `Admin Group:` plus `Integrity:` is
   the unambiguous RedLine extended-block form.

Pair with browser-credential file paths (`Login Data`,
`formhistory.sqlite`) and Discord token grabber output to confirm
in incident-response triage.

### Tiếng Việt

Các mức độ tin cậy, theo thứ tự tăng dần:

1. Trường `Operation System:` đơn thuần (lưu ý lỗi đánh máy) chỉ mang tính gợi ý và trùng khớp với nhiều bản sao đã bị lược bớt.
2. `Operation System:` kết hợp với banner của kênh (ví dụ `===DARKSIDE_BRAND_BEGIN===`) cho độ tin cậy cao là RedLine.
3. `Operation System:` kết hợp với `Admin Group:` và `Integrity:` là dạng khối mở rộng RedLine không thể nhầm lẫn.

Kết hợp với đường dẫn tệp thông tin xác thực trình duyệt (`Login Data`, `formhistory.sqlite`) và dữ liệu đầu ra của mô-đun thu thập token Discord để xác nhận trong quá trình phân loại ứng phó sự cố.

## Observed log variants

### `v_125ec6057adbaa522bbf048fc48b7d70`

- Format ID: `redline-like-stealer`
- Observed filenames: `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `admin-integrity`
- Historical records represented: **1,051,645**
- Representative sample: [open sample](samples/v_125ec6057adbaa522bbf048fc48b7d70/sample.txt)
- Sample SHA-256: `0c23e734c4beaea3857bd74bc9ee56ca5676fb46a0e1fd28973e2aabc2554089`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Admin Group`, `Integrity`, `Operation System`

### `v_50755367b700d888261fea40fa9979b1`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `version-build`
- Historical records represented: **10,983**
- Representative sample: [open sample](samples/v_50755367b700d888261fea40fa9979b1/sample.txt)
- Sample SHA-256: `14f0bd0b8bf0e9f4aacaefb33a9753a23d408ef4dbf2825046aa86ac86aca5b9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Operation System`, `Version Build`

### `v_7402f6de631ebb7c2f7f67ddd2239751`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `traffic`
- Historical records represented: **60**
- Representative sample: [open sample](samples/v_7402f6de631ebb7c2f7f67ddd2239751/sample.txt)
- Sample SHA-256: `367d7e75ca36a07d0b2e0c285706115a4720129902d03cd2d9ea641c75e97280`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Operation System`, `Traffic`

### `v_8f791a8040e2e6593efabd4a991c2b56`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `current-path`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_8f791a8040e2e6593efabd4a991c2b56/UserInformation.txt)
- Sample SHA-256: `29d4fb61258df304a60a95afb53e5875f8c89b1935408fce2b7a09b8fd16ca31`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `ComputerName`, `Country`, `Current Path`, `Graphics card`, `Installed RAM`, `IP`, `Keyboard Language`, `Log date`, `MachineID`, `Operation System`, `Processor`, `ScreenSize`, `System Language`, `TimeZone`, `User Language`, `UserName`, `UUID`

### `v_925a2717759e113f55e4f8f24d7c663e`

- Format ID: `redline-like-stealer`
- Observed filenames: `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `build-name`
- Historical records represented: **472**
- Representative sample: [open sample](samples/v_925a2717759e113f55e4f8f24d7c663e/sample.txt)
- Sample SHA-256: `e8384435491e41ac7da69640dd2f8ea8bcde5708af6647fc8e149dd5e2f5b0a9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `BUILD NAME`, `Operation System`

### `v_f363fc0487965dea97d62674baf20c0b`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `installed-ram-graphics-domain`
- Historical records represented: **9**
- Representative sample: [open sample](samples/v_f363fc0487965dea97d62674baf20c0b/sample.txt)
- Sample SHA-256: `cbc799cc324ecf72378a38d4e9b6a6e77a23e0d9a82c241b36dd889fb24c584f`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Domain Name`, `Graphics card`, `Installed RAM`, `Operation System`

### `v_fa7e14df9895c745ed45712a8b2db115`

- Format ID: `redline-like-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-keyboard-display`
- Historical records represented: **6**
- Representative sample: [open sample](samples/v_fa7e14df9895c745ed45712a8b2db115/sample.txt)
- Sample SHA-256: `a3a2bf799f01d2ad1f867457a82662167d41c8b020d0e3580b0c9d4a904a70fa`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Display Resolution`, `Keyboard Language`, `UserLanguage`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection | Thu thập tự động |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Vidar](../vidar/)
- [MetaStealer](../meta-stealer/)

## Sources

- <https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-redline-stealer>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
