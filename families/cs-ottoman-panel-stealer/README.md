# CSOttomanPanelStealer

## Overview / Tổng quan

### English

CSOttomanPanelStealer is a CyStack-coined identifier for the
Ottoman aggregator panel's `Information.txt` shape. Ottoman,
self-styled as `Ottoman Cloud` or `Ottoman Stealer v2.0`, is a
paid log-distribution service that resells stealer logs
through the Telegram ecosystem. Per the operator's own
marketing site at ottomancloud.github.io, the service compiles
harvested data from multiple source stealers, normalises the
output to a unified `Information.txt` shape, and sells 1500 to
5000 records per day across tiered subscription plans ($75 to
$600 per month).

The Ottoman panel appears in community catalogs but no public
research publishes a primary analysis of the panel format. The
operator admits Ottoman runs over multiple source malware
families (Redline, MetaStealer, Raccoon, AuraStealer,
TitanStealer, Vidar), so the underlying family on any given
victim varies. The CS prefix marks the label as
CyStack-coined; the panel brand `Ottoman` and the operator
support handle `@OttoSup` are preserved as taxonomy fields.

### Tiếng Việt

CSOttomanPanelStealer là định danh do CyStack đặt tên cho cấu trúc dữ liệu của panel tổng hợp Ottoman`Information.txt`. Ottoman, tự nhận là `Ottoman Cloud` hoặc `Ottoman Stealer v2.0`, là một dịch vụ phân phối log trả phí, bán lại log từ các mã độc đánh cắp thông tin thông qua hệ sinh thái Telegram. Theo trang quảng bá của chính đối tượng vận hành tại ottomancloud.github.io, dịch vụ này tổng hợp dữ liệu thu thập được từ nhiều mã độc nguồn, chuẩn hóa dữ liệu đầu ra thành một cấu trúc dữ liệu `Information.txt` thống nhất, và bán từ 1500 đến 5000 bản ghi mỗi ngày theo các gói đăng ký phân tầng (75 đến 600 USD mỗi tháng).

Panel Ottoman xuất hiện trong các danh mục cộng đồng nhưng chưa có nghiên cứu công khai nào công bố phân tích gốc về định dạng panel này. Đối tượng vận hành thừa nhận Ottoman hoạt động trên nhiều họ mã độc nguồn (Redline, MetaStealer, Raccoon, AuraStealer, TitanStealer, Vidar), do đó họ mã độc nền tảng trên mỗi nạn nhân có thể khác nhau. Tiền tố CS đánh dấu nhãn này do CyStack đặt tên; thương hiệu panel `Ottoman` và tài khoản hỗ trợ của đối tượng vận hành `@OttoSup` được giữ nguyên như các trường phân loại.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `Ottoman Cloud`, `Ottoman Stealer`, `Ottoman Stealer v2.0`
- Variants observed: **1**
- CyStack observations represented: **160**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu tự động điền |
| Cryptocurrency wallet apps and browser extensions | Ứng dụng ví tiền điện tử và tiện ích mở rộng trình duyệt |
| Session tokens for Telegram, Steam, Discord | Token phiên đăng nhập của Telegram, Steam, Discord |
| Documents matching the file-grabber filter list | Tài liệu khớp với danh sách bộ lọc của mô-đun thu thập tệp |
| Browser history, bookmarks, extensions | Lịch sử duyệt web, dấu trang, tiện ích mở rộng trình duyệt |
| Credit card data stored in browsers | Dữ liệu thẻ tín dụng được lưu trong trình duyệt |

## Detection notes / Ghi chú nhận diện

### English

The parenthesized per-letter ASCII banner
`( O | T | T | O | M | A | N )` plus the `@OttoSup`
operator-support handle is the strongest fingerprint.
The `Telegram :` invite-link row inside the ASCII frame
rotates per archive, so anchor rules should use the
banner literal and handle rather than the invite code.
When triaging logs from this family, remember the
underlying malware varies per victim, so map back to
the source stealer (Redline / Meta / Raccoon / Aura /
Titan / Vidar) from sibling files when possible.

### Tiếng Việt

Biểu ngữ ASCII theo từng ký tự trong dấu ngoặc đơn `( O | T | T | O | M | A | N )` cùng với tài khoản hỗ trợ của đối tượng vận hành `@OttoSup` là dấu hiệu nhận diện đặc trưng nhất. Dòng liên kết mời `Telegram :` bên trong khung ASCII thay đổi theo từng gói lưu trữ, vì vậy các quy tắc nhận diện nên dựa vào chuỗi ký tự của biểu ngữ và tài khoản hỗ trợ thay vì mã mời. Khi phân loại log từ họ mã độc này, cần lưu ý mã độc nền tảng thay đổi theo từng nạn nhân, do đó nên đối chiếu ngược lại với mã độc nguồn (Redline / Meta / Raccoon / Aura / Titan / Vidar) thông qua các tệp liên quan khi có thể.

## Observed log variants

### `v_1f914efc1a8e43b713cc64606c2bb0e8`

- Format ID: `cs-ottoman-panel-stealer`
- Observed filenames: `information.txt`, `PC_info.txt`, `System.txt`, `UserInformation.txt`
- Panel brand: `Ottoman`
- Distribution channel: `@OttoSup`
- Attribution confidence: **low**
- Historical records represented: **160**
- Representative sample: [open sample](samples/v_1f914efc1a8e43b713cc64606c2bb0e8/sample.txt)
- Sample SHA-256: `173225065f85e58a00257fef0638b70c37c98dc6e7de465b6e97e889c3a024ec`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `( O \| T \| T \| O \| M \| A \| N )`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1213](https://attack.mitre.org/techniques/T1213/) | Data from Information Repositories | Dữ liệu từ kho thông tin |

## Related catalog profiles

- [Redline](../redline/)
- [MetaStealer](../meta-stealer/)
- [Raccoon](../raccoon/)
- [AuraStealer](../aura-stealer/)
- [Vidar](../vidar/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
