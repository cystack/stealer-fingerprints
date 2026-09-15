# Category Stealer

## Overview / Tổng quan

### English

Unidentified Category-block stealer observed inside the
`@BRADMAX 20000 APRIL-MAY` and `@bugatti_cloud` aggregator
packs. The `Information.txt` is divided into three
`Category:` sections each separated by a 60-character dash
divider, with column-aligned key/value records under each.
Family attribution is provisional pending a published
threat-intel mapping for this layout.

### Tiếng Việt

Mã độc đánh cắp thông tin dạng khối Category chưa xác định danh tính, quan sát được bên trong các gói tổng hợp `@BRADMAX 20000 APRIL-MAY` và `@bugatti_cloud`. `Information.txt` được chia thành ba phần `Category:`, mỗi phần được ngăn cách bởi một dòng phân cách gồm 60 dấu gạch ngang, với các bản ghi khóa/giá trị canh cột bên dưới mỗi phần. Việc quy kết họ mã độc là tạm thời, chờ có ánh xạ tình báo mối đe dọa đã công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **2**
- CyStack observations represented: **376**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

Three `Category:` headers separated by 60-dash dividers,
with column-aligned (rather than dash-prefixed) field rows,
is the cleanest signature. A stripped variant emits only
the `User` and `System` blocks with the `Hardware` block
dropped.

### Tiếng Việt

Ba tiêu đề `Category:` được ngăn cách bởi các dòng phân cách 60 dấu gạch ngang, cùng với các dòng trường canh cột (thay vì có dấu gạch đầu dòng), là chữ ký nhận diện rõ ràng nhất. Một biến thể rút gọn chỉ tạo dữ liệu đầu ra cho các khối `User` và `System`, bỏ khối `Hardware`.

## Observed log variants

### `v_6207ef922a5d4ce9cdbf6bc9de7c25e9`

- Format ID: `category-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-ip-country`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_6207ef922a5d4ce9cdbf6bc9de7c25e9/sample.txt)
- Sample SHA-256: `f0205a7d51757b3c1fef49f00edac33c10336b44ff904dd5d9d86005d4ecc56e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Category: User`
- Field labels: `Country`, `IP`

### `v_93495bf8f14283ee6d5b4a5905b5ece2`

- Format ID: `category-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `user-system-sections`
- Historical records represented: **375**
- Representative sample: [open sample](samples/v_93495bf8f14283ee6d5b4a5905b5ece2/sample.txt)
- Sample SHA-256: `be55a1214cddcab3f472fe2e30d202cf727db2b36b0a3c52ed2d530043238d81`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Category: System`, `Category: User`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
