# Storm Stealer

## Overview / Tổng quan

### English

Storm Stealer is a C++ malware-as-a-service infostealer first
publicly documented by Varonis in early 2026 and cross-covered
by Infosecurity Magazine, Hackread, and BleepingComputer. The
panel is marketed as a session-hijacking / server-side
decryption platform aimed at browser cookies, saved credentials,
and cryptocurrency wallet artefacts. Public reporting places
panel infrastructure at `storm-project.biz` and describes a
subscription pricing model of roughly $300 for a seven-day
demo, $900/month for a standard seat, and $1,800/month for a
team tier that includes 100 operator seats and 200 builds.
Varonis analysis notes that the loader runs stages in memory
to reduce disk-based detection surface.

The panel writes a `SystemInfo.txt` per victim opening with a
`Storm Stealer` self-brand banner and the panel-support URL
`https://storm-project.biz/support`, followed by a geolocation
block (`Remote IP`, `Location`, `State/Region`, `ZIP/Postal Code`, `Coordinates`, `Location Accuracy`, `Timezone`, `ISP`,
`AS Number`), a device block (`OS`, `Computer`, `User`, `AV`,
`CPU`, `RAM`, `GPU`, `Display`), a numbered network-interface
block (`[N] IP <v4>` / `MAC <mac>` / `GW <v4>` / `Name <adapter>`), and a `Launch:` line recording the loader
execution mode. Sections are separated by U+2500 box-drawing
horizontal rules rather than ASCII dashes. The `User:` field
suffixes a bracketed Windows privilege class (`sidne [User]` /
`admin [Administrator]`) and the `CPU:` field emits only a
counts pair (`4C / 8T`) without the WMI-derived processor
model string that Redline, Lumma, and Rhadamanthys all
include.

### Tiếng Việt

Storm Stealer là mã độc đánh cắp thông tin dạng malware-as-a-service viết bằng C++, lần đầu được Varonis công khai tài liệu hóa vào đầu năm 2026 và được Infosecurity Magazine, Hackread, và BleepingComputer đưa tin lại. Bảng điều khiển được quảng cáo là nền tảng chiếm đoạt phiên (session-hijacking) / giải mã phía máy chủ, nhắm vào cookie trình duyệt, thông tin xác thực đã lưu, và các dấu vết liên quan đến ví tiền mã hóa. Các báo cáo công khai cho biết hạ tầng bảng điều khiển đặt tại `storm-project.biz` và mô tả mô hình định giá thuê bao khoảng 300 USD cho bản demo bảy ngày, 900 USD/tháng cho gói tiêu chuẩn, và 1.800 USD/tháng cho gói nhóm bao gồm 100 chỗ vận hành và 200 bản dựng (build). Phân tích của Varonis ghi nhận rằng trình tải chạy các giai đoạn trong bộ nhớ nhằm giảm bề mặt nhận diện dựa trên đĩa.

Bảng điều khiển ghi một `SystemInfo.txt` cho mỗi nạn nhân, mở đầu bằng biểu ngữ tự thương hiệu hóa `Storm Stealer` và URL hỗ trợ bảng điều khiển `https://storm-project.biz/support`, tiếp theo là một khối định vị địa lý (`Remote IP`, `Location`, `State/Region`, `ZIP/Postal Code`, `Coordinates`, `Location Accuracy`, `Timezone`, `ISP`, `AS Number`), một khối thiết bị (`OS`, `Computer`, `User`, `AV`, `CPU`, `RAM`, `GPU`, `Display`), một khối giao diện mạng được đánh số (`[N] IP <v4>` / `MAC <mac>` / `GW <v4>` / `Name <adapter>`), và một dòng `Launch:` ghi lại chế độ thực thi của trình tải. Các phần được phân tách bằng đường kẻ ngang vẽ hộp U+2500 thay vì dấu gạch ngang ASCII. Trường `User:` thêm hậu tố là lớp đặc quyền Windows trong dấu ngoặc vuông (`sidne [User]` / `admin [Administrator]`), và trường `CPU:` chỉ tạo dữ liệu đầu ra là một cặp số đếm (`4C / 8T`) mà không có chuỗi tên model bộ xử lý lấy từ WMI mà Redline, Lumma, và Rhadamanthys đều có.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Storm`, `StormStealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực đã lưu, cookie, dữ liệu tự động điền trong trình duyệt |
| Cryptocurrency wallet browser extensions and desktop clients | Tiện ích mở rộng trình duyệt và ứng dụng desktop cho ví tiền mã hóa |
| Session tokens for high-value web services | Token phiên cho các dịch vụ web có giá trị cao |
| Host geolocation (IP, city, country, coordinates, ISP, ASN) | Vị trí địa lý của máy (IP, thành phố, quốc gia, tọa độ, ISP, ASN) |
| Windows privilege class and antivirus product name | Lớp đặc quyền Windows và tên sản phẩm diệt virus |
| Enumerated network interfaces (IPv4, MAC, gateway, adapter) | Các giao diện mạng được liệt kê (IPv4, MAC, gateway, adapter) |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: the `Storm Stealer` self-brand token
AND the `storm-project.biz` panel-support URL both present in
the same `SystemInfo.txt` body. The two-anchor requirement
defends against CTI report excerpts that quote the brand name
or the domain in prose without shipping the full panel body.
The `CPU: NC / NT` counts-only shape, the box-drawing
separator lines, and the `Launch: Memory` loader-mode field
are additional Storm-specific artefacts once the primary
anchors have fired.

### Tiếng Việt

Điều kiện kích hoạt độ tin cậy cao: token tự thương hiệu hóa `Storm Stealer` VÀ URL hỗ trợ bảng điều khiển `storm-project.biz` cùng xuất hiện trong cùng nội dung `SystemInfo.txt`. Yêu cầu hai mốc neo này giúp phòng tránh trường hợp các đoạn trích báo cáo CTI trích dẫn tên thương hiệu hoặc tên miền trong văn bản mô tả mà không kèm theo toàn bộ nội dung bảng điều khiển. Cấu trúc dữ liệu `CPU: NC / NT` chỉ chứa số đếm, các dòng phân tách bằng ký tự vẽ hộp, và trường chế độ trình tải `Launch: Memory` là các dấu vết đặc trưng bổ sung của Storm một khi các mốc neo chính đã kích hoạt.

## Observed log variants

### `v_5eeda44e4bf38670f1ee04378c51adcc`

- Format ID: `storm-stealer`
- Observed filenames: `SystemInfo.txt`
- Panel brand: -
- Distribution channel: `@StormProject`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_5eeda44e4bf38670f1ee04378c51adcc/SystemInfo.txt)
- Sample SHA-256: `79b2e1dc8b3a75919c7108e0f0788530b7620747638b0476f43e2974d85216d1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Storm Stealer`
- Field labels: `AS Number`, `AV`, `Computer`, `Coordinates`, `CPU`, `Display`, `GPU`, `ISP`, `Launch`, `Location`, `Location Accuracy`, `OS`, `RAM`, `Remote IP`, `State/Region`, `Timezone`, `User`, `ZIP/Postal Code`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1027](https://attack.mitre.org/techniques/T1027/) | Obfuscated Files or Information | Tệp hoặc thông tin bị làm rối |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/StormProject>

## Sources

- <https://www.varonis.com/blog/storm-infostealer>
- <https://www.infosecurity-magazine.com/news/storm-infostealer-remotely/>
- <https://hackread.com/storm-infostealer-sold-as-service-browsers-wallets/>

Machine-readable record: [family.json](family.json)
