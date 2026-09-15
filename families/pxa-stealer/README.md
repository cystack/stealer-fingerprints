# PXA Stealer

## Overview / Tổng quan

### English

PXA Stealer is a Vietnamese-origin info-stealer. Its
`system_info.txt` uses a Vietnamese header
(`Thông tin hệ thống`) and snake_case keys lifted from WMI /
Win32 API names, making the fingerprint visually distinctive
even before content matches.

### Tiếng Việt

PXA Stealer là một mã độc đánh cắp thông tin có nguồn gốc từ Việt Nam. `system_info.txt` của nó sử dụng phần tiêu đề bằng tiếng Việt (`Thông tin hệ thống`) và các khóa dạng snake_case được lấy từ tên WMI / Win32 API, khiến dấu vết trở nên đặc trưng về mặt hình thức ngay cả trước khi đối chiếu nội dung.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `PXAStealer`
- Variants observed: **2**
- CyStack observations represented: **108,969**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền mã hóa và ứng dụng desktop |
| Telegram, Discord, Steam session tokens | Token phiên đăng nhập của Telegram, Discord, Steam |
| VPN and FTP client configurations | Cấu hình ứng dụng VPN và FTP client |
| Documents matching specific filename patterns | Tài liệu khớp với các mẫu tên tệp cụ thể |

## Detection notes / Ghi chú nhận diện

### English

Vietnamese banner `Thông tin hệ thống` is unambiguous. Pair
with the snake_case key style (`computer_system`, `os`,
`processor`, `bios`) to confirm.

### Tiếng Việt

Banner tiếng Việt `Thông tin hệ thống` là dấu hiệu rõ ràng, không gây nhầm lẫn. Kết hợp với kiểu khóa snake_case (`computer_system`, `os`, `processor`, `bios`) để xác nhận.

## Observed log variants

### `v_fb40413b70aabfded7e83dc45324181f`

- Format ID: `pxa-caption`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **108,363**
- Representative sample: [open sample](samples/v_fb40413b70aabfded7e83dc45324181f/sample.txt)
- Sample SHA-256: `0ab2118e99c70b06a86332550d95db9fd363dd959c30ffe27428c3001412ff1c`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Data Information: CK:`
- Field labels: `AntiVirus`, `IP`, `Username`

### `v_ffefe59bb73c8a386d24c645d4405857`

- Format ID: `pxa`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `full-wmi`
- Historical records represented: **606**
- Representative sample: [open sample](samples/v_ffefe59bb73c8a386d24c645d4405857/sample.txt)
- Sample SHA-256: `69381bc169c48f7dbdb2483dad88c4746f626167ace43dcd6c7e9c33e030ef83`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Thông tin hệ thống`
- Field labels: `edition_id`, `install_date`


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

- <https://blog.talosintelligence.com/pxa-stealer/>
- <https://socradar.io/threat-actor-spotlight-pxa-stealer/>

Machine-readable record: [family.json](family.json)
