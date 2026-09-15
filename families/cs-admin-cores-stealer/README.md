# CSAdminCoresStealer

## Overview / Tổng quan

### English

CSAdminCoresStealer is a CyStack-coined identifier for a
9-field bare-key `System.txt` panel observed inside `!! 2025 DEC.part01.rar` aggregator packs at
`<id>_<CC>_<IPv4>_<DD-MM-YY>/System.txt` victim folders. The
body is a flat key-value block with uppercase plural-noun
keys (`USERNAME`, `CORES`, `ADMIN`) and no banner, no section
dividers, no trailing footer.

The `LID:` line carries an affiliate-style `<name>-<8-hex>`
value (e.g. `TINY-47F174B7`) that mirrors Lumma Stealer's
pre-March-2025 LID convention documented in public
affiliate-side writeups. The body shape diverges sharply from
canonical Lumma's verbose `- Key: Value` dash-prefix format,
so family attribution stays CyStack-coined pending a published
confirmation: the LID format could be a coincidence (multiple
stealers may use this name) or a Lumma fork with a radically
reshaped panel template.

The `CPU:` value can carry virtualization markers (the
observed sample reads `AMD EPYC Processor (with IBPB)`, where
`IBPB` is the Spectre-v2 mitigation flag QEMU / KVM exposes in
the guest CPU model name). The `IP:` value falls back to
`127.0.0.1` when no external IPv4 is available at exfil time.

Public reporting and the community stealer-format catalogues
do not document a family that emits this 9-field bare-key
uppercase-noun layout.

### Tiếng Việt

CSAdminCoresStealer là một định danh do CyStack đặt tên cho bảng điều khiển `System.txt` 9 trường dạng khóa trần, quan sát được bên trong các gói tổng hợp `!! 2025 DEC.part01.rar` tại các thư mục nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/System.txt`. Nội dung là một khối khóa-giá trị phẳng với các khóa danh từ số nhiều viết hoa (`USERNAME`, `CORES`, `ADMIN`) và không có biểu ngữ, không có dấu phân cách phần, không có phần chân trang cuối.

Dòng `LID:` mang giá trị `<name>-<8-hex>` kiểu affiliate (ví dụ: `TINY-47F174B7`) phản ánh quy ước LID trước tháng 3 năm 2025 của Lumma Stealer được ghi nhận trong các bài phân tích công khai phía affiliate. Cấu trúc nội dung khác biệt rõ rệt so với định dạng gạch đầu dòng chi tiết `- Key: Value` của Lumma chính thống, do đó việc quy kết họ mã độc vẫn ở mức do CyStack đặt tên, chờ xác nhận công khai: định dạng LID có thể là trùng hợp (nhiều mã độc đánh cắp thông tin có thể dùng tên này) hoặc là một bản phân nhánh của Lumma với mẫu bảng điều khiển được tái cấu trúc mạnh mẽ.

Giá trị `CPU:` có thể mang các dấu hiệu ảo hóa (mẫu quan sát được đọc là `AMD EPYC Processor (with IBPB)`, trong đó `IBPB` là cờ giảm thiểu Spectre-v2 mà QEMU / KVM để lộ trong tên model CPU của máy ảo khách). Giá trị `IP:` dự phòng về `127.0.0.1` khi không có IPv4 bên ngoài tại thời điểm đưa dữ liệu ra ngoài.

Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin do cộng đồng biên soạn không ghi nhận một họ mã độc tạo dữ liệu đầu ra theo bố cục 9 trường khóa trần danh từ viết hoa này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `TINY-affiliate Lumma-like minimal System.txt`, `Bare-key ADMIN/CORES panel`
- Variants observed: **1**
- CyStack observations represented: **5**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (the panel itself ships only system info; harvested credentials live in sibling files) | Thông tin xác thực được trình duyệt lưu (bản thân bảng điều khiển chỉ gửi thông tin hệ thống; thông tin xác thực thu thập được nằm trong các tệp liên quan) |
| Victim hostname / username | Tên máy / tên người dùng nạn nhân |
| Hardware fingerprint (HWID, OS, CPU model, RAM, core count) | Dấu vân tay phần cứng (HWID, hệ điều hành, model CPU, RAM, số nhân) |
| Privilege state (`ADMIN: Yes/No` flag) | Trạng thái đặc quyền (cờ `ADMIN: Yes/No`) |
| Affiliate / campaign identifier (`LID: <name>-<hex>`) | Định danh affiliate / chiến dịch (`LID: <name>-<hex>`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `LID:` AND `CORES:`
AND `ADMIN:` keys plus a `LID:` value matching the
`<name>-<hex>` affiliate-style format. The combination is
unique across this catalog: canonical Lumma uses `- LID:`
with a leading dash, and no other cataloged format uses bare `CORES:` or `ADMIN:`
uppercase keys. During triage, treat the `LID:` value as
an operator affiliate / campaign identifier (parsable as
two fields: name plus hex) so logs from the same
distribution channel cluster naturally. The `127.0.0.1`
IP fallback marks the victim as either an offline
machine at exfil time or a sandbox; downstream consumers
can filter on the loopback range.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu các khóa neo theo dòng `LID:` VÀ `CORES:` VÀ `ADMIN:`, cùng với giá trị `LID:` khớp với định dạng affiliate `<name>-<hex>`. Sự kết hợp này là đặc điểm riêng trong toàn bộ danh mục này: Lumma chính thống sử dụng `- LID:` với dấu gạch ngang đứng đầu, và không có định dạng nào khác trong danh mục sử dụng các khóa viết hoa trần `CORES:` hoặc `ADMIN:`. Trong quá trình phân loại ban đầu, hãy coi giá trị `LID:` là một định danh affiliate / chiến dịch của đối tượng vận hành (có thể phân tách thành hai trường: tên và giá trị hex) để các nhật ký từ cùng một kênh phát tán tự nhiên gộp thành cụm. Giá trị IP dự phòng `127.0.0.1` đánh dấu nạn nhân là máy ngoại tuyến tại thời điểm đưa dữ liệu ra ngoài hoặc là môi trường sandbox; bên tiêu thụ dữ liệu ở khâu sau có thể lọc theo dải loopback.

## Observed log variants

### `v_b3b65e6d11f16cf0d060e57cd36b1d44`

- Format ID: `cs-admin-cores-stealer`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_b3b65e6d11f16cf0d060e57cd36b1d44/sample.txt)
- Sample SHA-256: `7ae71f6a6b8431aac51ba766aedbc92c867e932699a66aa00f8b1afc2cf26c4c`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `ADMIN`, `CORES`, `LID`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |

## Related catalog profiles

- [Lumma](../lumma/)
- [CSALStealer](../csal-stealer/)
- [CSBabaStealer](../cs-baba-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
