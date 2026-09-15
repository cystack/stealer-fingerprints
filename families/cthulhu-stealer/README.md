# Cthulhu Stealer

## Overview / Tổng quan

### English

Cthulhu Stealer is a Go-written macOS infostealer that
exfiltrates a custom `Userinfo.txt` written to
`/Users/Shared/NW/`. The body opens with `IP:` and `Country:`
fields and continues with macOS hardware and account inventory.
Observed in `@bugatti_cloud` aggregator packs.

### Tiếng Việt

Cthulhu Stealer là một mã độc đánh cắp thông tin trên macOS được viết bằng Go, thực hiện đưa dữ liệu ra ngoài dưới dạng `Userinfo.txt` tùy chỉnh được ghi vào `/Users/Shared/NW/`. Phần thân dữ liệu mở đầu bằng các trường `IP:` và `Country:`, sau đó tiếp tục với thông tin kiểm kê phần cứng và tài khoản trên macOS. Đã được ghi nhận trong các gói tổng hợp `@bugatti_cloud`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Cthulhu macOS Stealer`
- Variants observed: **1**
- CyStack observations represented: **5,450**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials on macOS | Thông tin xác thực được lưu trong trình duyệt trên macOS |
| Crypto wallet desktop clients | Ứng dụng ví tiền mã hóa dạng desktop |
| macOS Keychain entries | Mục trong Keychain của macOS |
| Telegram session data | Dữ liệu phiên đăng nhập Telegram |
| System inventory and hardware fingerprint | Thông tin kiểm kê hệ thống và dấu vân tay phần cứng |

## Detection notes / Ghi chú nhận diện

### English

macOS-specific path (`/Users/Shared/NW/Userinfo.txt`) plus the
IP-then-country opening is the clean fingerprint. The Go
origin shows up in stable field ordering across builds.

### Tiếng Việt

Đường dẫn đặc thù của macOS (`/Users/Shared/NW/Userinfo.txt`) cùng với phần mở đầu theo thứ tự IP rồi đến quốc gia là dấu hiệu nhận diện rõ ràng. Nguồn gốc từ Go thể hiện qua thứ tự các trường ổn định giữa các bản dựng.

## Observed log variants

### `v_1e1c8707a36b7f85a5633c78674b0d78`

- Format ID: `cthulhu`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **5,450**
- Representative sample: [open sample](samples/v_1e1c8707a36b7f85a5633c78674b0d78/sample.txt)
- Sample SHA-256: `f86d1d768943f3ef56910c53097a0e39d5e5fbaee351ec58406c821f221609f1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Hardware Overview:`
- Field labels: `BuildID`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.darktrace.com/blog/from-the-depths-analyzing-the-cthulhu-stealer-malware-for-macos>

Machine-readable record: [family.json](family.json)
