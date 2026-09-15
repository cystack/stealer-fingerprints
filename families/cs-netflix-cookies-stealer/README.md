# CSNetflixCookiesStealer

## Overview / Tổng quan

### English

CSNetflixCookiesStealer is a CyStack-coined identifier for a
Netflix account-checker aggregator output folder. The
per-victim folder is a 32-hex MD5 wrapped in brackets
(`[<md5>]`) and ships a single `Cookies/` subdirectory with
one `.txt` file per valid Netflix session. Each filename packs
five bracket-delimited segments encoding the account state:
subscription plan, historical payment count, Extra-members
add-on flag, ISO 3166 alpha-2 country code, and the login
email. The body is split into an en-dash-prefixed enrichment
header (`– Email:`, `– Plan:`, `– Country:`, `– Payments:`,
etc.) and Netscape-format cookies for `.netflix.com` carrying
the session-cookie set (`NetflixId`, `SecureNetflixId`,
`dsca`, `nfvdid`).

The cred files reference `https://russia34.com` as the
upstream raw-cookie source (a Telegram stealer aggregator that
`CSRussia34Stealer` already handles for the sibling
`UserInformation.txt` shape) and the `@logslead` operator
footer as the Netflix-checker tool that processed the russia34
cookies into per-account enriched dumps. The same `LOGS2`
distribution pipeline also carries TikTok-account harvest
folders represented by CSTikTokAccountStealer and 4-category
Windows-victim folders represented by
CSCommonFilesCategoryStealer. Family attribution is
provisional pending a published mapping for this
Netflix-checker tool.

### Tiếng Việt

CSNetflixCookiesStealer là định danh do CyStack đặt cho một thư mục đầu ra tổng hợp của công cụ kiểm tra tài khoản (account-checker) Netflix. Thư mục theo từng nạn nhân là một chuỗi MD5 32 ký tự hex được đặt trong dấu ngoặc (`[<md5>]`) và chứa một thư mục con duy nhất `Cookies/` với một tệp `.txt` cho mỗi phiên đăng nhập Netflix hợp lệ. Mỗi tên tệp gói năm phân đoạn được phân tách bằng dấu ngoặc, mã hóa trạng thái tài khoản: gói thuê bao, số lần thanh toán trong lịch sử, cờ tính năng bổ sung Extra-members, mã quốc gia ISO 3166 alpha-2, và email đăng nhập. Phần thân tệp được chia thành một tiêu đề làm giàu dữ liệu có tiền tố dấu gạch ngang en-dash (`– Email:`, `– Plan:`, `– Country:`, `– Payments:`, v.v.) và các cookie định dạng Netscape dành cho `.netflix.com` mang theo tập hợp cookie phiên (`NetflixId`, `SecureNetflixId`, `dsca`, `nfvdid`).

Các tệp thông tin xác thực tham chiếu đến `https://russia34.com` như nguồn cookie thô ở thượng nguồn (một kênh tổng hợp mã độc đánh cắp thông tin trên Telegram mà `CSRussia34Stealer` đã xử lý cho cấu trúc dữ liệu `UserInformation.txt` liên quan) và phần chân trang đối tượng vận hành `@logslead` như công cụ kiểm tra tài khoản Netflix đã xử lý các cookie russia34 thành các bản trích xuất được làm giàu theo từng tài khoản. Cùng một chuỗi phân phối `LOGS2` cũng mang theo các thư mục thu thập tài khoản TikTok được đại diện bởi CSTikTokAccountStealer và các thư mục nạn nhân Windows gồm 4 danh mục được đại diện bởi CSCommonFilesCategoryStealer. Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có ánh xạ được công bố cho công cụ kiểm tra tài khoản Netflix này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Netflix session cookies (NetflixId, SecureNetflixId, dsca, nfvdid) | Cookie phiên Netflix (NetflixId, SecureNetflixId, dsca, nfvdid) |
| Netflix account profile metadata (plan, country, extra-members flag, payment history) | Siêu dữ liệu hồ sơ tài khoản Netflix (gói thuê bao, quốc gia, cờ tính năng bổ sung, lịch sử thanh toán) |
| Netflix account email-to-country mapping | Ánh xạ email tài khoản Netflix với quốc gia |

## Detection notes / Ghi chú nhận diện

### English

The 32-hex MD5 folder name plus the strict
`{Cookies, ""}` root subset plus four body anchors
(`Valid Cookie / Every day!`, `.netflix.com`, `Plan:`,
`@logslead`) form the fingerprint. The underlying
victim is the user whose stealer log was the cookie
source, not the Netflix account owner. The `russia34`
channel reference in the header lines names the
upstream source the checker pulled from.

### Tiếng Việt

Tên thư mục MD5 32 ký tự hex kết hợp với tập hợp con gốc `{Cookies, ""}` chặt chẽ cùng bốn điểm neo trong phần thân tệp (`Valid Cookie / Every day!`, `.netflix.com`, `Plan:`, `@logslead`) tạo thành dấu hiệu nhận diện đặc trưng. Nạn nhân thực sự là người dùng có nhật ký mã độc đánh cắp thông tin là nguồn cookie, không phải chủ tài khoản Netflix. Tham chiếu kênh `russia34` trong các dòng tiêu đề nêu tên nguồn thượng nguồn mà công cụ kiểm tra đã lấy dữ liệu từ đó.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1550.004](https://attack.mitre.org/techniques/T1550/004/) | Use Alternate Authentication Material: Web Session Cookie | Sử dụng dữ liệu xác thực thay thế: cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1213](https://attack.mitre.org/techniques/T1213/) | Data from Information Repositories | Dữ liệu từ kho thông tin |

## Related catalog profiles

- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSRussia34Stealer](../cs-russia34-stealer/)
- [CSCommonFilesCategoryStealer](../cs-common-files-category-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
