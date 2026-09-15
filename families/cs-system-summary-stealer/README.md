# CSSystemSummaryStealer

## Overview / Tổng quan

### English

CSSystemSummaryStealer is a CyStack-coined identifier for a
`System.txt` panel opening with two flush-left identity lines
(`- IP:` and `- Country:`), then a `System Summary:` section
header followed by a 14-field tab-indented dashed-key block
(`- OS:`, `- Architecture:`, `- UserName:`, `- Computer Name:`, `- Local Time:`, `- UTC: <integer>`, `- Language:`, `- Keyboards:`, `- Laptop: TRUE/FALSE`, `- Cores:`, `- Threads:`,
`- RAM:`, `- Display Resolution:` with nested per-monitor
block, `- GPU:` list). Three trailing section headers `Process count:` + `Process List:` + `Installed Apps:` add a process
inventory and an installed-app inventory split into `All Users:` and `Current User:` subsections.

Observed inside `MAY 02 - 8230 LOGS2` aggregator packs at
`[<ISO2>]<IPv4>/System.txt` victim folders, the same
country-IPv4 victim-folder convention used by
CSCookiesSoftStealer. The field set overlaps
an October 2023 Continental Stealer writeup but the exact
panel layout is not documented in public reporting. Family
attribution is provisional pending a public writeup that
confirms the panel format.

### Tiếng Việt

CSSystemSummaryStealer là một định danh do CyStack đặt cho một `System.txt` có panel mở đầu bằng hai dòng định danh căn lề trái (`- IP:` và `- Country:`), sau đó là tiêu đề mục `System Summary:` theo sau là một khối 14 trường thụt lề bằng tab với các khóa có dấu gạch ngang (`- OS:`, `- Architecture:`, `- UserName:`, `- Computer Name:`, `- Local Time:`, `- UTC: <integer>`, `- Language:`, `- Keyboards:`, `- Laptop: TRUE/FALSE`, `- Cores:`, `- Threads:`, `- RAM:`, `- Display Resolution:` với khối lồng nhau theo từng màn hình, danh sách `- GPU:`). Ba tiêu đề mục nằm sau đó `Process count:` + `Process List:` + `Installed Apps:` bổ sung một danh mục tiến trình và một danh mục ứng dụng đã cài đặt được chia thành các phần con `All Users:` và `Current User:`.

Được ghi nhận bên trong các gói tổng hợp `MAY 02 - 8230 LOGS2` tại các thư mục nạn nhân `[<ISO2>]<IPv4>/System.txt`, cùng quy ước đặt tên thư mục nạn nhân theo quốc gia-IPv4 được sử dụng bởi CSCookiesSoftStealer. Tập trường dữ liệu này trùng lặp với một bài viết về Continental Stealer công bố vào tháng 10 năm 2023, nhưng bố cục panel chính xác chưa được ghi nhận trong các báo cáo công khai. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời cho đến khi có một bài viết công khai xác nhận định dạng panel này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials retained in sibling files | Thông tin xác thực đã lưu trong trình duyệt được giữ lại trong các tệp liên quan |
| System fingerprint: hostname, IP, OS, CPU cores / threads, RAM, GPU list, display resolution per monitor | Dấu vân tay hệ thống: tên máy, địa chỉ IP, hệ điều hành, số lõi/luồng CPU, dung lượng RAM, danh sách GPU, độ phân giải màn hình theo từng màn hình |
| Locale: country, language, keyboard locale, UTC offset | Thông tin ngôn ngữ/vùng: quốc gia, ngôn ngữ, bố cục bàn phím theo vùng, độ lệch múi giờ UTC |
| Laptop boolean flag (TRUE / FALSE) | Cờ boolean cho biết máy tính xách tay (TRUE / FALSE) |
| Running process inventory (full process list with count) | Danh mục tiến trình đang chạy (danh sách tiến trình đầy đủ kèm số lượng) |
| Installed application inventory split by HKLM (`All Users:`) and HKCU (`Current User:`) registry hives | Danh mục ứng dụng đã cài đặt được chia theo khóa registry HKLM (`All Users:`) và HKCU (`Current User:`) |

## Detection notes / Ghi chú nhận diện

### English

The three-anchor fingerprint `System Summary:` plus
`- Laptop:` plus `- Keyboards:` is the cleanest panel
signal. The `- UTC: <integer>` bare hour offset (no `+`
sign, no `:00` minutes) is a distinctive serialisation
choice for triage: when this format appears in a log,
expect ALL-CAPS `TRUE` / `FALSE` booleans on other
flag fields too. The `Installed Apps:` split into HKLM
(`All Users:`) and HKCU (`Current User:`) is unusual
across stealer panels; most flatten the list.

### Tiếng Việt

Dấu hiệu ba điểm neo `System Summary:` cùng với `- Laptop:` và `- Keyboards:` là tín hiệu nhận diện panel rõ ràng nhất. Độ lệch giờ dạng số nguyên trần `- UTC: <integer>` (không có dấu `+`, không có phút `:00`) là một lựa chọn tuần tự hóa dữ liệu đặc trưng để phục vụ phân loại: khi định dạng này xuất hiện trong log, cần dự kiến các giá trị boolean `TRUE` / `FALSE` viết hoa toàn bộ cũng xuất hiện ở các trường cờ khác. Việc chia `Installed Apps:` thành HKLM (`All Users:`) và HKCU (`Current User:`) là điều bất thường so với các panel mã độc đánh cắp thông tin khác; hầu hết đều gộp phẳng danh sách này.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSCookiesSoftStealer](../cs-cookies-soft-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSCommonFilesCategoryStealer](../cs-common-files-category-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
