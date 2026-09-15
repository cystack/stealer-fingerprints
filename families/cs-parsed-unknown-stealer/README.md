# CSParsedUnknownStealer

## Overview / Tổng quan

### English

CSParsedUnknownStealer is a CyStack-coined identifier for
a banner-less variant of the normalization-tool output log
wrapper that the CSBradMaxCloudParsedStealer sibling also represents. The wrapper is an in-house Python normalizer that a
Telegram log broker runs over raw stealer output before
redistribution: leading-space `Key: Value` fields, a pipe-joined `Single-line params:` hardware summary, an `Original file: C:\Users\admin\Desktop\<workdir>\...` reference to
the operator's analysis-machine working folder, and a
`Source: IP-API (https://ip-api.com/)` geolocation
attribution line.

This variant carries `Stealer: Unknown` (the tool ran but
could not fingerprint the underlying stealer family) and
ships without the `https://t.me/BRADMAX_CLOUD` banner that
scopes the CSBradMaxCloudParsedStealer sibling. The
`<workdir> = 2` operator ships all three sibling format
shapes seen so far (RisePro, Rhadamanthys, Unknown) without
a channel banner, so `panel_brand` and
`distribution_channel` stay unset.

### Tiếng Việt

CSParsedUnknownStealer là định danh do CyStack tự đặt cho một biến thể không có banner của lớp bọc log đầu ra công cụ chuẩn hóa mà biến thể liên quan CSBradMaxCloudParsedStealer cũng đại diện. Lớp bọc này là một bộ chuẩn hóa Python nội bộ mà một broker log trên Telegram chạy trên dữ liệu đầu ra thô của mã độc đánh cắp thông tin trước khi phân phối lại: các trường `Key: Value` có khoảng trắng ở đầu, một bản tóm tắt phần cứng `Single-line params:` nối bằng dấu gạch đứng, một tham chiếu `Original file: C:\Users\admin\Desktop\<workdir>\...` đến thư mục làm việc trên máy phân tích của đối tượng vận hành, và một dòng quy kết định vị địa lý `Source: IP-API (https://ip-api.com/)`.

Biến thể này mang `Stealer: Unknown` (công cụ đã chạy nhưng không thể xác định dấu vân tay của họ mã độc đánh cắp thông tin gốc) và không đi kèm banner `https://t.me/BRADMAX_CLOUD` vốn giới hạn phạm vi cho biến thể liên quan CSBradMaxCloudParsedStealer. Đối tượng vận hành `<workdir> = 2` phát hành cả ba cấu trúc dữ liệu định dạng liên quan đã được ghi nhận cho đến nay (RisePro, Rhadamanthys, Unknown) mà không có banner kênh, do đó `panel_brand` và `distribution_channel` vẫn chưa được thiết lập.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill (per underlying stealer) | Thông tin xác thực, cookie, dữ liệu tự động điền được trình duyệt lưu (tùy theo mã độc đánh cắp thông tin gốc) |
| Crypto wallet extensions and desktop clients (per underlying stealer) | Các tiện ích mở rộng ví tiền mã hóa và ứng dụng desktop (tùy theo mã độc đánh cắp thông tin gốc) |
| System hardware, locale, and geolocation inventory (per wrapper output) | Danh mục phần cứng hệ thống, ngôn ngữ và vị trí địa lý (theo dữ liệu đầu ra của lớp bọc) |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: line-anchored `Stealer: Unknown`
(leading space) plus `Original file:` plus `Source: IP-API (https://ip-api.com/)`, with no
`https://t.me/BRADMAX_CLOUD` banner in the body. Attribution
is intentionally CyStack-coined because the wrapper tool
itself admits it could not fingerprint the source stealer.
Analysts triaging this variant should pivot on the raw log
if the archive preserved it (the `Original file:` field
points at the source path on the operator machine), or
match victim IPs against other stealer channels to guess
the source family.

### Tiếng Việt

Dấu hiệu kích hoạt có độ tin cậy cao: dòng được neo với `Stealer: Unknown` (có khoảng trắng ở đầu) kết hợp với `Original file:` và `Source: IP-API (https://ip-api.com/)`, mà không có banner `https://t.me/BRADMAX_CLOUD` trong phần nội dung. Việc quy kết được cố tình đặt là do CyStack tự đặt vì bản thân công cụ bọc log này thừa nhận không thể xác định dấu vân tay của mã độc đánh cắp thông tin nguồn. Các nhà phân tích khi rà soát biến thể này nên tra cứu theo log thô nếu kho lưu trữ còn giữ lại (trường `Original file:` trỏ đến đường dẫn nguồn trên máy của đối tượng vận hành), hoặc đối chiếu địa chỉ IP nạn nhân với các kênh mã độc đánh cắp thông tin khác để suy đoán họ mã độc nguồn.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [RisePro](../rise-pro/)
- [Rhadamanthys](../rhadamanthys/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
