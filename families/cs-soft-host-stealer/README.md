# CSSoftHostStealer

## Overview / Tổng quan

### English

CSSoftHostStealer is a CyStack-coined identifier for a
title-cased `Soft:` / `Host:` / `Login:` / `Password:` 4-line
credential block observed inside `@BRADMAX` aggregator-pack
victim folders that ship only a `Password.txt` with no
companion system-info file. Folder layout in the wild is
`[<CC>]@BRADMAX (<N>)/Original/... /Password.txt` with a
sibling `Smart Checker/` directory that holds post-exfil
credential-validator output.

Public Telegram-channel catalogues label the BRADMAX channel
as a redistributor of "Redline and Raccoon Data Logs", but the
title-cased 4-line block matches neither family canonically.
Redlines native cred output is `URL: / Username: / Password: / Application:` and Raccoons is a tab-or pipe-separated row
layout; the `Soft:` keyword with title-case capitalisation
does not appear in either. A public stealer-log format writeup
records this exact 4-line shape as one of five common
credential formats but does not attribute it to a specific
malware family.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting does
not document a stealer that emits exactly this title-cased
4-line block. Treat the family attribution as unknown during
triage: the aggregator self-label is misleading because the
body lacks every canonical anchor for both named families.

### Tiếng Việt

CSSoftHostStealer là một định danh do CyStack đặt ra cho một khối thông tin xác thực 4 dòng viết hoa chữ cái đầu dạng `Soft:` / `Host:` / `Login:` / `Password:` được quan sát bên trong các thư mục nạn nhân thuộc gói tổng hợp `@BRADMAX`, vốn chỉ chứa một `Password.txt` mà không có tệp thông tin hệ thống đi kèm. Bố cục thư mục trong thực tế là `[<CC>]@BRADMAX (<N>)/Original/... /Password.txt` kèm theo một thư mục liên quan `Smart Checker/` chứa dữ liệu đầu ra của công cụ xác thực thông tin đăng nhập sau khi đưa dữ liệu ra ngoài.

Các danh mục kênh Telegram công khai gắn nhãn kênh BRADMAX là một đơn vị phát tán lại "Redline and Raccoon Data Logs", nhưng khối 4 dòng viết hoa chữ cái đầu này không khớp một cách chính thống với bất kỳ họ mã độc nào trong hai họ trên. Dữ liệu đầu ra thông tin xác thực gốc của Redline là `URL: / Username: / Password: / Application:`, còn của Raccoon là cấu trúc dữ liệu dạng hàng phân tách bằng tab hoặc dấu gạch đứng; từ khóa `Soft:` với kiểu viết hoa chữ cái đầu không xuất hiện trong cả hai. Một bài viết công khai về định dạng nhật ký của mã độc đánh cắp thông tin ghi nhận chính xác cấu trúc dữ liệu 4 dòng này là một trong năm định dạng thông tin xác thực phổ biến, nhưng không quy kết nó cho một họ mã độc cụ thể nào.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ một tài liệu quy kết tình báo mối đe dọa công khai cho cấu trúc dữ liệu này. Các báo cáo công khai chưa ghi nhận một mã độc đánh cắp thông tin nào tạo dữ liệu đầu ra chính xác là khối 4 dòng viết hoa chữ cái đầu này. Trong quá trình phân loại ban đầu, nên coi việc quy kết họ mã độc là chưa xác định: nhãn tự gắn của gói tổng hợp gây hiểu lầm vì phần nội dung thiếu mọi dấu hiệu neo mang tính chính thống của cả hai họ mã độc nêu trên.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX Password.txt 4-line block`, `BradMax Cloud Soft/Host/Login/Password`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chrome, Edge, Brave, Firefox, Opera, Vivaldi, Yandex) | Thông tin xác thực được lưu trong trình duyệt (Chrome, Edge, Brave, Firefox, Opera, Vivaldi, Yandex) |
| Mobile-app credentials (`android://...` host scheme entries) | Thông tin xác thực ứng dụng di động (các mục lược đồ máy `android://...`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires 3+ consecutive line-anchored
`Soft: ... \n Host: ... \n Login: ... \n Password: ...`
blocks. The title-case capitalisation is the disambiguator
from the Lumma-like uppercase `SOFT:/URL:/USER:/PASS:`
fingerprint and from Redlines native `URL:/Username:/ Password:/Application:` cred shape. Detected only when the
cred file basename contains `password`, so the regex never
has to discriminate against non-cred files. Empty `Login:`
and `Password:` fields are routine and do not invalidate a
block - browser sync entries often store the host with
blank credentials.

### Tiếng Việt

Việc lấy dấu vân tay nhận diện yêu cầu 3 khối `Soft: ... \n Host: ... \n Login: ... \n Password: ...` liên tiếp neo theo dòng trở lên. Kiểu viết hoa chữ cái đầu là yếu tố phân biệt với dấu vân tay chữ hoa `SOFT:/URL:/USER:/PASS:` kiểu Lumma và với cấu trúc dữ liệu thông tin xác thực gốc `URL:/Username:/ Password:/Application:` của Redline. Chỉ được nhận diện khi tên tệp cơ sở của tệp thông tin xác thực chứa `password`, do đó biểu thức chính quy không bao giờ phải phân biệt với các tệp không phải tệp thông tin xác thực. Các trường `Login:` và `Password:` để trống là điều bình thường và không làm vô hiệu một khối - các mục đồng bộ trình duyệt thường lưu máy chủ với thông tin xác thực để trống.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSBareVersionStealer](../cs-bare-version-stealer/)
- [Redline](../redline/)
- [Raccoon](../raccoon/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
