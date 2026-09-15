# Minimal Stealer

## Overview / Tổng quan

### English

Unidentified minimal-format stealer observed inside `@BRADMAX`
aggregator packs alongside Remus, user-info bracket, and Snake logs.
The `System_Info.txt` is a flat seven-line key/value record
with no banner, no IP, and no time, barely enough to compose an
IOC. Verified victims include Windows Defender Application Guard
sandbox VMs.

### Tiếng Việt

Mã độc đánh cắp thông tin dạng tối giản chưa được định danh, được quan sát bên trong các gói tổng hợp `@BRADMAX` cùng với Remus, khối thông tin người dùng, và log của Snake.
Dấu vết `System_Info.txt` là một bản ghi khóa/giá trị dạng phẳng gồm bảy dòng, không có banner, không có địa chỉ IP, và không có thời gian, chỉ vừa đủ dữ liệu để tạo thành một IOC. Các nạn nhân đã được xác minh bao gồm các máy ảo sandbox của Windows Defender Application Guard.

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

Flat seven-line record headed by `User:` (no `Username` or
`User name` variant) is the primary trigger. The absence of
banner, IP, and timestamp distinguishes this layout from every
other family in this catalog.

### Tiếng Việt

Bản ghi dạng phẳng gồm bảy dòng, bắt đầu bằng `User:` (không có biến thể `Username` hay `User name`), là dấu hiệu kích hoạt chính. Việc không có banner, địa chỉ IP, và dấu thời gian phân biệt cấu trúc dữ liệu này với mọi họ mã độc khác trong danh mục này.

## Observed log variants

### `v_289e675ff30a29b1a1292c77b54489e5`

- Format ID: `minimal-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_289e675ff30a29b1a1292c77b54489e5/sample.txt)
- Sample SHA-256: `995594618cd831da529b69edf7f0372c94e7a63849cdd39ca4cd3cde3b866bf0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Computer`, `CPU`, `GPU`, `OS`, `RAM`, `Resolution`, `User`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
