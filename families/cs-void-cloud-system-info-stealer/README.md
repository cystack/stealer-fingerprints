# CSVoidCloudSystemInfoStealer

## Overview / Tổng quan

### English

CSVoidCloudSystemInfoStealer is a CyStack-coined
identifier for a `system_info.txt` panel distributed
through the @updh2 Telegram log-reseller channel under
the "Void Cloud" panel brand. Observed inside
`@updh2 [VIP] LOGS <D.M.YYYY>.part<N>.rar` aggregator
packs at `@updh2 - <32-char-HWID>_<YYYY>_<MM>_<DD>T <HH>_<MM>_<SS>_<microseconds>/system_info.txt` victim
folders.

The body opens with a figlet-spelt `VoidCloud` header, a
`a d m i n ~ @ u p d h 2` letter-spaced admin line, a
`Private ULP & Logs Leaks` subscription-tier promo
block, and a `voidcloudv2.byethost14.com` panel URL. The
device-info body ships six tight-bracketed section
headers in fixed order: `[Operating System]`, `[User]`,
`[CPU]`, `[Memory]`, `[Graphics]`, `[Storage]`. Each
section emits `Key: Value` fields without column
alignment; nested `GPU <N>:` and `Disk <N>:` outer keys
wrap inner `Name:`, `Driver Version:`, `Model:`,
`Interface:`, `Capacity:` lines under two-space
indentation. The `HWID:` field is a 16-hex WMIC-style
serial rather than a dashed UUID, and the `[CPU]`
section carries a distinctive `Physical Cores:` +
`Logical Processors:` label pair. A config-style footer
(`api:` / `browsers:` / `proc:` / `pipe:` / `screen:`)
documents the harvester toggles the operator enabled per
victim.

No curated CTI vendor documents the underlying builder
for the Void Cloud panel. The sibling @updh1 distributor
is attested by HEROIC darkhive-breaches at multiple pack
entries but ships a different `UserInformation.txt`
Build-ID layout; the @updh2 evolution appears to be the
same operator with an upgraded panel. Family attribution
stays CyStack-coined (Case C) pending a published
mapping. Candidates ruled out include Redline canonical
(`Build ID` / `IP Address` / `Country` labelled-block
layout differs), Lumma (`Software:` + `Hardware:`
dash-bulleted sections, absent), Vidar (`[Hardware]`
tight-bracket header without `[Graphics]` / `[Storage]`
disjoint spelling), Rhadamanthys (`Wallpaper Hash:`
required, absent), XFiles (`CPU (Processor):`
parens-alias key, absent).

### Tiếng Việt

CSVoidCloudSystemInfoStealer là tên định danh do CyStack đặt cho một panel `system_info.txt` được phân phối qua kênh Telegram bán lại log @updh2 dưới thương hiệu panel "Void Cloud". Được quan sát bên trong các gói tổng hợp `@updh2 [VIP] LOGS <D.M.YYYY>.part<N>.rar` tại các thư mục nạn nhân `@updh2 - <32-char-HWID>_<YYYY>_<MM>_<DD>T <HH>_<MM>_<SS>_<microseconds>/system_info.txt`.

Phần thân bắt đầu bằng một tiêu đề `VoidCloud` được viết dạng figlet, một dòng admin `a d m i n ~ @ u p d h 2` giãn cách chữ cái, một khối quảng cáo gói đăng ký `Private ULP & Logs Leaks`, và một URL panel `voidcloudv2.byethost14.com`. Phần thân thông tin thiết bị chứa sáu tiêu đề mục được đóng ngoặc vuông sát nhau theo thứ tự cố định: `[Operating System]`, `[User]`, `[CPU]`, `[Memory]`, `[Graphics]`, `[Storage]`. Mỗi mục tạo dữ liệu đầu ra là các trường `Key: Value` không căn chỉnh cột; các khóa ngoài lồng nhau `GPU <N>:` và `Disk <N>:` bao bọc các dòng bên trong `Name:`, `Driver Version:`, `Model:`, `Interface:`, `Capacity:` với thụt lề hai khoảng trắng. Trường `HWID:` là một số serial kiểu WMIC gồm 16 ký tự hex thay vì một UUID có dấu gạch ngang, và mục `[CPU]` mang một cặp nhãn đặc trưng `Physical Cores:` + `Logical Processors:`. Một phần chân kiểu cấu hình (`api:` / `browsers:` / `proc:` / `pipe:` / `screen:`) ghi lại các tùy chọn thu thập dữ liệu mà đối tượng vận hành đã bật cho từng nạn nhân.

Không có nhà cung cấp CTI đã qua tuyển chọn nào ghi nhận tài liệu về builder nền tảng cho panel Void Cloud. Đơn vị phân phối liên quan @updh1 được HEROIC darkhive-breaches xác nhận tại nhiều mục gói, nhưng sử dụng bố cục Build-ID `UserInformation.txt` khác; phiên bản tiến hóa @updh2 dường như là cùng một đối tượng vận hành với một panel đã được nâng cấp. Quy kết họ mã độc vẫn do CyStack tự đặt (Trường hợp C) cho đến khi có một ánh xạ được công bố chính thức. Các ứng viên đã bị loại trừ bao gồm Redline chuẩn (bố cục khối có nhãn `Build ID` / `IP Address` / `Country` khác), Lumma (thiếu các mục có gạch đầu dòng `Software:` + `Hardware:`), Vidar (tiêu đề đóng ngoặc sát `[Hardware]` không có cách viết tách rời `[Graphics]` / `[Storage]`), Rhadamanthys (thiếu `Wallpaper Hash:` vốn là bắt buộc), XFiles (thiếu khóa bí danh trong ngoặc đơn `CPU (Processor):`).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Void Cloud (@updh2)`, `voidcloudv2.byethost14.com panel`, `@updh2 system_info.txt`
- Variants observed: **2**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Hardware identifier (16-hex WMIC SerialNumber) | Định danh phần cứng (SerialNumber WMIC gồm 16 ký tự hex) |
| Host identity (`Computer Name`) | Danh tính máy (`Computer Name`) |
| Windows user account name | Tên tài khoản người dùng Windows |
| Operating system build and architecture | Phiên bản build và kiến trúc hệ điều hành |
| Hardware inventory (CPU model, physical / logical core counts, GPU list, RAM, disk) | Thông tin kiểm kê phần cứng (model CPU, số nhân vật lý / logic, danh sách GPU, RAM, ổ đĩa) |
| Public IP address (no geolocation enrichment in body) | Địa chỉ IP công khai (không có bổ sung thông tin định vị địa lý trong phần thân) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `voidcloudv2.byethost14.com`
panel-URL literal in the body AND at least four of the
six tight-bracketed section headers
(`[Operating System]`, `[User]`, `[CPU]`, `[Memory]`,
`[Graphics]`, `[Storage]`). The panel-URL literal alone
would risk false-matching a banner-only promotional
README that cites the same URL; the bracketed-section
quartet confirms a populated system-info body. The
companion folder-level detector covers stripped @updh2
victims that ship no `system_info.txt` at all (via a
`Void Cloud.png` panel-asset sibling anchor), so the
two attributions are mutually exclusive on folder shape.

### Tiếng Việt

Việc nhận diện dấu hiệu đòi hỏi chuỗi literal URL panel `voidcloudv2.byethost14.com` xuất hiện trong phần thân VÀ có ít nhất bốn trong số sáu tiêu đề mục đóng ngoặc sát nhau (`[Operating System]`, `[User]`, `[CPU]`, `[Memory]`, `[Graphics]`, `[Storage]`). Chỉ dựa vào chuỗi literal URL panel sẽ có nguy cơ khớp nhầm với một README quảng cáo chỉ mang tính banner mà cũng trích dẫn cùng URL đó; bộ bốn mục đóng ngoặc này xác nhận một phần thân thông tin hệ thống đã được điền đầy đủ. Bộ nhận diện cấp thư mục đi kèm bao quát các nạn nhân @updh2 dạng rút gọn không chứa `system_info.txt` nào (thông qua một mỏ neo liên quan là tài sản panel `Void Cloud.png`), do đó hai quy kết này loại trừ lẫn nhau xét theo cấu trúc dữ liệu của thư mục.

## Observed log variants

### `v_2bcfe9540a738f0c42e696a24a557483`

- Format ID: `cs-voidcloud-system-info-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: `SYSTEM INFORMATION`
- Distribution channel: `@FATETRAFFIC`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_2bcfe9540a738f0c42e696a24a557483/system_info.txt)
- Sample SHA-256: `917ae8093b1a9aa8bfed40d6edea482456f95eb79dbf9bad7e4ec577ab97e0a4`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `========== SYSTEM INFORMATION ==========`, `[CPU]`, `[Graphics]`, `[Memory]`, `[Operating System]`, `[Storage]`, `[User]`, `SYSTEM INFORMATION`
- Field labels: `api`, `Architecture`, `Available RAM`, `browsers`, `Capacity`, `Computer Name`, `Disk 1`, `Driver Version`, `GPU 1`, `HWID`, `Interface`, `IP`, `Logical Processors`, `Model`, `Name`, `Physical Cores`, `pipe`, `proc`, `Processor`, `screen`, `Total RAM`, `Used RAM`, `Username`, `Video Memory`, `Windows`

### `v_921f8f471c602f1525af714e01597e3f`

- Format ID: `cs-voidcloud-system-info-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: `Void Cloud (@updh2)`
- Distribution channel: `@updh2`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_921f8f471c602f1525af714e01597e3f/system_info.txt)
- Sample SHA-256: `a7a93c14ad4bbf39b3e3a81c9c4325ce131f11eadd77f7483dd5fd89f6e39313`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[CPU]`, `[Graphics]`, `[Memory]`, `[Operating System]`, `[Storage]`, `[User]`, `⚡@updh2`
- Field labels: `api`, `Architecture`, `Available RAM`, `browsers`, `Capacity`, `Computer Name`, `Disk 1`, `Driver Version`, `GPU 1`, `GPU 2`, `HWID`, `Interface`, `IP`, `Logical Processors`, `Model`, `Name`, `Physical Cores`, `pipe`, `proc`, `Processor`, `screen`, `Total RAM`, `Used RAM`, `Username`, `Video Memory`, `Windows`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- None recorded.

## Related external families

- `cs-stealer-voidcloud`

## Sources

- <https://heroic.com/darkhive-breaches/updh1-logs-breach-33483-records-exposed/>
- <https://heroic.com/darkhive-breaches/updh1-vip-logs-4-07-2026-uploaded-by-a-telegram-user/>

Machine-readable record: [family.json](family.json)
