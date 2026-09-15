# SantaStealer

## Overview / Tổng quan

### English

SantaStealer is a malware-as-a-service info-stealer first
publicly documented in December 2025. The operation is a
rebrand of an earlier project named BluelineStealer; the
SantaStealer brand is the operator-side relaunch ahead of an
end-of-year launch push. The researchers obtained samples and
access to the affiliate web panel, and identified a
Russian-speaking developer. Pricing is Basic at $175 per month
and Premium at $300 per month, advertised on Telegram and
hacker forums.

The malware runs 14 data-collection modules in parallel
threads (browser passwords, cookies, history, credit cards,
Telegram / Discord / Steam sessions, crypto wallet apps and
browser extensions, document grabber, desktop screenshots).
Collected data is written to memory, archived into a `Log.zip`
file in `%TEMP%`, split into 10 MB chunks, and exfiltrated
over unencrypted HTTP to a hardcoded C2 IP on port 6767. The
malware self-advertises through the Telegram channel
`t.me/SantaStealer`, which is also embedded verbatim in every
artifact the malware writes.

### Tiếng Việt

SantaStealer là một mã độc đánh cắp thông tin dạng malware-as-a-service, lần đầu được ghi nhận công khai vào tháng 12 năm 2025. Chiến dịch này là bản đổi thương hiệu của một dự án trước đó có tên BluelineStealer; thương hiệu SantaStealer là bản tái ra mắt từ phía đối tượng vận hành nhằm chuẩn bị cho đợt đẩy mạnh ra mắt vào cuối năm. Các nhà nghiên cứu đã thu được mẫu và quyền truy cập vào bảng điều khiển web dành cho đại lý (affiliate web panel), đồng thời xác định được một nhà phát triển nói tiếng Nga. Giá bán gồm gói Basic 175 USD/tháng và gói Premium 300 USD/tháng, được quảng cáo trên Telegram và các diễn đàn hacker.

Mã độc chạy 14 mô-đun thu thập dữ liệu song song theo các luồng (thông tin xác thực trình duyệt, cookie, lịch sử duyệt web, thẻ tín dụng, phiên đăng nhập Telegram/Discord/Steam, các ứng dụng ví tiền điện tử và tiện ích mở rộng trình duyệt, mô-đun thu thập tệp tài liệu, ảnh chụp màn hình desktop). Dữ liệu thu thập được ghi vào bộ nhớ, nén thành tệp `Log.zip` trong `%TEMP%`, chia thành các đoạn 10 MB, và được đưa ra ngoài qua HTTP không mã hóa đến một địa chỉ IP C2 được ghi cố định, qua cổng 6767. Mã độc tự quảng cáo thông qua kênh Telegram `t.me/SantaStealer`, kênh này cũng được nhúng nguyên văn trong mọi dấu vết mà mã độc ghi ra.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Santa Stealer`, `BluelineStealer`
- Variants observed: **1**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chromium and Gecko) | Thông tin xác thực đã lưu trên trình duyệt (Chromium và Gecko) |
| Browser cookies, history, autofill | Cookie, lịch sử duyệt web, dữ liệu tự động điền của trình duyệt |
| Saved credit card data from browsers | Dữ liệu thẻ tín dụng đã lưu trên trình duyệt |
| Cryptocurrency wallet apps and browser extensions | Các ứng dụng ví tiền điện tử và tiện ích mở rộng trình duyệt |
| Telegram, Discord, and Steam session data | Dữ liệu phiên đăng nhập Telegram, Discord và Steam |
| Documents matching the file-grabber filter list | Tài liệu khớp với danh sách bộ lọc của mô-đun thu thập tệp |
| Desktop screenshots | Ảnh chụp màn hình desktop |

## Detection notes / Ghi chú nhận diện

### English

The strongest single signal is the verbatim Telegram
channel handle `t.me/SantaStealer`, embedded by the
malware's configuration and written into every artifact
the malware emits. Paired with the file-grabber
manifest header `Found N Sensitive files. Many of these will be false positives`, the family attribution
is high-confidence. The ASCII-art `SANTA STEALER`
banner uses Unicode box-drawing characters, so triage
rules should anchor on the channel handle and template
literal rather than the banner text itself.

### Tiếng Việt

Tín hiệu mạnh nhất là tên kênh Telegram `t.me/SantaStealer` được nhúng nguyên văn trong cấu hình của mã độc và ghi vào mọi dấu vết mà mã độc tạo ra. Kết hợp với tiêu đề manifest của mô-đun thu thập tệp `Found N Sensitive files. Many of these will be false positives`, việc quy kết họ mã độc đạt mức độ tin cậy cao. Biểu ngữ ASCII-art `SANTA STEALER` sử dụng các ký tự vẽ khung Unicode, do đó các quy tắc phân loại nên bám vào tên kênh và chuỗi khuôn mẫu (template literal) thay vì nội dung văn bản của biểu ngữ.

## Observed log variants

### `v_e8de83dfb299d4ae3148727b940ff625`

- Format ID: `santastealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `t.me/SantaStealer`
- Attribution confidence: **high**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_e8de83dfb299d4ae3148727b940ff625/sample.txt)
- Sample SHA-256: `b73d51ba290606d47b2533020499dfb471a5d4fa39dd55b0562058503c306f66`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Sensitive files`, `t.me/SantaStealer`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection | Thu thập tự động |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/SantaStealer>

## Sources

- <https://www.rapid7.com/blog/post/tr-santastealer-is-coming-to-town-a-new-ambitious-infostealer-advertised-on-underground-forums/>
- <https://www.bleepingcomputer.com/news/security/new-santastealer-malware-steals-data-from-browsers-crypto-wallets/>
- <https://www.theregister.com/2025/12/16/santastealer_stuffs_users_credentials_crypto>

Machine-readable record: [family.json](family.json)
