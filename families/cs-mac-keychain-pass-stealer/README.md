# CSMacKeychainPassStealer

## Overview / Tổng quan

### English

CSMacKeychainPassStealer is a CyStack-coined identifier for a
3-line preamble macOS panel observed inside `@Bugatti_Cloud Bugatti_Man` aggregator packs at `@bugatti_cloudnew ch_<NNNN>/Information.txt` victim folders. The body opens with
`IP: <ipv4|ipv6>`, `Username: <shortname>`, and `Password: <cleartext>` on three lines, then drops directly into verbatim
`system_profiler SPSoftwareDataType` / `SPHardwareDataType` /
`SPDisplaysDataType` output. No `Country:` line, no banner, no
`BuildID:` per-build label, no `MetaMask Info:` / `Debanks:` /
`Userinfo:` section markers, no self-banner.

The cleartext `Password:` line is the panel's distinguishing
quirk. Documented macOS stealers that capture the user login
or keychain password (AMOS, Banshee, Cthulhu, MacStealer)
archive it to a sibling keychain dump or zip-pack rather than
expose it as a top-level field in the system-info file.

Family attribution is provisional. Public reporting and the
public stealer-format catalogues do not document a macOS
family that emits exactly this 3-line preamble plus verbatim
`system_profiler` shape with the cleartext keychain password
exposed as a top-level field.

### Tiếng Việt

CSMacKeychainPassStealer là định danh do CyStack đặt cho một panel macOS có phần mở đầu 3 dòng, được quan sát bên trong các gói tổng hợp `@Bugatti_Cloud Bugatti_Man` tại các thư mục nạn nhân `@bugatti_cloudnew ch_<NNNN>/Information.txt`. Phần thân mở đầu bằng `IP: <ipv4|ipv6>`, `Username: <shortname>`, và `Password: <cleartext>` trên ba dòng, sau đó chuyển thẳng sang dữ liệu đầu ra nguyên văn của
`system_profiler SPSoftwareDataType` / `SPHardwareDataType` /
`SPDisplaysDataType`. Không có dòng `Country:`, không có banner, không có nhãn theo từng bản build `BuildID:`, không có các dấu hiệu phân đoạn `MetaMask Info:` / `Debanks:` /
`Userinfo:`, không có self-banner.

Dòng `Password:` ở dạng văn bản thô là đặc điểm nhận dạng riêng biệt của panel này. Các mã độc đánh cắp thông tin macOS đã được ghi nhận có thu thập mật khẩu đăng nhập người dùng hoặc mật khẩu keychain (AMOS, Banshee, Cthulhu, MacStealer) đều lưu trữ nó vào một bản dump keychain liên quan hoặc gói zip, thay vì để lộ nó như một trường cấp cao nhất trong tệp thông tin hệ thống.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời. Các báo cáo công khai và các danh mục định dạng stealer công khai không ghi nhận một họ mã độc macOS nào tạo dữ liệu đầu ra chính xác với phần mở đầu 3 dòng này cộng với cấu trúc dữ liệu `system_profiler` nguyên văn, trong đó mật khẩu keychain ở dạng văn bản thô được để lộ như một trường cấp cao nhất.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `3-line preamble macOS Information.txt with cleartext password`, `IP + Username + Password macOS panel`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| macOS user login / keychain password (captured as cleartext in the `Password:` preamble line) | Mật khẩu đăng nhập người dùng / keychain macOS (được thu thập ở dạng văn bản thô trong dòng mở đầu `Password:`) |
| Victim public IP (IPv4 or IPv6) | Địa chỉ IP công khai của nạn nhân (IPv4 hoặc IPv6) |
| Victim hostname (`Computer Name:` field) | Tên máy của nạn nhân (trường `Computer Name:`) |
| Victim username (`User Name:` display + shortname pair) | Tên người dùng của nạn nhân (cặp tên hiển thị `User Name:` + tên rút gọn) |
| macOS hardware fingerprint (Chip, Hardware UUID, Serial Number, Memory) | Dấu vân tay phần cứng macOS (Chip, Hardware UUID, Serial Number, Memory) |
| macOS version + kernel version (`System Version:` / `Kernel Version:`) | Phiên bản macOS + phiên bản nhân hệ điều hành (`System Version:` / `Kernel Version:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `IP:` AND `Username:`
AND `Password:` AND `System Software Overview:` AND
`Hardware Overview:` substrings PLUS absence of
`Country:` (rules out CSMacBareGeo / Cthulhu / AMOS /
MacSync) AND absence of `Country Code:` (rules out
Cthulhu and CSMacUserinfo). The positive anchors confirm
a macOS `system_profiler` body with a cleartext-password
preamble; the negative anchors defer to the five richer-geo macOS formats when their geo fields are present.
During triage, the `Password:` value is the victim's
cleartext login or keychain password and should be
treated as a high-priority remediation indicator.

### Tiếng Việt

Dấu vân tay nhận diện yêu cầu các chuỗi con neo theo dòng `IP:` VÀ `Username:`
VÀ `Password:` VÀ `System Software Overview:` VÀ
`Hardware Overview:` PHẢI xuất hiện, ĐỒNG THỜI phải không có
`Country:` (loại trừ CSMacBareGeo / Cthulhu / AMOS /
MacSync) VÀ không có `Country Code:` (loại trừ
Cthulhu và CSMacUserinfo). Các neo dương tính xác nhận
một phần thân `system_profiler` trên macOS có phần mở đầu chứa mật khẩu dạng văn bản thô; các neo âm tính nhường quyền ưu tiên cho năm định dạng macOS có dữ liệu địa lý phong phú hơn khi các trường địa lý của chúng xuất hiện.
Trong quá trình phân loại ban đầu, giá trị `Password:` chính là mật khẩu đăng nhập hoặc mật khẩu keychain dạng văn bản thô của nạn nhân và cần được coi là một chỉ dấu ưu tiên cao cho việc khắc phục sự cố.

## Observed log variants

### `v_8fb0dfa34c44e8492fb4af61d80eddea`

- Format ID: `cs-mac-keychain-pass-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_8fb0dfa34c44e8492fb4af61d80eddea/sample.txt)
- Sample SHA-256: `815c1774c393562a2cf1801750a44176d858ec6cc38cb6e2c29bfaf3ecd8d7cc`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Hardware Overview:`, `System Software Overview:`
- Field labels: `IP`, `Password`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain | Keychain |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [MacSync](../mac-sync/)
- [CSMacUserinfoStealer](../cs-mac-userinfo-stealer/)
- [CSMacBareGeoStealer](../cs-mac-bare-geo-stealer/)

## Related external families

- `banshee-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
