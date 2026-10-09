# CSSnatchCloudXFilesStealer

## Overview / Tổng quan

### English

CSSnatchCloudXFilesStealer is a CyStack tracking name
for the @SNATCH_CLOUD reseller's space-stripped XFiles
`Information.txt`, shipped alongside the reseller's
Redline `UserInformation.txt`, macOS `Information.txt`,
and sig-info `Info.txt` siblings inside `<DD.MM> @SNATCH_CLOUD <count>K.part<N>.rar` aggregator packs at
`<CC><32-char-token>_<ISO8601-with-spaces>/ Information.txt` victim folders. The body carries the
full XFiles-canonical field vocabulary (`OperationID`
concatenated UUID identifier, `IP`, `Country:<CC> (<verbose>)` nested-paren country, `OperatingSystem`,
`Username`, `ComputerName`, `HardwareID` 40-hex,
`CPU(Processor)`, `GPU(DisplayDevices)`, `RAM(Memory)`,
`Screens`, `DesktopScreenshotTaken`, `WindowsProcesses [` process list) plus the panel's official support URLs
(`t.me/xfiles_support_official`, `t.me/XFILESDevBlog`)
and the `luciferxfiles@exploit.im` Jabber actor email
documented in Zscaler's X-FILES analysis. Every
whitespace separator inside both keys and values is
stripped by the reseller (`Operation ID:` →
`OperationID:`, `Hardware ID:` → `HardwareID:`,
`CPU (Processor):` → `CPU(Processor):`, `Country: BD (Bangladesh)` → `Country:BD(Bangladesh)`), differing
from canonical XFiles only in that collapse.

Family attribution is canonical XFiles at high
confidence: the body's two XFiles self-identifiers (the
`luciferxfiles@exploit.im` actor email and the
`xfiles_support_official` support channel URL) are
documented by Zscaler and ANY.RUN as XFiles-canonical.
HEROIC Threat Intelligence documents @SNATCH_CLOUD as a
dedicated Telegram reseller releasing 18,561-record
stealer-log breach dumps, which the panel-brand overlay
reflects.

### Tiếng Việt

CSSnatchCloudXFilesStealer là tên theo dõi của CyStack dành cho biến thể XFiles bị loại bỏ khoảng trắng của reseller @SNATCH_CLOUD `Information.txt`, được phát hành kèm các dấu vết liên quan Redline `UserInformation.txt`, macOS `Information.txt` và sig-info `Info.txt` của cùng reseller, nằm trong các gói tổng hợp `<DD.MM> @SNATCH_CLOUD <count>K.part<N>.rar` tại các thư mục nạn nhân `<CC><32-char-token>_<ISO8601-with-spaces>/ Information.txt`. Phần nội dung mang đầy đủ bộ từ vựng trường dữ liệu chuẩn của XFiles (`OperationID` định danh UUID được nối liền, `IP`, `Country:<CC> (<verbose>)` quốc gia dạng dấu ngoặc lồng, `OperatingSystem`, `Username`, `ComputerName`, `HardwareID` 40 ký tự hex, `CPU(Processor)`, `GPU(DisplayDevices)`, `RAM(Memory)`, `Screens`, `DesktopScreenshotTaken`, `WindowsProcesses [` danh sách tiến trình) cùng với các URL hỗ trợ chính thức của panel (`t.me/xfiles_support_official`, `t.me/XFILESDevBlog`) và địa chỉ email Jabber của tác nhân `luciferxfiles@exploit.im` được ghi lại trong phân tích X-FILES của Zscaler. Mọi dấu phân tách khoảng trắng bên trong cả khóa và giá trị đều bị reseller loại bỏ (`Operation ID:` → `OperationID:`, `Hardware ID:` → `HardwareID:`, `CPU (Processor):` → `CPU(Processor):`, `Country: BD (Bangladesh)` → `Country:BD(Bangladesh)`), đây là điểm khác biệt duy nhất so với XFiles chuẩn.\n\nViệc quy kết họ mã độc là XFiles chuẩn với độ tin cậy cao: hai định danh tự nhận diện XFiles trong phần nội dung (email tác nhân `luciferxfiles@exploit.im` và URL kênh hỗ trợ `xfiles_support_official`) được Zscaler và ANY.RUN ghi nhận là chuẩn của XFiles. HEROIC Threat Intelligence ghi lại @SNATCH_CLOUD là một reseller chuyên trên Telegram phát hành các bản rò rỉ dữ liệu từ log mã độc đánh cắp thông tin với 18.561 bản ghi, điều này phản ánh qua lớp thương hiệu panel được phủ lên trên.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [x-files](../x-files/)
- Aliases: `@SNATCH_CLOUD`, `SNATCH CLOUD`, `XFiles space-stripped`, `DeerStealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and session cookies | Thông tin xác thực đã lưu trên trình duyệt và cookie phiên đăng nhập |
| Cryptocurrency wallet files and private keys | Tệp ví tiền điện tử và khóa riêng tư |
| Host identity and operating-system metadata | Thông tin định danh máy và metadata hệ điều hành |
| System hardware (CPU, GPU, RAM, display resolution) | Thông tin phần cứng hệ thống (CPU, GPU, RAM, độ phân giải màn hình) |
| Running-process enumeration | Liệt kê các tiến trình đang chạy |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires `OperationID:` (space-stripped
XFiles-canonical identifier - canonical XFiles uses
`Operation ID:` with space) AND one of two XFiles
self-identifier banner markers: either the
`xfiles_support_official` Telegram support-channel URL
or the `luciferxfiles@exploit.im` Jabber actor email
per Zscaler's X-FILES analysis. The canonical XFiles
parser requires inter-word space on its primary
`Operation ID:` anchor and declines the stripped form.

### Tiếng Việt

Việc nhận diện yêu cầu `OperationID:` (định danh chuẩn của XFiles bị loại bỏ khoảng trắng - XFiles chuẩn sử dụng `Operation ID:` có khoảng trắng) VÀ một trong hai dấu hiệu tự nhận diện của XFiles: URL kênh hỗ trợ Telegram `xfiles_support_official` hoặc email tác nhân Jabber `luciferxfiles@exploit.im` theo phân tích X-FILES của Zscaler. Bộ phân tích (parser) của XFiles chuẩn yêu cầu có khoảng trắng giữa các từ tại điểm neo chính `Operation ID:` và sẽ loại bỏ dạng đã bị cắt khoảng trắng này.

## Observed log variants

### `v_98ef1bd5b7034da1b99ca5749328bd80`

- Format ID: `cs-snatch-cloud-xfiles-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `@SNATCH_CLOUD`
- Distribution channel: `@SNATCH_CLOUD`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_98ef1bd5b7034da1b99ca5749328bd80/Information.txt)
- Sample SHA-256: `7f696ad8fbfbf5040e4f3af27fc12acc17eba14e46f07c63d09fc8188f8b35c9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `ComputerName`, `Country`, `CPU(Processor`, `DesktopScreenshotTaken`, `GPU(DisplayDevices`, `HardwareID`, `IP`, `OperatingSystem`, `OperationID`, `RAM(Memory`, `Screens`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |

## Related catalog profiles

- [XFiles](../x-files/)

## Sources

- <https://www.zscaler.com/blogs/security-research/x-files-stealer-evolution-analysis-and-comparison-study>
- <https://any.run/malware-trends/xfiles/>
- <https://heroic.com/darkhive-breaches/snatch-cloud-stealer-log-18561-logins-exposed/>

Machine-readable record: [family.json](family.json)
