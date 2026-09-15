# PyInfo Stealer

## Overview / Tổng quan

### English

Unidentified Python-based stealer observed inside `@BRADMAX`
aggregator packs under `[UN]UNKNOWN_(N)` filler folders. The
`system_info.txt` is a flat key/value record followed by two
`--- ... ---` framed sections. Family attribution is
provisional; the format has not been mapped to a published
threat-intel name.

### Tiếng Việt

Mã độc đánh cắp thông tin dựa trên Python chưa được định danh, được phát hiện bên trong các gói tổng hợp `@BRADMAX` dưới các thư mục đệm `[UN]UNKNOWN_(N)`. `system_info.txt` là một bản ghi khóa/giá trị dạng phẳng, theo sau là hai phần được đóng khung `--- ... ---`. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời; định dạng này chưa được ánh xạ với bất kỳ tên gọi tình báo mối đe dọa đã công bố nào.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The `Hostname:` opening (lowercase keys throughout) and dual
`--- Section ---` framing is the signature. The Python origin
is inferred from the field shape and snake_case key style
(e.g. lowercase `user:` and `hostname:`), not from any
explicit banner.

### Tiếng Việt

Dấu hiệu đặc trưng là phần mở đầu `Hostname:` (các khóa đều viết thường) cùng cấu trúc đóng khung kép `--- Section ---`. Nguồn gốc Python được suy ra từ cấu trúc dữ liệu của các trường và kiểu đặt tên khóa snake_case (ví dụ: `user:` và `hostname:` viết thường), chứ không phải từ bất kỳ banner tường minh nào.

## Observed log variants

### `v_a3b2ccd87ba2430c6dde5f31bb7f6a42`

- Format ID: `pyinfo-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_a3b2ccd87ba2430c6dde5f31bb7f6a42/sample.txt)
- Sample SHA-256: `6c9f1c74223a815f4a5a14e070d86056cd05134534c8321127f6cf02da556ce4`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `--- Installed Programs (top 50) ---`, `--- Top Processes ---`
- Field labels: `ISP`, `Org`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
