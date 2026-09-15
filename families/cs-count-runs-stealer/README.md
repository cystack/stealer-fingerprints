# CSCountRunsStealer

## Overview / Tổng quan

### English

CSCountRunsStealer is a CyStack-coined identifier for an
11-line `Information.txt` panel summary framed by U+2500
heavy box-drawing characters and split into two captioned
sections, `SYSTEM INFORMATION` and `EXTRACTION RESULTS`.
Observed inside `!! 2025 NOV.part001.rar` aggregator packs
in `[<TAG>]<IP>/Information.txt` victim folders (e.g.
`[AK]<IPv4>/Information.txt`), distributed through the
`@BRADLOGS` Telegram aggregator that resells multiple
underlying stealer families.

The SYSTEM INFORMATION block ships five fields: a combined
`Location: City, Country (ISP)` line (consumer-grade IP
geolocation API shape), `Device:` hostname, `OS:` in
`Windows <major>.<minor> (Build <build>)` form, `IP:`, and
a `Time:` value in the JS `toLocaleString` shape
`MM/DD/YYYY, HH:MM:SS (UTC[+-]HH:MM)`. The EXTRACTION
RESULTS block ships five count fields: `Cookies:`,
`Passwords:`, `Facebook:`, `CC with CVC:` (the awkward
`with CVC` phrasing for credit-card-with-CVV), and
`Count Runs:` (an execution counter likely incremented
across repeated runs on the same victim). Family
attribution is provisional pending a published threat-intel mapping for this caption format. The closest
documented relative is Phemedrone, which also writes a
per-victim `Information.txt` summary but uses dashed
section captions (`----- Geolocation Data -----` /
`----- Hardware Info -----`) and a different field set.

### Tiếng Việt

CSCountRunsStealer là định danh do CyStack đặt tên cho một bản tóm tắt panel gồm 11 dòng `Information.txt` được đóng khung bởi các ký tự vẽ khung đậm U+2500 và chia thành hai phần có tiêu đề, `SYSTEM INFORMATION` và `EXTRACTION RESULTS`.

Được quan sát bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` trong các thư mục nạn nhân `[<TAG>]<IP>/Information.txt` (ví dụ `[AK]<IPv4>/Information.txt`), phân phối qua bộ tổng hợp Telegram `@BRADLOGS` chuyên bán lại nhiều họ mã độc đánh cắp thông tin khác nhau.

Khối SYSTEM INFORMATION chứa năm trường: một dòng `Location: City, Country (ISP)` kết hợp (cấu trúc dữ liệu API định vị địa lý IP cấp tiêu dùng), tên máy `Device:`, `OS:` ở dạng `Windows <major>.<minor> (Build <build>)`, `IP:`, và một giá trị `Time:` theo cấu trúc dữ liệu JS `toLocaleString` là `MM/DD/YYYY, HH:MM:SS (UTC[+-]HH:MM)`. Khối EXTRACTION RESULTS chứa năm trường đếm: `Cookies:`, `Passwords:`, `Facebook:`, `CC with CVC:` (cách diễn đạt vụng về `with CVC` dùng cho thẻ tín dụng kèm CVV), và `Count Runs:` (một bộ đếm lần thực thi có khả năng tăng dần qua các lần chạy lặp lại trên cùng một nạn nhân). Việc quy kết họ mã độc hiện vẫn còn tạm thời, chờ có bản đồ tình báo mối đe dọa công khai cho định dạng tiêu đề này. Họ mã độc liên quan gần nhất đã được tài liệu hóa là Phemedrone, cũng ghi ra một bản tóm tắt `Information.txt` theo từng nạn nhân nhưng sử dụng các tiêu đề phần có gạch ngang (`----- Geolocation Data -----` / `----- Hardware Info -----`) và một tập trường khác.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX aggregator box-drawing panel summary`, `!! 2025 NOV.part001 EXTRACTION RESULTS panel`
- Variants observed: **1**
- CyStack observations represented: **97**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser cookies (count flag plus harvested body in sibling files) | Cookie trình duyệt (cờ đếm cùng nội dung thu thập được trong các tệp liên quan) |
| Browser saved credentials (count flag plus body) | Thông tin xác thực đã lưu của trình duyệt (cờ đếm cùng nội dung) |
| Credit cards with CVC (count flag) | Thẻ tín dụng kèm CVC (cờ đếm) |
| Facebook sessions (count flag) | Phiên đăng nhập Facebook (cờ đếm) |
| Host metadata: hostname, OS version with build | Metadata của máy: tên máy, phiên bản hệ điều hành kèm số build |
| Victim public IP plus city / country / ISP enrichment | IP công khai của nạn nhân cùng thông tin làm giàu thành phố / quốc gia / ISP |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `EXTRACTION RESULTS` mid-frame
caption AND the `Count Runs:` field key AND a U+2503 `┃` heavy
vertical bar. The `Count Runs:` field name is unique across
the registry, and the box-drawing frame rejects any free-form
report that happens to mention the two captions. During
triage, treat the family attribution as unknown: the panel
summary is the metadata view of an underlying stealer whose
canonical name has not been mapped to this caption layout in
any public reporting. The `Facebook:` and `CC with CVC:` count
fields suggest the underlying stealer prioritises
social-account session theft alongside browser credential
harvesting.

### Tiếng Việt

Việc lấy dấu vân tay đòi hỏi phải có tiêu đề giữa khung `EXTRACTION RESULTS` VÀ khóa trường `Count Runs:` VÀ một thanh dọc đậm U+2503 `┃`. Tên trường `Count Runs:` là duy nhất trong toàn bộ registry, và khung vẽ ký tự loại bỏ bất kỳ báo cáo dạng tự do nào tình cờ đề cập đến hai tiêu đề này. Trong quá trình phân loại, hãy coi việc quy kết họ mã độc là chưa xác định: bản tóm tắt panel là góc nhìn metadata của một mã độc đánh cắp thông tin bên dưới mà tên gọi chưa được ánh xạ với bố cục tiêu đề này trong bất kỳ báo cáo công khai nào. Các trường đếm `Facebook:` và `CC with CVC:` cho thấy mã độc đánh cắp thông tin bên dưới ưu tiên đánh cắp phiên đăng nhập tài khoản mạng xã hội song song với việc thu thập thông tin xác thực trình duyệt.

## Observed log variants

### `v_e5b07600b730bdb57cd9363fc77e23db`

- Format ID: `cs-count-runs-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **97**
- Representative sample: [open sample](samples/v_e5b07600b730bdb57cd9363fc77e23db/sample.txt)
- Sample SHA-256: `311b49be46062d3264464794a1e7ff623313f365a9656639596a354846eab194`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Count Runs:`, `EXTRACTION RESULTS`
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

- [Phemedrone](../phemedrone/)
- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
