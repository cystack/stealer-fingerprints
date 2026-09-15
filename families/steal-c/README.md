# StealC

## Overview / Tổng quan

### English

StealC info-stealer logs. Writes a sectioned `system_info.txt`
with header lines like `Network Info:`, `System Summary:`, and
tab-indented `- Key: Value` records under each. First documented
in early 2023, StealC has remained an active commodity stealer
with the v2 rewrite tracked through 2024.

### Tiếng Việt

Nhật ký của StealC, một mã độc đánh cắp thông tin. Mã độc ghi một `system_info.txt` theo dạng phân đoạn với các dòng tiêu đề như `Network Info:`, `System Summary:`, và các bản ghi `- Key: Value` được thụt lề bằng tab bên dưới mỗi phần. Được ghi nhận lần đầu vào đầu năm 2023, StealC vẫn là một mã độc đánh cắp thông tin thương mại hoạt động tích cực, với bản viết lại v2 được theo dõi xuyên suốt năm 2024.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `StealC v1`, `StealC v2`
- Variants observed: **2**
- CyStack observations represented: **972,301**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trên trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| FTP, email, VPN, RDP client configs | Cấu hình ứng dụng FTP, email, VPN, RDP |
| Discord and Telegram session data | Dữ liệu phiên của Discord và Telegram |
| Custom file grabber configurable per-build | Mô-đun thu thập tệp tùy chỉnh có thể cấu hình theo từng bản build |

## Detection notes / Ghi chú nhận diện

### English

Distinctive sectioned layout with `Network Info:` and
`System Summary:` parent headers and tab-indented field lines.
Distributed via multiple Telegram resellers; the
`@stealerboss` channel is one of the larger redistributors.

### Tiếng Việt

Bố cục phân đoạn đặc trưng với các tiêu đề cấp cha `Network Info:` và `System Summary:`, cùng các dòng trường dữ liệu thụt lề bằng tab. Được phân phối qua nhiều đối tượng bán lại trên Telegram; kênh `@stealerboss` là một trong những kênh phân phối lại lớn hơn.

## Observed log variants

### `v_078dda10ae3264ed2b51d559017ac685`

- Format ID: `stealc`
- Observed filenames: `System.txt`, `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `network-info-system-summary`
- Historical records represented: **972,136**
- Representative sample: [open sample](samples/v_078dda10ae3264ed2b51d559017ac685/sample.txt)
- Sample SHA-256: `f5a0773995f4020e4e275701e8f3d3e858111ea7a2784bc8350eef7f5cef19f1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Network Info:`, `System Summary:`
- Field labels: -

### `v_176158076f220af65d5f14c6593efde1`

- Format ID: `stealc`
- Observed filenames: `System.txt`, `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `installed-apps-users-processes`
- Historical records represented: **165**
- Representative sample: [open sample](samples/v_176158076f220af65d5f14c6593efde1/sample.txt)
- Sample SHA-256: `f504e0db01d2a3b1132ecc7ce12765f38eca2f6f90bf187acb9c6ab6557ae80b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `All Users`, `Current User`, `Installed Apps`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection | Thu thập tự động |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.zscaler.com/blogs/security-research/i-stealc-you-tracking-rapid-changes-stealc>
- <https://mssplab.github.io/threat-hunting/2023/11/23/malware-analysis-stealc-2.html>

Machine-readable record: [family.json](family.json)
