# XFiles

## Overview / Tổng quan

### English

X-FILES (XFiles / DeerStealer) is a long-running C#-written
infostealer first observed on Russian hacker forums in March
2021. Later evolutions (2024+) are sold under the rebranded name
DeerStealer by the same actor on dark-web forums and Telegram
with a tiered subscription model. Targets Chromium and Gecko
browsers, 80+ browser-based crypto wallet extensions, plus
VPN, FTP, RDP, and messenger client data.

### Tiếng Việt

X-FILES (XFiles / DeerStealer) là một họ mã độc đánh cắp thông tin viết bằng C# đã hoạt động lâu dài, được ghi nhận lần đầu trên các diễn đàn hacker Nga vào tháng 3 năm 2021. Các phiên bản phát triển sau này (từ 2024 trở đi) được đổi thương hiệu thành DeerStealer và bán bởi cùng một tác nhân đe dọa trên các diễn đàn dark web và Telegram theo mô hình đăng ký phân cấp. Nhắm mục tiêu vào trình duyệt Chromium và Gecko, hơn 80 tiện ích mở rộng ví tiền mã hóa dựa trên trình duyệt, cùng dữ liệu từ VPN, FTP, RDP và ứng dụng nhắn tin.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `X-FILES`, `DeerStealer`, `X-Files Stealer`
- Variants observed: **2**
- CyStack observations represented: **74,339**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (Chromium and Gecko) | Thông tin xác thực và cookie đã lưu trên trình duyệt (Chromium và Gecko) |
| 80+ browser-based crypto wallet extensions | Hơn 80 tiện ích mở rộng ví tiền mã hóa dựa trên trình duyệt |
| Crypto wallet desktop clients | Ứng dụng desktop ví tiền mã hóa |
| VPN, FTP, RDP client configs | Cấu hình ứng dụng VPN, FTP, RDP |
| Messenger session data (Telegram, Discord, Steam) | Dữ liệu phiên ứng dụng nhắn tin (Telegram, Discord, Steam) |

## Detection notes / Ghi chú nhận diện

### English

XFiles `Information.txt` carries the panel banner together with
victim hardware and locale fields. Older 2021-2022 variants and
the rebranded 2024+ DeerStealer share the same field set so the
family rule covers both eras. An aggregator-stripped variant
redistributed via the Cloud WLFR project (`t.me/WichLoveFromR`,
`linktr.ee/WLFRcloud`, support `@AltairSupport`) drops the
`Operation ID:` panel-run identifier but keeps the rest of the
XFiles-canonical field set; the structural fingerprint covers both
shapes.

### Tiếng Việt

XFiles `Information.txt` mang theo banner của bảng điều khiển cùng với các trường thông tin phần cứng và ngôn ngữ hệ thống của nạn nhân. Các biến thể cũ giai đoạn 2021-2022 và phiên bản đổi thương hiệu DeerStealer từ 2024 trở đi có chung tập trường dữ liệu, do đó quy tắc nhận diện họ mã độc này bao phủ cả hai giai đoạn. Một biến thể bị bộ tổng hợp lược bớt, được phát tán lại thông qua dự án Cloud WLFR (`t.me/WichLoveFromR`, `linktr.ee/WLFRcloud`, hỗ trợ `@AltairSupport`), loại bỏ định danh phiên chạy bảng điều khiển `Operation ID:` nhưng vẫn giữ nguyên phần còn lại của tập trường dữ liệu chuẩn XFiles; dấu vân tay cấu trúc dữ liệu bao phủ cả hai cấu trúc.

## Observed log variants

### `v_696f8d4a627ea995706ebfc9ab448d36`

- Format ID: `xfiles`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `hardware-id-gpu`
- Historical records represented: **95**
- Representative sample: [open sample](samples/v_696f8d4a627ea995706ebfc9ab448d36/sample.txt)
- Sample SHA-256: `bdab8a2c2cbfd659c005dda07081848e8cd88ba461d8d89da08a0e66c41ba2f3`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Hardware ID`, `Processed parts`

### `v_7b67103a472b833b8edbbdb65216dad0`

- Format ID: `xfiles`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `operation-id`
- Historical records represented: **74,244**
- Representative sample: [open sample](samples/v_7b67103a472b833b8edbbdb65216dad0/sample.txt)
- Sample SHA-256: `c407b8a84f11600db4c293b9631173e61d5dee1801972cffe5438adb67b3f6de`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Operation ID`, `Processed parts`


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

- <https://www.zscaler.com/blogs/security-research/x-files-stealer-evolution-analysis-and-comparison-study>
- <https://any.run/malware-trends/xfiles/>
- <https://www.esentire.com/blog/dont-get-caught-in-the-headlights-deerstealer-analysis>
- <https://cyberint.com/blog/research/xfiles-stealer-campaign-abusing-follina/>
- <https://www.bleepingcomputer.com/news/security/xfiles-info-stealing-malware-adds-support-for-follina-delivery/>

Machine-readable record: [family.json](family.json)
