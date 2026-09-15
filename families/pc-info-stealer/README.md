# PCInfo Stealer

## Overview / Tổng quan

### English

Unidentified `PC Username` / `PC Name` stealer observed inside
`@BRADMAX` aggregator packs alongside Remus, user-info bracket, Snake,
and Minimal logs. The `System_Info.txt` uses two
triple-equals section headers (`=== SYSTEM INFORMATION ===`)
and four distinctive `PC ...` field keys.

### Tiếng Việt

Mã độc đánh cắp thông tin chưa xác định `PC Username` / `PC Name` được phát hiện bên trong các gói tổng hợp `@BRADMAX` cùng với log của Remus, user-info bracket, Snake và Minimal. `System_Info.txt` sử dụng hai tiêu đề phần dạng dấu bằng ba lần (`=== SYSTEM INFORMATION ===`) và bốn khóa trường `PC ...` đặc trưng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **4**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

Field keys prefixed with `PC` (`PC Username:`, `PC Name:`,
`PC Owner:`, `PC Domain:`) together with the
`=== SYSTEM INFORMATION ===` section header are the cleanest
signature.

### Tiếng Việt

Các khóa trường có tiền tố `PC` (`PC Username:`, `PC Name:`, `PC Owner:`, `PC Domain:`) cùng với tiêu đề phần `=== SYSTEM INFORMATION ===` là dấu hiệu nhận diện rõ ràng nhất.

## Observed log variants

### `v_b9fc8961d3b757934ac79ac1f776b15e`

- Format ID: `pcinfo-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **4**
- Representative sample: [open sample](samples/v_b9fc8961d3b757934ac79ac1f776b15e/sample.txt)
- Sample SHA-256: `cd2523aa9a43cacfe86e70cb0acf8791d1b0037d783fd1a3134c8a067f1fed8b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== NETWORK INFO ===`, `=== SYSTEM INFORMATION ===`
- Field labels: `PC Name`, `PC Username`


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
