# CSLogsTesterStealer

## Overview / Tổng quan

### English

CSLogsTesterStealer is a CyStack tracking name for a
Vidar-shaped `information.txt` distributed by the
`@logstester` Telegram channel operator. Victim folders
follow the shape `vidar_<YYYYMMDD>_<CC>_<IPv4>` and ship
inside archives named
`vidar_<YYYYMMDD>_private_@logstester.zip.NNN`. The outer
archive name literal that the operator self-labels as
`vidar_*` corroborates the underlying-family attribution.

The body opens with a lone `@logstester` channel-handle
banner line followed by a heavily-stripped Vidar-canonical
field block: `Ip`, `Country`, `Date`, `MachineID`, `HWID`,
`Path`, `Work Dir`, `Windows`, `Computer Name`, `User Name`,
`Display Resolution`, `Local Time`, `Processor`, `Cores`,
`Threads`, `RAM` - the same key names Vidar's own
`information.txt` documents per AhnLab ASEC, S2W, and
TrendMicro. The rebrand strips `Version`, `GUID`,
`VideoCard`, `Install date`, `AV`, `Display Language`,
`Keyboard Languages`, `TimeZone`, and the trailing
`[Hardware]`, `[Processes]`, `[Software]` section blocks
from the canonical Vidar layout and never re-adds them.

Distinctive presentation differences vs the canonical Vidar
body: the hardware sub-block emits the core-count key as
`Ϲоrеѕ:` with mixed Cyrillic homoglyphs (`Ϲ` U+03F9 GREEK
CAPITAL LUNATE SIGMA SYMBOL, `о` U+043E CYRILLIC SMALL
LETTER O, `r` U+0072 Latin, `е` U+0435 CYRILLIC SMALL
LETTER IE, `ѕ` U+0455 CYRILLIC SMALL LETTER DZE) where
every canonical Vidar build uses Latin `Cores:`, the
harvest wall clock uses dotted DMY separators
(`DD.MM.YYYY HH:MM:SS`) rather than the canonical slash
DMY form, and the `Work Dir:` slot frequently carries the
concatenation `<user-account> <computer-name>` rather than
a filesystem path. The Cyrillic homoglyph is a stable
panel-side quirk observable across every sample from this
channel.

Public reporting does not index the `@logstester` channel
by name, so the Vidar attribution is inferred from the
field-vocabulary match plus the operator self-labeling the
outer archive as `vidar_*`. Confidence is retained at
medium pending an explicit rebrand mapping.

This tracking name is unrelated to the sibling
`@logstester2` panel, which distributes a completely
different terse-key `PC Name / User time / GEO` triple
body under `unknown6_<YYYYMMDD>_@logstester2.zip` archive
shells; the trailing `2` marks a separate channel with a
different underlying shape, not an alias.

### Tiếng Việt

CSLogsTesterStealer là tên theo dõi của CyStack dành cho một `information.txt` có cấu trúc dữ liệu giống Vidar, được đối tượng vận hành kênh Telegram `@logstester` phân phối. Các thư mục nạn nhân tuân theo cấu trúc dữ liệu `vidar_<YYYYMMDD>_<CC>_<IPv4>` và được đóng gói bên trong các archive có tên `vidar_<YYYYMMDD>_private_@logstester.zip.NNN`. Tên archive ngoài cùng mà đối tượng vận hành tự gắn nhãn là `vidar_*` củng cố thêm cho việc quy kết về họ mã độc gốc.

Nội dung mở đầu bằng một dòng banner đơn lẻ chứa handle kênh `@logstester`, theo sau là một khối trường dữ liệu chuẩn của Vidar đã bị cắt gọt mạnh: `Ip`, `Country`, `Date`, `MachineID`, `HWID`, `Path`, `Work Dir`, `Windows`, `Computer Name`, `User Name`, `Display Resolution`, `Local Time`, `Processor`, `Cores`, `Threads`, `RAM` - đây chính là các tên trường mà tài liệu `information.txt` của Vidar ghi nhận theo AhnLab ASEC, S2W và TrendMicro. Bản rebrand này lược bỏ `Version`, `GUID`, `VideoCard`, `Install date`, `AV`, `Display Language`, `Keyboard Languages`, `TimeZone`, cùng các khối phần cuối `[Hardware]`, `[Processes]`, `[Software]` khỏi bố cục chuẩn của Vidar và không bao giờ bổ sung lại.

Các khác biệt đáng chú ý trong cách trình bày so với nội dung chuẩn của Vidar: khối con phần cứng tạo dữ liệu đầu ra cho khóa số lượng lõi CPU dưới dạng `Ϲоrеѕ:` với các ký tự đồng dạng Cyrillic bị trộn lẫn (`Ϲ` U+03F9 GREEK CAPITAL LUNATE SIGMA SYMBOL, `о` U+043E CYRILLIC SMALL LETTER O, `r` U+0072 Latin, `е` U+0435 CYRILLIC SMALL LETTER IE, `ѕ` U+0455 CYRILLIC SMALL LETTER DZE), trong khi mọi bản dựng chuẩn của Vidar đều dùng ký tự Latin `Cores:`; đồng hồ thời gian thu thập sử dụng dấu phân cách DMY dạng chấm (`DD.MM.YYYY HH:MM:SS`) thay vì dạng DMY dùng dấu gạch chéo chuẩn; và trường `Work Dir:` thường mang chuỗi ghép `<user-account> <computer-name>` thay vì một đường dẫn hệ thống tệp. Ký tự đồng dạng Cyrillic này là một đặc điểm riêng ổn định phía panel, có thể quan sát được trên mọi mẫu từ kênh này.

Các báo cáo công khai không lập chỉ mục kênh `@logstester` theo tên, do đó việc quy kết về Vidar được suy ra từ sự trùng khớp về từ vựng trường dữ liệu cộng với việc đối tượng vận hành tự gắn nhãn archive ngoài cùng là `vidar_*`. Mức độ tin cậy được giữ ở mức trung bình cho đến khi có bản đồ rebrand tường minh.

Tên theo dõi này không liên quan đến panel `@logstester2` có liên quan, vốn phân phối một nội dung ba phần với khóa ngắn gọn hoàn toàn khác `PC Name / User time / GEO` bên trong các lớp archive `unknown6_<YYYYMMDD>_@logstester2.zip`; hậu tố `2` đánh dấu một kênh riêng biệt với cấu trúc dữ liệu gốc khác, không phải là một bí danh.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **medium**
- Canonical family: [vidar](../vidar/)
- Aliases: `@logstester Vidar rebrand`, `@logstester private cloud`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực, cookie, dữ liệu tự động điền được trình duyệt lưu trữ |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng và ứng dụng desktop ví tiền điện tử |
| System hardware and identity inventory | Thông tin kiểm kê phần cứng và danh tính hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `@logstester` distributor-brand
handle present in content AND at least one Vidar-canonical
identifier line-anchored (`MachineID:` OR `Work Dir:`). The
handle literal alone is unique across the registered
parser set (the sibling `@logstester2` panel requires the
`2` suffix and a different terse-key triple) but the
paired Vidar-canonical field guards against a stray
credential file that quotes the channel URL in cleartext.
Canonical Vidar cleanly declines this body: every
canonical Vidar fingerprint path either requires `GUID:`
present, requires `VideoCard:` present, requires
`Keyboard Languages:` present, requires the `[Hardware]`
or `[Processes]` or `[Software]` bracket section header, or
gates the `Work Dir + MachineID + HWID` triple on the
`bugatti_cloud` or `BRADMAX_CLOUD` markers, all of which
are absent from this heavily-stripped Cyrillic-Cores
variant.

### Tiếng Việt

Việc nhận diện dấu hiệu đặc trưng đòi hỏi phải có mặt handle thương hiệu của đối tượng phân phối `@logstester` trong nội dung, VÀ có ít nhất một dòng định danh chuẩn của Vidar được neo theo dòng (`MachineID:` HOẶC `Work Dir:`). Chuỗi handle này tự nó là duy nhất trong toàn bộ tập parser đã đăng ký (panel `@logstester2` có liên quan yêu cầu hậu tố `2` và một bộ ba khóa ngắn gọn khác), nhưng trường chuẩn Vidar đi kèm giúp phòng tránh trường hợp một tệp thông tin xác thực ngẫu nhiên trích dẫn URL kênh dưới dạng văn bản rõ. Vidar chuẩn hoàn toàn không khớp với nội dung này: mọi đường dẫn nhận diện chuẩn của Vidar đều yêu cầu có mặt `GUID:`, hoặc yêu cầu có mặt `VideoCard:`, hoặc yêu cầu có mặt `Keyboard Languages:`, hoặc yêu cầu tiêu đề khối trong ngoặc vuông `[Hardware]` hay `[Processes]` hay `[Software]`, hoặc gắn điều kiện bộ ba `Work Dir + MachineID + HWID` với các dấu hiệu `bugatti_cloud` hoặc `BRADMAX_CLOUD` - tất cả những yếu tố này đều không có trong biến thể "Cyrillic-Cores" đã bị cắt gọt mạnh này.

## Observed log variants

### `v_dad3bff850210ff504b42143c288eeb1`

- Format ID: `cs-logstester-stealer`
- Observed filenames: `information.txt`
- Panel brand: `@logstester`
- Distribution channel: `@logstester`
- Attribution confidence: **medium**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_dad3bff850210ff504b42143c288eeb1/information.txt)
- Sample SHA-256: `550fcabc83d3de720a5788863a5bcac1558dc655c6451cedf6410326b9b836dd`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `@logstester`, `[Hardware]`, `[Processes]`, `[Software]`
- Field labels: `Antivirus`, `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `Ip`, `Local Time`, `MachineID`, `MD5`, `Path`, `Processor`, `RAM`, `Threads`, `User Name`, `VideoCard`, `Windows`, `Work Dir`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Vidar](../vidar/)

## Sources

- <https://asec.ahnlab.com/en/17633/>
- <https://medium.com/s2wblog/deep-analysis-of-vidar-stealer-ebfc3b557aed>
- <https://www.trendmicro.com/en_us/research/25/j/how-vidar-stealer-2-upgrades-infostealer-capabilities.html>
- <https://www.kaspersky.com/resource-center/threats/vidar-stealer>

Machine-readable record: [family.json](family.json)
