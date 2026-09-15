# CSBrowserCategoryDumpStealer

## Overview / Tổng quan

### English

CSBrowserCategoryDumpStealer is a CyStack-coined identifier
for a per-victim per-browser category dump layout shipping
under `[<32-hex>]/Browser/<BrowserName>/` leaf folders. Each
leaf carries Pascal-case category files (`Autofill.txt`,
`Passwords.txt`, `Cookies.txt`, `History.txt`,
`Bookmarks.txt`, `CreditCards.txt`, `Downloads.txt`,
`Extensions.txt`). Each file body opens with a triple-equals
ALL-CAPS section header mirroring the category name
(`Autofill.txt` body opens with `=== AUTOFILL ===`), then a
blank line, then one or more `key: value` records separated by
50-character dashed lines.

The 32-hex MD5 victim-folder convention matches
CSTikTokAccountStealer and CSNetflixCookiesStealer, confirming a shared
`MAY 02 - 8230 LOGS2` distribution pipeline. The leaf folder
names span Chromium-derived browsers (Chrome / Edge / Brave /
Opera / EpicPrivacyBrowser / Vivaldi / Yandex / CocCoc /
Maxthon / Comodo Dragon). Family attribution is provisional
pending a published mapping for this exact layout.

### Tiếng Việt

CSBrowserCategoryDumpStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu tệp dump theo danh mục, tính theo từng nạn nhân và từng trình duyệt, được đóng gói dưới các thư mục lá `[<32-hex>]/Browser/<BrowserName>/`. Mỗi thư mục lá chứa các tệp danh mục dạng Pascal-case (`Autofill.txt`, `Passwords.txt`, `Cookies.txt`, `History.txt`, `Bookmarks.txt`, `CreditCards.txt`, `Downloads.txt`, `Extensions.txt`). Nội dung mỗi tệp mở đầu bằng một tiêu đề mục viết hoa toàn bộ, đóng khung bằng dấu bằng ba lần, phản ánh tên danh mục (nội dung `Autofill.txt` mở đầu bằng `=== AUTOFILL ===`), tiếp theo là một dòng trống, sau đó là một hoặc nhiều bản ghi `key: value` được phân tách bằng các dòng gạch ngang dài 50 ký tự.

Quy ước đặt tên thư mục nạn nhân bằng MD5 32 ký tự hex khớp với CSTikTokAccountStealer và CSNetflixCookiesStealer, xác nhận một quy trình phân phối `MAY 02 - 8230 LOGS2` dùng chung. Tên các thư mục lá bao trùm các trình duyệt gốc Chromium (Chrome / Edge / Brave / Opera / EpicPrivacyBrowser / Vivaldi / Yandex / CocCoc / Maxthon / Comodo Dragon). Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ được công bố cho đúng cấu trúc dữ liệu này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser autofill data (names, addresses, phone numbers, emails) | Dữ liệu tự động điền của trình duyệt (họ tên, địa chỉ, số điện thoại, email) |
| Browser saved credentials (usernames, passwords, URLs) | Thông tin xác thực đã lưu trong trình duyệt (tên đăng nhập, mật khẩu, URL) |
| Browser cookies and session data | Cookie và dữ liệu phiên của trình duyệt |
| Browser history, bookmarks, downloads | Lịch sử duyệt web, dấu trang, danh sách tải xuống |
| Saved credit card data | Dữ liệu thẻ tín dụng đã lưu |
| Browser extensions inventory | Danh sách tiện ích mở rộng của trình duyệt |

## Detection notes / Ghi chú nhận diện

### English

The `[<32-hex>]/Browser/<BrowserName>/` path token plus
at least one canonical Pascal-case category filename
(`Autofill.txt`, `Passwords.txt`, etc.) plus the
`=== <CATEGORY> ===` ALL-CAPS triple-equals body header
is the fingerprint. Sibling category-first layouts
(`cookies_chrome_Default.txt` per
CSPerProfileBrowserDumpBundle) ship the same data
differently shaped; the browser-named-subdirectory
convention here is the panel's private choice.

### Tiếng Việt

Dấu hiệu nhận diện là sự kết hợp giữa token đường dẫn `[<32-hex>]/Browser/<BrowserName>/`, ít nhất một tên tệp danh mục chuẩn dạng Pascal-case (`Autofill.txt`, `Passwords.txt`, v.v.) và tiêu đề nội dung viết hoa toàn bộ đóng khung bằng dấu bằng ba lần `=== <CATEGORY> ===`. Các cấu trúc dữ liệu liên quan ưu tiên theo danh mục trước (`cookies_chrome_Default.txt` theo CSPerProfileBrowserDumpBundle) mang cùng loại dữ liệu nhưng được tổ chức khác đi; quy ước đặt thư mục con theo tên trình duyệt ở đây là lựa chọn riêng của bảng điều khiển.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |

## Related catalog profiles

- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)

## Related external families

- `csperprofilebrowserdumpbundle`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
