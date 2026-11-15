# CSBradmaxBracketUserInfoStealer

## Overview / Tổng quan

### English

CSBradmaxBracketUserInfoStealer is a CyStack-coined identifier for
the BRADMAX reseller sibling to the truncated-variant
Redline-shape panel, distributed as `UserInfo.txt` at
`[<CC>]<IPv4>/UserInfo.txt` victim folders inside `@BRADMAX <N> <Month-range>.part<NN>.rar` packs (e.g. `@BRADMAX 36800 SEPT-OCT/[AU]86.38.102.16/UserInfo.txt`).

The body is Redline-canonical in vocabulary - `Operation System:` singular-typo OS key, 32-hex uppercase `HWID`,
`Processor:` CPU model line, `Graphics Card:` GPU section
- but ships three distinctive structural differences from
stock Redline and from the sibling truncated-variant
panel. First, `BuildID [<tag>]` is written as a
square-bracketed line without a trailing colon (stock
Redline uses the `BuildID: <tag>` form). Second, the
public IP and ISO-2 country code are collapsed into a
single `IP Address: <ipv4> (<CC>)` line (stock Redline splits these into
`IP:` and `Country:` lines). Third, the RAM scalar is a
`Installed RAM: <N>MB` concatenated-unit value on its own
line (stock Redline ships `Hardwares:` + `Name: Total of RAM, <N.NN> Mb or <bytes> bytes` dual-serialisation).
Cores and threads are top-level scalars (`Processor Threads:` / `Processor Cores:`) rather than embedded in
the CPU model line, and the final `Server Time: <DD.MM.YYYY HH:MM:SS>` capture timestamp sits after a
blank-line separator.

Family attribution is provisional pending a published
threat-intel mapping. The body vocabulary links to
Redline per Flare, SecurityScorecard, cyberint, and
CloudSEK writeups, but the bracketed `BuildID [<tag>]`
form without a trailing colon and the `Installed RAM: <N>MB` concatenated-unit scalar are not attested by any
surveyed curated CTI vendor or community catalogue
(MalBeacon / what-is-this-stealer, fastfire /
deepdarkCTI, Malpedia, RussianPanda blog) for stock
Redline builder output. The BRADMAX reseller redistributes
logs from multiple underlying families (per the
deepdarkCTI `t.me/bradmax_cloud` entry) so the aggregator
watermark does not attribute the underlying builder
either. During triage, treat this label as a
Redline-shape body shipped by BRADMAX as `UserInfo.txt` with
bracketed BuildID: the host / user / HWID / OS / CPU /
GPU / RAM / display fields are usable IOCs, but the
underlying builder cannot be confirmed as stock Redline
without an independent curated CTI mapping.

### Tiếng Việt

CSBradmaxBracketUserInfoStealer là một định danh do CyStack đặt tên, chỉ biến thể reseller BRADMAX đi kèm với panel dạng Redline bị cắt ngắn (truncated-variant), được phân phối dưới dạng `UserInfo.txt` tại các thư mục nạn nhân `[<CC>]<IPv4>/UserInfo.txt` bên trong các gói `@BRADMAX <N> <Month-range>.part<NN>.rar` (ví dụ: `@BRADMAX 36800 SEPT-OCT/[AU]86.38.102.16/UserInfo.txt`).

Phần thân là từ vựng mang tính chuẩn mực của Redline - khóa OS lỗi chính tả số ít `Operation System:`, `HWID` dạng 32 ký tự hex viết hoa, dòng mô hình CPU `Processor:`, mục GPU `Graphics Card:` - nhưng có ba khác biệt cấu trúc đặc trưng so với Redline nguyên bản và so với panel biến thể bị cắt ngắn đồng dạng. Thứ nhất, `BuildID [<tag>]` được ghi dưới dạng một dòng trong dấu ngoặc vuông không có dấu hai chấm ở cuối (Redline nguyên bản dùng dạng `BuildID: <tag>`). Thứ hai, địa chỉ IP công khai và mã quốc gia ISO-2 được gộp thành một dòng `IP Address: <ipv4> (<CC>)` duy nhất (Redline nguyên bản tách thành các dòng `IP:` và `Country:`). Thứ ba, giá trị RAM là một giá trị `Installed RAM: <N>MB` nối liền đơn vị trên một dòng riêng (Redline nguyên bản dùng cách tuần tự hóa kép `Hardwares:` + `Name: Total of RAM, <N.NN> Mb or <bytes> bytes`). Số nhân và số luồng là các giá trị cấp cao nhất (`Processor Threads:` / `Processor Cores:`) thay vì được nhúng trong dòng mô hình CPU, và dấu thời gian thu thập `Server Time: <DD.MM.YYYY HH:MM:SS>` cuối cùng nằm sau một dòng trống phân tách.

Việc quy kết họ mã độc chỉ mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa (threat-intel) được công bố. Từ vựng phần thân liên hệ đến Redline theo các bài viết của Flare, SecurityScorecard, cyberint và CloudSEK, nhưng dạng `BuildID [<tag>]` trong dấu ngoặc vuông không có dấu hai chấm ở cuối cùng giá trị nối liền đơn vị `Installed RAM: <N>MB` không được ghi nhận bởi bất kỳ nhà cung cấp hay danh mục CTI cộng đồng nào đã khảo sát (MalBeacon / what-is-this-stealer, fastfire / deepdarkCTI, Malpedia, blog RussianPanda) đối với đầu ra builder Redline nguyên bản. Đối tượng reseller BRADMAX phân phối lại log từ nhiều họ mã độc nền khác nhau (theo mục `t.me/bradmax_cloud` của deepdarkCTI), do đó watermark của công cụ tổng hợp cũng không quy kết được builder nền. Trong quá trình phân loại ban đầu, hãy coi nhãn này là một phần thân dạng Redline được BRADMAX phân phối dưới dạng `UserInfo.txt` với BuildID trong dấu ngoặc vuông: các trường host / user / HWID / OS / CPU / GPU / RAM / độ phân giải màn hình là các dấu hiệu xâm nhập (IOC) có thể sử dụng được, nhưng builder nền không thể được xác nhận là Redline nguyên bản nếu không có ánh xạ CTI độc lập đã được kiểm chứng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX UserInfo.txt`, `BRADMAX bracket-BuildID Redline-shape`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim public IPv4 plus ISO-2 country code | Địa chỉ IPv4 công khai của nạn nhân cùng mã quốc gia ISO-2 |
| Panel log timestamp (DD.MM.YYYY HH:MM:SS) | Dấu thời gian log trên panel (DD.MM.YYYY HH:MM:SS) |
| Victim machine hostname and account username | Tên máy và tên tài khoản người dùng của nạn nhân |
| Victim HWID (32-hex uppercase MD5-shape) | HWID của nạn nhân (dạng MD5 32 ký tự hex viết hoa) |
| Windows OS version string | Chuỗi phiên bản hệ điều hành Windows |
| CPU model plus cores and thread count | Mô hình CPU cùng số nhân và số luồng |
| Primary GPU name | Tên GPU chính |
| Installed RAM in megabytes and display resolution | Dung lượng RAM đã cài đặt (MB) và độ phân giải màn hình |
| Per-build label (short lowercase alphanumeric tag) | Nhãn theo từng bản build (thẻ chữ và số ngắn, viết thường) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four body anchors: an `IP Address:`
geo-header line, a bracketed `BuildID [<tag>]` line
without a trailing colon, the Redline-canonical
`Operation System:` singular-typo OS key, and an
`Installed RAM:` scalar. The bracketed BuildID alone
rules out stock Redline and every documented
Redline-fork (Meta, Aurora, Amadey, Pure Logs); the `Installed RAM:` key rules out the sibling truncated-variant
BRADMAX parser (which keys on `Hardwares:` + `Name: Total of RAM,`). During triage, treat the family
attribution as unknown: the panel-render shape does not
map to a named stealer family in any surveyed curated
or community threat-intel corpus.

### Tiếng Việt

Việc nhận diện dấu vết đòi hỏi bốn điểm neo trong phần thân: dòng tiêu đề địa lý `IP Address:`, dòng `BuildID [<tag>]` trong dấu ngoặc vuông không có dấu hai chấm ở cuối, khóa OS lỗi chính tả số ít mang tính chuẩn mực của Redline `Operation System:`, và giá trị `Installed RAM:`. Riêng BuildID trong dấu ngoặc vuông đã đủ để loại trừ Redline nguyên bản và mọi nhánh Redline-fork đã được ghi nhận (Meta, Aurora, Amadey, Pure Logs); khóa `Installed RAM:` loại trừ trình phân tích panel BRADMAX biến thể bị cắt ngắn đồng dạng (vốn dựa trên khóa `Hardwares:` + `Name: Total of RAM,`). Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: cấu trúc dữ liệu hiển thị trên panel không ánh xạ đến một họ mã độc đánh cắp thông tin có tên cụ thể trong bất kỳ kho dữ liệu tình báo mối đe dọa đã được kiểm chứng hoặc cộng đồng nào đã khảo sát.

## Observed log variants

### `v_0a534718acffa0bfb690c64a0c3ee35c`

- Format ID: `cs-bradmax-bracket-user-info-stealer`
- Observed filenames: `UserInfo.txt`
- Panel brand: `@BRADMAX`
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_0a534718acffa0bfb690c64a0c3ee35c/UserInfo.txt)
- Sample SHA-256: `6accf0685ac35702b72a7c0a5f672e9f7c8d25ae3ae5c371cc180292c3107a8a`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Computer Name`, `Display Resolution`, `Graphics Card`, `HWID`, `Installed RAM`, `IP Address`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `Server Time`, `Time Zone`, `User Language`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery | Xác định ngôn ngữ hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- [Redline](../redline/)
- [CSBradmaxRedlineTruncStealer](../cs-bradmax-redline-trunc-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
