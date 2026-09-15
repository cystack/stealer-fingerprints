# WhiteSnake

## Overview / Tổng quan

### English

WhiteSnake Stealer logs. Post-2024 builds emit a `PC_info.txt`
beginning with an emoji-prefixed `🖥Computer info:` section and
containing the system, user, and time values together with
later sections covering installed software and network state.
Distributed via Telegram aggregator channels (BRADMAX-style
redistributors) and via a MaaS subscription model.

### Tiếng Việt

Nhật ký của WhiteSnake Stealer. Các bản dựng sau năm 2024 tạo dữ liệu đầu ra dưới dạng `PC_info.txt` bắt đầu bằng một mục `🖥Computer info:` có tiền tố biểu tượng cảm xúc và chứa các giá trị về hệ thống, người dùng, thời gian cùng với các mục tiếp theo bao gồm phần mềm đã cài đặt và trạng thái mạng. Được phát tán qua các kênh tổng hợp trên Telegram (đối tượng phân phối lại kiểu BRADMAX) và theo mô hình đăng ký MaaS.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `WhiteSnake Stealer`
- Variants observed: **1**
- CyStack observations represented: **105,983**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng và ứng dụng desktop ví tiền điện tử |
| Discord, Telegram, Steam session data | Dữ liệu phiên của Discord, Telegram, Steam |
| 2FA codes from authenticator apps | Mã 2FA từ các ứng dụng xác thực |
| Email and FTP client credentials | Thông tin xác thực của ứng dụng email và FTP |

## Detection notes / Ghi chú nhận diện

### English

The emoji-prefixed section header (`🖥Computer info:`) is
visually distinctive. Combined with `User name:` and
`System time:` field labels (note the spaces), this is
unambiguous WhiteSnake content.

### Tiếng Việt

Tiêu đề mục có tiền tố biểu tượng cảm xúc (`🖥Computer info:`) có đặc điểm nhận dạng trực quan rõ ràng. Kết hợp với nhãn trường `User name:` và `System time:` (lưu ý các khoảng trắng), đây là nội dung chắc chắn thuộc về WhiteSnake.

## Observed log variants

### `v_a444692e5322bf7078e22c40d1da2e8c`

- Format ID: `white-snake`
- Observed filenames: `PC_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **105,983**
- Representative sample: [open sample](samples/v_a444692e5322bf7078e22c40d1da2e8c/sample.txt)
- Sample SHA-256: `8e011db24c8e96dce15461840be9f153bf4fd75cf5a7870f24332f7ee5b10fa9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `🛡Security:`
- Field labels: `Started as admin`


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

- <https://www.cyfirma.com/research/whitesnake-stealer/>
- <https://socradar.io/whitesnake-stealer-malware-analysis/>

Machine-readable record: [family.json](family.json)
