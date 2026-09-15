# CSBase64CpuStealer

## Overview / Tổng quan

### English

CSBase64CpuStealer is a CyStack-coined identifier for a flat
`UserInformation.txt` panel observed inside `@BRADMAX 21300 APRIL.part1.rar` Telegram aggregator packs at `@BRADMAX <count> <MONTH>/[<CC>]<IPv4>/UserInformation.txt` victim
folders. The body has a compact 13-field flat `Key: Value`
layout with three distinctive quirks: an `L_HWID:` field that
duplicates the `HWID:` value in lowercase (the `L_` prefix
appears to stand for lowercase), a `CPU Name Base64:` field
that base64-serialises the plain `CPU Name:` value above
(verified: the sample string
`SW50ZWwoUikgQ29yZShUTSkgaTctODcwMEsgQ1BVIEAgMy43MEdIeg==`
decodes to `Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz`), and a
paired `Log Date:` plus `Grab Start Date:` header that records
both the harvest start and the panel-render time in the same
`DD MMM YYYY HH:MM UTC[+-]H` shape.

The panel splits the IP geolocation lookup into two adjacent
fields: `IP Location: <country name>, <city name>`
(human-readable form) plus `IP Country Code: <ISO2>` (the
machine-readable alpha-2 code). The OS field uses the
Redline-canonical typo `Operation System:` (sic, `Operation`
rather than `Operating`), and the AV field uses the
Vidar-style plural `AVs:` key. The mix of Redline and Vidar
spelling conventions plus the Russian-adjacent UTC+3 timezone
in the sample points at a Russian-speaking developer who
studied Redline's output format but adopted some Vidar
field-name conventions. The redundant base64 duplicate of the
CPU name may be a panel-side workaround for character-set
corruption on ASCII-hostile channels.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
community catalogues do not attest a family emitting exactly
this 13-field layout with the L_HWID / CPU Name Base64
duplicates. Candidates ruled out: Aurora (different field
spellings, JSON wire format), Redline / Redline-like
(different identity preamble), Vidar (uses AV singular and has
a bracketed section header), StealC v2 (base64 lives in the
wire protocol, not the log file), Torg Grabber, CGrabber,
Marco Stealer, Raven Stealer.

### Tiếng Việt

CSBase64CpuStealer là định danh do CyStack đặt cho một bảng điều khiển phẳng `UserInformation.txt` được quan sát bên trong các gói tổng hợp Telegram `@BRADMAX 21300 APRIL.part1.rar` tại các thư mục nạn nhân `@BRADMAX <count> <MONTH>/[<CC>]<IPv4>/UserInformation.txt`. Phần nội dung có bố cục phẳng `Key: Value` gồm 13 trường gọn nhẹ với ba điểm bất thường đặc trưng: một trường `L_HWID:` lặp lại giá trị `HWID:` dưới dạng chữ thường (tiền tố `L_` dường như biểu thị chữ thường), một trường `CPU Name Base64:` mã hóa base64 giá trị `CPU Name:` dạng văn bản thuần ở trên (đã xác minh: chuỗi mẫu `SW50ZWwoUikgQ29yZShUTSkgaTctODcwMEsgQ1BVIEAgMy43MEdIeg==` giải mã ra `Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz`), và một cặp tiêu đề `Log Date:` cùng `Grab Start Date:` ghi lại cả thời điểm bắt đầu thu thập lẫn thời điểm bảng điều khiển tạo dữ liệu đầu ra theo cùng một cấu trúc dữ liệu `DD MMM YYYY HH:MM UTC[+-]H`.

Bảng điều khiển tách việc tra cứu định vị địa lý theo IP thành hai trường liền kề: `IP Location: <country name>, <city name>` (dạng dễ đọc) cùng `IP Country Code: <ISO2>` (mã alpha-2 dạng máy đọc). Trường OS sử dụng lỗi chính tả mang tính đặc trưng của Redline là `Operation System:` (nguyên văn, `Operation` thay vì `Operating`), còn trường AV sử dụng khóa dạng số nhiều theo phong cách Vidar là `AVs:`. Sự pha trộn giữa quy ước đặt tên trường của Redline và Vidar, cộng với múi giờ UTC+3 gần với Nga trong mẫu, cho thấy khả năng nhà phát triển nói tiếng Nga đã nghiên cứu định dạng đầu ra của Redline nhưng lại áp dụng một số quy ước đặt tên trường của Vidar. Việc lặp lại tên CPU dưới dạng base64 một cách dư thừa có thể là giải pháp phía bảng điều khiển nhằm khắc phục lỗi hỏng bộ ký tự trên các kênh không thân thiện với ASCII.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ có báo cáo tình báo mối đe dọa ánh xạ với bố cục này. Các báo cáo công khai và danh mục cộng đồng chưa ghi nhận họ mã độc nào tạo ra chính xác bố cục 13 trường này với các bản sao L_HWID / CPU Name Base64. Các ứng viên đã bị loại trừ: Aurora (cách đặt tên trường khác, định dạng dữ liệu trên đường truyền là JSON), Redline / dạng giống Redline (phần mở đầu định danh khác), Vidar (dùng AV số ít và có tiêu đề mục trong dấu ngoặc vuông), StealC v2 (base64 nằm trong giao thức truyền dữ liệu, không nằm trong tệp nhật ký), Torg Grabber, CGrabber, Marco Stealer, Raven Stealer.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `L_HWID + CPU Name Base64 duplicate-field panel`, `BRADMAX @BRADMAX-pack UserInformation.txt variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Public IPv4 plus split human-readable and ISO2 geolocation | Địa chỉ IPv4 công khai cùng thông tin định vị địa lý được tách thành dạng dễ đọc và mã ISO2 |
| Machine name, OS user name | Tên máy, tên người dùng hệ điều hành |
| HWID (uppercase and lowercase base16 duplicates) | HWID (bản sao dạng base16 chữ hoa và chữ thường) |
| CPU name (plain and base64-serialised duplicates) | Tên CPU (bản sao dạng văn bản thuần và dạng mã hóa base64) |
| OS caption (with Redline-canonical `Operation` typo) | Tên hiển thị hệ điều hành (kèm lỗi chính tả mang tính đặc trưng của Redline `Operation`) |
| Installed antivirus product list | Danh sách phần mềm diệt virus đã cài đặt |
| Log render time and grab start time | Thời điểm tạo nhật ký và thời điểm bắt đầu thu thập |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires all five line-anchored keys: `L_HWID:`
AND `CPU Name Base64:` AND `Grab Start Date:` AND `IP Country Code:` AND `IP Location:`. The combination is unique across
the registry because no other format emits the lowercase-HWID
duplicate, the base64-serialised CPU name, or the split
human-vs-ISO2 geolocation pair. During triage, treat the
sample as weak attribution to an unnamed private stealer that
borrows Redline's `Operation System:` field name; if a public
writeup later identifies the underlying builder, update this
tracking profile rather than adding a duplicate record. The
`L_HWID` and `CPU Name Base64` duplicates are lossless copies
of the paired plain field, so ignoring them during IOC
composition loses no information.

### Tiếng Việt

Việc xác định dấu vết đặc trưng yêu cầu đủ cả năm khóa được neo theo dòng: `L_HWID:` VÀ `CPU Name Base64:` VÀ `Grab Start Date:` VÀ `IP Country Code:` VÀ `IP Location:`. Tổ hợp này là duy nhất trong toàn bộ danh mục vì không có định dạng nào khác tạo ra bản sao HWID viết thường, tên CPU được mã hóa base64, hoặc cặp trường định vị địa lý tách riêng dạng dễ đọc và ISO2. Trong quá trình phân loại ban đầu, nên xem mẫu này là quy kết yếu cho một mã độc đánh cắp thông tin riêng tư chưa được đặt tên, có mượn tên trường `Operation System:` của Redline; nếu sau này có báo cáo công khai xác định được công cụ tạo mã độc gốc, hãy cập nhật hồ sơ theo dõi này thay vì tạo thêm bản ghi trùng lặp. Các bản sao `L_HWID` và `CPU Name Base64` là bản sao không mất dữ liệu của trường văn bản thuần tương ứng, do đó việc bỏ qua chúng khi tổng hợp IOC sẽ không làm mất thông tin.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- [Redline](../redline/)
- [Vidar](../vidar/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
