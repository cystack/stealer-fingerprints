# CSMinutesFromGmtStealer

## Overview / Tổng quan

### English

CSMinutesFromGmtStealer is a CyStack-coined identifier for
a `System Info.txt` panel whose timezone field is emitted
as `+NNN minutes from GMT` (a signed integer minute
offset with a trailing GMT literal). The format mirrors
the JavaScript `Date.prototype.getTimezoneOffset` semantics,
hinting at a Node.js or Electron-based panel. Cyfirma's
LTX Stealer writeup and Microsoft's Node.js-abuse guidance
both document Node.js-runtime stealers as a growing
category, but no curated CTI vendor documents this exact
panel layout.

Observed inside `MARCH 15 - 3059 LOGS.part01.rar`
aggregator packs at
`[<CC>]<32-hex-lowercase-HWID>/System Info.txt` victim
folders. The filename carries a literal ASCII space; the
folder shape uses lowercase 32-hex HWID with a bracketed
country-code prefix. Body opens with a bare `IP info: <CC> <IPv4>` two-word first-line key that packs the country
code and IPv4 on one line, followed by a bare
`System Information:` section header, tab-indented
`- Key: Value` sub-fields (Locale, Time zone, OS,
Architecture, CPU, RAM, Display size, Display Devices
nested numbered list), and a bare `Installed applications:`
section with tab-indented `<Name> <Version>` per-app
entries. Family attribution is provisional pending a
published threat-intel mapping for this layout.

### Tiếng Việt

CSMinutesFromGmtStealer là định danh do CyStack đặt tên cho một `System Info.txt` panel có trường timezone được tạo dữ liệu đầu ra dưới dạng `+NNN minutes from GMT` (một số nguyên có dấu biểu thị độ lệch phút kèm theo ký tự literal GMT ở cuối). Định dạng này mô phỏng theo ngữ nghĩa của `Date.prototype.getTimezoneOffset` trong JavaScript, cho thấy khả năng đây là một panel dựa trên Node.js hoặc Electron. Bài viết về LTX Stealer của Cyfirma và tài liệu hướng dẫn về việc lạm dụng Node.js của Microsoft đều ghi nhận các mã độc đánh cắp thông tin chạy trên nền Node.js là một nhóm đang gia tăng, nhưng chưa có nhà cung cấp CTI uy tín nào ghi nhận chính xác bố cục panel này.

Được quan sát bên trong các gói tổng hợp (aggregator packs) `MARCH 15 - 3059 LOGS.part01.rar` tại các thư mục nạn nhân `[<CC>]<32-hex-lowercase-HWID>/System Info.txt`. Tên tệp chứa một ký tự khoảng trắng ASCII thực; cấu trúc thư mục sử dụng HWID dạng 32 ký tự hex viết thường với tiền tố mã quốc gia đặt trong dấu ngoặc vuông. Phần thân bắt đầu bằng một dòng khóa đầu tiên trần gồm hai từ `IP info: <CC> <IPv4>` gộp mã quốc gia và địa chỉ IPv4 trên cùng một dòng, tiếp theo là tiêu đề mục trần `System Information:`, các trường con thụt lề bằng tab `- Key: Value` (Locale, Time zone, OS, Architecture, CPU, RAM, Display size, danh sách đánh số lồng nhau Display Devices), và một mục trần `Installed applications:` với các mục ứng dụng thụt lề bằng tab `<Name> <Version>` cho từng ứng dụng. Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có một bản đồ tình báo về mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Installed-software inventory (bare `Installed applications:` block) | Danh mục phần mềm đã cài đặt (khối trần `Installed applications:`) |
| System hardware and locale (`System Information:` block) | Phần cứng hệ thống và ngôn ngữ hệ thống (khối `System Information:`) |
| Geolocation (country code + IPv4 in `IP info:` composite) | Định vị địa lý (mã quốc gia + IPv4 trong cấu trúc dữ liệu tổng hợp `IP info:`) |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: line-anchored `IP info:` key
plus the `minutes from GMT` timezone-suffix literal plus
line-anchored `Installed applications:` bare section
header. The `minutes from GMT` literal is the panel's
unique developer-side quirk: no other family in this
catalog emits timezone as a signed integer minute count
with a `GMT` trailing literal. During triage, the
`Installed applications:` block enumerates the victim's
installed programs with a `<name> <version>` shape and
can be paired with the `IP info:` country + IPv4 pair
for per-victim asset inventory.

### Tiếng Việt

Yếu tố kích hoạt có độ tin cậy cao: khóa `IP info:` được neo theo dòng, kết hợp với ký tự literal hậu tố timezone `minutes from GMT`, cùng với tiêu đề mục trần `Installed applications:` được neo theo dòng. Ký tự literal `minutes from GMT` chính là điểm đặc thù riêng biệt phía nhà phát triển panel: không có họ mã độc nào khác trong danh mục này tạo dữ liệu đầu ra timezone dưới dạng số nguyên có dấu tính theo phút kèm ký tự literal `GMT` ở cuối. Trong quá trình phân tích ban đầu, khối `Installed applications:` liệt kê các chương trình đã cài đặt của nạn nhân theo cấu trúc dữ liệu `<name> <version>` và có thể được kết hợp với cặp mã quốc gia + IPv4 `IP info:` để lập danh mục tài sản theo từng nạn nhân.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- None recorded.

## Sources

- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>
- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://www.cyfirma.com/research/ltx-stealer-analysis-of-a-node-js-based-credential-stealer/>

Machine-readable record: [family.json](family.json)
