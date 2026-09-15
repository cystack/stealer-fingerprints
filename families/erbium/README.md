# Erbium

## Overview / Tổng quan

### English

Erbium Stealer is a C# / .NET Malware-as-a-Service info-stealer that surfaced in mid-2022 on Russian-speaking crime
forums. The first public report of the family landed in July
2022; a follow-on technical writeup covered the DLL loader and
the panel dashboard at `panel.erbium.ml`. Pricing tiers
observed on the operator channel run from `$9/week` at launch
up to `$100/month` and `$1000/year`. Initial distribution
campaigns rode fake game cracks and cheat installers per
contemporaneous public coverage.

The panel writes `Information.txt` with an ERBIUM ASCII
banner, two `t.me/erbium_*` operator-channel URLs (Developer +
Updates), and five bracketed sections in fixed order:
`[BUILD]`, `[PC INFO]`, `[LOG INFO]`, `[CLIPBOARD]`,
`[ANTIVIRUSES]`. Field lines are tab-indented with a mixed
hyphen / colon separator (hyphen for identity and count
fields, colon for the hardware inventory inside `[PC INFO]`).
`HardwareID` is a 64-character uppercase hex string; the
archive victim folder is named after the same identifier.

### Tiếng Việt

Erbium Stealer là một họ mã độc đánh cắp thông tin dạng Malware-as-a-Service viết bằng C# / .NET, xuất hiện vào giữa năm 2022 trên các diễn đàn tội phạm nói tiếng Nga. Báo cáo công khai đầu tiên về họ mã độc này xuất hiện vào tháng 7 năm 2022; một bài phân tích kỹ thuật tiếp theo đã đề cập đến trình tải DLL và bảng điều khiển tại `panel.erbium.ml`. Các mức giá được ghi nhận trên kênh của đối tượng vận hành dao động từ `$9/week` khi ra mắt lên tới `$100/month` và `$1000/year`. Theo các bài đưa tin công khai cùng thời điểm, các chiến dịch phát tán ban đầu lợi dụng crack game giả mạo và các trình cài đặt cheat.

Bảng điều khiển tạo dữ liệu đầu ra `Information.txt` kèm banner ASCII ERBIUM, hai URL kênh của đối tượng vận hành `t.me/erbium_*` (Developer + Updates), và năm mục được đặt trong dấu ngoặc vuông theo thứ tự cố định: `[BUILD]`, `[PC INFO]`, `[LOG INFO]`, `[CLIPBOARD]`, `[ANTIVIRUSES]`. Các dòng trường dữ liệu được thụt lề bằng tab với dấu phân cách hỗn hợp gạch nối / dấu hai chấm (gạch nối cho các trường định danh và số lượng, dấu hai chấm cho danh mục phần cứng bên trong `[PC INFO]`). `HardwareID` là một chuỗi hex viết hoa dài 64 ký tự; thư mục nạn nhân trong tệp nén được đặt tên theo chính định danh này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Erbium Stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill (Firefox, Chrome, Cyberfox, K-Meleon, BlackHawk, Pale Moon, Thunderbird) | Thông tin xác thực, cookie, dữ liệu tự động điền được lưu trong trình duyệt (Firefox, Chrome, Cyberfox, K-Meleon, BlackHawk, Pale Moon, Thunderbird) |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng và ứng dụng desktop ví tiền điện tử |
| 2FA extensions (Authenticator, Authy, Trezor) | Tiện ích mở rộng xác thực hai yếu tố (Authenticator, Authy, Trezor) |
| FileZilla / VPN credentials | Thông tin xác thực FileZilla / VPN |
| Card numbers stored by browsers | Số thẻ được trình duyệt lưu trữ |
| Game client sessions and small file grabber | Phiên đăng nhập game client và mô-đun thu thập tệp cỡ nhỏ |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: the `t.me/erbium_support` URL
literal in the banner block plus line-anchored `[BUILD]`
and `[PC INFO]` bracketed section headers. Both
signatures are Erbium-canonical panel emissions; no
other family in this catalog uses the `erbium_support`
handle or the `[BUILD]` + `[PC INFO]` section pair.
Note that Erbium has been observed inside the
`@bugatti_cloud` Telegram aggregator (in this catalog record),
so the outer archive may attribute to a redistributor
even when the panel body is canonical Erbium output.

### Tiếng Việt

Dấu hiệu nhận diện có độ tin cậy cao: chuỗi URL `t.me/erbium_support` trong khối banner kết hợp với các tiêu đề mục đặt trong dấu ngoặc vuông `[BUILD]` và `[PC INFO]` được neo theo dòng. Cả hai đặc trưng này đều là dữ liệu đầu ra chuẩn của bảng điều khiển Erbium; không họ mã độc nào khác trong danh mục này sử dụng handle `erbium_support` hoặc cặp mục `[BUILD]` + `[PC INFO]`. Lưu ý rằng Erbium từng được ghi nhận xuất hiện bên trong bộ tổng hợp Telegram `@bugatti_cloud` (trong bản ghi danh mục này), do đó tệp nén bên ngoài có thể được quy kết cho một bên phát tán lại ngay cả khi nội dung bảng điều khiển là dữ liệu đầu ra chuẩn của Erbium.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection | Thu thập tự động |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/erbium_support>
- <https://t.me/erbium_news>

## Sources

- <https://www.cyfirma.com/outofband/erbium-stealer-malware-report/>
- <https://www.bleepingcomputer.com/news/security/new-erbium-password-stealing-malware-spreads-as-game-cracks-cheats/>
- <https://heimdalsecurity.com/blog/erbium-a-new-infostealer-malware-on-the-market/>
- <https://cyware.com/news/erbium-infostealer-targets-web-browsers-and-crypto-wallets-e26a21b9/>

Machine-readable record: [family.json](family.json)
