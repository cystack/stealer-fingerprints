# CSSnatchCloudSigInfoStealer

## Overview / Tổng quan

### English

CSSnatchCloudSigInfoStealer is a CyStack tracking name
for the @SNATCH_CLOUD reseller's space-stripped
`Info.txt` sig-info variant, shipped alongside the
reseller's Windows Redline `UserInformation.txt` and
macOS system_profiler `Information.txt` siblings inside
`<DD.MM> @SNATCH_CLOUD <count>K.part<N>.rar` aggregator
packs at `<CC><32-char-token>_<ISO8601-with-spaces>/ Info.txt` victim folders. The body carries the full
sig-info-canonical field vocabulary (`BuildDate`,
`Configuration`, `ExecutionPath`, `Elevated`,
`ComputerName`, `UserName`, `UserLanguage`, `Netbios`,
`OperationSystem`, `InstallDate`, `SystemDate`,
`TimeZone`, `Antivirus`, `HWID` 32-hex, `Processor`,
`ProcessorThreads`, `ProcessorCores`, `GraphicsCard`
section with indented GPU model, `InstalledRAM`,
`DisplayResolution`, `IPAddress`, `Time:<DD.MM.YYYYHH: MM:SS>(sig:UNIX.HEX)`, `Country`, `User`), with every
inter-word space inside keys removed by the reseller
(`Build Date:` → `BuildDate:`, `Processor Threads:` →
`ProcessorThreads:`, `Installed RAM:` →
`InstalledRAM:`, `IP Address:` → `IPAddress:`) and
inter-token spaces inside values collapsed
(`Jan 14 2026` → `Jan142026`, `19.10.2024 01:09:10` →
`19.10.202401:09:10`).

Family attribution preserves the CyStack-coined
sig-info family at low confidence: the underlying panel
builder has no curated-CTI mapping. The
`(sig:UNIX.HEX)` watermark on the `Time:` footer line
is documented as a Lumma-family artifact per
Cloudflare Cloudforce One, but the bare Key:Value field
set with Redline-style verbose naming does not match
Lumma's canonical dash-prefixed layout; attribution
stays low pending a curated mapping. HEROIC Threat
Intelligence documents @SNATCH_CLOUD as a dedicated
Telegram reseller releasing 18,561-record stealer-log
breach dumps, which the panel-brand overlay reflects.

### Tiếng Việt

CSSnatchCloudSigInfoStealer là tên theo dõi của CyStack dành cho biến thể sig-info bị loại bỏ khoảng trắng của đối tượng bán lại @SNATCH_CLOUD, `Info.txt`, được phân phối cùng với các biến thể liên quan Windows Redline `UserInformation.txt` và macOS system_profiler `Information.txt` của cùng đối tượng bán lại, nằm trong các gói tổng hợp `<DD.MM> @SNATCH_CLOUD <count>K.part<N>.rar` tại các thư mục nạn nhân `<CC><32-char-token>_<ISO8601-with-spaces>/ Info.txt`. Phần thân chứa đầy đủ bộ từ vựng trường dữ liệu chuẩn theo sig-info (`BuildDate`, `Configuration`, `ExecutionPath`, `Elevated`, `ComputerName`, `UserName`, `UserLanguage`, `Netbios`, `OperationSystem`, `InstallDate`, `SystemDate`, `TimeZone`, `Antivirus`, `HWID` dạng 32 ký tự hex, `Processor`, `ProcessorThreads`, `ProcessorCores`, phần `GraphicsCard` với dòng mẫu GPU được thụt lề, `InstalledRAM`, `DisplayResolution`, `IPAddress`, `Time:<DD.MM.YYYYHH: MM:SS>(sig:UNIX.HEX)`, `Country`, `User`), với mọi khoảng trắng giữa các từ trong tên trường (key) bị đối tượng bán lại loại bỏ (`Build Date:` → `BuildDate:`, `Processor Threads:` → `ProcessorThreads:`, `Installed RAM:` → `InstalledRAM:`, `IP Address:` → `IPAddress:`) và các khoảng trắng giữa các token trong giá trị (value) bị thu gọn (`Jan 14 2026` → `Jan142026`, `19.10.2024 01:09:10` → `19.10.202401:09:10`).

Việc quy kết họ mã độc vẫn giữ theo họ sig-info do CyStack đặt tên, với độ tin cậy thấp: trình xây dựng panel (panel builder) nền tảng chưa có bản đồ ánh xạ theo CTI đã được kiểm chứng. Watermark `(sig:UNIX.HEX)` trên dòng footer `Time:` được Cloudflare Cloudforce One ghi nhận là dấu vết thuộc họ Lumma, nhưng bộ trường Key:Value trần với cách đặt tên dài theo kiểu Redline không khớp với bố cục chuẩn có dấu gạch ngang ở đầu của Lumma; do đó việc quy kết vẫn ở mức thấp cho đến khi có bản đồ ánh xạ được kiểm chứng. HEROIC Threat Intelligence ghi nhận @SNATCH_CLOUD là một đối tượng bán lại chuyên biệt trên Telegram, phát hành các bản dump dữ liệu rò rỉ từ log mã độc đánh cắp thông tin gồm 18.561 bản ghi, điều này phản ánh qua lớp thương hiệu panel được phủ lên trên.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `@SNATCH_CLOUD`, `SNATCH CLOUD`, `sig-info space-stripped`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and session cookies | Thông tin xác thực đã lưu trong trình duyệt và cookie phiên làm việc |
| Host identity and operating-system metadata | Thông tin nhận dạng máy và metadata hệ điều hành |
| System hardware (CPU, GPU, RAM, display resolution) | Phần cứng hệ thống (CPU, GPU, RAM, độ phân giải màn hình) |
| Antivirus product inventory | Danh sách sản phẩm diệt virus đã cài đặt |
| Panel-side (sig:UNIX.HEX) distribution watermark | Watermark phân phối phía panel (sig:UNIX.HEX) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four space-stripped line-anchored
keys together - `BuildDate:` + `ProcessorThreads:` +
`ProcessorCores:` + `InstalledRAM:` - all with the
reseller space-stripped grammar. No other registered
parser emits these exact no-space key spellings; the
canonical sig-info parser requires inter-word spaces
(`Build Date:` / `Processor Threads:` /
`Processor Cores:` / `Installed RAM:`) and declines the
stripped form.

### Tiếng Việt

Việc tạo dấu hiệu nhận diện (fingerprint) yêu cầu kết hợp bốn tên trường (key) bị loại bỏ khoảng trắng, được neo theo dòng - `BuildDate:` + `ProcessorThreads:` + `ProcessorCores:` + `InstalledRAM:` - tất cả theo đúng cú pháp bị loại bỏ khoảng trắng của đối tượng bán lại. Không có bộ phân tích (parser) nào khác đã được đăng ký tạo dữ liệu đầu ra với đúng cách viết tên trường không có khoảng trắng này; bộ phân tích sig-info chuẩn yêu cầu có khoảng trắng giữa các từ (`Build Date:` / `Processor Threads:` / `Processor Cores:` / `Installed RAM:`) và sẽ từ chối xử lý dạng bị loại bỏ khoảng trắng này.

## Observed log variants

### `v_41e2bbe67052aeb1196d52776bd5ac2b`

- Format ID: `cs-snatch-cloud-sig-info-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `@SNATCH_CLOUD`
- Distribution channel: `@SNATCH_CLOUD`
- Attribution confidence: **low**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_41e2bbe67052aeb1196d52776bd5ac2b/Info.txt)
- Sample SHA-256: `d8fef021dccba270da0fbc3a586d3f09cada44cad7f35135cb69d7204349a7b8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Antivirus`, `BuildDate`, `ComputerName`, `Configuration`, `Country`, `DisplayResolution`, `Elevated`, `ExecutionPath`, `GraphicsCard`, `HWID`, `InstallDate`, `InstalledRAM`, `IPAddress`, `Netbios`, `OperationSystem`, `Processor`, `ProcessorCores`, `ProcessorThreads`, `SystemDate`, `Time`, `TimeZone`, `User`, `UserLanguage`, `UserName`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Lumma](../lumma/)

## Related external families

- `csiginfostealer`

## Sources

- <https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/>
- <https://heroic.com/darkhive-breaches/snatch-cloud-stealer-log-18561-logins-exposed/>

Machine-readable record: [family.json](family.json)
