# CSBradMaxCloudPCStealer

## Overview / Tổng quan

### English

CSBradMaxCloudPCStealer is a CyStack-coined identifier for a
bare-key flat `Key: Value` `Information.txt` shape distributed
through the @BRADMAX_CLOUD Telegram channel. The file ships
the aBradMax Figlet banner inside a `*`-bordered frame with
the `Telegram: https://t.me/BRADMAX_CLOUD` watermark, then a
flat body of bare `Key: Value` lines (no dash prefix, no
`Name` suffix on the `PC` / `User` keys). The field set covers
PC, User, Workgroup, ComputerNameDnsHostname,
ComputerNameNetBIOS, OS Version, HWID, Screen Resoluton (sic),
Language, CPU Name, GPU, Physical Installed Memory, IP
Address, and Country.

The COMPUTER_NAME_FORMAT-enum-derived labels
(`ComputerNameDnsHostname`, `ComputerNameNetBIOS`) plus the
`Physical Installed Memory` field name point to a .NET builder
iterating Windows enum values verbatim, but no public
reporting or community catalog documents this exact field-set
with the `Screen Resoluton` operator typo. Family attribution
is provisional pending a published threat-intel mapping for
this layout.

### Tiếng Việt

CSBradMaxCloudPCStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu dạng phẳng bare-key `Key: Value` `Information.txt` được phát tán qua kênh Telegram @BRADMAX_CLOUD. Tệp chứa banner Figlet aBradMax bên trong khung viền `*` kèm watermark `Telegram: https://t.me/BRADMAX_CLOUD`, tiếp theo là phần thân phẳng gồm các dòng bare `Key: Value` (không có tiền tố gạch ngang, không có hậu tố `Name` trên các khóa `PC` / `User`). Tập trường bao gồm PC, User, Workgroup, ComputerNameDnsHostname, ComputerNameNetBIOS, OS Version, HWID, Screen Resoluton (nguyên văn), Language, CPU Name, GPU, Physical Installed Memory, IP Address, và Country.

Các nhãn bắt nguồn từ enum COMPUTER_NAME_FORMAT (`ComputerNameDnsHostname`, `ComputerNameNetBIOS`) cùng tên trường `Physical Installed Memory` cho thấy đây là một công cụ dựng bằng .NET lặp qua các giá trị enum của Windows nguyên trạng, nhưng chưa có báo cáo công khai hay danh mục cộng đồng nào ghi nhận chính xác tập trường này cùng lỗi đánh máy `Screen Resoluton` của đối tượng vận hành. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ một ánh xạ threat-intel đã công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX_CLOUD bare-key Information.txt slice`, `BRADMAX flat PC User HWID Screen Resoluton variant`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU, GPU, RAM, screen, HWID, OS version) | Dấu vết nhận dạng phần cứng máy và hệ điều hành (CPU, GPU, RAM, màn hình, HWID, phiên bản OS) |
| Network identity (IP address, country, language) | Danh tính mạng (địa chỉ IP, quốc gia, ngôn ngữ) |
| Account identity (Windows username, computer name pair, workgroup) | Danh tính tài khoản (tên người dùng Windows, cặp tên máy, workgroup) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both the
`https://t.me/BRADMAX_CLOU` URL prefix (the loosened
prefix tolerates the known panel-render bug that fuses
the URL with adjacent lines mid-word at the channel-name
suffix) and the line-anchored `Screen Resoluton:`
operator-typo literal. The typo is the load-bearing
disambiguator: no other surveyed stealer family emits a
`Resoluton` (sic) key, and the URL pin confirms the
BRADMAX_CLOUD redistributor portfolio. During triage,
treat the underlying stealer family as unattributable
and rely on the channel + panel_brand metadata to bucket
samples for analyst review. Companion files in the
victim folder (browser dumps, wallet exports) may provide more confident family attribution.

### Tiếng Việt

Việc xác định dấu hiệu nhận dạng đòi hỏi cả tiền tố URL `https://t.me/BRADMAX_CLOU` (tiền tố được nới lỏng nhằm dung nạp lỗi hiển thị panel đã biết, khiến URL bị dính liền với các dòng lân cận giữa từ tại hậu tố tên kênh) lẫn chuỗi literal lỗi đánh máy của đối tượng vận hành `Screen Resoluton:` được neo theo dòng. Lỗi đánh máy này chính là yếu tố phân biệt then chốt: không có họ mã độc đánh cắp thông tin nào khác được khảo sát tạo dữ liệu đầu ra khóa `Resoluton` (nguyên văn), và việc ghim URL xác nhận danh mục các bên phân phối lại thuộc BRADMAX_CLOUD. Trong quá trình phân loại ban đầu, hãy coi họ mã độc đánh cắp thông tin gốc là chưa thể quy kết và dựa vào metadata channel cùng panel_brand để phân nhóm mẫu cho việc phân tích chuyên sâu. Các tệp liên quan trong thư mục nạn nhân (bản trích xuất trình duyệt, dữ liệu ví) có thể cung cấp cơ sở quy kết họ mã độc đáng tin cậy hơn.

## Observed log variants

### `v_3e84975b41e8a954c0cab50a13034560`

- Format ID: `cs-bradmax-cloud-pc-stealer`
- Observed filenames: `System.txt`
- Panel brand: `BRADMAX_CLOUD`
- Distribution channel: `@logsdealerobot`
- Attribution confidence: **unknown**
- Layout: `dash-stripped`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_3e84975b41e8a954c0cab50a13034560/System.txt)
- Sample SHA-256: `b1e3b2826c04a6f216b48a649383e32ec6eb0a1162f249d4869753abb5158ef2`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `ComputerNameDnsHostname`, `ComputerNameNetBIOS`, `CPU Name`, `Domain`, `GPU`, `HWID`, `IP Address`, `Language`, `OS Version`, `PC`, `Physical Installed Memory`, `Screen Resoluton`, `User`, `Workgroup`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [Mars Stealer](../mars-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [CSBradMaxCloudBannerOnlyStealer](../cs-brad-max-cloud-banner-only-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX_CLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
