# BracketSection Stealer

## Overview / Tổng quan

### English

Unidentified `[System]` / `[Hardware]`-sectioned stealer log
variant observed inside `@bugatti_cloud` aggregator packs.
The `UserInformation.txt` body is split into bracket-titled
sections (`[System]`, `[Hardware]`, etc.) each followed by a
flat key-value block. Family attribution is provisional; the
format has not been mapped to a published threat-intel name.

### Tiếng Việt

Biến thể nhật ký mã độc đánh cắp thông tin chưa xác định danh tính, chia phần bằng `[System]` / `[Hardware]`, quan sát được bên trong các gói tổng hợp `@bugatti_cloud`. Nội dung `UserInformation.txt` được chia thành các phần có tiêu đề trong dấu ngoặc vuông (`[System]`, `[Hardware]`, v.v.), mỗi phần theo sau bởi một khối khóa-giá trị phẳng. Việc quy kết họ mã độc là tạm thời; định dạng này chưa được ánh xạ với một tên tình báo mối đe dọa đã công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **893**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The combination of bracket-titled sections (`[System]`,
`[Hardware]`) with a flat key-value block under each is the
primary signature. Distributed via the `@bugatti_cloud`
aggregator channel.

### Tiếng Việt

Sự kết hợp giữa các phần có tiêu đề trong dấu ngoặc vuông (`[System]`, `[Hardware]`) với một khối khóa-giá trị phẳng bên dưới mỗi phần là chữ ký nhận diện chính. Được phát tán qua kênh tổng hợp `@bugatti_cloud`.

## Observed log variants

### `v_516063da5807a1399ea249ebe8f60e04`

- Format ID: `bracket-section-stealer`
- Observed filenames: `System.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `system-hardware-buildtag`
- Historical records represented: **893**
- Representative sample: [open sample](samples/v_516063da5807a1399ea249ebe8f60e04/sample.txt)
- Sample SHA-256: `d2b797c2c1bdd70b592fa28112165e11e0771335756c9f8f390412be2fea2708`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Hardware]`, `[System]`
- Field labels: `Buildtag`


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

- <https://heroic.com/darkhive-breaches/bugatti-cloud-telegram-stealer-log-july-2023-timeline/>
- <https://socradar.io/blog/top-stealer-log-telegram-channels/>

Machine-readable record: [family.json](family.json)
