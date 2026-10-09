# CSSnatchCloudRedlineStealer

## Overview / Tổng quan

### English

CSSnatchCloudRedlineStealer is a CyStack tracking name
for a space-stripped Redline `UserInformation.txt`
distributed by the @SNATCH_CLOUD Telegram reseller under
the operator handle @watercloud_info. Observed inside
`<DD.MM> @SNATCH_CLOUD <count>K.part<N>.rar` aggregator
packs at `<CC><32-char-token>_<ISO8601-with-spaces>/ UserInformation.txt` victim folders. The body carries
the canonical REDLINE ASCII figlet banner and the
official `https://t.me/redline_market_bot` sales-channel
URL - Redline's documented storefront - alongside the
full Redline-canonical field vocabulary (`BuildID`,
`FileLocation`, `UserName`, `Country`, `HWID`,
`CurrentLanguage`, `ScreenSize`, `TimeZone`,
`OperationSystem` Redline-typo, `UAC`,
`ProcessElevation`, `Logdate`, `AvailableKeyboardLayouts`,
`Hardwares:` + `Name:` entries, `Anti-Viruses:`). The
reseller strips every whitespace separator from both
keys (`Build ID:` → `BuildID:`, `Operation System:` →
`OperationSystem:`, `Current Language:` →
`CurrentLanguage:`) and values (`16147.3MB or 16931676160 bytes` collapses to `16147.3MBor 16931676160bytes`); every other presentation detail
matches canonical Redline exactly.

Family attribution is canonical Redline: the body's
official `t.me/redline_market_bot` sales-channel URL
confirms the panel builder as stock Redline, and the
full `BuildID` / `OperationSystem` / `FileLocation` /
`Hardwares:` + `Name: Total of RAM, X MB or Y bytes`
dual-serialization combination is Redline-canonical per
SecurityScorecard's Redline disassembly and Flare's
Redline write-up. HEROIC Threat Intelligence documents
@SNATCH_CLOUD as a dedicated Telegram release vehicle
(an 18,561-record stealer-log breach from the channel is
in the Darkhive catalogue). The panel's own
`BuildID: @<handle>` body header names the operator
(@watercloud_info in observed samples) which the
per-victim IOC emits as the distribution-channel
overlay.

### Tiếng Việt

CSSnatchCloudRedlineStealer là tên theo dõi của CyStack dành cho một bản build Redline `UserInformation.txt` đã bị loại bỏ khoảng trắng, được phân phối bởi đối tượng bán lại qua Telegram @SNATCH_CLOUD dưới tên tài khoản đối tượng vận hành @watercloud_info. Mẫu này được phát hiện trong các gói tổng hợp `<DD.MM> @SNATCH_CLOUD <count>K.part<N>.rar` tại các thư mục nạn nhân `<CC><32-char-token>_<ISO8601-with-spaces>/ UserInformation.txt`. Phần nội dung mang biểu ngữ ASCII figlet chuẩn của REDLINE và URL kênh bán hàng chính thức `https://t.me/redline_market_bot` - kênh bán hàng đã được ghi nhận của Redline - cùng với toàn bộ hệ thống tên trường chuẩn của Redline (`BuildID`, `FileLocation`, `UserName`, `Country`, `HWID`, `CurrentLanguage`, `ScreenSize`, `TimeZone`, `OperationSystem` lỗi chính tả kiểu Redline, `UAC`, `ProcessElevation`, `Logdate`, `AvailableKeyboardLayouts`, `Hardwares:` + các mục `Name:`, `Anti-Viruses:`). Đối tượng bán lại này loại bỏ mọi dấu khoảng trắng phân tách khỏi cả khóa (`Build ID:` → `BuildID:`, `Operation System:` → `OperationSystem:`, `Current Language:` → `CurrentLanguage:`) và giá trị (`16147.3MB or 16931676160 bytes` thu gọn thành `16147.3MBor 16931676160bytes`); mọi chi tiết trình bày khác đều khớp chính xác với Redline chuẩn.\n\nViệc quy kết họ mã độc là Redline chuẩn: URL kênh bán hàng chính thức `t.me/redline_market_bot` trong nội dung xác nhận builder của panel là Redline gốc, và toàn bộ tổ hợp tuần tự hóa kép `BuildID` / `OperationSystem` / `FileLocation` / `Hardwares:` + `Name: Total of RAM, X MB or Y bytes` là đặc trưng chuẩn của Redline theo tài liệu phân tích dịch ngược Redline của SecurityScorecard và bài viết phân tích Redline của Flare. HEROIC Threat Intelligence ghi nhận @SNATCH_CLOUD là một kênh phát hành chuyên biệt trên Telegram (một vụ rò rỉ log mã độc đánh cắp thông tin gồm 18.561 bản ghi từ kênh này có trong danh mục Darkhive). Tiêu đề nội dung `BuildID: @<handle>` của chính panel nêu tên đối tượng vận hành (@watercloud_info trong các mẫu đã quan sát), được dấu hiệu nhận biết (IOC) theo từng nạn nhân tạo dữ liệu đầu ra dưới dạng lớp phủ kênh phân phối.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `@SNATCH_CLOUD`, `@watercloud_info`, `SNATCH CLOUD`, `Redline space-stripped`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, and autofill | Thông tin xác thực, cookie và dữ liệu tự động điền được lưu trong trình duyệt |
| Cryptocurrency wallet files and private keys | Tệp ví tiền mã hóa và khóa riêng tư |
| FTP and VPN client credentials | Thông tin xác thực FTP và VPN client |
| System hardware, locale, timezone, and screen inventory | Thông tin phần cứng, ngôn ngữ hệ thống, múi giờ và cấu hình màn hình |
| Antivirus product inventory | Danh sách phần mềm diệt virus đã cài đặt |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three substrings together:
`redline_market_bot` (Redline-official sales-channel
URL in the banner block), `BuildID:` (space-stripped
Redline canonical key - no other registered parser
emits this spelling), and `OperationSystem:`
(space-stripped Redline-typo key - canonical Redline
uses `Operation System:` with the space intact). The
combination is unique across the registry: canonical
Redline requires `Operation System:` with space (and
thereby declines the space-stripped variant), and no
other Redline-derivative fork registered strips every
whitespace separator from the field keys. The
`BuildID: @<handle>` body header carries the reseller
operator handle (@watercloud_info in observed samples)
and is emitted on the per-victim IOC as the dynamic
distribution-channel overlay.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu ba chuỗi con xuất hiện cùng nhau: `redline_market_bot` (URL kênh bán hàng chính thức của Redline trong khối biểu ngữ), `BuildID:` (khóa chuẩn của Redline đã bị loại bỏ khoảng trắng - không có công cụ phân tích đã đăng ký nào khác tạo dữ liệu đầu ra với cách viết này), và `OperationSystem:` (khóa lỗi chính tả kiểu Redline đã bị loại bỏ khoảng trắng - Redline chuẩn sử dụng `Operation System:` với khoảng trắng còn nguyên vẹn). Tổ hợp này là duy nhất trong toàn bộ registry: Redline chuẩn yêu cầu `Operation System:` có khoảng trắng (và do đó không chấp nhận biến thể đã loại bỏ khoảng trắng), và không có biến thể phái sinh nào khác của Redline đã đăng ký loại bỏ toàn bộ dấu khoảng trắng phân tách khỏi các khóa trường. Tiêu đề nội dung `BuildID: @<handle>` mang tên tài khoản đối tượng vận hành của đối tượng bán lại (@watercloud_info trong các mẫu đã quan sát) và được dấu hiệu nhận biết (IOC) theo từng nạn nhân tạo dữ liệu đầu ra dưới dạng lớp phủ kênh phân phối động.

## Observed log variants

### `v_c26dd9b52fb562ce7e27bfd0a7a8cdac`

- Format ID: `cs-snatch-cloud-redline-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `@SNATCH_CLOUD`
- Distribution channel: `@watercloud_info`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_c26dd9b52fb562ce7e27bfd0a7a8cdac/UserInformation.txt)
- Sample SHA-256: `aa046f41af7b75334ef01c203294f5a095207828c7d8a59ca6c47d7e4eca2622`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Anti-Viruses`, `AvailableKeyboardLayouts`, `BuildID`, `Country`, `CurrentLanguage`, `FileLocation`, `Hardwares`, `HWID`, `IP`, `Location`, `Logdate`, `Name`, `OperationSystem`, `ProcessElevation`, `ScreenSize`, `Telegram`, `TimeZone`, `UAC`, `UserName`, `ZipCode`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Redline](../redline/)

## Sources

- <https://flare.io/learn/resources/blog/redline-stealer-malware/>
- <https://heroic.com/darkhive-breaches/snatch-cloud-stealer-log-18561-logins-exposed/>

Machine-readable record: [family.json](family.json)
