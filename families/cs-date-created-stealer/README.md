# CSDateCreatedStealer

## Overview / Tổng quan

### English

CSDateCreatedStealer is a CyStack-coined identifier for a
5-line `URL` / `Username` / `Password` / `Date Created` /
`Application` cred-file format distributed inside `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` aggregator packs in
`[<TAG>]<IP>/Pass/Pass.txt` victim folders. The per-entry
`Date Created:` creation-timestamp line wedged between
`Password:` and `Application:` is the disambiguating signal:
no other registered cred-file shape includes a per-credential
creation timestamp.

The `Date Created:` value uses a US-locale `M/D/YYYY, H:MM:SS AM/PM` format. The `Application:` line carries a bare
browser-profile name (`Default`, `Profile 2`) with no
bracketed annotation (distinct from `CSAppProfileStealer`,
which uses `Application: Chrome [Profile: Default]`). Records
are separated by a blank line. The panel preserves
Chrome-synced Android-app credential URLs in the
`android://<base64>@com.<pkg>/` form alongside HTTPS desktop
URLs, indicating the underlying stealer reads Chromium's
`Login Data` SQLite directly rather than filtering by URL
scheme. Family attribution is provisional pending a published
threat-intel mapping for this layout. The format resembles the
publicly documented PXA Stealer Vietnamese-targeting cred
dumps (PXA targets Chromium and Android credentials), but no
public write-up shows a sample log with the verbatim 5-line
`Date Created:` layout.

### Tiếng Việt

CSDateCreatedStealer là định danh do CyStack đặt cho một định dạng tệp thông tin xác thực 5 dòng `URL` / `Username` / `Password` / `Date Created` / `Application` được phân phối bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` trong các thư mục nạn nhân `[<TAG>]<IP>/Pass/Pass.txt`. Dòng mốc thời gian tạo (creation-timestamp) `Date Created:` theo từng mục, nằm xen giữa `Password:` và `Application:`, chính là tín hiệu để phân biệt: không có cấu trúc dữ liệu tệp thông tin xác thực nào khác đã được ghi nhận có mốc thời gian tạo theo từng thông tin xác thực.

Giá trị `Date Created:` sử dụng định dạng `M/D/YYYY, H:MM:SS AM/PM` theo chuẩn khu vực Mỹ. Dòng `Application:` mang tên hồ sơ trình duyệt (browser profile) trần, không có chú thích trong ngoặc (`Default`, `Profile 2`), khác biệt so với `CSAppProfileStealer` vốn sử dụng `Application: Chrome [Profile: Default]`. Các bản ghi được phân tách bằng một dòng trống. Bảng điều khiển lưu giữ các URL thông tin xác thực ứng dụng Android được đồng bộ qua Chrome dưới dạng `android://<base64>@com.<pkg>/` song song với các URL desktop dạng HTTPS, cho thấy mã độc đánh cắp thông tin bên dưới đọc trực tiếp cơ sở dữ liệu SQLite `Login Data` của Chromium thay vì lọc theo giao thức URL. Việc quy kết họ mã độc vẫn còn là tạm thời, chờ có báo cáo tình báo về mối đe dọa được công bố để ánh xạ với cấu trúc dữ liệu này. Định dạng này có nét tương đồng với các bản dump thông tin xác thực nhắm vào nạn nhân Việt Nam của PXA Stealer đã được công khai tài liệu hóa (PXA nhắm vào thông tin xác thực Chromium và Android), nhưng chưa có bài viết công khai nào cho thấy một mẫu log với cấu trúc dữ liệu 5 dòng `Date Created:` giống hệt.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Pass.txt with Date Created field`, `5-line URL/Username/Password/Date Created/Application block`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (URL, username, password) | Thông tin xác thực được trình duyệt lưu (URL, tên đăng nhập, mật khẩu) |
| Source browser profile name (`Default` / `Profile <n>`) | Tên hồ sơ trình duyệt nguồn (`Default` / `Profile <n>`) |
| Per-credential creation timestamp from `Login Data` SQLite | Mốc thời gian tạo theo từng thông tin xác thực lấy từ cơ sở dữ liệu SQLite `Login Data` |
| Chrome-synced Android app credentials (`android://` package URLs) | Thông tin xác thực ứng dụng Android được đồng bộ qua Chrome (URL gói `android://`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires 3+ consecutive 5-line blocks matching
`URL: / Username: / Password: / Date Created: / Application:`.
The `Date Created:` line is the disambiguator: it does not
appear in any other registered cred-file shape. During triage,
treat the family attribution as unknown: the underlying
stealer that produces the cred dump has not been mapped to
this exact 5-line layout in any public reporting. The
structural overlap with PXA Stealer targeting (Chromium plus
Android credentials) is suggestive but not confirmed.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu 3 khối 5 dòng liên tiếp trở lên khớp với `URL: / Username: / Password: / Date Created: / Application:`. Dòng `Date Created:` là yếu tố phân biệt: nó không xuất hiện trong bất kỳ cấu trúc dữ liệu tệp thông tin xác thực nào khác đã được ghi nhận. Trong quá trình phân loại ban đầu (triage), hãy xem việc quy kết họ mã độc là chưa xác định: mã độc đánh cắp thông tin tạo ra bản dump thông tin xác thực này chưa được ánh xạ với cấu trúc dữ liệu 5 dòng chính xác này trong bất kỳ báo cáo công khai nào. Sự trùng khớp về cấu trúc với mục tiêu nhắm đến của PXA Stealer (thông tin xác thực Chromium và Android) mang tính gợi ý nhưng chưa được xác nhận.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSAppProfileStealer](../cs-app-profile-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
