# CSDataCollectedStealer

## Overview / Tổng quan

### English

CSDataCollectedStealer is a CyStack-coined identifier for a
three-line `Information.txt` notification stub observed
inside `!! 2025 NOV.part001.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` per-victim
folders (e.g. `2047_UN_<IPv4>_25-10-25/ Information.txt`). The body is two bare `Key: Value` lines
(`Computer:`, `IP:`) followed by the plain-English
`Data collected successfully` completion ack.

The file is a panel-side notification, not a data report.
It tells the operator that exfiltration finished on this
victim. The actual harvested credentials live in sibling
files inside the per-victim folder where any follow-on
family fingerprinting should run. Structurally similar to
CSNewLogStealer (also a notification stub from the same
aggregator-pack family), but missing the banner and the
emoji-prefixed TOC enumeration that CSNewLogStealer
carries. Family attribution is provisional pending a
published threat-intel mapping for this layout: the body
is too minimal to attribute to a specific builder.

### Tiếng Việt

CSDataCollectedStealer là định danh do CyStack đặt cho một tệp thông báo ba dòng `Information.txt` được phát hiện bên trong các gói tổng hợp kiểu `!! 2025 NOV.part001.rar`, nằm trong các thư mục theo từng nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` (ví dụ: `2047_UN_<IPv4>_25-10-25/ Information.txt`). Phần nội dung gồm hai dòng `Key: Value` trần (`Computer:`, `IP:`), theo sau là thông báo xác nhận hoàn tất bằng tiếng Anh thuần túy `Data collected successfully`.

Tệp này là thông báo phía bảng điều khiển, không phải báo cáo dữ liệu. Nó cho đối tượng vận hành biết rằng việc đưa dữ liệu ra ngoài đối với nạn nhân này đã hoàn tất. Thông tin xác thực thực sự bị thu thập nằm trong các tệp liên quan bên trong thư mục theo từng nạn nhân, nơi cần thực hiện các bước xác định dấu vân tay họ mã độc tiếp theo. Về cấu trúc, tệp này tương tự CSNewLogStealer (cũng là một tệp thông báo thuộc cùng họ gói tổng hợp), nhưng thiếu phần banner và danh sách mục lục có tiền tố emoji mà CSNewLogStealer có. Việc quy kết họ mã độc hiện chỉ là tạm thời, chờ có ánh xạ threat-intel công bố cho bố cục này: nội dung tệp quá tối giản để có thể quy kết cho một builder cụ thể.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 NOV aggregator notification stub`
- Variants observed: **1**
- CyStack observations represented: **265**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (in sibling cred files) | Thông tin xác thực và cookie đã lưu trong trình duyệt (trong các tệp thông tin xác thực liên quan) |
| System hostname and public IP for victim fingerprinting | Tên máy hệ thống và địa chỉ IP công khai dùng để xác định dấu vân tay nạn nhân |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the literal `Data collected successfully` substring (the panel-unique ack message)
plus line-anchored `Computer:` and `IP:` keys as cross-confirmation. The ack literal alone is enough to
discriminate against any currently cataloged format, but
the two-key pair guards against prose that quotes the
phrase out of context. During triage, treat family
attribution as unknown: this file is a notification stub
with no harvested credential body, and the underlying
stealer cannot be identified from the host + IP + ack
triple alone.

### Tiếng Việt

Việc nhận diện dấu vết đòi hỏi chuỗi con `Data collected successfully` (thông báo xác nhận đặc trưng riêng của bảng điều khiển) cùng với các khóa `Computer:` và `IP:` được neo theo dòng để xác nhận chéo. Chỉ riêng chuỗi xác nhận này đã đủ để phân biệt với bất kỳ định dạng nào hiện đã được lập danh mục, nhưng cặp hai khóa này giúp đề phòng trường hợp cụm từ đó bị trích dẫn ngoài ngữ cảnh. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: tệp này là một tệp thông báo không chứa nội dung thông tin xác thực đã thu thập, và không thể xác định mã độc đánh cắp thông tin gốc chỉ dựa vào bộ ba tên máy, IP và thông báo xác nhận.

## Observed log variants

### `v_1629258e7c5a7787a73c5a354e94dde4`

- Format ID: `cs-data-collected-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `Data collected successfully ack`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **265**
- Representative sample: [open sample](samples/v_1629258e7c5a7787a73c5a354e94dde4/sample.txt)
- Sample SHA-256: `61904a4cfa2b6411cc121a3b1a4f0619cdb2f41568575bccba79fca87e9a60a0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Data collected successfully`
- Field labels: `Computer`, `IP`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |

## Related catalog profiles

- [CSNewLogStealer](../cs-new-log-stealer/)
- [CSInzExtStealer](../cs-inz-ext-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
