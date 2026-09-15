# CSMacBareGeoStealer

## Overview / Tổng quan

### English

CSMacBareGeoStealer is a CyStack-coined identifier for a bare
2-line geo header macOS panel observed inside `!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/UserInformation.txt` victim folders. The body
opens with just `IP: <ipv4>` and `Country: <full English name>` on two lines, then drops into the verbatim
`system_profiler SPSoftwareDataType` / `SPHardwareDataType` /
`SPDisplaysDataType` output. No banner, no `Country Code:`
line, no `Region:` / `City:` / lat / lon / `Zipcode:` /
`Timezone:` fields, no `BuildID:` per-build label, no
`MetaMask Info:` / `Debanks:` / `Userinfo:` section markers,
no self-banner.

The 2-line geo header is the panel's minimal-extraction quirk.
Documented macOS stealers either ship a richer geo block
(Cthulhu's 9-field block, AMOS's 3-field block) or serialise
system info to JSON (Banshee). The flat-key text shape plus
the missing country-code sibling field rules out all four
registered macOS formats (Cthulhu, MacSync, AMOS,
CSMacUserinfo).

Family attribution is provisional. Public reporting and the
public stealer-format catalogues do not document a macOS
family that emits this exact bare 2-line geo +
`system_profiler` shape. Public coverage of macOS stealers
focuses on Cthulhu, AMOS, Banshee, Poseidon / Odyssey, and
DigitStealer, but none of those writeups publish a sample
matching this layout.

### Tiếng Việt

CSMacBareGeoStealer là định danh do CyStack đặt cho một panel macOS chỉ có phần header địa lý 2 dòng đơn giản, được quan sát bên trong các gói tổng hợp `!! 2025 DEC.part01.rar` tại các thư mục nạn nhân `[<CC>]<IPv4>/UserInformation.txt`. Phần thân bắt đầu chỉ với `IP: <ipv4>` và `Country: <full English name>` trên hai dòng, sau đó chuyển sang dữ liệu đầu ra nguyên văn dạng `system_profiler SPSoftwareDataType` / `SPHardwareDataType` / `SPDisplaysDataType`. Không có banner, không có dòng `Country Code:`, không có các trường `Region:` / `City:` / lat / lon / `Zipcode:` / `Timezone:`, không có nhãn `BuildID:` theo từng bản build, không có các dấu phân cách mục `MetaMask Info:` / `Debanks:` / `Userinfo:`, không có self-banner.

Header địa lý 2 dòng là điểm đặc trưng cho thấy panel này chỉ trích xuất tối thiểu. Các mã độc đánh cắp thông tin macOS đã được ghi nhận trước đây hoặc là đóng gói một khối địa lý phong phú hơn (khối 9 trường của Cthulhu, khối 3 trường của AMOS), hoặc tuần tự hóa thông tin hệ thống thành JSON (Banshee). Cấu trúc dữ liệu dạng văn bản khóa-phẳng cùng với việc thiếu trường mã quốc gia liên quan đã loại trừ cả bốn định dạng macOS đã được đăng ký (Cthulhu, MacSync, AMOS, CSMacUserinfo).

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời. Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin công khai không ghi nhận một họ mã độc macOS nào tạo dữ liệu đầu ra đúng theo cấu trúc header địa lý 2 dòng đơn giản kèm `system_profiler` như thế này. Các tài liệu công khai về mã độc đánh cắp thông tin macOS tập trung vào Cthulhu, AMOS, Banshee, Poseidon / Odyssey và DigitStealer, nhưng không có bài viết nào trong số đó công bố một mẫu khớp với bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Bare 2-line geo macOS UserInformation.txt`, `Stripped IP + Country macOS panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (UserInformation.txt itself ships only system info; harvested credentials live in sibling files in the operator's archive) | Thông tin xác thực được trình duyệt lưu lại (bản thân UserInformation.txt chỉ chứa thông tin hệ thống; thông tin xác thực thu thập được nằm trong các tệp liên quan trong kho lưu trữ của đối tượng vận hành) |
| Victim hostname (`Computer Name:` field) | Tên máy nạn nhân (trường `Computer Name:`) |
| Victim username (`User Name:` display + shortname pair) | Tên người dùng nạn nhân (cặp tên hiển thị `User Name:` + shortname) |
| macOS hardware fingerprint (Chip, Hardware UUID, Serial Number, Memory, Resolution) | Dấu vân tay phần cứng macOS (Chip, Hardware UUID, Serial Number, Memory, Resolution) |
| macOS version + kernel version (`System Version:` / `Kernel Version:`) | Phiên bản macOS + phiên bản kernel (`System Version:` / `Kernel Version:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `IP:` AND `Country:`
AND `System Software Overview:` AND `Hardware Overview:`
substrings PLUS absence of `Country Code:` (rules out
Cthulhu and CSMacUserinfo) AND absence of `BuildID:`
(rules out Cthulhu) AND absence of `MetaMask Info:`
(rules out AMOS) AND absence of `MacSync Stealer` (rules
out MacSync). The positive anchors confirm a macOS
`system_profiler` body; the negative anchors defer to the
four richer-geo macOS formats when their banners or
fields are present. During triage, the `Country:` value
carries the full English country name (not the 2-letter
ISO code), so downstream country-based filters need a
name-to-ISO lookup.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu các chuỗi con neo theo dòng `IP:` VÀ `Country:` VÀ `System Software Overview:` VÀ `Hardware Overview:` CỘNG với việc không có `Country Code:` (loại trừ Cthulhu và CSMacUserinfo) VÀ không có `BuildID:` (loại trừ Cthulhu) VÀ không có `MetaMask Info:` (loại trừ AMOS) VÀ không có `MacSync Stealer` (loại trừ MacSync). Các neo dương xác nhận đây là phần thân `system_profiler` của macOS; các neo âm nhường ưu tiên cho bốn định dạng macOS có phần địa lý phong phú hơn khi banner hoặc các trường của chúng xuất hiện. Trong quá trình phân tích ban đầu, giá trị `Country:` chứa tên đầy đủ bằng tiếng Anh của quốc gia (không phải mã ISO 2 chữ cái), vì vậy các bộ lọc theo quốc gia ở bước sau cần có bảng tra cứu tên sang mã ISO.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [MacSync](../mac-sync/)
- [CSMacUserinfoStealer](../cs-mac-userinfo-stealer/)

## Related external families

- `banshee-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
