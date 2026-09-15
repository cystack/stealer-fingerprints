# CSDualArchStealer

## Overview / Tổng quan

### English

CSDualArchStealer is a CyStack-coined identifier for a minimal
6-field `Info.txt` panel with a bare `System Information:`
section header and dual `Process Architecture:` + `OS Architecture:` fields. Observed inside `@BRADMAX 12000 FEB-MARCH.part1.rar` at `@BRADMAX <count> <MONTHS>/[<CC>]@BRADMAX (<N>)/ Info.txt` victim folders (e.g.
`[UN]@BRADMAX (140)/ Info.txt`).

The body ships exactly seven lines: a section-header line
`System Information:` followed by six `Key: Value` fields.
Each field maps directly to a .NET `Environment` class
property: `OS:` (WMI or
`Environment.OSVersion.VersionString`), `Machine Name:`
(`Environment.MachineName`), `User Name:`
(`Environment.UserName`), `Current Directory:`
(`Environment.CurrentDirectory`), `Process Architecture:`
(`Environment.Is64BitProcess` rendered as `x64` / `x86`), `OS Architecture:` (`Environment.Is64BitOperatingSystem` rendered
as `x64` / `x86`). The `Current Directory` value in the
observed sample points at PowerShell as the execution context
(`C:\Windows\system32\WindowsPowerShell\v1.0`), suggesting a
PowerShell-based dropper chain.

Extremely minimal - no hardware inventory, no identity fields
beyond hostname and short-username, no timestamps. The panel
is a small .NET Environment-query snapshot rather than a full
stealer log.

Family attribution is provisional pending a published
threat-intel mapping. Public reporting and community
catalogues do not attest a family emitting exactly this
6-field layout with the dual architecture pair.

### Tiếng Việt

CSDualArchStealer là định danh do CyStack đặt tên cho một panel tối giản gồm 6 trường `Info.txt` với một tiêu đề mục `System Information:` trần và cặp trường kép `Process Architecture:` + `OS Architecture:`. Được quan sát bên trong `@BRADMAX 12000 FEB-MARCH.part1.rar` tại các thư mục nạn nhân `@BRADMAX <count> <MONTHS>/[<CC>]@BRADMAX (<N>)/ Info.txt` (ví dụ: `[UN]@BRADMAX (140)/ Info.txt`).

Phần nội dung chứa đúng bảy dòng: một dòng tiêu đề mục `System Information:` theo sau là sáu trường `Key: Value`. Mỗi trường ánh xạ trực tiếp đến một thuộc tính lớp `Environment` của .NET: `OS:` (WMI hoặc `Environment.OSVersion.VersionString`), `Machine Name:` (`Environment.MachineName`), `User Name:` (`Environment.UserName`), `Current Directory:` (`Environment.CurrentDirectory`), `Process Architecture:` (`Environment.Is64BitProcess` được hiển thị dưới dạng `x64` / `x86`), `OS Architecture:` (`Environment.Is64BitOperatingSystem` được hiển thị dưới dạng `x64` / `x86`). Giá trị `Current Directory` trong mẫu quan sát được trỏ đến PowerShell như bối cảnh thực thi (`C:\Windows\system32\WindowsPowerShell\v1.0`), gợi ý một chuỗi dropper dựa trên PowerShell.

Cực kỳ tối giản - không có thông tin kiểm kê phần cứng, không có trường định danh nào ngoài tên máy và tên đăng nhập rút gọn, không có dấu thời gian. Panel này là một bản chụp truy vấn Environment nhỏ của .NET hơn là một log mã độc đánh cắp thông tin đầy đủ.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố. Các báo cáo công khai và danh mục cộng đồng chưa xác nhận có họ mã độc nào tạo dữ liệu đầu ra đúng bố cục 6 trường này cùng cặp trường kiến trúc kép.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Dual-Architecture .NET Environment Info.txt`, `BRADMAX minimal System Information panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| OS caption (Windows edition) | Tên hệ điều hành (OS caption - phiên bản Windows) |
| Machine name (Environment.MachineName) | Tên máy (Machine name - Environment.MachineName) |
| OS user short-login (Environment.UserName) | Tên đăng nhập rút gọn của người dùng hệ điều hành (Environment.UserName) |
| Current working directory (Environment.CurrentDirectory) | Thư mục làm việc hiện tại (Environment.CurrentDirectory) |
| Process bitness (Environment.Is64BitProcess) | Kiến trúc bit của tiến trình (Process bitness - Environment.Is64BitProcess) |
| OS bitness (Environment.Is64BitOperatingSystem) | Kiến trúc bit của hệ điều hành (OS bitness - Environment.Is64BitOperatingSystem) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires five line-anchored keys:
`System Information:` bare section header AND
`Machine Name:` AND `Current Directory:` AND
`Process Architecture:` AND `OS Architecture:`. The
dual architecture pair with these exact key spellings
is unique across the cataloged formats. During
triage, the `Current Directory` value often carries
the dropper execution context (PowerShell interpreter
directory in the observed sample); pivot to that path
to identify the parent process. The sibling
`CSTop20ProcStealer` also uses .NET
`Environment` class properties but emits them as
`64-bit OS: True` / `64-bit Process: False` boolean
form under different section headers.

### Tiếng Việt

Dấu hiệu nhận diện đòi hỏi năm khóa gắn theo dòng: tiêu đề mục trần `System Information:` VÀ `Machine Name:` VÀ `Current Directory:` VÀ `Process Architecture:` VÀ `OS Architecture:`. Cặp trường kiến trúc kép với chính xác cách viết khóa này là duy nhất trong toàn bộ các định dạng đã được lập danh mục. Trong quá trình phân loại ban đầu, giá trị `Current Directory` thường mang bối cảnh thực thi của dropper (thư mục trình thông dịch PowerShell trong mẫu quan sát được); hãy truy theo đường dẫn đó để xác định tiến trình cha. Dấu vết liên quan `CSTop20ProcStealer` cũng sử dụng các thuộc tính lớp `Environment` của .NET nhưng tạo dữ liệu đầu ra dưới dạng boolean `64-bit OS: True` / `64-bit Process: False` dưới các tiêu đề mục khác nhau.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery | Dò tìm tệp và thư mục |

## Related catalog profiles

- [CSTop20ProcStealer](../cs-top20-proc-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
