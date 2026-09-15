# Acreed

## Overview / Tổng quan

### English

Acreed Stealer is one of the few infostealer families that
emits structured JSON instead of free-form key/value text. The
victim metadata is written to `pc_info.json` with PascalCase
keys (`PcName`, `Os`, `Cpu`, etc.).

### Tiếng Việt

Acreed Stealer là một trong số ít họ mã độc đánh cắp thông tin tạo dữ liệu đầu ra dạng JSON có cấu trúc thay vì văn bản dạng khóa/giá trị tự do. Dữ liệu nạn nhân được ghi vào `pc_info.json` với các khóa PascalCase (`PcName`, `Os`, `Cpu`, v.v.).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Acreed Stealer`
- Variants observed: **1**
- CyStack observations represented: **224,616**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực, cookie, dữ liệu tự động điền được trình duyệt lưu |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền mã hóa và ứng dụng ví trên máy tính |
| Discord and Telegram session data | Dữ liệu phiên Discord và Telegram |
| Document grabber for sensitive file types | Mô-đun thu thập tệp tài liệu cho các loại tệp nhạy cảm |

## Detection notes / Ghi chú nhận diện

### English

Structured JSON shape with a top-level `PcName` key (PascalCase,
no spaces) is unique among the families this catalog tracks; no
other retained format uses this `pc_info.json` shape.

### Tiếng Việt

Cấu trúc dữ liệu JSON có cấu trúc với một khóa cấp cao nhất `PcName` (PascalCase, không có khoảng trắng) là đặc điểm riêng biệt trong số các họ mã độc mà danh mục này theo dõi; không có định dạng nào khác được lưu giữ sử dụng cấu trúc dữ liệu `pc_info.json` này.

## Observed log variants

### `v_02aba0afc027e0ffde6554b29031e0b1`

- Format ID: `acreed`
- Observed filenames: `pc_info.json`, `pc_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **224,616**
- Representative sample: [open sample](samples/v_02aba0afc027e0ffde6554b29031e0b1/sample.txt)
- Sample SHA-256: `b8f16d760313ebd4003085217477561045790d3303b9e579b81cbc88983ae551`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `IsElevator`, `PcName`


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

- <https://www.kaspersky.com/blog/acreed-stealer/>

Machine-readable record: [family.json](family.json)
