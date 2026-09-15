# CSDashPlusSepStealer

## Overview / Tổng quan

### English

CSDashPlusSepStealer is a CyStack-coined identifier for an
11-stanza `Information.txt` panel summary that the `@BRADLOGS / BRADMAX` aggregator distributes inside `!! 2025 NOV.part001.rar` packs. Per-victim folders follow the
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt` layout.
Every value is written on its own line, padded with blank
lines on both sides, and a `---+---+---+---+---+---+---`
dash-plus rule separates the panel-summary block from a
three-line trailing block of opaque Facebook-Ads-Manager
artefacts.

The panel-summary block carries `country : City-Region-CC`
with a space before the colon, an `ID :` value shaped like a
15-digit Facebook user ID, a bare
`Windows-<major>-<release>-<build>-SP0` line in the Python
`platform.platform()` shape, a `Username:` line, and a
pipe-separated `CK: <n> | Card: <n>` count line. The trailing
block ships three values: a short alpha token, an integer, and
a `T-` prefixed 18-digit number (likely Facebook page
initials, page-likes count, and ad-account ID, though the
schema has no slot for these so they are dropped at parse
time). Family attribution is provisional pending a published
threat-intel mapping for this layout. The closest documented
relatives are NodeStealer and SYS01, both Facebook-targeting
families, but neither publishes a sample log showing this
exact label set or the `---+---+---` rule.

### Tiếng Việt

CSDashPlusSepStealer là định danh do CyStack đặt tên cho một bản tóm tắt panel gồm 11 đoạn `Information.txt` mà bộ tổng hợp `@BRADLOGS / BRADMAX` phân phối bên trong các gói `!! 2025 NOV.part001.rar`. Các thư mục theo từng nạn nhân tuân theo bố cục `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt`.
Mỗi giá trị được ghi trên một dòng riêng, đệm bằng các dòng trống ở cả hai phía, và một quy tắc dấu gạch ngang-cộng `---+---+---+---+---+---+---` phân tách khối tóm tắt panel với một khối cuối gồm ba dòng chứa các dấu vết Facebook-Ads-Manager không rõ ràng.

Khối tóm tắt panel mang `country : City-Region-CC` với một khoảng trắng trước dấu hai chấm, một giá trị `ID :` có cấu trúc dữ liệu giống ID người dùng Facebook 15 chữ số, một dòng `Windows-<major>-<release>-<build>-SP0` trần theo cấu trúc dữ liệu Python `platform.platform()`, một dòng `Username:`, và một dòng đếm `CK: <n> | Card: <n>` phân tách bằng dấu gạch đứng. Khối cuối chứa ba giá trị: một mã token chữ ngắn, một số nguyên, và một số 18 chữ số có tiền tố `T-` (có thể lần lượt là chữ viết tắt trang Facebook, số lượt thích trang, và ID tài khoản quảng cáo, tuy nhiên do lược đồ không có vị trí dành cho các giá trị này nên chúng bị loại bỏ khi phân tích). Việc quy kết họ mã độc vẫn còn tạm thời do chưa có ánh xạ tình báo mối đe dọa nào được công bố cho bố cục này. Các họ có liên quan gần nhất đã được ghi nhận là NodeStealer và SYS01, đều là các họ mã độc nhắm mục tiêu Facebook, nhưng không họ nào công bố mẫu log cho thấy đúng tập nhãn này hoặc quy tắc `---+---+---`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX dash-plus separator panel summary`, `@BRADLOGS Facebook-ID panel summary`
- Variants observed: **1**
- CyStack observations represented: **120**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser cookies (count flag only) | Cookie trình duyệt (chỉ có cờ đếm) |
| Credit cards (count flag only) | Thẻ tín dụng (chỉ có cờ đếm) |
| Facebook user ID | ID người dùng Facebook |
| Facebook Ad account ID (T-prefixed) | ID tài khoản quảng cáo Facebook (tiền tố T) |
| Host OS via Python `platform.platform()` output | Hệ điều hành máy thông qua dữ liệu đầu ra của Python `platform.platform()` |
| Windows username | Tên người dùng Windows |
| Victim country (ISO 3166-1 alpha-2) | Quốc gia nạn nhân (ISO 3166-1 alpha-2) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `---+---+---+---+---+---+---`
dash-plus rule AND `country :` (with space before the colon)
AND `CK:` AND `| Card:`. Four anchors together cannot collide
with any other cataloged format. During triage, treat the
family attribution as unknown: the panel summary is the
metadata view of an underlying stealer whose canonical name
has not been mapped to this layout in any public reporting.
The Facebook user ID plus T-prefixed ad-account ID strongly
suggest a Facebook-business-account targeting family in the
NodeStealer / SYS01 / Album-Stealer lineage, but no public
source confirms the mapping.

### Tiếng Việt

Việc nhận diện đòi hỏi phải có quy tắc dấu gạch ngang-cộng `---+---+---+---+---+---+---` VÀ `country :` (có khoảng trắng trước dấu hai chấm) VÀ `CK:` VÀ `| Card:`. Bốn mốc nhận diện kết hợp lại không thể trùng với bất kỳ định dạng nào khác đã được lưu trong danh mục. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: bản tóm tắt panel là góc nhìn siêu dữ liệu của một mã độc đánh cắp thông tin nền tảng mà tên gọi của nó chưa được ánh xạ với bố cục này trong bất kỳ báo cáo công khai nào. ID người dùng Facebook cùng với ID tài khoản quảng cáo có tiền tố T cho thấy mạnh mẽ đây là một họ mã độc nhắm mục tiêu tài khoản doanh nghiệp Facebook thuộc dòng NodeStealer / SYS01 / Album-Stealer, nhưng không có nguồn công khai nào xác nhận ánh xạ này.

## Observed log variants

### `v_229be1e07e9e623014faf573e5ca36b7`

- Format ID: `cs-dash-plus-sep-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Layout: `rich-summary-tail`
- Historical records represented: **120**
- Representative sample: [open sample](samples/v_229be1e07e9e623014faf573e5ca36b7/sample.txt)
- Sample SHA-256: `a73abf8cf6019727813bc41124b5ddb46d42519fba783916f286eb99aeb0ae42`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `---+---+---+---+---+---+---`, `\| Card:`
- Field labels: `CK`, `country`, `ID`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSFacebookProfileStealer](../cs-facebook-profile-stealer/)
- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSCountRunsStealer](../cs-count-runs-stealer/)

## Related external families

- `nodestealer`
- `sys01-stealer`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
