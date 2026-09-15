# CSDashSectionStealer

## Overview / Tổng quan

### English

CSDashSectionStealer is a CyStack-coined identifier for an
unidentified dash-section `SystemInfo.txt` variant observed
inside `@stealerboss` distribution packs nested under
`Autofill/[OF - NEW @kir3info]_<random>/` subfolders. The body
opens with HWID, IP, location, and locale fields, then a
`----- System info:` separator introducing CPU, GPU, and
hardware records.

### Tiếng Việt

CSDashSectionStealer là định danh do CyStack đặt cho một biến thể `SystemInfo.txt` dạng dash-section chưa được xác định, được quan sát bên trong các gói phân phối `@stealerboss` nằm lồng trong các thư mục con `Autofill/[OF - NEW @kir3info]_<random>/`. Phần nội dung mở đầu bằng các trường HWID, IP, vị trí địa lý và ngôn ngữ hệ thống, sau đó là dấu phân tách `----- System info:` dẫn vào các bản ghi CPU, GPU và phần cứng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `@stealerboss dash-section variant`
- Variants observed: **1**
- CyStack observations represented: **254**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The `----- System info:` literal (five dashes, space, colon)
is unique to this format among formats in this catalog. Pair
with `HWID:` GUID-shaped value and the `@stealerboss` channel
reference in the buy-now banner to confirm.

### Tiếng Việt

Chuỗi ký tự `----- System info:` (năm dấu gạch ngang, dấu cách, dấu hai chấm) là dấu hiệu duy nhất của định dạng này trong số các định dạng thuộc danh mục này. Kết hợp với giá trị dạng GUID `HWID:` và tham chiếu kênh `@stealerboss` trong banner quảng cáo mua ngay để xác nhận.

## Observed log variants

### `v_f82ff4bbec34c0df923d22ca12f55d1f`

- Format ID: `cs-dash-section-stealer`
- Observed filenames: `SystemInfo.txt`
- Panel brand: `----- System info: 5-dash sections`
- Distribution channel: `@stealerboss`
- Attribution confidence: **low**
- Historical records represented: **254**
- Representative sample: [open sample](samples/v_f82ff4bbec34c0df923d22ca12f55d1f/sample.txt)
- Sample SHA-256: `cfa3dcedb24a2af71c15134dcdda6969674bcd3529250e9004d85898c2ec6ea0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `----- Display info:`, `----- Installed apps:`, `----- System info:`
- Field labels: -


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
