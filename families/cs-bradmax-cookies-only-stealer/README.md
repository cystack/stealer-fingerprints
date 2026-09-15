# CSBradmaxCookiesOnlyStealer

## Overview / Tổng quan

### English

CSBradmaxCookiesOnlyStealer is a CyStack-coined identifier for
a minimal one-subdirectory victim folder observed inside
`@BRADMAX 20000 APRIL-MAY.part1.rar` aggregator packs at
`[<CC>]UNKNOWN_(<N>)/` filler-folder victim paths. The pack
strips every per-family artifact from the victim folder except
the browser cookie jar, leaving a two-entry root: a `cookies/`
subdirectory holding one or more Netscape `cookies.txt` files
(basenames of the form `Cookies (<N>).txt`) plus the
empty-named packer directory artifact.

The cookie body is the canonical seven-field TAB-separated
cookie-jar layout documented by curl and the fileformats wiki:
domain, include-subdomains flag, path, secure flag, integer
expiry, name, value. The panel harvests this shape from
Chromium's Cookies SQLite database and exports it verbatim.

The BRADMAX aggregator (`@BRADMAX` / `bradmax_cloud` /
`@BRADLOGS`) resells stealer logs from multiple underlying
families. Public channel catalogues attest the channel as a
Redline and Raccoon redistributor. This minimal cookies-only
layout carries no remaining family signal beyond "cookie-jar
exporter": no system-info file, no browser-credential dump, no
wallet folder, no token file. Family attribution is
provisional pending a published threat-intel mapping for this
specific stripped-to-cookies BRADMAX layout.

### Tiếng Việt

CSBradmaxCookiesOnlyStealer là định danh do CyStack đặt cho một dạng thư mục nạn nhân tối giản chỉ có một thư mục con, được quan sát bên trong các gói tổng hợp `@BRADMAX 20000 APRIL-MAY.part1.rar` tại các đường dẫn nạn nhân dạng thư mục đệm `[<CC>]UNKNOWN_(<N>)/`. Gói này loại bỏ mọi dấu vết đặc trưng theo từng họ mã độc khỏi thư mục nạn nhân, chỉ giữ lại kho cookie trình duyệt, tạo ra một thư mục gốc với hai mục: một thư mục con `cookies/` chứa một hoặc nhiều tệp Netscape `cookies.txt` (tên tệp có dạng `Cookies (<N>).txt`) cùng với dấu vết thư mục packer có tên rỗng.

Nội dung cookie tuân theo bố cục kho cookie chuẩn bảy trường phân tách bằng TAB được curl và fileformats wiki mô tả: domain, cờ include-subdomains, path, cờ secure, thời hạn hết hạn dạng số nguyên, name, value. Panel thu thập cấu trúc dữ liệu này từ cơ sở dữ liệu SQLite Cookies của Chromium và xuất ra nguyên trạng.

Bộ tổng hợp BRADMAX (`@BRADMAX` / `bradmax_cloud` / `@BRADLOGS`) bán lại log đánh cắp thông tin từ nhiều họ mã độc nền tảng khác nhau. Các danh mục kênh công khai xác nhận kênh này là đơn vị phân phối lại của Redline và Raccoon. Bố cục tối giản chỉ-cookie này không còn mang tín hiệu nhận diện họ mã độc nào ngoài đặc điểm "công cụ xuất kho cookie": không có tệp thông tin hệ thống, không có bản dump thông tin xác thực trình duyệt, không có thư mục ví, không có tệp token. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố dành riêng cho bố cục BRADMAX đã bị lược bỏ chỉ còn cookie này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX cookies-only minimal victim pack`, `[<CC>]UNKNOWN_(<N>) cookies-only variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser session cookies (Chromium cookies.txt export) | Cookie phiên trình duyệt (bản xuất cookies.txt của Chromium) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires (a) the folder root entry set is a
subset of `{"cookies", ""}` (case-insensitive) so the
`cookies` subdirectory is the only real child plus an
optional empty-named packer DIR, and (b) 2+ Netscape
cookies.txt rows in the cred-file body where the second
and fourth fields are `TRUE` or `FALSE` and the fifth
field is an integer expiry. The two-row floor stays low
because the folder-shape constraint plus the seven-field
tab layout is already discriminating. Some victims ship
a single Netflix or Google session cookie file whose
3-row body is dominated by one enormous session-token
blob (e.g. Netflix MAC-signed `NetflixId` cookies at
~800 bytes each), leaving fewer than five parseable
rows. During triage, treat this label as a "victim
folder truncated to just the cookie jar" marker: the
underlying stealer builder is not identifiable from
this shape alone, only the BRADMAX distribution channel
is. High-value session cookies (claude.ai, netflix.com,
google.com, microsoft.com, banking domains) still
travel through the cred-file body and are usable IOCs
even without family attribution.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu (a) tập hợp các mục trong thư mục gốc là tập con của `{"cookies", ""}` (không phân biệt chữ hoa/thường), sao cho thư mục con `cookies` là mục con thực sự duy nhất kèm theo một thư mục packer tên rỗng tùy chọn, và (b) có từ 2 dòng Netscape cookies.txt trở lên trong nội dung tệp thông tin xác thực, trong đó trường thứ hai và trường thứ tư là `TRUE` hoặc `FALSE` và trường thứ năm là thời hạn hết hạn dạng số nguyên. Ngưỡng tối thiểu hai dòng vẫn được giữ ở mức thấp vì ràng buộc về cấu trúc thư mục kết hợp với bố cục bảy trường phân tách bằng tab đã đủ tính phân biệt. Một số nạn nhân chỉ có một tệp cookie phiên Netflix hoặc Google duy nhất, trong đó nội dung ba dòng bị chi phối bởi một khối token phiên khổng lồ (ví dụ: cookie `NetflixId` được ký MAC của Netflix, mỗi cookie khoảng ~800 byte), khiến số dòng có thể phân tích được ít hơn năm. Trong quá trình phân loại ban đầu, hãy xem nhãn này như một dấu hiệu "thư mục nạn nhân đã bị cắt gọt chỉ còn kho cookie": trình dựng mã độc đánh cắp thông tin nền tảng không thể xác định chỉ từ cấu trúc dữ liệu này, chỉ có thể xác định kênh phân phối BRADMAX. Các cookie phiên có giá trị cao (claude.ai, netflix.com, google.com, microsoft.com, các domain ngân hàng) vẫn xuất hiện trong nội dung tệp thông tin xác thực và vẫn là các IOC hữu ích ngay cả khi chưa quy kết được họ mã độc.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)

## Related external families

- `cs-netscape-cookies-notice`

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
