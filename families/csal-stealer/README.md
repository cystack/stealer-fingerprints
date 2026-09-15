# CSALStealer

## Overview / Tổng quan

### English

CSALStealer is a CyStack-coined identifier for a self-named
AL Stealer log family observed inside `APRIL 25 - 19966 LOGS`
Telegram packs in `DZ_<IP>_<DD-MM-YY>/` victim folders. The
format is Lumma-shaped (dash-prefix YAML list) but carries a
distinct build banner, a different distribution channel, and
lacks Lumma's canonical `(sig:UNIX.HEX)` signature. The
malware self-identifies as AL Stealer (likely "Additional
Libraries", matching its Telegram channel) and targets
Hypixel Skyblock players via fake Minecraft mods. Family
identification is provisional; no published threat-intel
source attests this specific log template, hence the `CS`
prefix.

### Tiếng Việt

CSALStealer là định danh do CyStack đặt cho một họ log AL Stealer tự đặt tên, được phát hiện bên trong các gói `APRIL 25 - 19966 LOGS` trên Telegram trong `DZ_<IP>_<DD-MM-YY>/` thư mục nạn nhân. Định dạng này có cấu trúc dữ liệu giống Lumma (danh sách YAML tiền tố dấu gạch ngang) nhưng mang banner build riêng biệt, kênh phân phối khác, và thiếu chữ ký `(sig:UNIX.HEX)` đặc trưng của Lumma. Mã độc tự nhận diện là AL Stealer (khả năng viết tắt của "Additional Libraries", khớp với tên kênh Telegram của nó) và nhắm mục tiêu vào người chơi Hypixel Skyblock thông qua các mod Minecraft giả mạo. Việc xác định họ mã độc này còn mang tính tạm thời; chưa có nguồn tình báo an ninh mạng nào được công bố xác nhận mẫu log cụ thể này, do đó có tiền tố `CS`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **medium**
- Canonical family: [lumma](../lumma/)
- Aliases: `AL Stealer`
- Variants observed: **1**
- CyStack observations represented: **26**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials | Thông tin xác thực được lưu trong trình duyệt |
| Crypto wallet extensions | Tiện ích mở rộng ví tiền điện tử |
| Minecraft account credentials and Hypixel Skyblock data | Thông tin xác thực tài khoản Minecraft và dữ liệu Hypixel Skyblock |

## Detection notes / Ghi chú nhận diện

### English

Dash-prefix `- AL Stealer Build:` line is the cleanest
trigger. The `t.me/additionallibraries` channel reference in
the join-now header is a backup signature for variants that
strip the build banner.

### Tiếng Việt

Dòng `- AL Stealer Build:` với tiền tố dấu gạch ngang là dấu hiệu kích hoạt rõ ràng nhất. Tham chiếu kênh `t.me/additionallibraries` trong phần tiêu đề mời tham gia là chữ ký dự phòng cho các biến thể đã loại bỏ banner build.

## Observed log variants

### `v_acc2678339f8059055700c66f385f24d`

- Format ID: `cs-al-stealer`
- Observed filenames: `System.txt`
- Panel brand: `AL Stealer`
- Distribution channel: `t.me/additionallibraries`
- Attribution confidence: **medium**
- Historical records represented: **26**
- Representative sample: [open sample](samples/v_acc2678339f8059055700c66f385f24d/sample.txt)
- Sample SHA-256: `f500fa816cbb77efa7222cdd89e3dbf77713cf65c9cdf9d5a5f658957689f41e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `AL Stealer`, `t.me/additionallibraries`
- Field labels: `AL Stealer Build`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Lumma](../lumma/)

## Observed distribution channels

- <https://t.me/additionallibraries>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
