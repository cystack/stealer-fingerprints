# Antarctida Stealer

## Overview / Tổng quan

### English

Observed-self-label profile for logs whose `Information.txt`
opens with `❄ Antarctida Stealer ❄`. No independent malware
analysis currently confirms that label as a canonical family.
A bullet-prefixed (`• OS:`, `• CPU:`) hardware and locale block
follows the banner.

### Tiếng Việt

Hồ sơ dựa trên nhãn tự khai báo quan sát được cho các nhật ký có `Information.txt` bắt đầu bằng `❄ Antarctida Stealer ❄`. Hiện chưa có phân tích mã độc độc lập nào xác nhận nhãn này là một họ mã độc. Theo sau biểu ngữ là một khối thông tin phần cứng và ngôn ngữ/vùng có dấu gạch đầu dòng (`• OS:`, `• CPU:`).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Observed self-label / Tên tự nhận quan sát được**
- Attribution confidence: **unknown**
- Aliases: `Antarctida Stealer`
- Variants observed: **1**
- CyStack observations represented: **33**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| System hardware and OS inventory | Kiểm kê phần cứng và hệ điều hành |
| User and computer identity | Danh tính người dùng và máy tính |
| Public IP address | Địa chỉ IP công khai |

## Detection notes / Ghi chú nhận diện

### English

Require the exact snowflake-decorated banner line plus the
bullet-prefixed `OS:`, `CPU:`, and `Computer Name:` fields. The
banner proves the observed label, not payload lineage; keep the
profile at unknown attribution until independent analysis maps
the executable or output format.

### Tiếng Việt

Yêu cầu đúng dòng biểu ngữ trang trí hình bông tuyết cùng với các trường có dấu gạch đầu dòng `OS:`, `CPU:` và `Computer Name:`. Biểu ngữ chỉ chứng minh nhãn quan sát được, không chứng minh nguồn gốc mã độc; giữ hồ sơ này ở mức quy kết chưa xác định cho đến khi có phân tích độc lập ánh xạ được tệp thực thi hoặc định dạng dữ liệu đầu ra.

## Observed log variants

### `v_04bcb3b8fdb3ba04fb2e9c8bdfbf63bd`

- Format ID: `antarctida`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **33**
- Representative sample: [open sample](samples/v_04bcb3b8fdb3ba04fb2e9c8bdfbf63bd/sample.txt)
- Sample SHA-256: `ed5cf23778fb0d49a3f4fb3a8bad55d5dc53f377421473ad086773dba95a4830`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Antarctida Stealer`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
