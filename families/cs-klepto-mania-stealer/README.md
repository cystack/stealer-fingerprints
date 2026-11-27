# CSKleptoManiaStealer

## Overview / Tổng quan

### English

CSKleptoManiaStealer is a CyStack-coined identifier for the
`#KleptoMania` self-branded `Info.txt` panel wrapping a
`PHANTOMTRAFFIC` figlet ASCII-art banner. Observed inside
`IziCloud <count>pcs.part<NN>.rar` reseller packs at
`IziCloud_<DDMMYYYY>_<numeric-id>/Info.txt` victim folders.
The body opens with a block-shaded `PHANTOMTRAFFIC` figlet,
a `: <alphanum> PHANTOMTRAFFIC<alphanum>` watermark line,
and a `#KleptoMania` self-brand hashtag on its own line;
then a flat identity preamble (`Path:` / `Elevated:`); then
three hashtag-prefixed section headers (`#Info` /
`#Hardware` / `#Space`) each followed by a block of flat
`Key: Value` lines.

Distinguishing vocabulary: `Motherboard:` mainboard key
(uncommon across cataloged stealer panels), `External IPv4:` + `Default Gateway:` + `Internal IPv4:` network
trio, `OS Product: <SKU> <arch> <locale> (Build: <version>.<revision>)` Windows SKU display string with
parenthesised build, `Time: YYYY/MM/DD - HH:MM:SS` slash
date format with a space-delimited date and time, and a
`#Space` section listing each mounted drive as `<Letter>: Fixed <N>GB (<N>GB Free)` compact capacity and free lines.

Family attribution is provisional pending a published
threat-intel mapping. The `#KleptoMania` self-brand plus
`PHANTOMTRAFFIC` watermark pair does not match any
documented malware family in the surveyed curated or
community catalogues. `PHANTOMTRAFFIC` is unrelated to
the generic `Phantom Stealer` MaaS (which emits
JSON-structured logs without hashtag sections per
published writeups). The CyStack-coined identifier
captures the
panel self-brand as the suffix; a future curated CTI
mapping can promote the family literal.

### Tiếng Việt

CSKleptoManiaStealer là định danh do CyStack đặt tên cho bảng điều khiển tự nhận thương hiệu `#KleptoMania` `Info.txt` bao bọc một biểu ngữ ASCII art kiểu figlet `PHANTOMTRAFFIC`. Được ghi nhận bên trong các gói bán lại `IziCloud <count>pcs.part<NN>.rar` tại các thư mục nạn nhân `IziCloud_<DDMMYYYY>_<numeric-id>/Info.txt`.
Phần thân mở đầu bằng một figlet dạng khối bóng mờ `PHANTOMTRAFFIC`,
một dòng watermark `: <alphanum> PHANTOMTRAFFIC<alphanum>`,
và một hashtag tự nhận thương hiệu `#KleptoMania` trên dòng riêng; sau đó là phần mở đầu danh tính dạng phẳng (`Path:` / `Elevated:`); tiếp theo là ba tiêu đề mục có tiền tố hashtag (`#Info` /
`#Hardware` / `#Space`), mỗi tiêu đề theo sau là một khối các dòng phẳng `Key: Value`.

Từ vựng đặc trưng: khóa mainboard `Motherboard:`
(hiếm gặp trong các bảng điều khiển mã độc đánh cắp thông tin đã được lập danh mục), bộ ba thông tin mạng `External IPv4:` + `Default Gateway:` + `Internal IPv4:`, chuỗi hiển thị phiên bản Windows SKU `OS Product: <SKU> <arch> <locale> (Build: <version>.<revision>)` kèm số build trong ngoặc đơn, định dạng ngày kiểu gạch chéo `Time: YYYY/MM/DD - HH:MM:SS` với ngày và giờ phân tách bằng khoảng trắng, và một mục `#Space` liệt kê từng ổ đĩa đã gắn kèm dòng dung lượng và dung lượng trống dạng rút gọn `<Letter>: Fixed <N>GB (<N>GB Free)`.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có ánh xạ tình báo đe dọa được công bố. Cặp tự nhận thương hiệu `#KleptoMania` cùng watermark `PHANTOMTRAFFIC` không khớp với bất kỳ họ mã độc nào đã được ghi nhận trong các danh mục tình báo đe dọa đã qua chọn lọc hoặc danh mục cộng đồng được khảo sát. `PHANTOMTRAFFIC` không liên quan đến dịch vụ MaaS `Phantom Stealer` chung chung (loại tạo dữ liệu đầu ra dạng log có cấu trúc JSON mà không có các mục hashtag theo các bài viết đã công bố). Định danh do CyStack đặt tên lấy thương hiệu tự nhận trên bảng điều khiển làm hậu tố; một ánh xạ tình báo đe dọa đã qua chọn lọc trong tương lai có thể nâng cấp định danh họ mã độc này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `KleptoMania`, `PHANTOMTRAFFIC`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim public IPv4 plus LAN address and default gateway | Địa chỉ IPv4 công khai của nạn nhân cùng địa chỉ LAN và gateway mặc định |
| Panel log timestamp (YYYY/MM/DD HH:MM:SS) | Dấu thời gian log của bảng điều khiển (YYYY/MM/DD HH:MM:SS) |
| Victim HWID (16-hex short form) | HWID của nạn nhân (dạng rút gọn 16 ký tự hex) |
| Windows SKU display string with build revision | Chuỗi hiển thị phiên bản Windows SKU kèm số hiệu bản build |
| CPU and GPU model identifiers | Định danh model CPU và GPU |
| Installed RAM in megabytes with free-memory annotation | Dung lượng RAM đã cài đặt tính bằng megabyte kèm chú thích bộ nhớ trống |
| Mainboard model identifier | Định danh model mainboard |
| Per-drive capacity and free-space inventory | Danh sách dung lượng và dung lượng trống theo từng ổ đĩa |
| Primary display resolution | Độ phân giải màn hình chính |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three substring anchors all present
in the body: the `#KleptoMania` self-brand hashtag, the
`#Info` section header, and the `#Hardware` section
header. The `#KleptoMania` literal is 13 chars long and
panel-specific. No other cataloged stealer panel uses
the hashtag-section-header convention, so the triple
coupled together cannot plausibly co-occur in unrelated
content. False-positive risk is low because the three
anchors are sibling markers from the same panel builder.

### Tiếng Việt

Việc lấy dấu vân tay yêu cầu ba điểm neo chuỗi con đều phải có mặt trong phần thân: hashtag tự nhận thương hiệu `#KleptoMania`, tiêu đề mục `#Info`, và tiêu đề mục `#Hardware`. Chuỗi `#KleptoMania` dài 13 ký tự và là đặc trưng riêng của bảng điều khiển này. Không có bảng điều khiển mã độc đánh cắp thông tin nào khác đã được lập danh mục sử dụng quy ước tiêu đề mục dạng hashtag này, do đó bộ ba điểm neo này khi kết hợp với nhau khó có thể cùng xuất hiện một cách ngẫu nhiên trong nội dung không liên quan. Rủi ro dương tính giả ở mức thấp vì ba điểm neo này là các dấu vết liên quan xuất phát từ cùng một công cụ xây dựng bảng điều khiển.

## Observed log variants

### `v_ddad525ac9f67aaae0c7c33abda62ee0`

- Format ID: `cs-kleptomania-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `KleptoMania (PHANTOMTRAFFIC watermark)`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ddad525ac9f67aaae0c7c33abda62ee0/Info.txt)
- Sample SHA-256: `6e13ddd3d38f7fe2747ef2c92f2fa0d1de96b97662b3f8bc0bc8befd4276200a`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `C`, `CPU`, `D`, `Default Gateway`, `Elevated`, `External IPv4`, `GPU`, `Hwid`, `Internal IPv4`, `Machine`, `Motherboard`, `OS Product`, `Path`, `RAM`, `Resolution`, `Time`, `User`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery | Xác định ngôn ngữ hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
