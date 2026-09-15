# CSEmojiInfoStealer

## Overview / Tổng quan

### English

CSEmojiInfoStealer is a CyStack-coined identifier for a
nineteen-line `Information.txt` panel summary where every
visible field carries a leading Unicode emoji glyph, observed
inside `!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` victim folders
(e.g. `1121_CH_<IPv4>_18-10-25/`). The body opens with a
three-line victim header (`🖥️ User:`, `🌐 IP:`, `📋 OS Name:`
carrying Python's `platform.platform()` dash-joined string),
six single-line counts (`🍪 Cookies:`, `🔒 Passwords:`, `📖 History:`, `📚 Bookmarks:`, `📦 Extensions:`, `💳 Cards:`), and
closes with three free-form section blocks (`📁 Other applications:`, `💸 Crypto wallets:`, `📝 Grabbed files:`) that
use the literal placeholders `No wallets found` and `No grabbed files found` when empty.

The `platform.platform()` OS-string format points at a
Python-built grabber, and the emoji-on-every-field convention
plus the `📝 Grabbed files:` section header is the panel's
developer-side quirk. Family attribution is provisional
pending a published threat-intel mapping for this exact field
set. The closest documented relative is PupkinStealer, which
also uses emoji-prefixed fields but ships a different label
set (`🔸 PC:`, `🆔 SID:`, `🔐 Found passwords:`, `📷 Screenshot:`,
`📂 Desktop files:`) and a `Coded by Ardent` watermark not seen
here.

### Tiếng Việt

CSEmojiInfoStealer là định danh do CyStack đặt cho một bảng tóm tắt panel `Information.txt` gồm mười chín dòng, trong đó mọi trường hiển thị đều mang một glyph emoji Unicode ở đầu, được quan sát bên trong các gói tổng hợp kiểu `!! 2025 OCT.part01.rar` nằm trong các thư mục nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` (ví dụ: `1121_CH_<IPv4>_18-10-25/`). Phần nội dung mở đầu bằng phần tiêu đề nạn nhân ba dòng (`🖥️ User:`, `🌐 IP:`, `📋 OS Name:` mang chuỗi nối bằng dấu gạch ngang của `platform.platform()` trong Python), sáu dòng đếm số đơn (`🍪 Cookies:`, `🔒 Passwords:`, `📖 History:`, `📚 Bookmarks:`, `📦 Extensions:`, `💳 Cards:`), và kết thúc bằng ba khối phần tự do (`📁 Other applications:`, `💸 Crypto wallets:`, `📝 Grabbed files:`) sử dụng các placeholder cố định `No wallets found` và `No grabbed files found` khi trống.

Định dạng chuỗi hệ điều hành `platform.platform()` cho thấy đây là mô-đun thu thập tệp được xây dựng bằng Python, và quy ước gắn emoji cho mọi trường cùng với tiêu đề phần `📝 Grabbed files:` là đặc điểm riêng biệt phía đối tượng phát triển của panel này. Việc quy kết họ mã độc vẫn còn tạm thời, chờ có bản đồ tình báo mối đe dọa đã công bố cho đúng tập trường này. Họ mã độc gần nhất được ghi nhận là PupkinStealer, cũng sử dụng các trường có tiền tố emoji nhưng dùng một tập nhãn khác (`🔸 PC:`, `🆔 SID:`, `🔐 Found passwords:`, `📷 Screenshot:`, `📂 Desktop files:`) và có watermark `Coded by Ardent` không xuất hiện ở đây.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator emoji-prefixed panel summary`
- Variants observed: **1**
- CyStack observations represented: **5,414**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, history, bookmarks (counts only) | Thông tin xác thực, cookie, lịch sử duyệt web, dấu trang đã lưu trên trình duyệt (chỉ đếm số lượng) |
| Browser autofill and credit-card data (count flag) | Dữ liệu tự động điền và thẻ tín dụng của trình duyệt (cờ đếm số lượng) |
| Browser extensions (count flag) | Tiện ích mở rộng trình duyệt (cờ đếm số lượng) |
| Other applications of interest (per-victim list) | Các ứng dụng đáng chú ý khác (danh sách theo từng nạn nhân) |
| Crypto wallet extensions and desktop clients (per-victim list) | Tiện ích mở rộng ví tiền mã hóa và ứng dụng desktop (danh sách theo từng nạn nhân) |
| Grabbed user files (per-victim list) | Các tệp người dùng đã bị thu thập (danh sách theo từng nạn nhân) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `📝 Grabbed files:` substring (the
memo-emoji-prefixed section header is the disambiguator -
`Grabbed files` is unusual phrasing not used by
PupkinStealer or the other emoji-prefixed grabbers
surveyed) plus three line-anchored header keys
`🖥️ User:`, `🌐 IP:`, `📋 OS Name:`. The `🖥️` glyph
carries Python's variation selector U+FE0F that must be
preserved in source code. During triage, treat the family
attribution as unknown: the panel summary lacks any
harvested credential bodies, and the underlying stealer
cannot be identified from the summary fields alone.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con `📝 Grabbed files:` (tiêu đề phần có tiền tố emoji ghi chú là yếu tố phân biệt chính - `Grabbed files` là cách diễn đạt khác thường không được PupkinStealer hay các mô-đun thu thập tệp có tiền tố emoji khác đã khảo sát sử dụng) cùng với ba khóa tiêu đề neo theo dòng `🖥️ User:`, `🌐 IP:`, `📋 OS Name:`. Glyph `🖥️` mang bộ chọn biến thể (variation selector) U+FE0F của Python cần được giữ nguyên trong mã nguồn. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: bảng tóm tắt panel không chứa bất kỳ nội dung thông tin xác thực nào đã thu thập được, và không thể xác định mã độc đánh cắp thông tin cụ thể chỉ từ các trường tóm tắt này.

## Observed log variants

### `v_0d792db01a0756f7e24d1c85651bfea1`

- Format ID: `cs-emoji-info-stealer`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **5,414**
- Representative sample: [open sample](samples/v_0d792db01a0756f7e24d1c85651bfea1/sample.txt)
- Sample SHA-256: `00c1d34544696aa93c8919692d5f642d64d15d0456cf894b1ef25537032dadef`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `📝 Grabbed files:`
- Field labels: `🌐 IP`, `📋 OS Name`, `🖥️ User`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSBrowersStealer](../cs-browers-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)

## Related external families

- `pupkinstealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
