# CSTop20ProcStealer

## Overview / Tổng quan

### English

CSTop20ProcStealer is a CyStack-coined identifier for a
seven-section `info.txt` panel observed inside `@BRADMAX 60000 MARCH-APRIL.part01.rar` Telegram aggregator packs at `@BRADMAX <count> <MONTHS>/ [<CC>]UNKNOWN_(<N>)/info.txt` filler-folder
paths. The body ships seven triple-equals-wrapped section
headers in fixed order: `=== SYSTEM INFORMATION ===`, `=== WINDOWS VERSION ===`, `=== HARDWARE INFORMATION ===`, `=== NETWORK INFORMATION ===`, `=== RUNNING PROCESSES (Top 20) ===`, `=== INSTALLED BROWSERS ===`, `=== TIME INFORMATION ===`.

The parenthesised `(Top 20)` qualifier on the RUNNING
PROCESSES section header is the most distinctive marker: no
other cataloged format or documented family emits this exact
literal. The panel then lists at most 20 processes in `<Name> (PID: <int>, Memory: <int> MB)` format ranked by working-set
memory descending.

The field vocabulary maps to .NET `Environment` class
properties: `64-bit OS: True` / `64-bit Process: False`
(`Environment.Is64BitOperatingSystem` /
`Environment.Is64BitProcess`), `Processor Count`
(`Environment.ProcessorCount`), `System Directory`
(`Environment.SystemDirectory`), `User Domain`
(`Environment.UserDomainName`). The `Uptime` value uses the
.NET `TimeSpan.ToString()` default format (`00:07:37.4530000`,
seven-digit fractional seconds). The `Current Time` value uses
the .NET `DateTime. ToString()` en-US default (`M/D/YYYY h:mm:ss tt`). All of these point at a private .NET stealer
that authored its own panel template rather than forking an
open-source project.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not attest a family emitting this
seven-section triple-equals layout. Candidates ruled out
include Bandit Stealer (Go-based, different output shape),
PupkinStealer (.NET but no free-form info.txt), Aurora Stealer
(JSON wire format), Ailurophile, MeltStealer, ZestyChips.

### Tiếng Việt

CSTop20ProcStealer là định danh do CyStack đặt cho một bảng thông tin (panel) gồm bảy phần `info.txt` được quan sát bên trong các gói tổng hợp Telegram `@BRADMAX 60000 MARCH-APRIL.part01.rar` tại các đường dẫn thư mục đệm `@BRADMAX <count> <MONTHS>/ [<CC>]UNKNOWN_(<N>)/info.txt`. Phần nội dung chứa bảy tiêu đề phần được bọc bằng ba dấu bằng theo thứ tự cố định: `=== SYSTEM INFORMATION ===`, `=== WINDOWS VERSION ===`, `=== HARDWARE INFORMATION ===`, `=== NETWORK INFORMATION ===`, `=== RUNNING PROCESSES (Top 20) ===`, `=== INSTALLED BROWSERS ===`, `=== TIME INFORMATION ===`.

Bổ ngữ `(Top 20)` trong ngoặc đơn ở tiêu đề phần RUNNING PROCESSES là dấu hiệu đặc trưng nhất: không có định dạng nào khác đã được lập danh mục hoặc họ mã độc nào đã được ghi nhận tạo ra chuỗi ký tự chính xác này. Bảng thông tin sau đó liệt kê tối đa 20 tiến trình theo định dạng `<Name> (PID: <int>, Memory: <int> MB)`, xếp hạng theo bộ nhớ working-set giảm dần.

Bộ từ vựng trường dữ liệu ánh xạ tới các thuộc tính của lớp .NET `Environment`: `64-bit OS: True` / `64-bit Process: False` (`Environment.Is64BitOperatingSystem` / `Environment.Is64BitProcess`), `Processor Count` (`Environment.ProcessorCount`), `System Directory` (`Environment.SystemDirectory`), `User Domain` (`Environment.UserDomainName`). Giá trị `Uptime` sử dụng định dạng mặc định của .NET `TimeSpan.ToString()` (`00:07:37.4530000`, phần giây thập phân bảy chữ số). Giá trị `Current Time` sử dụng định dạng mặc định en-US của .NET `DateTime. ToString()` (`M/D/YYYY h:mm:ss tt`). Tất cả các đặc điểm này cho thấy đây là một mã độc đánh cắp thông tin viết bằng .NET, riêng tư, tự xây dựng mẫu bảng thông tin của riêng mình thay vì phân nhánh từ một dự án mã nguồn mở.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời do chưa có công bố tình báo mối đe dọa nào ánh xạ tới bố cục này. Các báo cáo công khai và danh mục cộng đồng không ghi nhận họ mã độc nào tạo ra bố cục bảy phần dùng ba dấu bằng này. Các ứng viên đã bị loại trừ bao gồm Bandit Stealer (viết bằng Go, cấu trúc dữ liệu đầu ra khác), PupkinStealer (.NET nhưng không có info.txt dạng tự do), Aurora Stealer (định dạng dữ liệu trên đường truyền là JSON), Ailurophile, MeltStealer, ZestyChips.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Seven-section triple-equals info.txt panel`, `BRADMAX (Top 20) processes panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Computer name, OS user name, user domain | Tên máy, tên người dùng hệ điều hành, tên miền người dùng |
| OS caption plus Product Name / Version / Build triple | Tiêu đề hệ điều hành cùng bộ ba Product Name / Version / Build |
| 64-bit OS / 64-bit process boolean flags | Các cờ boolean hệ điều hành 64-bit / tiến trình 64-bit |
| CPU with core and thread counts | CPU cùng số lõi và số luồng |
| GPU list | Danh sách GPU |
| Total RAM | Tổng dung lượng RAM |
| LAN IP address, subnet mask, MAC address per adapter | Địa chỉ IP mạng LAN, subnet mask, địa chỉ MAC theo từng bộ điều hợp mạng |
| Top-20 running processes ranked by working-set memory | Top 20 tiến trình đang chạy xếp hạng theo bộ nhớ working-set |
| Installed browser install paths (chrome, msedge) | Đường dẫn cài đặt trình duyệt (chrome, msedge) |
| Current wall-clock time and system uptime | Thời gian hệ thống hiện tại và thời gian hoạt động liên tục của hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored
`=== SYSTEM INFORMATION ===` AND
`=== RUNNING PROCESSES (Top 20) ===`. The
parenthesised `(Top 20)` qualifier is the strongest
single anchor: no other cataloged format or
documented family emits this exact literal. During
triage, treat the sample as weak attribution to a
private .NET stealer. Suspicious process names in
the top-20 list (e.g. 24-char hex-encoded names like
`0f41b0fcb95aed8fa1356bb0.exe`) are useful secondary
signals for pivoting to the underlying dropper. The
`Installed Browsers` section only lists browser paths
without harvesting credentials, so the info.txt panel
is a reconnaissance summary rather than a credential
dump.

### Tiếng Việt

Việc nhận diện đòi hỏi neo theo dòng `=== SYSTEM INFORMATION ===` VÀ `=== RUNNING PROCESSES (Top 20) ===`. Bổ ngữ `(Top 20)` trong ngoặc đơn là điểm neo đơn lẻ mạnh nhất: không có định dạng nào khác đã được lập danh mục hoặc họ mã độc nào đã được ghi nhận tạo ra chuỗi ký tự chính xác này. Trong quá trình phân loại ban đầu, nên xem mẫu này là quy kết yếu về một mã độc đánh cắp thông tin .NET riêng tư. Các tên tiến trình đáng ngờ trong danh sách top 20 (ví dụ: tên mã hóa hex 24 ký tự như `0f41b0fcb95aed8fa1356bb0.exe`) là tín hiệu phụ hữu ích để lần theo dropper gốc. Phần `Installed Browsers` chỉ liệt kê đường dẫn trình duyệt mà không thu thập thông tin xác thực, do đó bảng thông tin info.txt là một bản tóm tắt trinh sát chứ không phải dữ liệu đánh cắp thông tin xác thực.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- [CSSystemRegionStealer](../cs-system-region-stealer/)
- [CSBase64CpuStealer](../cs-base64-cpu-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
