# CSBradMaxSystemInfoReportStealer

## Overview / Tổng quan

### English

CSBradMaxSystemInfoReportStealer is a CyStack-coined
identifier for a banner-stripped `info.txt` panel
distributed through the @BRADMAX Telegram log-reseller
channel (distinct from the sibling @BRADMAX_CLOUD
reseller). Observed inside `@BRADMAX <N> <MONTH>-<MONTH> .part<N>.rar` aggregator packs at `[<CC>]UNKNOWN_(<N>) /info.txt` victim folders.

The body opens with a `=` border framing a centered
`SYSTEM INFORMATION REPORT` title, followed by six
bracketed-with-spaces section headers in fixed order:
`[ IDENTIFICATION ]`, `[ OS ]`, `[ HARDWARE ]`,
`[ NETWORK & LOCATION ]`, `[ SOFTWARE ]`, `[ TIME ]`.
Each section emits column-18 aligned-colon
`Key : Value` fields with trailing-space padding on
the key side. Field vocabulary includes a dashed UUID
`HWID`, Windows NT-style `OS Version`, .NET
`CLR Version` and TimeSpan `Uptime`, `Country` with a
trailing parenthesised ISO-2 country code
(`Brazil (BR)` shape, distinct from Redline and Lumma),
`Public IP` + `Local IP` + `MAC Address` network trio,
`Installed Updates` + `Antivirus` + `Firewall` software
trio, and `Current (UTC)` + `Current (Local)` +
`Timezone` time trio where the timezone value carries
both a Windows display name and a signed UTC offset
with seconds.

The same title-plus-sections layout is observed under
the russia34.com aggregator as a banner-stripped variant
of its wider panel portfolio. Neither reseller attributes
the underlying builder, and no curated CTI vendor
documents the exact `SYSTEM INFORMATION REPORT` title
plus bracketed-with-spaces section vocabulary. The .NET
`CLR Version` + TimeSpan `Uptime` combination points at
a .NET-based builder.

Family attribution stays CyStack-coined (Case C) pending
a published mapping. HEROIC darkhive-breaches attests
the @BRADMAX distributor at multiple pack entries
separately from the @BRADMAX_CLOUD sibling but names
only the distributor. Candidates ruled out include
Redline canonical (`Build ID` / `IP Address` / `Country`
labelled-block layout differs), Lumma (`Software:` and
`Hardware:` sections with dash-bulleted fields, absent),
Vidar (tight `[Hardware]` section header, absent),
Rhadamanthys (`Wallpaper Hash:` required, absent), XFiles
(`CPU (Processor):` parens-alias key, absent here),
Mars Stealer and Amadey (documented section vocabulary
differs).

### Tiếng Việt

CSBradMaxSystemInfoReportStealer là định danh do CyStack đặt cho một panel bị gỡ bỏ banner của `info.txt`, được phân phối qua kênh Telegram chuyên bán lại log @BRADMAX (khác với đối tượng bán lại liên quan @BRADMAX_CLOUD). Được quan sát bên trong các gói tổng hợp `@BRADMAX <N> <MONTH>-<MONTH> .part<N>.rar` tại các thư mục nạn nhân `[<CC>]UNKNOWN_(<N>) /info.txt`.

Phần nội dung mở đầu bằng một đường viền `=` bao quanh tiêu đề `SYSTEM INFORMATION REPORT` được căn giữa, theo sau là sáu tiêu đề mục được đặt trong ngoặc vuông có khoảng trắng theo thứ tự cố định: `[ IDENTIFICATION ]`, `[ OS ]`, `[ HARDWARE ]`, `[ NETWORK & LOCATION ]`, `[ SOFTWARE ]`, `[ TIME ]`. Mỗi mục tạo dữ liệu đầu ra là các trường `Key : Value` được căn chỉnh dấu hai chấm ở cột 18, với phần khóa được đệm khoảng trắng ở cuối. Tập hợp trường dữ liệu bao gồm UUID có dấu gạch nối `HWID`, `OS Version` kiểu Windows NT, `CLR Version` của .NET và TimeSpan `Uptime`, `Country` kèm mã quốc gia ISO-2 trong ngoặc đơn ở cuối (cấu trúc dữ liệu `Brazil (BR)`, khác với Redline và Lumma), bộ ba mạng `Public IP` + `Local IP` + `MAC Address`, bộ ba phần mềm `Installed Updates` + `Antivirus` + `Firewall`, và bộ ba thời gian `Current (UTC)` + `Current (Local)` + `Timezone` trong đó giá trị múi giờ mang cả tên hiển thị của Windows lẫn độ lệch UTC có dấu kèm giây.

Bố cục tiêu đề cộng các mục tương tự được quan sát dưới aggregator russia34.com như một biến thể bị gỡ banner trong danh mục panel rộng hơn của nó. Không đối tượng bán lại nào quy kết công cụ xây dựng gốc, và chưa có nhà cung cấp CTI đã qua kiểm định nào tài liệu hóa chính xác tiêu đề `SYSTEM INFORMATION REPORT` cùng tập hợp mục trong ngoặc vuông có khoảng trắng này. Sự kết hợp `CLR Version` của .NET + TimeSpan `Uptime` cho thấy đây là một công cụ xây dựng dựa trên .NET.

Quy kết họ mã độc vẫn ở dạng do CyStack đặt tên (Case C) cho đến khi có ánh xạ được công bố. HEROIC darkhive-breaches xác nhận đối tượng phân phối @BRADMAX tại nhiều mục trong gói, tách biệt với đối tượng liên quan @BRADMAX_CLOUD, nhưng chỉ nêu tên đối tượng phân phối. Các ứng viên đã bị loại trừ bao gồm Redline chuẩn (bố cục khối có nhãn `Build ID` / `IP Address` / `Country` khác biệt), Lumma (các mục `Software:` và `Hardware:` với trường có dấu gạch đầu dòng, không có mặt), Vidar (tiêu đề mục `[Hardware]` sát nhau, không có mặt), Rhadamanthys (yêu cầu `Wallpaper Hash:`, không có mặt), XFiles (khóa bí danh trong ngoặc đơn `CPU (Processor):`, không có mặt ở đây), Mars Stealer và Amadey (tập hợp mục đã được tài liệu hóa khác biệt).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `SYSTEM INFORMATION REPORT`, `@BRADMAX info.txt panel`, `banner-stripped SYSTEM INFORMATION REPORT`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Hardware identifier (dashed UUID) | Định danh phần cứng (UUID có dấu gạch nối) |
| Host identity (`Machine Name`, `Domain`) | Thông tin định danh máy (`Machine Name`, `Domain`) |
| Windows user account name | Tên tài khoản người dùng Windows |
| Operating system build and architecture | Phiên bản build và kiến trúc hệ điều hành |
| .NET CLR version | Phiên bản .NET CLR |
| Hardware inventory (CPU, GPU, RAM, disk space, screen) | Thông tin phần cứng (CPU, GPU, RAM, dung lượng ổ đĩa, màn hình) |
| Public-IP geolocation (parenthesised ISO-2 country, city, ISP) | Định vị địa lý theo IP công khai (mã quốc gia ISO-2 trong ngoặc đơn, thành phố, ISP) |
| Local IP and MAC address | Địa chỉ IP nội bộ và địa chỉ MAC |
| Installed antivirus product and firewall state | Phần mềm diệt virus đã cài đặt và trạng thái tường lửa |
| Panel timestamp in UTC and local wall-clock plus Windows timezone name | Dấu thời gian của panel theo UTC và giờ địa phương cùng tên múi giờ Windows |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `@bradmax` channel substring
in the victim-folder path (case-insensitive, matches
both the @BRADMAX bare reseller and the @BRADMAX_CLOUD
sibling) AND the `SYSTEM INFORMATION REPORT` title
literal AND at least four of the six bracketed-with-spaces section headers
(`[ IDENTIFICATION ]`, `[ OS ]`, `[ HARDWARE ]`,
`[ NETWORK & LOCATION ]`, `[ SOFTWARE ]`, `[ TIME ]`).
The title literal alone would collide with the sibling
russia34 variant 23 shape if the path gate were
skipped; the path gate alone would collide with the
sibling BRADMAX parsers (XFiles-stripped, Acreed-flat,
Lumma variants, etc) that share the channel; title
plus section quartet together pin the shape
unambiguously under the `@bradmax` path gate.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con kênh `@bradmax` xuất hiện trong đường dẫn thư mục nạn nhân (không phân biệt chữ hoa/thường, khớp cả với đối tượng bán lại thuần @BRADMAX lẫn đối tượng liên quan @BRADMAX_CLOUD) VÀ chuỗi tiêu đề `SYSTEM INFORMATION REPORT` VÀ ít nhất bốn trong sáu tiêu đề mục trong ngoặc vuông có khoảng trắng (`[ IDENTIFICATION ]`, `[ OS ]`, `[ HARDWARE ]`, `[ NETWORK & LOCATION ]`, `[ SOFTWARE ]`, `[ TIME ]`). Nếu chỉ dựa vào chuỗi tiêu đề mà bỏ qua điều kiện đường dẫn, sẽ xảy ra trùng lặp với cấu trúc dữ liệu biến thể 23 của russia34 liên quan; nếu chỉ dựa vào điều kiện đường dẫn mà không có tiêu đề, sẽ trùng lặp với các trình phân tích BRADMAX liên quan khác (biến thể gỡ XFiles, biến thể Acreed-flat, biến thể Lumma, v.v.) cùng chia sẻ kênh này; kết hợp tiêu đề cùng bốn mục nêu trên dưới điều kiện đường dẫn `@bradmax` sẽ xác định chính xác cấu trúc dữ liệu này mà không gây nhầm lẫn.

## Observed log variants

### `v_c978ed72a1d5b3c367fd5414680a3b88`

- Format ID: `cs-bradmax-system-info-report-stealer`
- Observed filenames: `info.txt`
- Panel brand: `SYSTEM INFORMATION REPORT`
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_c978ed72a1d5b3c367fd5414680a3b88/info.txt)
- Sample SHA-256: `8b317b1c7e80e3ebf58ff8938f202ef281728e8528f36fe1f1a90fa9103782dc`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `SYSTEM INFORMATION REPORT`
- Field labels: `Antivirus`, `Architecture`, `City`, `CLR Version`, `Country`, `CPU`, `Current (Local`, `Current (UTC`, `Disk Space`, `Domain`, `Firewall`, `GPU`, `HWID`, `Installed Updates`, `ISP`, `Local IP`, `MAC Address`, `Machine Name`, `OS Version`, `Public IP`, `RAM`, `Screen Resolution`, `System Directory`, `Timezone`, `Uptime`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSRussia34Stealer](../cs-russia34-stealer/)
- [CSBradMaxPwshStealer](../cs-brad-max-pwsh-stealer/)

## Related external families

- `cs-bradmax-xfiles-stripped-stealer`
- `cs-bradmax-acreed-flat-stealer`

## Sources

- <https://heroic.com/darkhive-breaches/bradmax-1500-july-stealer-log-10273-exposed/>
- <https://heroic.com/darkhive-breaches/bradmax-1000-nov-stealer-log-telegram-23k-records/>
- <https://heroic.com/darkhive-breaches/bradmax-800-june-telegram-breach-chained-account-risk/>
- <https://heroic.com/darkhive-breaches/bradmax-1200-feb-stealer-log-breach-2026/>

Machine-readable record: [family.json](family.json)
