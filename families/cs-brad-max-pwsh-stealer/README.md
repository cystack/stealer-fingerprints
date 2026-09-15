# CSBradMaxPwshStealer

## Overview / Tổng quan

### English

CSBradMaxPwshStealer is a CyStack-coined identifier for a
banner-less `system.txt` panel distributed through the
@BRADMAX Telegram channel. The body opens with a flat `Build: <8-char>` / `IP:` / `Country:` / `MachineGuid:` / `Computer:`
/ `User:` key block, then ships raw PowerShell cmdlet output:
a `Get-WmiObject Win32_Processor | Format-Table Name,NumberOfCores,NumberOfEnabledCore, NumberOfLogicalProcessors` CPU table (with the literal dashed
underline row), an `AV List:` block emitting raw `<Name>. Product State: <DWORD>` Win32_Reg_AV records, host fields
(`OS:`, `Monitors:`, `Resolution(s):`, `AD:`, `GPU:`, `RAM:`,
`System Language:`, `Timezone:`), a `Processes:` section with
`Get-Process | Format-List ProcessId,ParentProcessId,Name,CommandLine,Level` records, and
a `Software:` line-per-package installed-software list.

The custom `Level` Get-Process column is not a native
System.Diagnostics.Process property, which points to a
PowerShell or .NET launcher harness that enriches each process
record with an integrity-level or tree-depth value before
formatting. Family attribution is provisional pending a
published threat-intel mapping for this harness layout; no
public reporting or community catalogue documents this exact
PowerShell-cmdlet-output shape.

### Tiếng Việt

CSBradMaxPwshStealer là định danh do CyStack đặt cho một bảng điều khiển không có banner (`system.txt`) được phát tán qua kênh Telegram @BRADMAX. Phần thân bắt đầu bằng một khối khóa phẳng `Build: <8-char>` / `IP:` / `Country:` / `MachineGuid:` / `Computer:` / `User:`, sau đó xuất trực tiếp dữ liệu đầu ra thô của các cmdlet PowerShell: một bảng CPU `Get-WmiObject Win32_Processor | Format-Table Name,NumberOfCores,NumberOfEnabledCore, NumberOfLogicalProcessors` (kèm dòng gạch ngang phân cách theo đúng nguyên văn), một khối `AV List:` tạo dữ liệu đầu ra thô các bản ghi Win32_Reg_AV `<Name>. Product State: <DWORD>`, các trường thông tin máy (`OS:`, `Monitors:`, `Resolution(s):`, `AD:`, `GPU:`, `RAM:`, `System Language:`, `Timezone:`), một phần `Processes:` với các bản ghi `Get-Process | Format-List ProcessId,ParentProcessId,Name,CommandLine,Level`, và một danh sách phần mềm đã cài đặt theo dạng mỗi dòng một gói `Software:`.

Cột `Level` tùy chỉnh trong Get-Process không phải là thuộc tính gốc của System.Diagnostics.Process, điều này cho thấy có một bộ khung khởi chạy (launcher harness) bằng PowerShell hoặc .NET làm giàu mỗi bản ghi tiến trình bằng một giá trị mức toàn vẹn (integrity-level) hoặc độ sâu cây (tree-depth) trước khi định dạng. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ một ánh xạ thông tin đe dọa được công bố cho cấu trúc bộ khung này; hiện chưa có báo cáo công khai hay danh mục cộng đồng nào ghi nhận chính xác cấu trúc dữ liệu đầu ra cmdlet PowerShell này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX PowerShell-harness system.txt slice`, `BRADMAX Build+MachineGuid+Level-column variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU, GPU, RAM, monitor count, screen resolution, OS version) | Dấu vết nhận dạng phần cứng và hệ điều hành của máy (CPU, GPU, RAM, số lượng màn hình, độ phân giải màn hình, phiên bản hệ điều hành) |
| Network identity (IP address, country, system language, timezone) | Thông tin nhận dạng mạng (địa chỉ IP, quốc gia, ngôn ngữ hệ thống, múi giờ) |
| Account identity (Windows username, computer name, MachineGuid, Active Directory join state) | Thông tin nhận dạng tài khoản (tên người dùng Windows, tên máy tính, MachineGuid, trạng thái gia nhập Active Directory) |
| Installed software inventory (line-per-package) | Danh mục phần mềm đã cài đặt (mỗi dòng một gói) |
| Running-process tree snapshot with parent process IDs and full command lines | Ảnh chụp nhanh cây tiến trình đang chạy kèm ID tiến trình cha và dòng lệnh đầy đủ |
| Resident antivirus product list with Win32_Reg_AV productState DWORD | Danh sách sản phẩm diệt virus thường trú kèm giá trị DWORD productState của Win32_Reg_AV |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both the misspelled
`NumberOfEnabledCore` PowerShell Format-Table column
header AND the line-anchored `Level : 0` custom
Format-List column on the Processes block. The two-anchor
combination is mutually exclusive with every other
BRADMAX-distributed slice (the @BRADMAX_CLOUD slices all
carry the aBradMax Figlet banner; the sibling @BRADMAX
`=== SYSTEM INFO ===` slice uses a triple-equals header).
During triage, treat the underlying stealer family as
unattributable and rely on the channel and panel_brand
metadata to bucket samples for analyst review. The
`MachineGuid` UUID is the registry-resident
`HKLM\SOFTWARE\Microsoft\Cryptography\MachineGuid` value
and is suitable as a cross-victim host pivot when paired
with the same IP / `Computer` triple.

### Tiếng Việt

Việc nhận diện đòi hỏi phải có đồng thời cả tiêu đề cột Format-Table bị viết sai chính tả `NumberOfEnabledCore` của PowerShell VÀ cột Format-List tùy chỉnh `Level : 0` được neo theo dòng trong khối Processes. Sự kết hợp của hai điểm neo này loại trừ lẫn nhau với mọi lát cắt (slice) khác được phát tán bởi BRADMAX (các lát cắt @BRADMAX_CLOUD đều mang banner Figlet aBradMax; còn lát cắt liên quan @BRADMAX `=== SYSTEM INFO ===` sử dụng tiêu đề ba dấu bằng). Trong quá trình phân loại ban đầu (triage), hãy coi họ mã độc đánh cắp thông tin nền tảng là chưa thể quy kết, và dựa vào metadata channel cùng panel_brand để phân nhóm mẫu phục vụ việc rà soát của chuyên viên phân tích. UUID `MachineGuid` chính là giá trị `HKLM\SOFTWARE\Microsoft\Cryptography\MachineGuid` thường trú trong registry, và phù hợp để dùng làm điểm xoay (pivot) liên kết các máy nạn nhân khi kết hợp cùng bộ ba IP / `Computer`.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1059.001](https://attack.mitre.org/techniques/T1059/001/) | PowerShell | PowerShell |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSGeoSysInfoStealer](../cs-geo-sys-info-stealer/)
- [Lumma](../lumma/)
- [DCRat](../dc-rat/)
- [CSBradMaxCloudPCStealer](../cs-brad-max-cloud-pc-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
