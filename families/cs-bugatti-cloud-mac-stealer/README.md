# CSBugattiCloudMacStealer

## Overview / Tổng quan

### English

CSBugattiCloudMacStealer is a CyStack-coined identifier for
the macOS `Information.txt` panel observed inside
`@Bugatti_Cloud Bugatti_Man <DD.MM>.part<NN>.rar` reseller
packs distributed through the `@bugatti_cloudnew` Telegram
channel. Victim folders follow a bracket-chain shape
`@bugatti_cloudnew [<CC>][<build-tag>][<IPv4>][<YYYY.MM.DD_ HH.MM.SS>]` where the bracketed segments encode the ISO-2
country, the per-build label, the public IPv4 and the
panel-side capture timestamp.

The body opens with a triple-equals `=== System Info ===`
banner followed by a short pre-geo block carrying a `Build Tag` short lowercase alphanumeric code (`okob` in the
observed sample), the `External IP`, and a 2-letter
`Country` code. A second bare `System Info` sub-header
separates the pre-geo block from an identity + host block
carrying `Username` (single-word spelling, distinct from
canonical `User Name`), a 16-hex half-length `Agent ID`
per-installation identifier, `Hostname` (.local macOS
suffix observed), `OS Version` as a bare Darwin kernel
triplet (`15.0.1`, without the canonical `macOS <major>. <minor> (<build>)` wrapping that `system_profiler` emits),
an IANA `Timezone` identifier, and a `Languages` JSON array
of BCP-47 locale tags. The trailing `Hardware:` section
exposes four 4-space-indented child scalars: `GPU` (Apple
Silicon SoC name), `CPU Cores` (count only, distinct from
canonical `Total Number of Cores`), `RAM` (GB), and
`Screen` (pre-normalised `WxH` form).

Family attribution is provisional pending a published
threat-intel mapping. The `@Bugatti_Cloud Bugatti_Man`
reseller surfaces in commercial breach-scanner catalogues
as a Telegram distributor of "Bugatti_Cloud" stealer-log
bundles (listings dated April 2024 and July / August 2026
with conflicting record counts between the same vendor's
own reports: 1,422 / 9,763 / 10,189 across neighbouring
dates) but no curated CTI vendor or community catalogue
surveyed as of 2026-11-05 attributes this triple-equals
banner + `Build Tag` + `Agent ID` layout to a named
stealer family. The surveyed macOS stealer families that
call `system_profiler` (Cthulhu per Darktrace, AMOS per
SentinelOne / eSentire / Picus, Banshee per Elastic
Security Labs / Check Point / Kaspersky, Poseidon / Odyssey
per Red Canary, DigitStealer per Jamf) each publish
sample logs with richer canonical field sets (`User Name`,
`Hardware UUID`, `System Version: macOS ...`, `Total Number of Cores`, `Chipset Model`) that are all absent
from this layout, ruling them out by field-key spelling
alone. The @Bugatti_Cloud reseller ships at least two
distinct system-file layouts under the same bundle
watermark (a Windows-shaped `Info.txt` Remus derivative
and this macOS `Information.txt` flavour); the two
layouts carry no shared field names, so they likely
originate from separate underlying builders bundled
under one reseller watermark. Treat the family attribution
as unknown during triage.

### Tiếng Việt

CSBugattiCloudMacStealer là định danh do CyStack đặt cho bảng điều khiển (panel) macOS `Information.txt` được quan sát bên trong các gói bán lại `@Bugatti_Cloud Bugatti_Man <DD.MM>.part<NN>.rar` được phân phối qua kênh Telegram `@bugatti_cloudnew`. Các thư mục nạn nhân tuân theo cấu trúc chuỗi dấu ngoặc `@bugatti_cloudnew [<CC>][<build-tag>][<IPv4>][<YYYY.MM.DD_ HH.MM.SS>]`, trong đó các đoạn nằm trong dấu ngoặc mã hóa quốc gia theo chuẩn ISO-2, nhãn riêng cho từng bản build, địa chỉ IPv4 công khai và mốc thời gian thu thập phía panel.

Phần thân bắt đầu bằng banner ba dấu bằng `=== System Info ===`, tiếp theo là một khối pre-geo ngắn chứa một mã chữ-số viết thường ngắn `Build Tag` (là `okob` trong mẫu được quan sát), `External IP`, và mã 2 chữ `Country`. Một tiêu đề phụ trần thứ hai `System Info` ngăn cách khối pre-geo với khối định danh + máy chứa `Username` (cách viết một từ, khác với `User Name` chính quy), một định danh riêng cho từng lần cài đặt `Agent ID` dạng 16 ký tự hex độ dài một nửa, `Hostname` (hậu tố .local của macOS được quan sát), `OS Version` dưới dạng bộ ba phiên bản nhân Darwin trần (`15.0.1`, không có phần bao `macOS <major>. <minor> (<build>)` chính quy mà `system_profiler` tạo dữ liệu đầu ra), một định danh múi giờ IANA `Timezone`, và một mảng JSON `Languages` chứa các thẻ locale theo chuẩn BCP-47. Phần `Hardware:` ở cuối hiển thị bốn giá trị con dạng scalar được thụt lề 4 khoảng trắng: `GPU` (tên SoC Apple Silicon), `CPU Cores` (chỉ số lượng, khác với `Total Number of Cores` chính quy), `RAM` (GB), và `Screen` (dạng `WxH` chưa được chuẩn hóa trước).

Việc quy kết họ mã độc vẫn còn tạm thời, chờ một bản đồ tình báo đe dọa được công bố. Đối tượng bán lại `@Bugatti_Cloud Bugatti_Man` xuất hiện trong các danh mục quét dữ liệu vi phạm thương mại với vai trò là nhà phân phối trên Telegram các gói log mã độc đánh cắp thông tin "Bugatti_Cloud" (các danh sách được ghi ngày tháng 4/2024 và tháng 7/tháng 8/2026 với số lượng bản ghi mâu thuẫn nhau giữa các báo cáo của cùng một nhà cung cấp: 1.422 / 9.763 / 10.189 trên các ngày liền kề) nhưng không có nhà cung cấp CTI được chọn lọc hay danh mục cộng đồng nào được khảo sát tính đến ngày 05-11-2026 quy kết bố cục banner ba dấu bằng + `Build Tag` + `Agent ID` này cho một họ mã độc đánh cắp thông tin có tên cụ thể. Các họ mã độc đánh cắp thông tin macOS được khảo sát có gọi `system_profiler` (Cthulhu theo Darktrace, AMOS theo SentinelOne / eSentire / Picus, Banshee theo Elastic Security Labs / Check Point / Kaspersky, Poseidon / Odyssey theo Red Canary, DigitStealer theo Jamf) đều công bố mẫu log với tập trường dữ liệu chính quy phong phú hơn (`User Name`, `Hardware UUID`, `System Version: macOS ...`, `Total Number of Cores`, `Chipset Model`) mà đều không có trong bố cục này, qua đó có thể loại trừ các họ này chỉ dựa trên cách đặt tên trường dữ liệu. Đối tượng bán lại @Bugatti_Cloud phân phối ít nhất hai cấu trúc tệp hệ thống khác nhau dưới cùng một watermark gói hàng (một biến thể Remus có cấu trúc dành cho Windows `Info.txt` và biến thể macOS `Information.txt` này); hai cấu trúc này không có tên trường dữ liệu chung nào, do đó nhiều khả năng chúng xuất phát từ các bộ công cụ xây dựng (builder) nền tảng khác nhau được gói chung dưới một watermark của đối tượng bán lại. Hãy coi việc quy kết họ mã độc là chưa xác định trong quá trình phân loại ban đầu.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@bugatti_cloudnew`, `@Bugatti_Cloud Bugatti_Man`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim public IP plus ISO-2 country code | Địa chỉ IP công khai của nạn nhân cùng mã quốc gia ISO-2 |
| Per-build label (short lowercase alphanumeric tag) | Nhãn riêng cho từng bản build (thẻ chữ-số viết thường ngắn) |
| Per-installation Agent ID (16-hex half-length identifier) | Agent ID riêng cho từng lần cài đặt (định danh 16 ký tự hex độ dài một nửa) |
| Victim macOS account username | Tên tài khoản macOS của nạn nhân |
| Victim macOS hostname | Tên máy (hostname) macOS của nạn nhân |
| macOS kernel version triplet | Bộ ba phiên bản nhân macOS |
| IANA timezone identifier | Định danh múi giờ IANA |
| BCP-47 primary locale tag | Thẻ locale chính theo chuẩn BCP-47 |
| Apple Silicon SoC name plus CPU core count | Tên SoC Apple Silicon cùng số nhân CPU |
| Installed RAM and screen resolution | RAM đã cài đặt và độ phân giải màn hình |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four body anchors: a triple-equals
`=== System Info ===` banner literal, a `Build Tag:` key,
an `Agent ID:` key (observed values are 16-hex half-length
identifiers), and a `Hardware:` section header. The
triple-equals banner alone rules out every documented
macOS panel format surveyed, and the `Build Tag` + `Agent ID` key pair pins the per-build correlator shape. The
`Username` single-word key and bare-triplet `OS Version`
value together rule out any panel that pipes raw
`system_profiler` output. During triage, treat the
family attribution as unknown: the panel builder does
not map to a named stealer family in any surveyed
curated or community threat-intel corpus.

### Tiếng Việt

Việc lập dấu hiệu nhận diện yêu cầu bốn điểm neo trong phần thân: một chuỗi banner ba dấu bằng `=== System Info ===`, một khóa `Build Tag:`, một khóa `Agent ID:` (các giá trị quan sát được là định danh 16 ký tự hex độ dài một nửa), và một tiêu đề phần `Hardware:`. Chỉ riêng banner ba dấu bằng đã loại trừ mọi định dạng panel macOS đã được ghi nhận trong khảo sát, và cặp khóa `Build Tag` + `Agent ID` xác định cấu trúc dữ liệu liên kết theo từng bản build. Khóa một từ `Username` cùng với giá trị bộ ba trần `OS Version` cùng nhau loại trừ bất kỳ panel nào chuyển tiếp trực tiếp dữ liệu đầu ra thô của `system_profiler`. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: bộ công cụ xây dựng panel này không khớp với bất kỳ họ mã độc đánh cắp thông tin có tên cụ thể nào trong các nguồn tình báo đe dọa được chọn lọc hoặc cộng đồng đã khảo sát.

## Observed log variants

### `v_ece25abb9dedf06803e3ec1eacf75249`

- Format ID: `cs-bugatti-cloud-mac-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `@bugatti_cloudnew`
- Distribution channel: `@bugatti_cloudnew`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ece25abb9dedf06803e3ec1eacf75249/Information.txt)
- Sample SHA-256: `c9ca3bfd5b4bc2e22bd8c68ee8ef4ac63bf35fcd3ab340455cec24f226a045e5`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Hardware:`
- Field labels: `Agent ID`, `Build Tag`, `Country`, `CPU Cores`, `External IP`, `GPU`, `Hardware`, `Hostname`, `Languages`, `OS Version`, `RAM`, `Screen`, `Timezone`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- [CSBugattiCloudPcInfoStealer](../cs-bugatti-cloud-pc-info-stealer/)

## Related external families

- `cs-bugatti-cloud-dcrat`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
