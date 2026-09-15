# CSBitArchStealer

## Overview / Tổng quan

### English

CSBitArchStealer is a CyStack-coined identifier for a
colon-no-space `info.txt` panel observed inside `!! 2026 JAN.part01.rar` aggregator packs distributed via Telegram log
channels. Per-victim folders follow a
`<id>_<2-hex>_<ip>_<DD-MM-YY>/info.txt` layout. The body is a
flat key/value block whose distinguishing markers are a
parenthesised `BitArch:(x64 bit)` architecture field and a
`WindowsVersion:` OS-name field, neither of which is used by
any other family in the catalog.

The panel writes literal `Unknown country` / `Unknown city` /
`Unknown Region` / `Unknown IP` / `Unknown Timezone` /
`Unknown Zip` placeholders when its IP-to-geo lookup fails.
Field-name semantics deviate from convention: the panel
appears to source `Username` from Windows USERDOMAIN
(workgroup label) and `DomainName` from the machine name, so
the values are essentially swapped relative to what the labels
suggest.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting plus
public stealer-format catalogues do not document a family
using this exact field set. The `CSBitArchStealer` literal
preserves the panel's most distinctive marker as the suffix;
Update this tracking profile if a public writeup later
identifies the underlying builder.

### Tiếng Việt

CSBitArchStealer là định danh do CyStack đặt cho một panel dạng `info.txt` không có khoảng trắng sau dấu hai chấm, được phát hiện bên trong các gói tổng hợp `!! 2026 JAN.part01.rar` phân phối qua các kênh log Telegram. Các thư mục theo từng nạn nhân tuân theo bố cục `<id>_<2-hex>_<ip>_<DD-MM-YY>/info.txt`. Phần thân là một khối key/value dạng phẳng với các dấu hiệu đặc trưng gồm một trường kiến trúc `BitArch:(x64 bit)` được đặt trong ngoặc đơn và một trường tên hệ điều hành `WindowsVersion:`, cả hai đều không xuất hiện ở bất kỳ họ mã độc nào khác trong danh mục.

Panel ghi các placeholder nguyên văn `Unknown country` / `Unknown city` / `Unknown Region` / `Unknown IP` / `Unknown Timezone` / `Unknown Zip` khi việc tra cứu IP-sang-vị trí địa lý thất bại. Ngữ nghĩa tên trường lệch khỏi quy ước thông thường: panel dường như lấy `Username` từ USERDOMAIN của Windows (nhãn workgroup) và `DomainName` từ tên máy, do đó các giá trị về cơ bản bị hoán đổi so với những gì nhãn trường gợi ý.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ tình báo mối đe dọa được công bố cho bố cục này. Các báo cáo công khai cùng các danh mục định dạng stealer công khai không ghi nhận họ mã độc nào sử dụng đúng tập trường này. Phần hậu tố `CSBitArchStealer` giữ lại dấu hiệu đặc trưng nhất của panel làm hậu tố; hãy cập nhật hồ sơ theo dõi này nếu sau này có bài viết công khai xác định được builder gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **49**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| System hardware and locale inventory | Thông tin kiểm kê phần cứng hệ thống và ngôn ngữ hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Requires the `BitArch:(` parenthesised-value substring AND
the `WindowsVersion:` substring. Either alone is too weak
(a stray document could mention `BitArch` without the
parenthesis, or quote `WindowsVersion` in unrelated text);
the pair together is unique to this panel. The literal
`Unknown <field>` placeholders for failed geolocation represent missing data rather than usable evidence; triage on
`country` / `city` / `ip` / `time_zone` / `zip_code`
reflect actual information content rather than the
panel's placeholder string.

### Tiếng Việt

Cần có đồng thời chuỗi con giá trị trong ngoặc đơn `BitArch:(` VÀ chuỗi con `WindowsVersion:`. Nếu chỉ dùng một trong hai thì quá yếu (một tài liệu ngẫu nhiên có thể đề cập `BitArch` mà không có dấu ngoặc đơn, hoặc trích dẫn `WindowsVersion` trong văn bản không liên quan); chỉ khi kết hợp cả hai mới là dấu hiệu duy nhất của panel này. Các placeholder nguyên văn `Unknown <field>` dùng khi định vị địa lý thất bại thể hiện dữ liệu bị thiếu chứ không phải bằng chứng có thể sử dụng được; khi phân loại ưu tiên dựa trên `country` / `city` / `ip` / `time_zone` / `zip_code` phản ánh nội dung thông tin thực tế thay vì chuỗi placeholder của panel.

## Observed log variants

### `v_969a7984a60742aead582cf696200347`

- Format ID: `cs-bit-arch-stealer`
- Observed filenames: `info.txt`
- Panel brand: `BitArch:(x64 bit) info.txt`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **49**
- Representative sample: [open sample](samples/v_969a7984a60742aead582cf696200347/sample.txt)
- Sample SHA-256: `579f4f22fe68541d46e241ef2292428b2063306d08c43e3961bb2c382a8bcccb`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `BitArch:(`
- Field labels: `WindowsVersion`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
