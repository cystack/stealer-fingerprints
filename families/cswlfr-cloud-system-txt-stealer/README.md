# CSWLFRCloudSystemTxtStealer

## Overview / Tổng quan

### English

CSWLFRCloudSystemTxtStealer is a CyStack-coined identifier
for a second panel shape distributed by the WLFR Cloud
(`@WichLoveFromR`) Telegram log-reseller channel. The format
is a Title-case `System.txt` body distinct from the sibling
lowercase-terse `Info.txt` layout the same channel also
ships (captured separately as CSWLFRCloudStealer) and from
the XFiles-derived redistribution branch the channel also
resells (captured by the canonical XFiles parser).

Observed inside `ТG - @WichLoveFromR.rar` reseller packs -
note the leading Cyrillic `Т` homoglyph the operator uses
in the archive name to defeat naive handle-watermark grep
- at `[<CC>]<IP-sanitised>-<HWID-prefix>-<alphabet>-(TG @WichLoveFromR)/System.txt` victim folders. The reseller
channel self-watermark lands in the trailing parenthesis
group of the victim-folder name rather than in the body.

The body opens with a bare `Key: Value` block of
`IP` / `Country` / `HWID` / `CPU Cores` / `GPU` / `Volume Serial` / `RAM` / `OS` / `Display` / `Language` keys, then
an `Installed Apps (<N>)` section header with a
parenthesised count, a Unicode box-drawing separator, and
a two-space-indented application list. Distinguishing
conventions versus other panel layouts: `Volume Serial:`
carries an 8-hex Windows `GetVolumeInformationA` output
with no counterpart in any surveyed stealer-log format;
`CPU Cores:` ships bare with no `CPU Name:` / `Processor:`
/ `CPU Threads:` companion; `OS:` emits just the Windows
marketing version (`11`) followed by the
full `RtlGetVersion` triple in parens rather than the
standard `Windows <edition> (Build <N>)` display string;
`HWID:` is a 64-character hex SHA256-shape value rather
than the Redline-derivative dashed compound, the canonical
MachineGuid UUID, or the 32-char Lumma / sig-info hex;
`IP:` tolerates an optional CIDR prefix suffix (`/128`
observed on IPv6 values).

Family attribution is provisional pending a published
threat-intel mapping. Public research on stealer-log
Telegram clouds documents the WLFR Cloud / `@WichLoveFromR`
channel as a stealer-log distribution cloud, but none of
the surveyed curated or community sources attribute this
specific Title-case `Volume Serial:` + `CPU Cores:` +
`Installed Apps (<N>)` layout to a known underlying
builder as of 2026-11-24. The `CSWLFRCloudSystemTxtStealer`
literal captures the discovery while the surrounding
research trail lets a future maintainer rename the family
constant if a published mapping later surfaces.

### Tiếng Việt

CSWLFRCloudSystemTxtStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu panel thứ hai được phân phối qua kênh Telegram chuyên bán lại log WLFR Cloud (`@WichLoveFromR`). Định dạng này là nội dung `System.txt` viết hoa chữ cái đầu (Title-case), khác biệt với bố cục `Info.txt` viết thường, ngắn gọn mà cùng kênh này cũng phân phối (được ghi nhận riêng dưới tên CSWLFRCloudStealer) và khác với nhánh phân phối lại bắt nguồn từ XFiles mà kênh này cũng bán lại (được ghi nhận bởi trình phân tích XFiles chuẩn).

Được phát hiện bên trong các gói bán lại `ТG - @WichLoveFromR.rar` - lưu ý ký tự homoglyph Cyrillic `Т` ở đầu mà đối tượng vận hành sử dụng trong tên tệp lưu trữ nhằm qua mặt việc tìm kiếm (grep) đơn giản theo watermark định danh - tại các thư mục nạn nhân `[<CC>]<IP-sanitised>-<HWID-prefix>-<alphabet>-(TG @WichLoveFromR)/System.txt`. Watermark tự nhận diện của kênh bán lại nằm ở nhóm dấu ngoặc đơn phía cuối của tên thư mục nạn nhân, chứ không nằm trong nội dung chính.

Nội dung chính mở đầu bằng một khối thuần túy gồm các khóa `Key: Value` của `IP` / `Country` / `HWID` / `CPU Cores` / `GPU` / `Volume Serial` / `RAM` / `OS` / `Display` / `Language`, sau đó là tiêu đề phần `Installed Apps (<N>)` kèm số đếm trong ngoặc đơn, một dấu phân cách bằng ký tự vẽ khung Unicode, và danh sách ứng dụng thụt lề hai khoảng trắng. Các quy ước phân biệt so với các bố cục panel khác: `Volume Serial:` mang dữ liệu đầu ra 8 ký tự hex của Windows `GetVolumeInformationA` mà không có đối ứng ở bất kỳ định dạng log mã độc đánh cắp thông tin nào được khảo sát; `CPU Cores:` xuất hiện trơ trụi, không kèm `CPU Name:` / `Processor:` / `CPU Threads:` đi kèm; `OS:` chỉ tạo dữ liệu đầu ra là phiên bản thương mại của Windows (`11`) theo sau là bộ ba `RtlGetVersion` đầy đủ trong ngoặc đơn, thay vì chuỗi hiển thị `Windows <edition> (Build <N>)` tiêu chuẩn; `HWID:` là giá trị hex 64 ký tự dạng SHA256 thay vì chuỗi ghép nối có dấu gạch ngang kiểu phái sinh từ Redline, UUID MachineGuid chuẩn, hay hex 32 ký tự của Lumma / thông tin chữ ký; `IP:` chấp nhận hậu tố tiền tố CIDR tùy chọn (`/128` được quan sát trên các giá trị IPv6).

Việc quy kết họ mã độc vẫn mang tính tạm thời, chờ một bản đồ quy kết tình báo đe dọa đã được công bố. Các nghiên cứu công khai về các cloud log mã độc đánh cắp thông tin trên Telegram ghi nhận WLFR Cloud / kênh `@WichLoveFromR` là một cloud phân phối log mã độc đánh cắp thông tin, nhưng tính đến ngày 24-11-2026, không có nguồn nào trong số các nguồn được chọn lọc hay cộng đồng được khảo sát quy kết bố cục viết hoa chữ cái đầu `Volume Serial:` + `CPU Cores:` + `Installed Apps (<N>)` cụ thể này cho một trình tạo (builder) cơ bản đã biết. Chuỗi ký tự `CSWLFRCloudSystemTxtStealer` ghi lại phát hiện này, trong khi lộ trình nghiên cứu liên quan cho phép người quản trị trong tương lai đổi tên hằng số họ mã độc nếu sau này xuất hiện một bản đồ quy kết đã được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `WLFR Cloud System.txt`, `@WichLoveFromR System.txt`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim public IP plus ISO-2 country code | Địa chỉ IP công khai của nạn nhân kèm mã quốc gia ISO-2 |
| Victim HWID (64-character SHA256-shape hex) | HWID của nạn nhân (hex 64 ký tự dạng SHA256) |
| Victim Windows volume serial number | Số serial của volume Windows của nạn nhân |
| OS marketing version plus full build triple | Phiên bản thương mại của hệ điều hành kèm bộ ba build đầy đủ |
| CPU core count (no CPU model string) | Số lõi CPU (không có chuỗi tên model CPU) |
| Primary video adapter name | Tên card đồ họa chính |
| Installed RAM in megabytes | Dung lượng RAM đã cài đặt tính theo megabyte |
| Primary display resolution | Độ phân giải màn hình chính |
| Installed application inventory with versions | Danh mục các ứng dụng đã cài đặt kèm phiên bản |
| Locale identifier | Định danh locale |

## Detection notes / Ghi chú nhận diện

### English

Confidence anchors: line-anchored `Volume Serial:` AND
line-anchored `CPU Cores:` AND an `Installed Apps (<N>)`
section header carrying a parenthesised count. The
`Volume Serial:` key is unique across the surveyed
format corpus - no other panel emits it - so the first
anchor alone is near-definitive; pairing with the bare
`CPU Cores:` key (other panels emit it only alongside
their own self-brand literals this body never carries)
and the parenthesised-count section header makes the
claim unambiguous. The same `@WichLoveFromR` channel
resells several distinct panel shapes - triage logs
from this channel at the panel-brand level rather than
assuming a single underlying stealer family.

### Tiếng Việt

Các điểm neo tin cậy: `Volume Serial:` neo theo dòng VÀ `CPU Cores:` neo theo dòng VÀ tiêu đề phần `Installed Apps (<N>)` kèm số đếm trong ngoặc đơn. Khóa `Volume Serial:` là duy nhất trong toàn bộ kho định dạng được khảo sát - không có panel nào khác tạo dữ liệu đầu ra này - nên chỉ riêng điểm neo đầu tiên đã gần như mang tính xác định; kết hợp với khóa trơ trụi `CPU Cores:` (các panel khác chỉ tạo dữ liệu đầu ra này cùng với các chuỗi tự nhận diện thương hiệu riêng mà nội dung này không hề mang) và tiêu đề phần kèm số đếm trong ngoặc đơn khiến nhận định trở nên rõ ràng, không còn mơ hồ. Cùng kênh `@WichLoveFromR` bán lại nhiều cấu trúc dữ liệu panel khác nhau - cần phân loại log từ kênh này ở cấp độ thương hiệu panel thay vì giả định chỉ có một họ mã độc đánh cắp thông tin cơ bản duy nhất.

## Observed log variants

### `v_542bb543b91c28738d7f6b6692393228`

- Format ID: `cs-wlfr-cloud-systemtxt-stealer`
- Observed filenames: `System.txt`
- Panel brand: `@WichLoveFromR System.txt (Volume Serial + Installed Apps)`
- Distribution channel: `@WichLoveFromR`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_542bb543b91c28738d7f6b6692393228/System.txt)
- Sample SHA-256: `13f6e9831dbafd02383edbb75c4a5d9e6b91b9062887d2d23f6e285f0cb37e6b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `CPU Cores`, `Display`, `GPU`, `HWID`, `IP`, `Language`, `OS`, `RAM`, `Volume Serial`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery | Xác định ngôn ngữ hệ thống |

## Related catalog profiles

- [CSWLFRCloudStealer](../cswlfr-cloud-stealer/)
- [XFiles](../x-files/)

## Observed distribution channels

- <https://t.me/WichLoveFromR>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
