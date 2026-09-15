# CSEmojiCountStealer

## Overview / Tổng quan

### English

CSEmojiCountStealer is a CyStack-coined identifier for an
`Information.txt` panel divided into four `- IP Info -` /
`- PC Info -` / `- Other Info -` / `- Log Info -` sections
with dash-space-name-space-dash captions. The Log Info
section ships a `Build:_____` placeholder and a per-category count line for each artifact type using ✅ (data
harvested) or ❌ (category empty) emoji indicators. Eight
count categories are tracked: `Passwords:`, `Cookies:`,
`Wallets:`, `Files:`, `Credit Cards:`, `Servers FTP/SSH:`,
`Discord Tokens:`, `Others:`. Observed inside
`!! 2025 NOV.part001.rar` aggregator packs in
`[<CC>]<IP>/Information.txt` victim folders.

The body carries `FileLocation:` and `Current Language:`
field names that match Redline canonical, but the
surrounding section structure (dash-space captions, emoji
count indicators, `Build:_____` placeholder) does not
match Redline canonical (no `Operation System:` typo, no
`Hardwares:` block, no `Anti-Viruses:` block). Family
attribution is provisional pending a published threat-intel mapping for this layout.

### Tiếng Việt

CSEmojiCountStealer là định danh do CyStack đặt cho một bảng điều khiển `Information.txt` được chia thành bốn phần `- IP Info -` / `- PC Info -` / `- Other Info -` / `- Log Info -` với tiêu đề dạng gạch ngang-khoảng trắng-tên-khoảng trắng-gạch ngang. Phần Log Info chứa một placeholder `Build:_____` và một dòng đếm số lượng cho mỗi loại dấu vết, sử dụng biểu tượng cảm xúc ✅ (đã thu thập được dữ liệu) hoặc ❌ (danh mục trống) để đánh dấu. Tám danh mục đếm được theo dõi gồm: `Passwords:`, `Cookies:`, `Wallets:`, `Files:`, `Credit Cards:`, `Servers FTP/SSH:`, `Discord Tokens:`, `Others:`. Được ghi nhận bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` trong các thư mục nạn nhân `[<CC>]<IP>/Information.txt`.

Phần thân chứa các tên trường `FileLocation:` và `Current Language:` trùng khớp với chuẩn Redline, nhưng cấu trúc phần bao quanh (tiêu đề dạng gạch ngang-khoảng trắng, chỉ báo đếm bằng biểu tượng cảm xúc, placeholder `Build:_____`) lại không khớp với chuẩn Redline (không có lỗi chính tả `Operation System:`, không có khối `Hardwares:`, không có khối `Anti-Viruses:`). Việc quy kết họ mã độc vẫn ở mức tạm thời, chờ một ánh xạ tình báo mối đe dọa đã công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Dash-section emoji-count Information.txt panel`, `4-section ✅/❌ checkmark stealer`
- Variants observed: **1**
- CyStack observations represented: **119**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials | Thông tin xác thực được lưu trong trình duyệt |
| Browser cookies and session tokens | Cookie trình duyệt và token phiên đăng nhập |
| Cryptocurrency wallets | Ví tiền điện tử |
| Grabbed files | Tệp bị thu thập |
| Credit cards | Thẻ tín dụng |
| FTP and SSH server credentials | Thông tin xác thực máy chủ FTP và SSH |
| Discord tokens | Token Discord |
| Per-victim IP / country / city / ISP geolocation | Thông tin định vị địa lý theo từng nạn nhân (IP / quốc gia / thành phố / nhà cung cấp dịch vụ Internet) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three section-header substrings
(`- IP Info -`, `- PC Info -`, `- Log Info -`) plus at
least one emoji count indicator (U+2705 ✅ or U+274C ❌).
The three-section trio is unique across this catalog, and
the emoji confirmation rejects unrelated text that uses
the dash-delimited captions for prose section markers.
During triage, treat the family attribution as unknown:
the `FileLocation:` and `Current Language:` Redline-canonical field names suggest Redline lineage but the
overall body shape does not match Redline canonical.

### Tiếng Việt

Việc nhận diện dấu vết đòi hỏi ba chuỗi con trong tiêu đề phần (`- IP Info -`, `- PC Info -`, `- Log Info -`) cộng với ít nhất một chỉ báo đếm bằng biểu tượng cảm xúc (U+2705 ✅ hoặc U+274C ❌). Bộ ba phần này là duy nhất trong toàn bộ danh mục, và việc xác nhận bằng biểu tượng cảm xúc giúp loại trừ các văn bản không liên quan sử dụng tiêu đề dạng gạch ngang làm dấu phân đoạn văn xuôi thông thường. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: các tên trường `FileLocation:` và `Current Language:` trùng chuẩn Redline cho thấy khả năng có nguồn gốc từ Redline, nhưng cấu trúc dữ liệu tổng thể của phần thân lại không khớp với chuẩn Redline.

## Observed log variants

### `v_74aa5cc181db85383521d875e06d07c2`

- Format ID: `cs-emoji-count-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **119**
- Representative sample: [open sample](samples/v_74aa5cc181db85383521d875e06d07c2/sample.txt)
- Sample SHA-256: `52b51535eda98f0e3714e37c99a9fb70d530a76a007280af9f45f223f2aab0ed`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `- IP Info -`, `- Log Info -`, `- PC Info -`
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

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
