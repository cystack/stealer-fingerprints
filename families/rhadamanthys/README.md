# Rhadamanthys

## Overview / Tổng quan

### English

Rhadamanthys info-stealer logs (v0.9.x device-fingerprint shape).
Writes a flat `systeminfo.txt` opening with `IP:`, `Country:`
and continuing with a hardware and locale block. Distinguished
from Redline-shape logs by the `Wallpaper Hash:` and
`MachineID:` field combination, which Rhadamanthys emits but
Redline never does. Continuously updated through 2025 with
expanded crypto-wallet, browser, and messenger coverage.

### Tiếng Việt

Nhật ký của mã độc đánh cắp thông tin Rhadamanthys (cấu trúc dữ liệu vân tay thiết bị phiên bản v0.9.x).
Ghi phần mở đầu dạng phẳng `systeminfo.txt` với `IP:`, `Country:`
và tiếp tục với một khối thông tin phần cứng và ngôn ngữ hệ thống. Được phân biệt
với các nhật ký có cấu trúc dữ liệu của Redline nhờ tổ hợp trường `Wallpaper Hash:` và
`MachineID:`, vốn Rhadamanthys tạo dữ liệu đầu ra nhưng
Redline thì không bao giờ có. Liên tục được cập nhật xuyên suốt năm 2025 với
phạm vi thu thập mở rộng đối với ví tiền mã hóa, trình duyệt và ứng dụng nhắn tin.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **medium**
- Aliases: `Rhadamanthys Stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, history | Thông tin xác thực, cookie, lịch sử duyệt web đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền mã hóa và ứng dụng desktop |
| 2FA codes from authenticator browser extensions | Mã 2FA từ các tiện ích mở rộng trình duyệt dùng cho xác thực |
| PDF, Office, and other document grabber | Mô-đun thu thập tệp PDF, Office và các loại tài liệu khác |
| Messenger and email clients | Ứng dụng nhắn tin và email |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: `Wallpaper Hash:` + `MachineID:`
field pair. The `IP:` + `Country:` opening is shared with
Vidar but Rhadamanthys lacks Vidar's `Version:` third-line
field.

### Tiếng Việt

Dấu hiệu kích hoạt có độ tin cậy cao: cặp trường `Wallpaper Hash:` + `MachineID:`.
Phần mở đầu `IP:` + `Country:` được dùng chung với
Vidar, nhưng Rhadamanthys không có trường ở dòng thứ ba `Version:` như Vidar.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection | Thu thập tự động |

## Related catalog profiles

- None recorded.

## Sources

- <https://research.checkpoint.com/2025/rhadamanthys-0-9-x-walk-through-the-updates/>
- <https://thehackernews.com/2025/10/rhadamanthys-stealer-evolves-adds.html>
- <https://any.run/malware-trends/rhadamanthys/>

Machine-readable record: [family.json](family.json)
