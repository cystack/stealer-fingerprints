# CSCCsHistoryStealer

## Overview / Tổng quan

### English

CSCCsHistoryStealer is a CyStack-coined identifier for a
stripped 2-file per-victim folder shipping just `cc's.txt` (a
pipe-separated credit-card table) and `history.txt` (browser
history dump) inside a 32-hex MD5 wrapped-in-brackets parent
folder. The `cc's.txt` body opens with a five-column header
`Name on Card | Expiration Month | Expiration Year | Card Number | Date Modified` mirroring the Chromium `Web Data`
SQLite `credit_cards` table columns. The `Date Modified` 5th
column is the panel's distinguishing serialisation choice over
canonical Raccoon / Redline / Stealc card formats.

Observed inside `MAY 02 - 8230 LOGS` aggregator packs (the `LOGS` sibling of `LOGS2`). The 32-hex MD5 parent convention matches
the same family of aggregator layouts. Family attribution is
provisional pending a published mapping for this exact layout.

### Tiếng Việt

CSCCsHistoryStealer là định danh do CyStack đặt tên cho một thư mục nạn nhân dạng rút gọn chỉ gồm 2 tệp, gồm `cc's.txt` (bảng thẻ tín dụng phân tách bằng dấu gạch đứng) và `history.txt` (bản trích xuất lịch sử duyệt web) nằm trong một thư mục cha có tên là mã MD5 32 ký tự hex được bọc trong dấu ngoặc vuông. Phần nội dung của `cc's.txt` bắt đầu bằng tiêu đề năm cột `Name on Card | Expiration Month | Expiration Year | Card Number | Date Modified` phản ánh các cột của bảng `credit_cards` trong cơ sở dữ liệu SQLite `Web Data` của Chromium. Cột thứ 5, `Date Modified`, là lựa chọn tuần tự hóa (serialisation) đặc trưng giúp phân biệt bảng điều khiển này so với các định dạng dữ liệu thẻ kinh điển của Raccoon / Redline / Stealc.

Dấu vết này được quan sát bên trong các gói tổng hợp `MAY 02 - 8230 LOGS` (dấu vết liên quan của `LOGS2` với `LOGS`). Quy ước đặt tên thư mục cha bằng mã MD5 32 ký tự hex khớp với cùng họ cấu trúc dữ liệu bố cục tổng hợp này. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có ánh xạ được công bố cho đúng cấu trúc dữ liệu này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credit cards (Chromium `Web Data` SQLite `credit_cards` table dump) | Thẻ tín dụng đã lưu trên trình duyệt (bản trích xuất bảng `credit_cards` trong SQLite `Web Data` của Chromium) |
| Browser history | Lịch sử duyệt web |

## Detection notes / Ghi chú nhận diện

### English

The 32-hex MD5 folder name plus the strict
`{cc's.txt, history.txt, ""}` root subset plus the
three column-header body anchors (`Name on Card`,
`Card Number`, `Date Modified`) form the fingerprint.
The apostrophe in `cc's.txt` is a panel-side quirk
rare across stealer cred-file conventions. The
underlying victim is the user whose browser was
harvested; treat any populated `cc's.txt` row as a
card-theft incident requiring issuer notification.

### Tiếng Việt

Tên thư mục dạng mã MD5 32 ký tự hex kết hợp với tập con gốc chặt chẽ `{cc's.txt, history.txt, ""}` cùng với ba mốc tiêu đề cột trong nội dung tệp (`Name on Card`, `Card Number`, `Date Modified`) tạo thành dấu hiệu nhận diện (fingerprint). Dấu nháy đơn trong `cc's.txt` là một đặc điểm riêng phía bảng điều khiển, hiếm gặp trong các quy ước tệp thông tin xác thực của mã độc đánh cắp thông tin. Nạn nhân thực chất là người dùng có trình duyệt bị thu thập dữ liệu; mọi dòng `cc's.txt` có dữ liệu cần được coi là sự cố đánh cắp thẻ, đòi hỏi phải thông báo cho đơn vị phát hành thẻ.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |

## Related catalog profiles

- [CSCookiesSoftStealer](../cs-cookies-soft-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)
- [CSBrowserCategoryDumpStealer](../cs-browser-category-dump-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
