# CSMacUserinfoStealer

## Overview / Tổng quan

### English

CSMacUserinfoStealer is a CyStack-coined identifier for a
macOS info-stealer that writes a bare `userinfo.txt`
(lowercase) with a 9-field IP geolocation header followed
directly by the verbatim `system_profiler` output for the
`SPSoftwareDataType`, `SPHardwareDataType`, and
`SPDisplaysDataType` sections. The file ships no operator
banner, no `BuildID:` per-build label, and no `MetaMask Info:`
/ `Debanks:` / `Userinfo:` panel section headers. Observed
inside `!! 2025 JULY.part001.rar` aggregator packs in
`<CC><31-alnum>_<ISO timestamp with microseconds>/userinfo.txt` victim folders.

The layout overlaps the publicly documented Cthulhu Stealer
`Userinfo.txt` shape but two structural details rule out a
direct Cthulhu attribution. First, `BuildID:` is absent.
Cthulhu always emits the line carrying its operator-set
per-build label, so an unsigned variant is undocumented.
Second, the `Region:` value uses the IP2Location-style
`Dubayy` spelling for Dubai instead of ipinfo.io's
`Dubai` form; Cthulhu uses ipinfo.io as its geo source. Family
attribution is provisional pending a published threat-intel
mapping for this layout.

### Tiếng Việt

CSMacUserinfoStealer là định danh do CyStack đặt cho một mã độc đánh cắp thông tin trên macOS ghi ra một dòng `userinfo.txt` trần (chữ thường) với phần tiêu đề định vị địa lý IP gồm 9 trường, theo ngay sau đó là dữ liệu đầu ra nguyên văn của `system_profiler` cho các phần `SPSoftwareDataType`, `SPHardwareDataType` và `SPDisplaysDataType`. Tệp này không có banner của đối tượng vận hành, không có nhãn `BuildID:` theo từng bản build, và không có các tiêu đề phần panel `MetaMask Info:` / `Debanks:` / `Userinfo:`. Được quan sát thấy bên trong các gói tổng hợp `!! 2025 JULY.part001.rar` trong các thư mục nạn nhân `<CC><31-alnum>_<ISO timestamp with microseconds>/userinfo.txt`.

Bố cục này trùng lặp với cấu trúc dữ liệu `Userinfo.txt` của Cthulhu Stealer đã được công bố công khai, nhưng có hai chi tiết cấu trúc loại trừ khả năng quy kết trực tiếp cho Cthulhu. Thứ nhất, `BuildID:` bị thiếu. Cthulhu luôn tạo dữ liệu đầu ra là dòng mang nhãn theo từng bản build do đối tượng vận hành thiết lập, do đó một biến thể không có chữ ký (unsigned) như vậy chưa được ghi nhận. Thứ hai, giá trị `Region:` sử dụng cách phiên âm kiểu IP2Location `Dubayy` cho Dubai thay vì dạng `Dubai` của ipinfo.io; Cthulhu sử dụng ipinfo.io làm nguồn dữ liệu địa lý. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời cho đến khi có bản đồ tình báo mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Bare macOS userinfo.txt panel`, `No-BuildID Cthulhu-shape macOS log`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| macOS hardware fingerprint (Hardware UUID, Model Identifier, Chip / Processor) | Dấu vân tay phần cứng macOS (Hardware UUID, Model Identifier, Chip / Processor) |
| macOS account inventory (Computer Name, User Name) | Danh sách tài khoản macOS (Computer Name, User Name) |
| macOS version and kernel build (System Version, Kernel Version) | Phiên bản macOS và bản build kernel (System Version, Kernel Version) |
| Public-IP geolocation (country, city, latitude / longitude, zipcode, timezone) | Định vị địa lý IP công khai (quốc gia, thành phố, vĩ độ / kinh độ, mã bưu điện, múi giờ) |
| Display configuration (Chipset Model, VRAM, resolution) | Cấu hình hiển thị (Chipset Model, VRAM, độ phân giải) |

## Detection notes / Ghi chú nhận diện

### English

Line-anchored `Country Code:` AND `Zipcode:` AND
`Hardware Overview:` is the fingerprint. The triple is
specific because `Country Code:` (separate from
`Country:`) plus `Zipcode:` (one word) is the geo-block
opener documented for Cthulhu, and `Hardware Overview:` is
the macOS-specific `system_profiler SPHardwareDataType`
header. Samples that also carry `BuildID:` match the Cthulhu profile; this profile covers the BuildID-less variant. AMOS uses `Country:` (not
`Country Code:`) plus the `MetaMask Info:` / `Debanks:` /
`Userinfo:` section header triple - no overlap. MacSync
requires the `MacSync Stealer` banner - absent here.
During triage, treat this label as a macOS infostealer
system summary and look for sibling files (browser data,
keychain dumps, wallet folders) in the same victim folder.

### Tiếng Việt

Sự xuất hiện của `Country Code:` VÀ `Zipcode:` VÀ `Hardware Overview:` được neo theo dòng chính là dấu hiệu nhận diện đặc trưng. Bộ ba này mang tính đặc thù vì `Country Code:` (tách biệt với `Country:`) cộng với `Zipcode:` (một từ) là điểm mở đầu khối dữ liệu địa lý đã được ghi nhận đối với Cthulhu, và `Hardware Overview:` là tiêu đề `system_profiler SPHardwareDataType` đặc thù của macOS. Các mẫu cũng mang `BuildID:` khớp với hồ sơ Cthulhu; hồ sơ này bao phủ biến thể không có BuildID. AMOS sử dụng `Country:` (không phải `Country Code:`) cùng với bộ ba tiêu đề phần `MetaMask Info:` / `Debanks:` / `Userinfo:` - không có sự trùng lặp. MacSync yêu cầu phải có banner `MacSync Stealer` - điều này không xuất hiện ở đây. Trong quá trình phân loại ban đầu, hãy coi nhãn này là bản tóm tắt hệ thống của mã độc đánh cắp thông tin trên macOS và tìm kiếm các tệp/dấu vết liên quan (dữ liệu trình duyệt, dữ liệu keychain, thư mục ví) trong cùng thư mục nạn nhân.

## Observed log variants

### `v_ab5581abd38bf0fcdf843171df456903`

- Format ID: `cs-mac-userinfo-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ab5581abd38bf0fcdf843171df456903/sample.txt)
- Sample SHA-256: `bc9690044f983ca1ac45b631b2d97f6548e94ae1d0d59269fa0c77be33baef85`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Hardware Overview:`
- Field labels: `Country Code`, `Zipcode`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |

## Related catalog profiles

- [Cthulhu Stealer](../cthulhu-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [MacSync](../mac-sync/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
