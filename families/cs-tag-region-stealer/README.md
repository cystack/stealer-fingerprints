# CSTagRegionStealer

## Overview / Tổng quan

### English

CSTagRegionStealer is a CyStack-coined identifier for a
stripped 9-line `system.txt` panel whose most distinctive
feature is a mid-file key-spacing transition. The first five
fields use the tight `Key: Value` shape (`Core:`, `Video:`,
`RAM:`, `Screen:`, `OS:`), and the trailing four fields use
the loose `Key : Value` shape with a space before the colon
and all-lowercase key names (`name :`, `tag :`, `ip :`,
`region :`). The transition suggests a builder that
concatenates two separately-generated blocks: a hardware
inventory followed by an identity plus geolocation block.

The panel emits no ASCII-art banner and no watermark. The `tag :` field carries the operator affiliate or build identifier
when set (empty in the retained sample,
indicating a default no-tag build). The `region :` field
carries a slash-separated `Country/Subdivision/City` triple
with the full country name (not ISO 3166-1 alpha-2) as the
first token; the full-name country value should not be treated as an ISO country code.

Observed inside a generic `<N MONTH> - <count> LOGS`
aggregator archive with victim folders shaped as
`[<IPv4>]<hostname>{<MachineGuid>}/system.txt`. The aggregator
naming does not identify a specific Telegram channel.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues return no hits for the `Core:` / `Video:`
/ `Screen:` label combination or for the space-around-colon
lowercase `tag :` / `region :` pair. The CyStack tracking name can be revised when published evidence identifies the underlying builder.

### Tiếng Việt

CSTagRegionStealer là tên định danh do CyStack đặt cho một panel dạng `system.txt` gồm 9 dòng đã được lược bớt, có đặc điểm nổi bật nhất là sự chuyển đổi khoảng cách khóa (key-spacing) ở giữa tệp. Năm trường đầu tiên sử dụng cấu trúc dữ liệu `Key: Value` chặt (`Core:`, `Video:`, `RAM:`, `Screen:`, `OS:`), còn bốn trường phía sau sử dụng cấu trúc dữ liệu `Key : Value` lỏng với khoảng trắng trước dấu hai chấm và tên khóa viết thường toàn bộ (`name :`, `tag :`, `ip :`, `region :`). Sự chuyển đổi này cho thấy một builder ghép nối hai khối được sinh ra riêng biệt: một khối kiểm kê phần cứng theo sau bởi một khối danh tính cùng định vị địa lý.

Panel không tạo dữ liệu đầu ra dạng banner ASCII-art và không có watermark. Trường `tag :` mang mã định danh liên kết đối tượng vận hành hoặc mã định danh bản build khi được thiết lập (rỗng trong mẫu được lưu giữ, cho thấy đây là bản build mặc định không có tag). Trường `region :` mang bộ ba `Country/Subdivision/City` phân tách bằng dấu gạch chéo, trong đó mã đầu tiên là tên quốc gia đầy đủ (không phải mã ISO 3166-1 alpha-2); giá trị tên quốc gia đầy đủ này không nên được xem là mã quốc gia ISO.

Được quan sát bên trong một kho lưu trữ tổng hợp `<N MONTH> - <count> LOGS` chung, với các thư mục nạn nhân có cấu trúc dạng `[<IPv4>]<hostname>{<MachineGuid>}/system.txt`. Cách đặt tên của bộ tổng hợp này không xác định được một kênh Telegram cụ thể nào.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có bản đồ tình báo mối đe dọa được công bố cho bố cục này. Các báo cáo công khai và danh mục cộng đồng không trả về kết quả nào cho tổ hợp nhãn `Core:` / `Video:` / `Screen:`, cũng như cho cặp `tag :` / `region :` viết thường có khoảng trắng quanh dấu hai chấm. Định danh do CyStack đặt có thể được điều chỉnh khi có bằng chứng công bố xác định được builder gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| System hardware and geolocation fingerprint (CPU, GPU, RAM, screen resolution, OS, hostname, IP, region) | Dấu vết định danh phần cứng hệ thống và định vị địa lý (CPU, GPU, RAM, độ phân giải màn hình, hệ điều hành, tên máy, IP, khu vực) |
| Credential artifacts in sibling files within the victim folder | Dấu vết thông tin xác thực trong các tệp liên quan nằm trong thư mục nạn nhân |

## Detection notes / Ghi chú nhận diện

### English

Line-anchored `Core:` (rather than `CPU:` / `Processor:`)
plus line-anchored `tag :` and `region :` (both space-around-colon lowercase) is the three-anchor fingerprint.
The mid-file key-spacing transition is the strongest
stylistic tell. During triage, treat the `tag :` value
as the operator build or affiliate identifier and
correlate across samples: multiple logs sharing the
same tag value likely originate from the same build.
The `region :` value carries the full-name country and
a slash-separated `Country/Subdivision/City` triple
suitable for coarse geolocation correlation.

### Tiếng Việt

Dấu hiệu nhận diện gồm ba mốc neo: `Core:` được neo theo dòng (thay vì `CPU:` / `Processor:`), cùng với `tag :` và `region :` cũng được neo theo dòng (cả hai đều viết thường có khoảng trắng quanh dấu hai chấm). Sự chuyển đổi khoảng cách khóa ở giữa tệp là dấu hiệu phong cách đặc trưng nhất. Trong quá trình phân tích ban đầu, nên xem giá trị `tag :` là mã định danh bản build hoặc mã liên kết của đối tượng vận hành và đối chiếu giữa các mẫu: nhiều log có cùng giá trị tag khả năng cao xuất phát từ cùng một bản build. Giá trị `region :` mang tên quốc gia đầy đủ cùng bộ ba `Country/Subdivision/City` phân tách bằng dấu gạch chéo, phù hợp để đối chiếu định vị địa lý ở mức thô.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
