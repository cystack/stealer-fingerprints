# CSStatsSectionStealer

## Overview / Tổng quan

### English

CSStatsSectionStealer is a CyStack-coined identifier for a
two-section `_INFO.txt` panel observed inside `!! 2025 DEC.part01.rar` aggregator packs at `[<CC>]<IPv4>/_INFO.txt`
victim folders. The body opens with `=== SYSTEM INFO ===` ALL
CAPS triple-equals header (note the shorter `INFO` form, not
`INFORMATION`), followed by four flat key-value lines
(`Computer:`, `User:`, `OS:`, `Time:`), a blank-line
separator, then `=== STATS ===` ALL CAPS triple-equals header
followed by three count lines (`Cookies:`, `Passwords:`,
`Credit Cards:`).

The `OS:` value carries `Microsoft Windows NT <major>.<minor>.<build>.<rev>` shape, the verbatim .NET
`Environment.OSVersion.VersionString` output. The `Time:`
value is the naive `yyyy-MM-dd HH:mm:ss` form that
`DateTime.Now.ToString` produces by default in .NET. Together
these point at a .NET-builder runtime.

The dedicated `=== STATS ===` section separated from the
system block by a blank line is the panel's distinctive
developer-side quirk. Most other documented stealer panels
inline harvest counts under a `Browser Data:` or `Main Loot:`
block (CSGADSPanel, CSMainLootStealer) or omit them entirely.
The shorter `=== SYSTEM INFO ===` header rules out
CSEnvVarDumpStealer (which keys on the longer `=== SYSTEM INFORMATION ===` form) and CSAntiSandboxStealer (Title-case
header).

Public reporting and the public stealer-format catalogues do
not document a family that emits this exact two-section panel
layout. Family attribution is provisional pending a published
mapping.

### Tiếng Việt

CSStatsSectionStealer là định danh do CyStack đặt cho một bảng điều khiển (panel) hai phần `_INFO.txt` được quan sát bên trong các gói tổng hợp `!! 2025 DEC.part01.rar` tại các thư mục nạn nhân `[<CC>]<IPv4>/_INFO.txt`. Phần thân mở đầu bằng tiêu đề ba dấu bằng viết HOA toàn bộ `=== SYSTEM INFO ===` (lưu ý dạng ngắn hơn `INFO`, không phải `INFORMATION`), theo sau là bốn dòng khóa-giá trị đơn giản (`Computer:`, `User:`, `OS:`, `Time:`), một dòng trống phân tách, sau đó là tiêu đề ba dấu bằng viết HOA toàn bộ `=== STATS ===` theo sau là ba dòng đếm số lượng (`Cookies:`, `Passwords:`, `Credit Cards:`).

Giá trị `OS:` mang cấu trúc dữ liệu `Microsoft Windows NT <major>.<minor>.<build>.<rev>`, là dữ liệu đầu ra nguyên văn của .NET `Environment.OSVersion.VersionString`. Giá trị `Time:` là dạng `yyyy-MM-dd HH:mm:ss` đơn giản mà `DateTime.Now.ToString` tạo ra theo mặc định trong .NET. Cùng nhau, hai yếu tố này cho thấy runtime được builder bằng .NET tạo ra.

Phần `=== STATS ===` riêng biệt, được tách khỏi khối hệ thống bằng một dòng trống, là đặc điểm khác biệt mang tính đặc thù ở phía nhà phát triển của bảng điều khiển này. Hầu hết các bảng điều khiển mã độc đánh cắp thông tin đã được ghi nhận khác đưa số liệu thu thập được vào chung khối `Browser Data:` hoặc `Main Loot:` (CSGADSPanel, CSMainLootStealer) hoặc bỏ qua hoàn toàn phần này. Tiêu đề ngắn hơn `=== SYSTEM INFO ===` loại trừ khả năng đây là CSEnvVarDumpStealer (vốn dựa trên dạng dài hơn `=== SYSTEM INFORMATION ===`) và CSAntiSandboxStealer (tiêu đề viết hoa chữ cái đầu).

Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin công khai không ghi nhận họ mã độc nào tạo ra chính xác bố cục bảng điều khiển hai phần này. Việc quy kết họ mã độc hiện vẫn chỉ mang tính tạm thời cho đến khi có ánh xạ được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `SYSTEM INFO + STATS panel`, `Two-section _INFO.txt`
- Variants observed: **1**
- CyStack observations represented: **3**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser cookies (`Cookies:` count in STATS section) | Cookie trình duyệt (số lượng `Cookies:` trong phần STATS) |
| Browser-saved credentials (`Passwords:` count) | Thông tin xác thực đã lưu trong trình duyệt (số lượng `Passwords:`) |
| Credit card data (`Credit Cards:` count) | Dữ liệu thẻ tín dụng (số lượng `Credit Cards:`) |
| Victim hostname (`Computer:` field) | Tên máy nạn nhân (trường `Computer:`) |
| Account shortname (`User:` field) | Tên tài khoản viết tắt (trường `User:`) |
| OS version (`Microsoft Windows NT <ver>` form) | Phiên bản hệ điều hành (dạng `Microsoft Windows NT <ver>`) |
| Local log-emit timestamp (`Time:` ISO-shape value) | Dấu thời gian tạo log cục bộ (giá trị dạng ISO `Time:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both `=== SYSTEM INFO ===` (ALL
CAPS, short `INFO` form) AND `=== STATS ===` triple-equals headers. The shorter `SYSTEM INFO` form is the
cleanest disambiguator from CSEnvVarDumpStealer (which
uses the longer `SYSTEM INFORMATION` header). During
triage, the `Computer:` value may carry an operator-side prefix that identifies the build / affiliate (e.g.
`RIVAHACK-8467` in the observed sample); cluster IOCs
by prefix to detect campaign overlap.

### Tiếng Việt

Việc nhận diện dấu hiệu đặc trưng đòi hỏi phải có cả hai tiêu đề ba dấu bằng `=== SYSTEM INFO ===` (viết HOA toàn bộ, dạng ngắn `INFO`) VÀ `=== STATS ===`. Dạng ngắn hơn `SYSTEM INFO` là yếu tố phân biệt rõ ràng nhất với CSEnvVarDumpStealer (vốn dùng tiêu đề dài hơn `SYSTEM INFORMATION`). Trong quá trình điều tra ban đầu, giá trị `Computer:` có thể mang tiền tố do đối tượng vận hành gắn để xác định phiên bản build/đối tác liên kết (ví dụ `RIVAHACK-8467` trong mẫu quan sát được); nên phân cụm các dấu hiệu xâm nhập (IOC) theo tiền tố để phát hiện sự trùng lặp giữa các chiến dịch.

## Observed log variants

### `v_2d9836c148a6f62643de95589335158d`

- Format ID: `cs-stats-section-stealer`
- Observed filenames: `_INFO.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **3**
- Representative sample: [open sample](samples/v_2d9836c148a6f62643de95589335158d/sample.txt)
- Sample SHA-256: `7182c2461e4a3e8d04ed7e31be7453ccfab1e6c5c9c8d40b751975ce654c2449`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== STATS ===`, `=== SYSTEM INFO ===`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |

## Related catalog profiles

- [CSEnvVarDumpStealer](../cs-env-var-dump-stealer/)
- [CSAntiSandboxStealer](../cs-anti-sandbox-stealer/)
- [CSGoRuntimeStealer](../cs-go-runtime-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
