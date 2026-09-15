# CSAppProfileStealer

## Overview / Tổng quan

### English

CSAppProfileStealer is a CyStack-coined identifier for an
orphan `All_Passwords.txt` cred-file shape distributed inside
`!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` aggregator
packs in `[<CC>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders
where the panel does not ship a companion system-info file.
Each saved credential is rendered as a 4-line `URL: / Username: / Password: / Application: <Browser> [Profile: <name>]` block, with records separated by a 80-character
U+2501 `━` HEAVY HORIZONTAL rule line.

The `Application:` line annotates the source browser and
profile in a bracketed form (e.g. `Application: Chrome [Profile: Default]`, `Application: Edge [Profile: Default]`).
A public stealer-log format grammar attests a sibling 4-line
shape and notes that `URL/Username/Password/Application` is
Redline-native, but no two independent public sources publish
a sample log showing this exact `[Profile: <name>]` bracket
annotation paired with U+2501 separators. Family attribution
is provisional pending a published threat-intel mapping for
this layout.

### Tiếng Việt

CSAppProfileStealer là một định danh do CyStack đặt tên cho một cấu trúc dữ liệu tệp thông tin xác thực `All_Passwords.txt` độc lập, được phát tán bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` tại các thư mục nạn nhân `[<CC>]@BRADLOGS (BRADMAX) (<NN>)/`, nơi bảng điều khiển không đi kèm tệp thông tin hệ thống. Mỗi thông tin xác thực đã lưu được hiển thị dưới dạng một khối `URL: / Username: / Password: / Application: <Browser> [Profile: <name>]` 4 dòng, các bản ghi được phân tách bởi một dòng phân cách gồm 80 ký tự U+2501 `━` HEAVY HORIZONTAL.

Dòng `Application:` ghi chú trình duyệt nguồn và hồ sơ theo dạng có dấu ngoặc vuông (ví dụ: `Application: Chrome [Profile: Default]`, `Application: Edge [Profile: Default]`). Một bộ quy tắc ngữ pháp định dạng nhật ký mã độc đánh cắp thông tin công khai xác nhận một cấu trúc dữ liệu 4 dòng liên quan và ghi nhận rằng `URL/Username/Password/Application` là đặc trưng riêng của Redline, nhưng không có hai nguồn công khai độc lập nào công bố một mẫu nhật ký cho thấy chính xác chú thích ngoặc vuông `[Profile: <name>]` này kết hợp với dấu phân cách U+2501. Việc quy kết họ mã độc là tạm thời, chờ có ánh xạ tình báo mối đe dọa đã công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX All_Passwords.txt with [Profile:] bracket annotation`, `U+2501-separated Application-Profile cred block`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (URL, username, password) | Thông tin xác thực được trình duyệt lưu (URL, tên người dùng, mật khẩu) |
| Source browser identity (Chrome, Edge, Firefox, Brave, Opera) | Danh tính trình duyệt nguồn (Chrome, Edge, Firefox, Brave, Opera) |
| Browser profile name (`Default`, named profiles) | Tên hồ sơ trình duyệt (`Default`, các hồ sơ đặt tên) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires 3+ consecutive 4-line `URL: / Username: / Password: / Application: <Browser> [Profile: <name>]` blocks.
The `[Profile:` bracket-annotation substring on the
`Application:` line is the disambiguating signal: Redline's
native shape (per a public format grammar) uses an
`Application: Google_[Chrome]_Default` underscore-and-bracket
notation rather than the explicit `[Profile: <name>]`
annotation seen here. Empty `Username:` / `Password:` lines
are tolerated (panel emits them for entries where the browser
stored only one half of the credential pair). During triage,
treat the family attribution as unknown: the underlying
stealer that produces the cred dump has not been mapped to
this exact bracketed-profile layout in any public reporting.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu 3 khối `URL: / Username: / Password: / Application: <Browser> [Profile: <name>]` 4 dòng liên tiếp trở lên. Chuỗi con chú thích ngoặc vuông `[Profile:` trên dòng `Application:` là tín hiệu phân biệt: cấu trúc dữ liệu gốc của Redline (theo một bộ quy tắc ngữ pháp định dạng công khai) sử dụng ký hiệu gạch dưới và ngoặc vuông `Application: Google_[Chrome]_Default` thay vì chú thích `[Profile: <name>]` rõ ràng như thấy ở đây. Các dòng `Username:` / `Password:` trống được chấp nhận (bảng điều khiển tạo ra chúng cho các mục mà trình duyệt chỉ lưu một nửa cặp thông tin xác thực). Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: mã độc đánh cắp thông tin cơ bản tạo ra bản kết xuất thông tin xác thực chưa được ánh xạ với chính xác bố cục hồ sơ trong ngoặc vuông này trong bất kỳ báo cáo công khai nào.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Redline](../redline/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
