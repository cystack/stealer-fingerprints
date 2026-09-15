# CSBradMaxCloudBannerOnlyStealer

## Overview / Tổng quan

### English

CSBradMaxCloudBannerOnlyStealer is a CyStack-coined
identifier for a banner-only `system_info.txt` shape
distributed through the @bradmax_cloud Telegram channel.
The file ships the aBradMax Figlet banner inside a
`*`-bordered frame with the
`Telegram: https://t.me/BRADMAX_CLOUD` watermark and
nothing else: no `Key: Value` field block, no section
separators, no installed-software inventory or environment-variable dump. The underlying stealer panel template
emitted the header but the field-population step failed
(operator-side normalization failure, anti-leech truncation, or
the source log was captured mid-write).

Observed inside `!! 2024 MAY.part01.rar` packs at
`<CC>_<IPv4>_<YYYY>_<MM>_<DD>_<HH>_<MM>_<SS>/ /system_info.txt` victim folders (e.g.
`CZ_<IPv4>_2024_04_22_16_05_20/system_info.txt`).
The all-underscore timestamp separators distinguish this
folder shape from the Mars-fork sibling that puts a space
between the date and time components. The file basename
`system_info.txt` (underscore + lowercase) is distinct
from the `system.txt` / `System.txt` / `Information.txt`
filenames the other four BRADMAX_CLOUD slices use, but
the fingerprint relies on body content rather than the filename
so that variant filenames carrying the same banner-only
body remains identifiable.

### Tiếng Việt

CSBradMaxCloudBannerOnlyStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu `system_info.txt` chỉ chứa banner, được phát tán qua kênh Telegram @bradmax_cloud.
Tệp này chứa banner Figlet aBradMax bên trong một khung viền `*` kèm watermark `Telegram: https://t.me/BRADMAX_CLOUD` và không có gì khác: không có khối trường `Key: Value`, không có dấu phân tách phần, không có danh mục phần mềm đã cài đặt hay bản kết xuất biến môi trường. Mẫu giao diện quản trị (panel) của mã độc đánh cắp thông tin bên dưới đã tạo dữ liệu đầu ra phần header nhưng bước điền trường bị lỗi (lỗi chuẩn hóa dữ liệu từ phía đối tượng vận hành, bị cắt bớt do cơ chế chống rò rỉ (anti-leech), hoặc log nguồn bị thu thập giữa lúc đang ghi).

Được quan sát bên trong các gói `!! 2024 MAY.part01.rar` tại các thư mục nạn nhân `<CC>_<IPv4>_<YYYY>_<MM>_<DD>_<HH>_<MM>_<SS>/ /system_info.txt` (ví dụ `CZ_<IPv4>_2024_04_22_16_05_20/system_info.txt`).
Các dấu phân tách timestamp toàn dấu gạch dưới giúp phân biệt cấu trúc thư mục này với dạng liên quan thuộc nhánh rẽ (fork) Mars, vốn đặt một dấu cách giữa phần ngày và phần giờ. Tên tệp cơ sở `system_info.txt` (dùng dấu gạch dưới + chữ thường) khác với các tên tệp `system.txt` / `System.txt` / `Information.txt` mà bốn phần còn lại của BRADMAX_CLOUD sử dụng, nhưng dấu hiệu nhận diện dựa vào nội dung phần thân tệp thay vì tên tệp, nhờ đó các biến thể tên tệp khác mang cùng phần thân chỉ chứa banner vẫn có thể được nhận diện.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX_CLOUD empty-body system_info.txt stub`, `BRADMAX_CLOUD banner-only skeleton sample`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Channel-attribution metadata only; no extractable victim or device fields | Chỉ có siêu dữ liệu quy kết theo kênh; không có trường dữ liệu nạn nhân hoặc thiết bị nào có thể trích xuất |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both the
`Telegram: https://t.me/BRADMAX_CLOUD` watermark AND that
the file content (after rstrip) ends with at least 20
consecutive `*` characters - the closing banner border.
Body-bearing siblings (DCRat, Lumma, normalizer-generated,
Mars-fork) all end with a field line that does not
satisfy the asterisk-tail check, so the disambiguator is
unambiguous. During triage, treat the underlying stealer
family as unattributable: the banner-only sample carries
no signal that pins it to a specific builder. Companion
files in the victim folder (browser dumps, wallet
exports) carry the real harvested credentials; the
`system_info.txt` banner-only stub is just the header
stub.

### Tiếng Việt

Việc nhận diện đòi hỏi đồng thời cả watermark `Telegram: https://t.me/BRADMAX_CLOUD` VÀ nội dung tệp (sau khi rstrip) kết thúc bằng ít nhất 20 ký tự `*` liên tiếp - phần viền đóng của banner. Các dấu vết liên quan có chứa phần thân dữ liệu (DCRat, Lumma, được tạo bởi bộ chuẩn hóa, nhánh rẽ Mars) đều kết thúc bằng một dòng trường dữ liệu không thỏa điều kiện kiểm tra đuôi dấu hoa thị, do đó tiêu chí phân biệt này là rõ ràng, không mập mờ. Trong quá trình phân loại ban đầu (triage), nên coi họ mã độc đánh cắp thông tin bên dưới là không thể quy kết: mẫu chỉ chứa banner không mang bất kỳ tín hiệu nào giúp xác định gắn với một bộ công cụ dựng mã độc (builder) cụ thể. Các tệp liên quan trong thư mục nạn nhân (bản kết xuất trình duyệt, dữ liệu ví xuất ra) mới chứa thông tin xác thực thực sự bị thu thập; stub chỉ chứa banner `system_info.txt` chỉ là phần đầu (header stub).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)
- [Mars Stealer](../mars-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
