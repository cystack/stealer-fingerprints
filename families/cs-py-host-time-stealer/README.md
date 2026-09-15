# CSPyHostTimeStealer

## Overview / Tổng quan

### English

CSPyHostTimeStealer is a CyStack-coined identifier for a
Python-based stealer whose `system_info.txt` is reduced to a
4-line `User:` / `Host:` / `OS:` / `Time:` block with no
hardware, network, or locale fields. Distributed through the
`@BRADLOGS` Telegram channel (active mirror of the `@BRADMAX`
/ `t.me/bradmax_cloud` aggregator that public channel
catalogues list as a "Redline and Raccoon Data Logs"
reseller), with per-victim folders named `[<CC>]@BRADLOGS (BRADMAX)/`.

Two structural traits point at a Python builder. The `OS:`
value is dash-joined `platform.platform()` output
(`Windows-11-10.0.26200-SP0`), and the `Time:` value carries
six-digit microsecond precision - the default
`str(datetime.now())` format. No C# or .NET stealer in the
surveyed catalogues emits those two shapes together. The bare
`Host:` key (rather than `Hostname:` / `Computer Name:`) is
also unusual.

Family attribution is provisional pending a published threat-intel mapping for this layout. The aggregator self-labels
content as Redline / Raccoon but the body lacks every Redline
canonical anchor (`Operation System:` typo, `Hardwares:`
block) and every Raccoon canonical anchor (`User ID:` UUID,
`Last seen:` JS-date), so the channel label cannot be trusted.

### Tiếng Việt

CSPyHostTimeStealer là định danh do CyStack đặt cho một mã độc đánh cắp thông tin viết bằng Python, có `system_info.txt` được rút gọn thành một khối 4 dòng `User:` / `Host:` / `OS:` / `Time:` không chứa bất kỳ trường phần cứng, mạng, hay ngôn ngữ hệ thống nào. Được phát tán qua kênh Telegram `@BRADLOGS` (một bản sao đang hoạt động của bộ tổng hợp `@BRADMAX` / `t.me/bradmax_cloud` mà các danh mục kênh công khai liệt kê là kẻ bán lại "Redline and Raccoon Data Logs"), với các thư mục theo từng nạn nhân được đặt tên theo `[<CC>]@BRADLOGS (BRADMAX)/`.

Hai đặc điểm cấu trúc dữ liệu cho thấy đây là sản phẩm của một builder viết bằng Python. Giá trị `OS:` là dữ liệu đầu ra của `platform.platform()` được nối bằng dấu gạch ngang (`Windows-11-10.0.26200-SP0`), còn giá trị `Time:` mang độ chính xác sáu chữ số phần triệu giây - định dạng mặc định của `str(datetime.now())`. Không có họ mã độc đánh cắp thông tin nào viết bằng C# hoặc .NET trong các danh mục được khảo sát tạo dữ liệu đầu ra đồng thời hai cấu trúc dữ liệu này. Khóa trần `Host:` (thay vì `Hostname:` / `Computer Name:`) cũng là điểm bất thường.

Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có một ánh xạ tình báo mối đe dọa đã công bố cho bố cục này. Bộ tổng hợp tự gắn nhãn nội dung là Redline / Raccoon, nhưng phần thân dữ liệu thiếu mọi mốc nhận diện đặc trưng của Redline (lỗi chính tả `Operation System:`, khối `Hardwares:`) cũng như mọi mốc nhận diện đặc trưng của Raccoon (UUID `User ID:`, ngày định dạng JS `Last seen:`), do đó nhãn của kênh này không thể tin cậy được.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADLOGS minimal system_info.txt`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim username and hostname | Tên người dùng và tên máy của nạn nhân |
| Operating-system platform string | Chuỗi nền tảng hệ điều hành |
| Wall-clock exfiltration timestamp | Dấu thời gian thực đưa dữ liệu ra ngoài |

## Detection notes / Ghi chú nhận diện

### English

Triple-guard fingerprint: all four line-anchored keys
(`User:`, `Host:`, `OS:`, `Time:`) must appear, the `OS:`
value must match the dash-joined `platform.platform()` shape
(`Windows-<n>-...`), and the `Time:` value must carry six-digit microsecond precision (`.\d{6}`). The microsecond-precision Time field is the strongest single signal that
rules out non-Python builders. False-positive risk is low
because no other cataloged format uses `Host:` as a bare
key with this exact Time-value shape.

### Tiếng Việt

Dấu hiệu nhận diện bộ ba lớp bảo vệ: cả bốn khóa neo theo dòng (`User:`, `Host:`, `OS:`, `Time:`) đều phải xuất hiện, giá trị `OS:` phải khớp với cấu trúc dữ liệu đầu ra của `platform.platform()` được nối bằng dấu gạch ngang (`Windows-<n>-...`), và giá trị `Time:` phải mang độ chính xác sáu chữ số phần triệu giây (`.\d{6}`). Trường Time với độ chính xác phần triệu giây là tín hiệu đơn lẻ mạnh nhất để loại trừ các builder không viết bằng Python. Nguy cơ dương tính giả ở mức thấp vì không có định dạng nào khác trong danh mục sử dụng `Host:` như một khóa trần với đúng cấu trúc dữ liệu giá trị Time này.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/BRADLOGS>
- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
