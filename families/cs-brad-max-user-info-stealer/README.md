# CSBradMaxUserInfoStealer

## Overview / Tổng quan

### English

CSBradMaxUserInfoStealer is a CyStack-coined identifier
for a box-drawn `USER INFO` panel distributed through the
@BRADMAX Telegram log-reseller channel (distinct from the
sibling @BRADMAX_CLOUD reseller). Observed inside
`@BRADMAX <N> <MONTH>-<MONTH>.part<N>.rar` aggregator
packs at `[<CC>]UNKNOWN_(<N>)/info.txt` victim folders.

The body opens with a double-line Unicode box wrapping a
centered `USER INFO` banner title, and is terminated by a
matching double-line box wrapping `END OF USER INFO`.
Between the two outer boxes, five single-line Unicode
boxes enclose section titles in fixed order: `BASIC INFORMATION`, `HARDWARE`, `NETWORK & LOCATION`,
`SOFTWARE`, `TIME`. The merged `BASIC INFORMATION`
section corresponds to the dedicated `[ IDENTIFICATION ]`
plus `[ OS ]` pair the sibling `SYSTEM INFORMATION REPORT` layout emits.

Each section carries column-18 aligned-colon `Key : Value` fields with trailing-space padding on the key
side. Field vocabulary matches the sibling `SYSTEM INFORMATION REPORT` layout except this presentation
drops the dashed-UUID `HWID` field: Windows NT-style
`OS Version`, .NET `CLR Version` and TimeSpan `Uptime`,
`Country` with trailing parenthesised ISO-2 country
code, `Public IP` + `Local IP` + `MAC Address` network
trio, `Installed Updates` + `Antivirus` + `Firewall`
software trio, and `Current (UTC)` + `Current (Local)`
+ `Timezone` time trio where the timezone value carries
both a Windows display name and a UTC offset with
seconds (the positive-sign prefix is sometimes dropped).

The same .NET panel-builder family (`CLR Version` +
TimeSpan `Uptime` combination) that produces the sibling
`SYSTEM INFORMATION REPORT` layout appears here under a
different theme toggle. No curated CTI vendor documents
either presentation.

Family attribution stays CyStack-coined (Case C) pending
a published mapping. HEROIC darkhive-breaches attests the
@BRADMAX distributor at multiple pack entries separately
from the @BRADMAX_CLOUD sibling. Candidates ruled out
include Redline canonical (`Build ID` / `IP Address` /
`Country` labelled-block layout differs), Lumma
(`Software:` and `Hardware:` sections with dash-bulleted
fields, absent), Vidar (tight `[Hardware]` section
header, absent), Rhadamanthys (`Wallpaper Hash:`
required, absent), XFiles (`CPU (Processor):` parens-alias key,
absent).

### Tiếng Việt

CSBradMaxUserInfoStealer là một định danh do CyStack đặt tên cho một panel được vẽ khung kiểu box `USER INFO`, được phân phối qua kênh Telegram bán lại log @BRADMAX (khác với kênh bán lại liên quan @BRADMAX_CLOUD). Được quan sát bên trong các gói tổng hợp `@BRADMAX <N> <MONTH>-<MONTH>.part<N>.rar` tại các thư mục nạn nhân `[<CC>]UNKNOWN_(<N>)/info.txt`.

Phần nội dung mở đầu bằng một khung Unicode đường kẻ đôi bao quanh tiêu đề banner `USER INFO` được căn giữa, và kết thúc bằng một khung đường kẻ đôi tương ứng bao quanh `END OF USER INFO`. Giữa hai khung ngoài này, có năm khung Unicode đường kẻ đơn bao quanh các tiêu đề mục theo thứ tự cố định: `BASIC INFORMATION`, `HARDWARE`, `NETWORK & LOCATION`, `SOFTWARE`, `TIME`. Mục `BASIC INFORMATION` đã được hợp nhất tương ứng với cặp `[ IDENTIFICATION ]` cùng `[ OS ]` riêng biệt mà bố cục liên quan `SYSTEM INFORMATION REPORT` tạo dữ liệu đầu ra.

Mỗi mục mang các trường `Key : Value` được căn chỉnh dấu hai chấm tại cột 18, với phần đệm khoảng trắng ở cuối phía khóa. Danh mục trường khớp với bố cục liên quan `SYSTEM INFORMATION REPORT`, ngoại trừ việc trình bày này loại bỏ trường `HWID` dạng UUID có gạch nối: kiểu Windows NT `OS Version`, phiên bản .NET `CLR Version` và TimeSpan `Uptime`, `Country` kèm mã quốc gia ISO-2 đặt trong dấu ngoặc đơn ở cuối, bộ ba thông tin mạng `Public IP` + `Local IP` + `MAC Address`, bộ ba phần mềm `Installed Updates` + `Antivirus` + `Firewall`, và bộ ba thời gian `Current (UTC)` + `Current (Local)` + `Timezone`, trong đó giá trị múi giờ mang cả tên hiển thị của Windows và độ lệch UTC kèm giây (dấu cộng ở đầu đôi khi bị bỏ qua).

Cùng một họ công cụ xây dựng panel .NET (tổ hợp `CLR Version` + TimeSpan `Uptime`) tạo ra bố cục liên quan `SYSTEM INFORMATION REPORT` cũng xuất hiện ở đây dưới một tùy chọn giao diện khác. Không có nhà cung cấp CTI đã được tuyển chọn nào ghi nhận tài liệu về cả hai cách trình bày này.

Việc quy kết họ mã độc vẫn do CyStack đặt tên (Trường hợp C) cho đến khi có một bản đối chiếu được công bố. HEROIC darkhive-breaches xác nhận đối tượng phân phối @BRADMAX tại nhiều mục trong gói, tách biệt với mục liên quan @BRADMAX_CLOUD. Các khả năng đã bị loại trừ bao gồm Redline chuẩn (bố cục khối có nhãn `Build ID` / `IP Address` / `Country` khác biệt), Lumma (các mục `Software:` và `Hardware:` với các trường có dấu gạch đầu dòng, không có), Vidar (tiêu đề mục `[Hardware]` cô đọng, không có), Rhadamanthys (yêu cầu `Wallpaper Hash:`, không có), XFiles (khóa dạng alias trong ngoặc `CPU (Processor):`, không có).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `USER INFO`, `@BRADMAX USER INFO panel`, `box-drawn @BRADMAX info.txt`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host identity (`Machine Name`, `Domain`) | Danh tính máy (`Machine Name`, `Domain`) |
| Windows user account name | Tên tài khoản người dùng Windows |
| Operating system build and architecture | Phiên bản build và kiến trúc hệ điều hành |
| .NET CLR version | Phiên bản .NET CLR |
| Hardware inventory (CPU, GPU, RAM, disk space, screen) | Thông tin kiểm kê phần cứng (CPU, GPU, RAM, dung lượng đĩa, màn hình) |
| Public-IP geolocation (parenthesised ISO-2 country, city, ISP) | Định vị địa lý theo IP công khai (mã quốc gia ISO-2 trong ngoặc đơn, thành phố, ISP) |
| Local IP and MAC address | Địa chỉ IP cục bộ và địa chỉ MAC |
| Installed antivirus product and firewall state | Sản phẩm diệt virus đã cài đặt và trạng thái tường lửa |
| Panel timestamp in UTC and local wall-clock plus Windows timezone name | Thời gian trên panel theo UTC và giờ địa phương kèm tên múi giờ Windows |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `@bradmax` channel substring
in the victim-folder path (case-insensitive, matches
both the @BRADMAX bare reseller and the @BRADMAX_CLOUD
sibling) AND the `USER INFO` banner title literal AND
at least three of the five box-drawn section titles
(`BASIC INFORMATION`, `HARDWARE`, `NETWORK & LOCATION`,
`SOFTWARE`, `TIME`). The title literal alone would
false-match unrelated panels that use the generic
`USER INFO` phrase; the section title triple pins the
specific .NET-panel shape, and the path gate keeps the
claim scoped to the BRADMAX redistribution portfolio.
Mutually exclusive with the sibling `SYSTEM INFORMATION REPORT` parser because that parser requires the
bracketed-with-spaces `[ IDENTIFICATION ]` section
markers (absent here).

### Tiếng Việt

Việc nhận diện đòi hỏi chuỗi con kênh `@bradmax` xuất hiện trong đường dẫn thư mục nạn nhân (không phân biệt hoa thường, khớp với cả kênh bán lại trần @BRADMAX và kênh liên quan @BRADMAX_CLOUD) VÀ chuỗi tiêu đề banner `USER INFO` VÀ ít nhất ba trong số năm tiêu đề mục được vẽ khung (`BASIC INFORMATION`, `HARDWARE`, `NETWORK & LOCATION`, `SOFTWARE`, `TIME`). Chỉ riêng chuỗi tiêu đề sẽ gây dương tính giả với các panel không liên quan sử dụng cụm từ chung `USER INFO`; bộ ba tiêu đề mục xác định chính xác cấu trúc dữ liệu panel .NET cụ thể, và điều kiện đường dẫn giới hạn phạm vi khẳng định trong danh mục phân phối lại BRADMAX. Loại trừ lẫn nhau với bộ phân tích liên quan `SYSTEM INFORMATION REPORT` vì bộ phân tích đó yêu cầu các dấu hiệu mục `[ IDENTIFICATION ]` dạng ngoặc vuông có khoảng trắng (không có ở đây).

## Observed log variants

### `v_535b2db6c46b7d9a7223cc65213816c9`

- Format ID: `cs-bradmax-user-info-stealer`
- Observed filenames: `info.txt`
- Panel brand: `USER INFO`
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_535b2db6c46b7d9a7223cc65213816c9/info.txt)
- Sample SHA-256: `3af6c5d754ee3524d7c98153475f7f63d970526d42a8412177e38991727f7ad5`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `USER INFO`
- Field labels: `Antivirus`, `Architecture`, `City`, `CLR Version`, `Country`, `CPU`, `Current (Local`, `Current (UTC`, `Disk Space`, `Domain`, `Firewall`, `GPU`, `Installed Updates`, `ISP`, `Local IP`, `MAC Address`, `Machine Name`, `OS Version`, `Public IP`, `RAM`, `Screen Resolution`, `System Directory`, `Timezone`, `Uptime`, `User Name`


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

- [CSBradMaxSystemInfoReportStealer](../cs-brad-max-system-info-report-stealer/)
- [CSRussia34Stealer](../cs-russia34-stealer/)
- [CSBradMaxPwshStealer](../cs-brad-max-pwsh-stealer/)

## Related external families

- `cs-bradmax-xfiles-stripped-stealer`

## Sources

- <https://heroic.com/darkhive-breaches/bradmax-1500-july-stealer-log-10273-exposed/>
- <https://heroic.com/darkhive-breaches/bradmax-1000-nov-stealer-log-telegram-23k-records/>
- <https://heroic.com/darkhive-breaches/bradmax-800-june-telegram-breach-chained-account-risk/>
- <https://heroic.com/darkhive-breaches/bradmax-1200-feb-stealer-log-breach-2026/>

Machine-readable record: [family.json](family.json)
