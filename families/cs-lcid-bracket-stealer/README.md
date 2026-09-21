# CSLcidBracketStealer

## Overview / Tổng quan

### English

CSLcidBracketStealer is a CyStack-coined identifier for a
compact plain `Key: Value` `UserInformation.txt` panel
whose `Language:` field appends the Windows Locale ID hex
code in square brackets (for example `Language: English (United States) [0x0409]`). Observed inside `BONUS @FATETRAFFIC <count> MIX <DD>-<MM>-<YYYY>.part<N>.rar`
aggregator packs at
`[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/ UserInformation.txt` victim folders (for example
`[US]_@FATETRAFFIC_2026_08_30_05503357/UserInformation.txt`).

Body fields: `Computer`, `User`, `IP`, `OS`, `CPU`, `RAM`,
`Screen`, `Language`, `Keyboards`, `Uptime`, `Path`, `AV`.
The layout uses terse single-word keys throughout and packs
the CPU core count inline in parentheses after the model
string (`CPU: Intel(R) Xeon(R) CPU @ 2.30GHz (2 cores)`).
The `User` value is a 16-character lowercase-hex identifier
rather than the plain Windows account name emitted by every
catalogued stealer family, suggesting the panel writes a
hashed identity to obfuscate victim attribution. `Uptime`
is reported in a compact minutes-only form (`Uptime: 6 min`) unlike the long-form Noxty phrasing catalogued by
community indexes. `AV` reports a textual descriptor
(`AV: None detected`) rather than a product-name list.
`Path` records the sample execution path rather than the
`FileLocation:` label Redline canonical uses.

Attribution is provisional. No curated CTI vendor writeup
or community catalog surveyed at time of integration
documents this exact combination of terse single-word
keys, LCID-bracket `Language` trailer, `Keyboards:`
field, compact `Uptime: N min` shape, textual `AV: None detected` descriptor, and 16-character lowercase-hex
`User:` identifier under the `UserInformation.txt`
filename. The archive-side `@FATETRAFFIC` handle is an
aggregator label rather than a stealer builder.

### Tiếng Việt

CSLcidBracketStealer là định danh do CyStack đặt tên cho một panel dạng `Key: Value` `UserInformation.txt` đơn giản, trong đó trường `Language:` được nối thêm mã hex Windows Locale ID trong dấu ngoặc vuông (ví dụ `Language: English (United States) [0x0409]`). Được quan sát bên trong các gói tổng hợp `BONUS @FATETRAFFIC <count> MIX <DD>-<MM>-<YYYY>.part<N>.rar` tại các thư mục nạn nhân `[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/ UserInformation.txt` (ví dụ `[US]_@FATETRAFFIC_2026_08_30_05503357/UserInformation.txt`).

Các trường trong body: `Computer`, `User`, `IP`, `OS`, `CPU`, `RAM`, `Screen`, `Language`, `Keyboards`, `Uptime`, `Path`, `AV`. Bố cục sử dụng các khóa ngắn gọn một từ xuyên suốt và đóng gói số nhân CPU nội tuyến trong dấu ngoặc đơn sau chuỗi model (`CPU: Intel(R) Xeon(R) CPU @ 2.30GHz (2 cores)`).

Giá trị `User` là một định danh hex chữ thường gồm 16 ký tự thay vì tên tài khoản Windows dạng văn bản thuần mà mọi họ mã độc đánh cắp thông tin đã được ghi nhận tạo ra, cho thấy panel này ghi lại một định danh đã băm nhằm gây khó khăn cho việc quy kết nạn nhân. `Uptime` được báo cáo dưới dạng rút gọn chỉ tính bằng phút (`Uptime: 6 min`), khác với cách diễn đạt dạng dài của Noxty đã được các chỉ mục cộng đồng ghi nhận. `AV` báo cáo một mô tả dạng văn bản (`AV: None detected`) thay vì danh sách tên sản phẩm. `Path` ghi lại đường dẫn thực thi của mẫu thay vì nhãn `FileLocation:` mà Redline điển hình sử dụng.

Việc quy kết hiện chỉ mang tính tạm thời. Không có bài viết CTI được kiểm định từ nhà cung cấp nào hay danh mục cộng đồng nào được khảo sát tại thời điểm tích hợp ghi nhận đúng sự kết hợp này gồm các khóa ngắn gọn một từ, phần đuôi `Language` dạng LCID-bracket, trường `Keyboards:`, cấu trúc dữ liệu `Uptime: N min` rút gọn, mô tả `AV: None detected` dạng văn bản, và định danh `User:` hex chữ thường gồm 16 ký tự dưới tên tệp `UserInformation.txt`. Nhãn `@FATETRAFFIC` phía archive là một nhãn của công cụ tổng hợp chứ không phải bộ tạo mã độc đánh cắp thông tin.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `FATETRAFFIC LCID-bracket UserInformation.txt`, `LCID bracket stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host metadata: hostname, hashed user identity, OS build | Thông tin máy: tên máy, định danh người dùng đã băm, phiên bản build hệ điều hành |
| Hardware inventory: CPU model with core count, installed RAM | Thông tin phần cứng: model CPU kèm số nhân, dung lượng RAM đã lắp đặt |
| Screen resolution | Độ phân giải màn hình |
| Windows locale and keyboard layout enumeration | Liệt kê locale và bố cục bàn phím của Windows |
| Machine uptime at time of exfiltration | Thời gian hoạt động của máy tại thời điểm đưa dữ liệu ra ngoài |
| Sample execution path | Đường dẫn thực thi của mẫu |
| Installed antivirus product summary | Tóm tắt phần mềm diệt virus đã cài đặt |
| Victim public IP | Địa chỉ IP công cộng của nạn nhân |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires a `Language:` line whose value ends
with a bracketed Windows Locale ID hex code (matching
`[0x<hex>]`) AND a line-anchored `Uptime:` field. The
LCID-bracket trailer paired with the compact uptime field
is unique across catalogued stealer output. Canonical
Redline declines because of the absent operator banner
and the absent `FileLocation:`, `Build ID:`, and
`Operation System:` typo anchors. Canonical Lumma
declines because of the absent `-` dash prefix on every
field. During triage, treat the panel as an unattributed
builder until published research maps the terse-key
LCID-bracket schema to a specific family.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu một dòng `Language:` có giá trị kết thúc bằng mã hex Windows Locale ID trong dấu ngoặc vuông (khớp với `[0x<hex>]`) VÀ một trường `Uptime:` được neo theo dòng. Phần đuôi LCID-bracket kết hợp với trường thời gian hoạt động dạng rút gọn là đặc điểm duy nhất trong số các dữ liệu đầu ra của mã độc đánh cắp thông tin đã được ghi nhận. Redline điển hình bị loại trừ do thiếu banner của đối tượng vận hành và thiếu các điểm neo lỗi chính tả `FileLocation:`, `Build ID:`, và `Operation System:`. Lumma điển hình bị loại trừ do thiếu tiền tố gạch ngang `-` trên mọi trường. Trong quá trình phân loại ban đầu, hãy xem panel này là một công cụ xây dựng chưa được quy kết cho đến khi có nghiên cứu công bố ánh xạ lược đồ khóa ngắn gọn dạng LCID-bracket này với một họ mã độc cụ thể.

## Observed log variants

### `v_7d93bf3bdc7fa6df320571fb9592102f`

- Format ID: `cs-lcid-bracket-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_7d93bf3bdc7fa6df320571fb9592102f/UserInformation.txt)
- Sample SHA-256: `112344ae071783e3a12d395159902c8a9a02afc4101981658654bec4189ca1c0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `AV`, `Computer`, `CPU`, `IP`, `Keyboards`, `Language`, `OS`, `Path`, `RAM`, `Screen`, `Uptime`, `User`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery | Xác định ngôn ngữ hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
