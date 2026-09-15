# CSMinimalGeoStealer

## Overview / Tổng quan

### English

CSMinimalGeoStealer is a CyStack-coined identifier for a flat
5-line panel-summary `Information.txt` observed inside `22-23 SEPTEMBER - 20373 LOGS2.part1.rar` Telegram aggregator packs.
The victim folder name is a random uppercase-alphanumeric ID
plus a Python-style timestamp
(`<32-CHAR-ID>_YYYY_MM_DDTHH_MM_SS_micros/`), pointing at a
Python or Go builder that mints the folder from
`datetime.utcnow().isoformat()` with punctuation swapped for
underscores.

The body has exactly five bare `Key: Value` lines:
`Username:`, `IP Address:`, `Country Code:`, `OS Version:`,
`Antivirus:`. No banner, no HWID, no hostname, no hardware
inventory, no build tag, no timestamp inside the body.
Distinguishing key spellings: `IP Address:` (two-word form,
space between IP and Address), `Country Code:` (two-word form
with capital-C `Code`, bare ISO 3166-1 alpha-2 value),
`Antivirus:` (lowercase `v`), and `OS Version:` carrying the
WMI `Win32_OperatingSystem.Caption` prefix (e.g. `Microsoft Windows 11 Pro`).

Family attribution is provisional pending a published
threat-intel mapping for this minimal layout. Public reporting
and the community catalogues do not attest a family emitting
exactly this 5-field shape with the specific key spellings
above. Candidates ruled out include Raven Stealer,
SamsStealer, PupkinStealer, XillenStealer, Braodo, and
BoryptGrab (all documented body shapes are richer or differ in
field-key spelling). Update this tracking profile if a public
writeup later identifies the underlying builder.

### Tiếng Việt

CSMinimalGeoStealer là định danh do CyStack đặt cho một bản tóm tắt panel dạng phẳng gồm 5 dòng `Information.txt` được quan sát bên trong các gói tổng hợp Telegram `22-23 SEPTEMBER - 20373 LOGS2.part1.rar`.
Tên thư mục nạn nhân là một ID chữ-số viết hoa ngẫu nhiên
cộng với dấu thời gian kiểu Python
(`<32-CHAR-ID>_YYYY_MM_DDTHH_MM_SS_micros/`), cho thấy đây là sản phẩm của một
bộ builder viết bằng Python hoặc Go tạo ra thư mục từ
`datetime.utcnow().isoformat()` với các dấu câu được thay bằng
dấu gạch dưới.

Phần nội dung có đúng năm dòng khóa trần `Key: Value`:
`Username:`, `IP Address:`, `Country Code:`, `OS Version:`,
`Antivirus:`. Không có banner, không có HWID, không có tên máy, không có
bảng kê phần cứng, không có build tag, không có dấu thời gian bên trong nội dung.
Các cách viết khóa đặc trưng để phân biệt: `IP Address:` (dạng hai từ,
có khoảng trắng giữa IP và Address), `Country Code:` (dạng hai từ
với chữ C viết hoa `Code`, giá trị ISO 3166-1 alpha-2 trần),
`Antivirus:` (chữ thường `v`), và `OS Version:` mang
tiền tố WMI `Win32_OperatingSystem.Caption` (ví dụ `Microsoft Windows 11 Pro`).

Việc quy kết họ mã độc hiện vẫn là tạm thời, chờ có ánh xạ
tình báo mối đe dọa công khai cho bố cục tối giản này. Các báo cáo công khai
và các danh mục cộng đồng chưa xác nhận có họ mã độc nào tạo ra
chính xác cấu trúc dữ liệu 5 trường này với các cách viết khóa cụ thể
nêu trên. Các ứng viên đã bị loại trừ bao gồm Raven Stealer,
SamsStealer, PupkinStealer, XillenStealer, Braodo, và
BoryptGrab (tất cả các cấu trúc nội dung đã được ghi nhận đều phong phú hơn hoặc
khác về cách viết khóa trường). Cập nhật hồ sơ theo dõi này nếu sau này có
bài viết công khai xác định được builder gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Flat 5-field Information.txt panel-summary`, `Bare Username/IPAddress/CountryCode/OSVersion/Antivirus panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| OS user name (bare token, no bracket or slash suffix) | Tên người dùng hệ điều hành (token trần, không có ngoặc hoặc hậu tố dấu gạch chéo) |
| Public IPv4 address | Địa chỉ IPv4 công khai |
| Country code (ISO 3166-1 alpha-2) | Mã quốc gia (ISO 3166-1 alpha-2) |
| OS caption from WMI `Win32_OperatingSystem.Caption` | Tên hiển thị hệ điều hành lấy từ WMI `Win32_OperatingSystem.Caption` |
| Installed antivirus product list | Danh sách sản phẩm diệt virus đã cài đặt |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires all five bare keys line-anchored
(`Username:`, `IP Address:`, `Country Code:`, `OS Version:`, `Antivirus:`) PLUS absence of every richer-body anchor (`HWID:`, `PC Name:`, `User Name:` two-word
form, `Computer Name:`, `Build:`, `Build ID:`,
`Hostname:`, CamelCase `AntiVirus:`). During triage, the
body carries no cred count, hardware inventory, or
timestamp, so the public record retains victim identity, geo,
OS, and installed AV. The folder-name Python-timestamp
shape (`<ID>_YYYY_MM_DDTHH_MM_SS_micros`) is a useful
secondary signal but is not part of the format
fingerprint (the content fingerprint uses the body only).

### Tiếng Việt

Dấu hiệu nhận diện đòi hỏi cả năm khóa trần đều được neo theo dòng
(`Username:`, `IP Address:`, `Country Code:`, `OS Version:`, `Antivirus:`) CỘNG THÊM việc không có bất kỳ neo nội dung phong phú hơn nào (`HWID:`, `PC Name:`, dạng hai từ
`User Name:`, `Computer Name:`, `Build:`, `Build ID:`,
`Hostname:`, `AntiVirus:` dạng CamelCase). Trong quá trình phân loại sơ bộ,
nội dung không mang số lượng thông tin xác thực, bảng kê phần cứng hay
dấu thời gian, do đó hồ sơ công khai chỉ giữ lại danh tính nạn nhân, vị trí địa lý,
hệ điều hành và phần mềm diệt virus đã cài đặt. Cấu trúc dấu thời gian kiểu Python
trong tên thư mục (`<ID>_YYYY_MM_DDTHH_MM_SS_micros`) là một tín hiệu phụ
hữu ích nhưng không thuộc dấu hiệu nhận diện định dạng
(dấu hiệu nhận diện nội dung chỉ dựa trên phần thân).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |

## Related catalog profiles

- [CSBareUsernameAVStealer](../cs-bare-username-av-stealer/)
- [CSBareVersionStealer](../cs-bare-version-stealer/)
- [Minimal Stealer](../minimal-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
