# CSBabaStealer

## Overview / Tổng quan

### English

CSBabaStealer is a CyStack-coined identifier for a self-named
`.B.A.B.A.` Lumma-rebrand `System.txt` log observed inside
`@ft7links`-distributed packs alongside canonical Lumma content.
The `@ft7links` operator labels the archive `lumma` and ships
both genuine Lumma logs and this Lumma-shaped rebrand under one
cover.

### Tiếng Việt

CSBabaStealer là định danh do CyStack đặt cho một log tự đặt tên `.B.A.B.A.` được gắn mác rebrand của Lumma `System.txt`, được ghi nhận bên trong các gói phân phối bởi `@ft7links` cùng với nội dung Lumma nguyên bản. Đối tượng vận hành `@ft7links` đặt tên kho lưu trữ là `lumma` và phân phối cả log Lumma thực lẫn bản rebrand có cấu trúc giống Lumma này dưới cùng một lớp vỏ bọc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [lumma](../lumma/)
- Aliases: `.B.A.B.A.`, `Baba Logs`
- Variants observed: **1**
- CyStack observations represented: **365**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The `.B.A.B.A. Build :` literal (note the dotted spelling and
the space before the colon) is the unambiguous trigger.
This profile and canonical Lumma may coexist in the same
distribution.

### Tiếng Việt

Chuỗi ký tự `.B.A.B.A. Build :` (lưu ý cách viết có dấu chấm và khoảng trắng trước dấu hai chấm) là dấu hiệu kích hoạt không thể nhầm lẫn. Cấu hình nhận diện này có thể cùng tồn tại với Lumma nguyên bản trong cùng một đợt phân phối.

## Observed log variants

### `v_63cd49f8bebd918e6de1394bbce58a3d`

- Format ID: `cs-baba-stealer`
- Observed filenames: `System.txt`
- Panel brand: `.B.A.B.A.`
- Distribution channel: `@Xavier_Log`
- Attribution confidence: **high**
- Historical records represented: **365**
- Representative sample: [open sample](samples/v_63cd49f8bebd918e6de1394bbce58a3d/sample.txt)
- Sample SHA-256: `6fa8895ded0e8ba56db4c36e66660d54e11d185d6ed088c74f9601593a8f991d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `.B.A.B.A.`
- Field labels: -


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
- [CSArtHouseCloudStealer](../cs-art-house-cloud-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
