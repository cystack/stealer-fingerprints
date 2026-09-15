# CSOneGoStealer

## Overview / Tổng quan

### English

CSOneGoStealer is a CyStack-coined identifier for a flat
bare-key `System.txt` panel emitted by a Go-based stealer
binary. The body opens with `IP:` / `Execute Path:` / `Build Name:` / `User Name:` / `Computer Name:` / `CPU:` / `GPU:`
(repeated per adapter) / `Operation System:` / `Country ISO2:`
/ `Elevated:` / `Screen Resolution:` / `Date:` lines, then a
blank-line gap and a misspelled `Enviromental Variables:`
(sic) section dumping the victim's Win32 environment as
`KEY=VALUE` pairs. The observed `Build Name` value is the
literal `One-Go`, the operator's build / version label
hardcoded into the panel.

The Go-runtime signature is the `Date:` value: Go's default
`time.Time.String()` format with sub-second precision and a
trailing `+0000 UTC` token after the numeric offset
(`2025-06-23 16:49:43.2152587 +0000 UTC`). Python
`datetime.isoformat`, .NET, and Delphi all emit different
shapes, so the trailing `UTC` keyword pins the underlying
binary to a Go build. The misspelled `Enviromental` section
header (missing the first `n`) is a stable panel-side bug
hardcoded in the source.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting,
including the Go-stealer writeups on Skuld, Salat Stealer,
Pentagon Stealer, macOS MetaStealer, and the 2019 Go-stealer
find, does not document a family that emits this exact field
set. Rename if a later report attributes the layout to a known
author.

### Tiếng Việt

CSOneGoStealer là định danh do CyStack đặt cho một bảng điều khiển dạng bare-key phẳng `System.txt` được một tệp nhị phân mã độc đánh cắp thông tin viết bằng Go tạo dữ liệu đầu ra. Phần thân mở đầu bằng các dòng `IP:` / `Execute Path:` / `Build Name:` / `User Name:` / `Computer Name:` / `CPU:` / `GPU:`
(lặp lại theo từng adapter) / `Operation System:` / `Country ISO2:`
/ `Elevated:` / `Screen Resolution:` / `Date:`, sau đó là một khoảng trắng và một phần tiêu đề `Enviromental Variables:` bị viết sai chính tả
(sic) dùng để kết xuất biến môi trường Win32 của nạn nhân dưới dạng các cặp `KEY=VALUE`. Giá trị `Build Name` quan sát được là chuỗi
literal `One-Go`, tức là nhãn build/phiên bản do đối tượng vận hành gán cứng vào bảng điều khiển.

Dấu hiệu đặc trưng của Go runtime nằm ở giá trị `Date:`: đây là định dạng `time.Time.String()` mặc định của Go với độ chính xác dưới giây và có kèm token `+0000 UTC` ở cuối sau phần offset số
(`2025-06-23 16:49:43.2152587 +0000 UTC`). Python
`datetime.isoformat`, .NET và Delphi đều tạo dữ liệu đầu ra với cấu trúc dữ liệu khác nhau, do đó từ khóa `UTC` ở cuối giúp xác định tệp nhị phân gốc là một bản build bằng Go. Tiêu đề phần `Enviromental` bị viết sai chính tả (thiếu ký tự `n` đầu tiên) là một lỗi ổn định phía bảng điều khiển, được gán cứng trong mã nguồn.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có báo cáo tình báo mối đe dọa công khai ánh xạ bố cục này với một họ cụ thể. Các báo cáo công khai hiện có, bao gồm các bài viết về mã độc đánh cắp thông tin viết bằng Go như Skuld, Salat Stealer, Pentagon Stealer, macOS MetaStealer và phát hiện về stealer Go năm 2019, đều không ghi nhận họ mã độc nào tạo dữ liệu đầu ra với đúng tập trường dữ liệu này. Cần đổi tên nếu sau này có báo cáo quy kết bố cục này cho một tác giả đã xác định.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `One-Go build label`, `Enviromental dump panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials | Thông tin xác thực được trình duyệt lưu trữ |
| Browser cookies and session tokens | Cookie trình duyệt và token phiên |
| System hardware and locale fingerprint | Dấu vết cấu hình phần cứng và ngôn ngữ hệ thống |
| Win32 environment variable dump (full PATH, USERPROFILE, TEMP, vendor-specific keys) | Bản kết xuất biến môi trường Win32 (toàn bộ PATH, USERPROFILE, TEMP, các khóa đặc thù của nhà cung cấp) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three line-anchored anchor keys:
mixed-case `Build Name:` (rules out RedlineLikeStealer's
all-caps `BUILD NAME:`), `Country ISO2:` (the Go-idiomatic
ISO 3166-1 alpha-2 field name, unique across this catalog),
and the misspelled `Enviromental Variables:` (rules out
CSEnvVarDumpStealer's correctly-spelled `=== ENVIRONMENT VARIABLES ===` triple-equals header). The Go-runtime `+0000 UTC` timestamp suffix is an additional binary-lineage hint but
is not part of the fingerprint. During triage, treat the
`One-Go` build label as operator-controlled: other builds may
use different labels while keeping the same structural shape,
so the family attribution should remain unknown until a public
writeup ties the layout to a named author.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện cần dựa vào ba khóa neo theo dòng: `Build Name:` viết hoa/thường xen kẽ (loại trừ khả năng là RedlineLikeStealer với khóa `BUILD NAME:` viết hoa toàn bộ), `Country ISO2:` (tên trường theo phong cách Go, dùng chuẩn ISO 3166-1 alpha-2, là duy nhất trong toàn bộ danh mục này), và tiêu đề `Enviromental Variables:` bị viết sai chính tả (loại trừ khả năng là CSEnvVarDumpStealer với tiêu đề ba dấu bằng `=== ENVIRONMENT VARIABLES ===` viết đúng chính tả). Hậu tố thời gian `+0000 UTC` đặc trưng của Go runtime là một manh mối bổ sung về nguồn gốc tệp nhị phân nhưng không nằm trong tập dấu hiệu nhận diện. Trong quá trình phân loại ban đầu, cần coi nhãn build `One-Go` là do đối tượng vận hành kiểm soát: các bản build khác có thể sử dụng nhãn khác nhau trong khi vẫn giữ nguyên cấu trúc dữ liệu, do đó việc quy kết họ mã độc nên được giữ ở trạng thái chưa xác định cho đến khi có báo cáo công khai gắn bố cục này với một tác giả cụ thể.

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

- [CSEnvVarDumpStealer](../cs-env-var-dump-stealer/)
- [CSWmicDumpStealer](../cs-wmic-dump-stealer/)
- [Redline](../redline/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
