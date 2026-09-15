# CSLoginsPathStealer

## Overview / Tổng quan

### English

CSLoginsPathStealer is a CyStack-coined identifier for a
4-line `URL/Username/Password/Application` cred-file shape
where the `Application:` line carries a
`Browser/Logins/<Browser>_<Profile>[<hex>].txt` source-file
path. Records are separated by `===============` (15-equals)
rule lines. Distributed inside `!! 2025 NOV.part001.rar`
`@BRADLOGS / BRADMAX` aggregator packs at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/All_Passwords.txt` victim folders that ship
no companion system-info file.

The `Application: Browser/Logins/<Browser>_<Profile>[<hex>] .txt` path notation is the disambiguating signal. The
`<Browser>_<Profile>` slug matches Lumma's per-profile
cred-file naming convention (`Chrome_Default[<hex>].txt`,
`Edge_Default[<hex>].txt`), and the `[<hex>]` suffix is a
per-profile random hash that the panel template appends
(likely a panel-side cache or upload identifier). Family
attribution is provisional pending a published threat-intel
mapping for this layout. The closest documented relative is
Lumma Stealer, which public analyses show writing
per-browser-profile cred files with the same
`<Browser>_<Profile>[<hex>]` naming convention, but the
BRADMAX redistribution wraps the data into
`URL/Username/Password/Application` blocks rather than Lumma's
canonical `SOFT/URL/USER/PASS` 4-line shape.

### Tiếng Việt

CSLoginsPathStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu tệp thông tin xác thực (cred-file) 4 dòng `URL/Username/Password/Application`, trong đó dòng `Application:` chứa đường dẫn tệp nguồn `Browser/Logins/<Browser>_<Profile>[<hex>].txt`. Các bản ghi được phân tách bởi các dòng quy tắc `===============` (15 dấu bằng). Được phân phối bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` tại các thư mục nạn nhân `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/All_Passwords.txt` không kèm theo tệp thông tin hệ thống đi cùng.

Ký hiệu đường dẫn `Application: Browser/Logins/<Browser>_<Profile>[<hex>] .txt` là tín hiệu giúp phân biệt. Phần định danh `<Browser>_<Profile>` khớp với quy ước đặt tên tệp thông tin xác thực theo từng hồ sơ (profile) của Lumma (`Chrome_Default[<hex>].txt`, `Edge_Default[<hex>].txt`), và hậu tố `[<hex>]` là một chuỗi băm ngẫu nhiên theo từng hồ sơ do mẫu (template) của panel gắn thêm (có khả năng là bộ nhớ đệm phía panel hoặc mã định danh tải lên). Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có công bố về mối liên hệ tình báo mối đe dọa (threat-intel) cho cấu trúc dữ liệu này. Đối tượng gần nhất đã được ghi nhận là Lumma Stealer, vốn được các phân tích công khai cho thấy ghi các tệp thông tin xác thực theo từng hồ sơ trình duyệt (per-browser-profile) với cùng quy ước đặt tên `<Browser>_<Profile>[<hex>]`, tuy nhiên việc phân phối lại của BRADMAX đóng gói dữ liệu thành các khối `URL/Username/Password/Application` thay vì cấu trúc dữ liệu 4 dòng chuẩn `SOFT/URL/USER/PASS` của Lumma.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX All_Passwords.txt with Browser/Logins/ path`, `4-line URL/Username/Password/Application logins-path block`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (URL, username, password) | Thông tin xác thực được trình duyệt lưu (URL, tên đăng nhập, mật khẩu) |
| Source browser per-profile file path | Đường dẫn tệp theo từng hồ sơ trình duyệt nguồn |
| Browser identity and profile slug from the source path | Định danh trình duyệt và mã hồ sơ (profile slug) từ đường dẫn nguồn |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires 3+ consecutive 4-line blocks matching
`URL: / Username: / Password: / Application: Browser/Logins/`.
The `Application: Browser/Logins/` prefix is the
disambiguator: `CSAppProfileStealer` requires the
`Application: <Browser> [Profile:` bracket annotation instead.
During triage, treat the family attribution as unknown: the
per-profile `<Browser>_<Profile>[<hex>]` naming convention
overlaps with Lumma, but the surrounding 4-line block shape
does not match Lumma canonical `SOFT/URL/USER/PASS` and no
public source confirms the mapping.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu 3 khối 4 dòng liên tiếp trở lên khớp với `URL: / Username: / Password: / Application: Browser/Logins/`. Tiền tố `Application: Browser/Logins/` là yếu tố phân biệt: `CSAppProfileStealer` yêu cầu chú thích trong ngoặc vuông `Application: <Browser> [Profile:` thay thế. Trong quá trình phân loại (triage), cần xem việc quy kết họ mã độc là chưa xác định: quy ước đặt tên theo từng hồ sơ `<Browser>_<Profile>[<hex>]` trùng khớp với Lumma, nhưng cấu trúc dữ liệu khối 4 dòng bao quanh không khớp với cấu trúc dữ liệu chuẩn `SOFT/URL/USER/PASS` của Lumma và không có nguồn công khai nào xác nhận mối liên hệ này.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Lumma](../lumma/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSDateCreatedStealer](../cs-date-created-stealer/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
