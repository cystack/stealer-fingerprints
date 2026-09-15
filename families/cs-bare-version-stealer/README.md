# CSBareVersionStealer

## Overview / Tổng quan

### English

CSBareVersionStealer is a CyStack-coined identifier for a
`UserInformation.txt` shape observed inside `!! 2026 JAN.part01.rar`-style aggregator packs in `[CC]@BRADMAX (<N>)/UserInformation.txt` victim folders. Public
Telegram-channel catalogues list `t.me/bradmax_cloud` and the
active `t.me/+0IAf5VIrl_EzNWRi` mirror as a Telegram
aggregator the operator self-labels "Redline and Raccoon Data
Logs", but the body lacks every Redline canonical anchor
(`Operation System:` typo, `FileLocation:`, `Hardwares:`
block, `Anti-Viruses:` block) and every Raccoon canonical
anchor (`User ID: <UUID>|<user>`, JS-date `Last seen:`, `IP info: <CC> <IPv4>`), so the operator label cannot be trusted.

The body is structurally a stripped sibling of
`CSBuildBlockStealer`: same 12-field shape (`User time:`,
`HWID:`, `PC Name:`, `User Name:`, `CPU:`, `GPU:`, `Memory:`,
`OS:`, `Active window:`, `Admin rights:`, `IP:`, `GEO:`) but
with the four-line `Build Path:` / `Build ID:` / `Build Version:` / `Build Comment:` group replaced by a single bare
`Version` line (no colon, no value), and the trailing
`Resolution:` line dropped. Empty `IP:` / `GEO:` values are
routine: the panel skips the geolocation lookup on bogon IPs
rather than emit a placeholder string.

Family attribution is provisional pending a published
threat-intel mapping for this stripped layout. Public
reporting and community catalogues do not document a stealer
that emits exactly this stripped-Build / bare-`Version` field
set.

### Tiếng Việt

CSBareVersionStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu `UserInformation.txt` được quan sát bên trong các gói tổng hợp (aggregator pack) kiểu `!! 2026 JAN.part01.rar` nằm trong các thư mục nạn nhân `[CC]@BRADMAX (<N>)/UserInformation.txt`. Các danh mục trên kênh Telegram công khai liệt kê `t.me/bradmax_cloud` và bản sao đang hoạt động `t.me/+0IAf5VIrl_EzNWRi` là một aggregator Telegram mà đối tượng vận hành tự gắn nhãn "Redline and Raccoon Data Logs", nhưng phần thân dữ liệu lại thiếu mọi dấu hiệu neo (anchor) chuẩn của Redline (lỗi chính tả `Operation System:`, `FileLocation:`, khối `Hardwares:`, khối `Anti-Viruses:`) và mọi dấu hiệu neo chuẩn của Raccoon (`User ID: <UUID>|<user>`, JS-date `Last seen:`, `IP info: <CC> <IPv4>`), do đó nhãn do đối tượng vận hành tự đặt không thể được tin tưởng.

Về cấu trúc, phần thân dữ liệu là một bản rút gọn của tệp/dấu vết liên quan `CSBuildBlockStealer`: cùng cấu trúc dữ liệu 12 trường (`User time:`, `HWID:`, `PC Name:`, `User Name:`, `CPU:`, `GPU:`, `Memory:`, `OS:`, `Active window:`, `Admin rights:`, `IP:`, `GEO:`) nhưng nhóm bốn dòng `Build Path:` / `Build ID:` / `Build Version:` / `Build Comment:` được thay bằng một dòng `Version` trần (không có dấu hai chấm, không có giá trị), và dòng `Resolution:` ở cuối bị loại bỏ. Các giá trị `IP:` / `GEO:` rỗng là bình thường: panel bỏ qua việc tra cứu định vị địa lý đối với các IP bogon thay vì tạo dữ liệu đầu ra là một chuỗi giữ chỗ (placeholder).

Việc quy kết họ mã độc vẫn mang tính tạm thời, chờ có một bản đồ tình báo mối đe dọa được công bố cho bố cục dữ liệu rút gọn này. Các báo cáo công khai và danh mục cộng đồng hiện chưa ghi nhận một mã độc đánh cắp thông tin tạo dữ liệu đầu ra chính xác với tập trường Build rút gọn / `Version` trần như thế này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX stripped Build variant`, `BradMax Cloud`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trên trình duyệt |
| System hardware and locale inventory | Thông tin phần cứng và cấu hình ngôn ngữ/vùng hệ thống |
| Active-window snapshot (foreground process title at exfil time) | Ảnh chụp cửa sổ đang hoạt động (tiêu đề tiến trình foreground tại thời điểm đưa dữ liệu ra ngoài) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `Active window:`,
`Admin rights:`, and `GEO:` keys plus a bare `Version`
line (no colon, no value, optional leading whitespace).
The bare `Version` line is the disambiguator from
`CSBuildBlockStealer`, which requires the full four-line
`Build Path:` / `Build ID:` / `Build Version:` /
`Build Comment:` group. The `GEO:` key (instead of
`Country:`) further excludes unrelated formats. During
triage, treat the family attribution as unknown: the
aggregator self-label (`Redline and Raccoon Data Logs`)
is misleading because the body lacks every canonical
anchor for both families.

### Tiếng Việt

Việc nhận diện dấu hiệu (fingerprint) yêu cầu các khóa `Active window:`, `Admin rights:` và `GEO:` được neo theo dòng, cộng với một dòng `Version` trần (không có dấu hai chấm, không có giá trị, có thể có khoảng trắng đầu dòng). Dòng `Version` trần này là yếu tố phân biệt so với `CSBuildBlockStealer`, vốn yêu cầu đầy đủ nhóm bốn dòng `Build Path:` / `Build ID:` / `Build Version:` / `Build Comment:`. Khóa `GEO:` (thay vì `Country:`) càng loại trừ thêm các định dạng không liên quan. Trong quá trình phân tích ban đầu (triage), cần coi việc quy kết họ mã độc là chưa xác định: nhãn tự đặt của aggregator (`Redline and Raccoon Data Logs`) gây hiểu lầm vì phần thân dữ liệu thiếu mọi dấu hiệu neo chuẩn của cả hai họ mã độc.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSBuildBlockStealer](../cs-build-block-stealer/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
