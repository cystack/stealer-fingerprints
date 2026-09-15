# Redline

## Overview / Tổng quan

### English

Canonical Redline Stealer logs. UserInformation.txt files emitting
the family's typo'd `Operation System:` field together with a full
identity, locale, and hardware block. Build banners typically frame
the panel name (Octopus Cloud Logs and similar resellers) above
the field block.

### Tiếng Việt

Các log Redline Stealer chuẩn. Các tệp UserInformation.txt tạo dữ liệu đầu ra chứa trường bị lỗi chính tả đặc trưng của họ mã độc này `Operation System:` cùng với một khối thông tin danh tính, vùng miền và phần cứng đầy đủ. Các banner phiên bản build thường đặt tên bảng điều khiển (Octopus Cloud Logs và các bên bán lại tương tự) phía trên khối trường dữ liệu.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `RedLine`, `RedLineStealer`
- Variants observed: **2**
- CyStack observations represented: **31,304**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials | Thông tin xác thực đã lưu trong trình duyệt |
| Browser cookies and session storage | Cookie và dữ liệu phiên lưu trữ của trình duyệt |
| Crypto wallet desktop clients and browser extensions | Ứng dụng ví tiền điện tử desktop và tiện ích mở rộng trình duyệt |
| FTP and VPN client configs | Cấu hình client FTP và VPN |
| Discord and Telegram session tokens | Token phiên của Discord và Telegram |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: the typo'd `Operation System:` field
paired with `FileLocation:`. Stripped variants without
`FileLocation:` are tracked separately as `RedlineLike Stealer`.

### Tiếng Việt

Yếu tố kích hoạt độ tin cậy cao: trường bị lỗi chính tả `Operation System:` đi kèm với `FileLocation:`. Các biến thể đã bị lược bỏ không có `FileLocation:` được theo dõi riêng biệt dưới tên `RedlineLike Stealer`.

## Observed log variants

### `v_436a2a6dd26480ac96afbce620412cb2`

- Format ID: `redline`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `operation-system-file-location`
- Historical records represented: **31,303**
- Representative sample: [open sample](samples/v_436a2a6dd26480ac96afbce620412cb2/sample.txt)
- Sample SHA-256: `154e3ee6d7f08d47dd27169d6db791bef28822a96a089d10cfb1682802954acb`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `FileLocation`, `Operation System`

### `v_9ff2932c65398ba0ef8bad9c6465381a`

- Format ID: `redline`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `build-id-banner`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_9ff2932c65398ba0ef8bad9c6465381a/sample.txt)
- Sample SHA-256: `9623f948a384209925e8c624313e13a6a7b10bb96620b17a18546847ca68599a`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `*  \|_\| \_\|_____\|____/\|_____\|___\|_\| \_\|_____\|  *`
- Field labels: `Build ID`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [RedlineLike Stealer](../redline-like-stealer/)
- [MetaStealer](../meta-stealer/)

## Observed distribution channels

- <https://t.me/redline_market_bot>

## Sources

- <https://flare.io/learn/resources/blog/redline-stealer-malware/>

Machine-readable record: [family.json](family.json)
