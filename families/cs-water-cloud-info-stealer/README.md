# CSWaterCloudInfoStealer

## Overview / Tổng quan

### English

CSWaterCloudInfoStealer is a CyStack-coined identifier for
a five-bracket-section `Information.txt` panel redistributed
under the WATER CLOUD Telegram aggregator. Observed inside
`WATERCLOUD_INFO_<count>_FILES_<DD>_<MM>_<YYYY>_THANKS_FOR_ SUB_part<N>.rar` archives at `<32-char>_<YYYY>-<MM>-<DD> <HH>-<MM>-<SS>/Information.txt` victim folders.

The body has five bracket-section headers in fixed order:
`[Location]`, `[General]`, `[Hardwares]` (plural), `[Anti-Viruses]`
(hyphenated plural), and `[Build]`. Each section carries
plain `Key: Value` fields with no leading dash prefix and no
operator banner block. Fields collected: `IP`, `Country`
(ISO-2), `City`, `Zip` under `[Location]`; `Username`,
`Compname` (short form), `System`, `Language` (country-flag
emoji + BCP-47 locale), `Framework` (.NET Framework minimum
version like `>= 4.8`), `Date` (mixed 24-hour + AM/PM
rendering) under `[General]`; `CPU`, `GPU`, `RAM`, `SCREEN`
(uppercase) under `[Hardwares]`; product-name-per-line list
under `[Anti-Viruses]`; `Version` and base64 `ID` under
`[Build]`.

The hyphenated plural `[Anti-Viruses]` marker and the terse
`Compname:` / `SCREEN:` (uppercase) / `Framework:` field
names distinguish this format from other bracket-section
families in the surveyed corpus. Canonical Stealerium per
Proofpoint and Malpedia uses an emoji-section Markdown-bold
layout with a `Stealerium - Report:` banner rather than
square-bracket section headers, so attribution to canonical
Stealerium would be a mislabel despite the shared `Compname`
and `SCREEN` field names noted in the MalBeacon
what-is-this-stealer catalog. The WATER CLOUD aggregator
resells logs
from multiple underlying builders (per the sibling
Lumma-body WATER CLOUD variant), so the distribution channel
is recorded as attribution context rather than lineage.

### Tiếng Việt

CSWaterCloudInfoStealer là định danh do CyStack đặt cho một bảng điều khiển năm mục-đề dạng dấu ngoặc vuông `Information.txt` được phân phối lại thông qua trình tổng hợp WATER CLOUD trên Telegram. Được ghi nhận bên trong các gói lưu trữ `WATERCLOUD_INFO_<count>_FILES_<DD>_<MM>_<YYYY>_THANKS_FOR_ SUB_part<N>.rar` tại các thư mục nạn nhân `<32-char>_<YYYY>-<MM>-<DD> <HH>-<MM>-<SS>/Information.txt`.

Phần thân có năm mục-đề dấu ngoặc vuông theo thứ tự cố định:
`[Location]`, `[General]`, `[Hardwares]` (số nhiều), `[Anti-Viruses]`
(số nhiều có gạch nối), và `[Build]`. Mỗi mục chứa các trường
`Key: Value` dạng thuần túy, không có tiền tố dấu gạch ngang đứng đầu và không có khối biểu ngữ đối tượng vận hành. Các trường được thu thập: `IP`, `Country`
(ISO-2), `City`, `Zip` thuộc `[Location]`; `Username`,
`Compname` (dạng viết tắt), `System`, `Language` (biểu tượng cảm xúc cờ quốc gia
kèm mã locale BCP-47), `Framework` (phiên bản tối thiểu .NET Framework như
`>= 4.8`), `Date` (hiển thị hỗn hợp định dạng 24 giờ và AM/PM)
thuộc `[General]`; `CPU`, `GPU`, `RAM`, `SCREEN`
(chữ hoa) thuộc `[Hardwares]`; danh sách tên sản phẩm mỗi dòng một mục
thuộc `[Anti-Viruses]`; `Version` và `ID` dạng base64 thuộc
`[Build]`.

Điểm đánh dấu số nhiều có gạch nối `[Anti-Viruses]` cùng các tên trường ngắn gọn
`Compname:` / `SCREEN:` (chữ hoa) / `Framework:`
giúp phân biệt định dạng này với các họ mã độc dạng mục-đề dấu ngoặc vuông
khác trong tập dữ liệu được khảo sát. Stealerium chuẩn theo
Proofpoint và Malpedia sử dụng bố cục Markdown in đậm dạng mục-đề biểu tượng cảm xúc
kèm biểu ngữ `Stealerium - Report:` thay vì
các mục-đề dấu ngoặc vuông, do đó việc quy kết cho Stealerium chuẩn
sẽ là gán nhãn sai dù có chung tên trường `Compname`
và `SCREEN` được ghi nhận trong danh mục what-is-this-stealer của MalBeacon.
Trình tổng hợp WATER CLOUD bán lại các log
từ nhiều bộ công cụ builder nền tảng khác nhau (theo biến thể WATER CLOUD phần thân Lumma
liên quan), nên kênh phân phối này được ghi nhận như bối cảnh quy kết
chứ không phải dòng dõi phát sinh.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `WATER CLOUD bracket-section Information.txt`, `WATERCLOUD_INFO panel`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host and user identity (`Compname`, `Username`) | Danh tính máy và người dùng (`Compname`, `Username`) |
| OS build and .NET Framework version reference | Phiên bản build hệ điều hành và tham chiếu phiên bản .NET Framework |
| Hardware inventory (CPU, GPU, RAM, screen resolution) | Kiểm kê phần cứng (CPU, GPU, RAM, độ phân giải màn hình) |
| Public-IP geolocation (ISO-2 country, city, zip) | Định vị địa lý theo IP công khai (mã quốc gia ISO-2, thành phố, mã bưu chính) |
| Installed antivirus product list | Danh sách phần mềm diệt vi-rút đã cài đặt |
| Sample builder version and base64 build identifier | Phiên bản builder của mẫu và mã định danh build dạng base64 |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `[Location]` AND
`[General]` AND `[Hardwares]` (plural with trailing `s`)
AND `[Build]` bracket-section headers. The four-header
combination is unique to this panel across the surveyed
corpus; sibling bracket-section parsers use different
section names or different singular/plural forms
(canonical Plutus uses uppercase `[GENERAL]` / `[LOCATION]`
/ `[SYSTEM]` / `[HARDWARE]` / `[CLIPBOARD]`; canonical AMOS
uses `[System Info]` with a space; canonical Stealerium
uses emoji-section Markdown-bold headers without square
brackets).

### Tiếng Việt

Việc lập dấu vân tay yêu cầu các mục-đề dấu ngoặc vuông neo theo dòng `[Location]` VÀ
`[General]` VÀ `[Hardwares]` (số nhiều với hậu tố `s`)
VÀ `[Build]`. Tổ hợp bốn mục-đề này là
duy nhất đối với bảng điều khiển này trong toàn bộ tập dữ liệu được khảo sát; các trình phân tích
mục-đề dấu ngoặc vuông liên quan khác sử dụng tên mục khác hoặc dạng số ít/số nhiều khác
(Plutus chuẩn sử dụng `[GENERAL]` / `[LOCATION]`
/ `[SYSTEM]` / `[HARDWARE]` / `[CLIPBOARD]` dạng chữ hoa; AMOS chuẩn
sử dụng `[System Info]` có khoảng trắng; Stealerium chuẩn
sử dụng các mục-đề Markdown in đậm dạng biểu tượng cảm xúc không có
dấu ngoặc vuông).

## Observed log variants

### `v_0afc291d11a6bccff9f8d010bc6dc3ed`

- Format ID: `cs-watercloud-info-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `@watercloud_notify`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_0afc291d11a6bccff9f8d010bc6dc3ed/Information.txt)
- Sample SHA-256: `b3ed09ee03634fb7bd3abf3f1ca1d2643aedd8d9e0172ac121d66c7d2c81e4db`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Anti-Viruses]`, `[Build]`, `[General]`, `[Hardwares]`, `[Location]`
- Field labels: `City`, `Compname`, `Country`, `CPU`, `Date`, `Framework`, `GPU`, `ID`, `IP`, `Language`, `RAM`, `SCREEN`, `System`, `Username`, `Version`, `Zip`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Stealerium](../stealerium/)
- [Lumma](../lumma/)

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
