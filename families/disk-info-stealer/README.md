# DiskInfo Stealer

## Overview / Tổng quan

### English

Unidentified `Disk Capacity` / `Disk Free` stealer observed
inside `@BRADMAX` aggregator packs as a sibling of Remus,
user-info bracket, Snake, Minimal, and PCInfo logs. The
`System_Info.txt` is a flat six-line key/value record with no
banner, no IP, no timestamp, and no CPU/GPU/display fields.
Verified victims have included Windows Defender Application
Guard sandbox VMs, suggesting heavy automated-execution
poisoning of this corpus.

### Tiếng Việt

Mã độc đánh cắp thông tin `Disk Capacity` / `Disk Free` chưa xác định danh tính được phát hiện bên trong các gói tổng hợp `@BRADMAX`, xuất hiện cùng với các log liên quan là Remus, user-info bracket, Snake, Minimal và PCInfo. `System_Info.txt` là một bản ghi khóa/giá trị dạng phẳng gồm sáu dòng, không có banner, không có địa chỉ IP, không có dấu thời gian và không có các trường CPU/GPU/màn hình. Các nạn nhân đã được xác minh bao gồm các máy ảo sandbox của Windows Defender Application Guard, cho thấy khả năng bộ dữ liệu này bị nhiễm nặng do thực thi tự động.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The unique combination of `Disk Capacity:` and `Disk Free:`
fields without any CPU/GPU/IP/banner is the signature. The
flat six-line record makes the layout easy to recognise even
without an explicit family banner.

### Tiếng Việt

Sự kết hợp đặc trưng giữa các trường `Disk Capacity:` và `Disk Free:` mà không có bất kỳ trường CPU/GPU/IP/banner nào chính là dấu hiệu nhận diện. Bố cục bản ghi phẳng sáu dòng giúp dễ dàng nhận ra ngay cả khi không có banner họ mã độc rõ ràng.

## Observed log variants

### `v_3b0bf5da89b9f399b382ffe560a526ed`

- Format ID: `disk-info-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_3b0bf5da89b9f399b382ffe560a526ed/sample.txt)
- Sample SHA-256: `41ad6b627f7bc2b4d753757541766f6028c5a6422f979ba4485a31c8d691ed57`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Computer`, `Disk Capacity`, `Disk Free`, `Memory`, `OS`, `User`


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
