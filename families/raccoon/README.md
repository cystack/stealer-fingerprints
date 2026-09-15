# Raccoon

## Overview / Tổng quan

### English

Raccoon Stealer is a long-running malware-as-a-service infostealer also tracked as RecordBreaker. Its panel exports a compact `System Info.txt` report. Raccoon v2 uses `User ID: <MachineGuid>|<UserName>`, a JavaScript-style `Last seen:` timestamp, a truncated `Build:` value, `IP info:`, and a tab-indented `System Information:` block. Raccoon v1 uses the `Racc0_0n` self-banner and `Bot_ID: <uuid>_<user>` while keeping the same system-inventory purpose.

### Tiếng Việt

Raccoon Stealer là một mã độc đánh cắp thông tin dạng malware-as-a-service tồn tại lâu dài, còn được theo dõi với tên RecordBreaker. Bảng điều khiển của nó xuất ra một báo cáo `System Info.txt` dạng cô đọng. Raccoon v2 sử dụng `User ID: <MachineGuid>|<UserName>`, một dấu thời gian kiểu JavaScript `Last seen:`, một giá trị `Build:` bị cắt ngắn, `IP info:`, và một khối `System Information:` thụt lề bằng tab. Raccoon v1 sử dụng biểu ngữ tự nhận diện `Racc0_0n` và `Bot_ID: <uuid>_<user>` trong khi vẫn giữ cùng mục đích kiểm kê hệ thống.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Raccoon Stealer`, `Raccoon v2`, `RecordBreaker`, `Racc0_0n`
- Variants observed: **2**
- CyStack observations represented: **402**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, and history | Thông tin xác thực, cookie, dữ liệu tự động điền và lịch sử duyệt web đã lưu trên trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng và ứng dụng desktop ví tiền mã hóa |
| Email, FTP, and VPN client credentials | Thông tin xác thực của ứng dụng email, FTP và VPN |
| Discord and Telegram session data | Dữ liệu phiên đăng nhập Discord và Telegram |
| System and installed-application inventory | Kiểm kê hệ thống và ứng dụng đã cài đặt |
| Files selected by the operator grabber configuration | Các tệp được đối tượng vận hành lựa chọn thông qua cấu hình mô-đun thu thập tệp |

## Detection notes / Ghi chú nhận diện

### English

Treat the v1 and v2 panel exports as separate layouts. The v2 layout combines `User ID:`, `Last seen:`, `IP info:`, `System Information:`, and `Installed applications:`. The v1 layout combines `Bot_ID:` and `System Information:` with either the `Racc0_0n` self-banner or `Launched at:`. The MachineGuid/user join and those co-occurring section labels distinguish Raccoon from generic system-information logs.

### Tiếng Việt

Cần xử lý các báo cáo xuất từ bảng điều khiển v1 và v2 như hai bố cục riêng biệt. Bố cục v2 kết hợp `User ID:`, `Last seen:`, `IP info:`, `System Information:`, và `Installed applications:`. Bố cục v1 kết hợp `Bot_ID:` và `System Information:` với biểu ngữ tự nhận diện `Racc0_0n` hoặc `Launched at:`. Việc kết hợp MachineGuid/user cùng các nhãn phần xuất hiện đồng thời này giúp phân biệt Raccoon với các nhật ký thông tin hệ thống thông thường.

## Observed log variants

### `v_35981cb9ad7bbc2326661a3e2f019f55`

- Format ID: `raccoon`
- Observed filenames: `System Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `panel-export-v1`
- Historical records represented: **16**
- Representative sample: [open sample](samples/v_35981cb9ad7bbc2326661a3e2f019f55/sample.txt)
- Sample SHA-256: `c5d3d1edc84c6feeb7db5208b4c367dd6bf9839fb869468ef5787260f00cba85`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Installed Apps:`, `Racc0_0n`, `System Information:`
- Field labels: `Bot_ID`, `Launched at`

### `v_69fc6a9bafa5557076540aa275f3124f`

- Format ID: `raccoon`
- Observed filenames: `System Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `panel-export-v2`
- Historical records represented: **386**
- Representative sample: [open sample](samples/v_69fc6a9bafa5557076540aa275f3124f/sample.txt)
- Sample SHA-256: `a1f2514c030c612051fff1c8e733a80714411d8090ba055be29059d67f23aaf8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Installed applications:`, `System Information:`
- Field labels: `IP info`, `Last seen`, `User ID`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery | Dò tìm tệp và thư mục |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- <https://malpedia.caad.fkie.fraunhofer.de/details/win.raccoon>
- <https://attack.mitre.org/software/S1148/>
- <https://www.zscaler.com/blogs/security-research/raccoon-stealer-v2-latest-generation-raccoon-family>
- <https://www.darktrace.com/blog/the-resurgence-of-the-raccoon-steps-of-a-raccoon-stealer-v2-infection-part-2>
- <https://any.run/malware-trends/raccoon/>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
