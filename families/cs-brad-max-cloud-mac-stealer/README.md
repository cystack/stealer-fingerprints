# CSBradMaxCloudMacStealer

## Overview / Tổng quan

### English

CSBradMaxCloudMacStealer is a CyStack-coined identifier
for the macOS lane of the @BRADMAX_CLOUD Telegram
channel's stealer-log redistribution portfolio. The file
opens with the aBradMax Figlet banner block inside a
`*`-bordered frame carrying the
`Telegram: https://t.me/BRADMAX_CLOUD` URL watermark, then
a flattened `system_profiler` dump covering the
SPSoftwareDataType, SPHardwareDataType, and
SPDisplaysDataType data types. The panel strips the
canonical section headers (`Software:` / `Hardware:` /
`Graphics/Displays:`) and the nested 4-6 space indentation,
so every field surfaces flush-left as a bare `Key: Value`
line.

No underlying-family banner survives. Phexia, MacSync,
SHub, and mac.c each prepend their own self-ID banner
before piping the `system_profiler` body, but this slice
ships only the aBradMax block. Without the family banner
the macOS stealer that captured the original output
cannot be attributed from the body alone. Family
attribution is provisional pending a published
threat-intel mapping for this layout.

### Tiếng Việt

CSBradMaxCloudMacStealer là định danh do CyStack đặt cho nhánh macOS trong danh mục phát tán log đánh cắp thông tin của kênh Telegram @BRADMAX_CLOUD. Tệp mở đầu bằng khối banner Figlet aBradMax nằm trong khung viền `*` mang watermark URL `Telegram: https://t.me/BRADMAX_CLOUD`, sau đó là bản dump `system_profiler` dạng làm phẳng bao gồm các data type SPSoftwareDataType, SPHardwareDataType và SPDisplaysDataType. Bảng dữ liệu này đã loại bỏ các tiêu đề mục chuẩn (`Software:` / `Hardware:` / `Graphics/Displays:`) cũng như phần thụt lề lồng 4-6 khoảng trắng, khiến mọi trường dữ liệu hiển thị sát lề trái dưới dạng dòng `Key: Value` trơn.

Không có banner của họ mã độc gốc nào còn sót lại. Phexia, MacSync, SHub và mac.c đều thêm banner tự nhận diện riêng trước khi truyền nội dung `system_profiler`, nhưng mẫu này chỉ chứa khối aBradMax. Do thiếu banner của họ mã độc, không thể quy kết mã độc đánh cắp thông tin trên macOS đã thu thập dữ liệu gốc chỉ dựa trên phần nội dung. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có bản đồ threat-intel công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX_CLOUD macOS Information.txt slice`, `BRADMAX flattened system_profiler variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (Mac model, chip, RAM, display, Hardware UUID, system firmware) | Dấu vết phần cứng máy và hệ điều hành (dòng Mac, chip, RAM, màn hình, Hardware UUID, firmware hệ thống) |
| Account identity (login name, computer name) | Thông tin định danh tài khoản (tên đăng nhập, tên máy) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both the `https://t.me/BRADMAX_CLOU`
URL prefix (loosened to handle the known panel-render bug
that fuses the URL with adjacent lines) and the
line-anchored `System Version: macOS` literal. The macOS
version prefix is the canonical first SPSoftwareDataType
field and disambiguates the slice from every Windows-shape
BRADMAX_CLOUD sibling (DCRat, Lumma, Mars, parsed,
banner-only, PC, CpuVendor lanes). The body carries no
IP address or country code, so the parent folder name
(`<CC>_<32-hex>`) is the only victim-geo signal. During
triage, bucket samples by the channel + panel_brand
metadata and inspect companion files in the victim folder
(keychain dumps, browser exports, wallet artifacts) for
higher-confidence Mac-family attribution.

### Tiếng Việt

Việc nhận diện đòi hỏi cả tiền tố URL `https://t.me/BRADMAX_CLOU` (được nới lỏng điều kiện để xử lý lỗi hiển thị bảng dữ liệu đã biết khiến URL bị hợp nhất với các dòng liền kề) và chuỗi literal `System Version: macOS` neo theo dòng. Tiền tố phiên bản macOS là trường SPSoftwareDataType đầu tiên theo chuẩn, giúp phân biệt mẫu này với mọi mẫu BRADMAX_CLOUD có cấu trúc dữ liệu kiểu Windows (các nhánh DCRat, Lumma, Mars, đã phân tích cú pháp, chỉ có banner, PC, CpuVendor). Nội dung không chứa địa chỉ IP hay mã quốc gia, nên tên thư mục cha (`<CC>_<32-hex>`) là tín hiệu địa lý nạn nhân duy nhất. Trong quá trình phân loại ban đầu, hãy nhóm các mẫu theo metadata channel + panel_brand và kiểm tra các tệp liên quan trong thư mục nạn nhân (bản dump keychain, dữ liệu xuất từ trình duyệt, dấu vết ví tiền số) để có mức độ tin cậy cao hơn khi quy kết họ mã độc trên Mac.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [Mars Stealer](../mars-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [CSBradMaxCloudPCStealer](../cs-brad-max-cloud-pc-stealer/)
- [CSBradMaxCloudBannerOnlyStealer](../cs-brad-max-cloud-banner-only-stealer/)
- [Phexia](../phexia/)
- [MacSync](../mac-sync/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
