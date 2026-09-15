# Snake Keylogger

## Overview / Tổng quan

### English

Snake Keylogger, also tracked as 404 Keylogger, is a .NET-based info-stealer and keylogger first documented in late
2020. The malware harvests keystrokes, saved browser
credentials, clipboard content, and screenshots, then
exfiltrates them over one of three C2 channels: FTP, SMTP,
or Telegram bot. Newer builds prefer the Telegram
`sendDocument` API.

The password-harvesting module writes stolen credentials
to a file named `bot-<chatid>-<msgid>-<victim>-SnakePW.txt`
that opens with the `PW | USER | Snake` module tag. Each
credential record sits inside a
`-------- Snake Tracker --------` bracketed block with
`Found From:`, `Host:`, `USR:`, and `PSWD:` lines. The
top of the file carries victim identity fields: `PC Name`,
`Date and Time`, `Client IP`, plus a geo block (Country
Name / CountryCode / Region / City / TimeZone / Latitude /
Longitude) that fills with the literal `{Null}` placeholder
when the ipapi.co lookup failed or the operator disabled
it.

### Tiếng Việt

Snake Keylogger, còn được theo dõi với tên gọi 404 Keylogger, là một mã độc đánh cắp thông tin và keylogger dựa trên .NET, được ghi nhận lần đầu vào cuối năm 2020. Mã độc này thu thập thao tác bàn phím, thông tin xác thực được lưu trong trình duyệt, nội dung clipboard và ảnh chụp màn hình, sau đó đưa dữ liệu ra ngoài qua một trong ba kênh C2: FTP, SMTP hoặc Telegram bot. Các bản build mới hơn ưu tiên sử dụng API `sendDocument` của Telegram.

Mô-đun thu thập mật khẩu ghi thông tin xác thực đánh cắp được vào một tệp tên `bot-<chatid>-<msgid>-<victim>-SnakePW.txt`, mở đầu bằng thẻ mô-đun `PW | USER | Snake`. Mỗi bản ghi thông tin xác thực nằm trong một khối được đóng ngoặc `-------- Snake Tracker --------` với các dòng `Found From:`, `Host:`, `USR:` và `PSWD:`. Phần đầu tệp chứa các trường định danh nạn nhân: `PC Name`, `Date and Time`, `Client IP`, cùng với một khối thông tin địa lý (Country Name / CountryCode / Region / City / TimeZone / Latitude / Longitude) được điền bằng placeholder `{Null}` khi việc tra cứu ipapi.co thất bại hoặc bị đối tượng vận hành vô hiệu hóa.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `404 Keylogger`, `Snake Stealer keylogger module`, `SnakeKeylogger`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chrome, Edge, Firefox, Opera) | Thông tin xác thực được lưu trong trình duyệt (Chrome, Edge, Firefox, Opera) |
| Email client credentials (Thunderbird, Outlook) | Thông tin xác thực ứng dụng email (Thunderbird, Outlook) |
| Keystroke capture | Ghi lại thao tác bàn phím |
| Clipboard content | Nội dung clipboard |
| Screenshots | Ảnh chụp màn hình |
| FTP/RDP session credentials | Thông tin xác thực phiên FTP/RDP |

## Detection notes / Ghi chú nhận diện

### English

The `PW | USER | Snake` pipe-separated module tag combined
with the `-------- Snake Tracker --------` section separator
is unmistakable Snake Keylogger provenance. The `SnakePW.txt`
basename plus the `bot-<chatid>-<msgid>-<victim>-SnakePW.txt`
Telegram-bot naming convention are documented in public
analyses. Sibling module tags `KEY | USER | Snake` (keystroke
capture) and `INFO | USER | Snake` (system info) ship in
separate files per victim. During incident response, treat any
`SnakePW.txt` as a complete credential compromise: every
`USR:` / `PSWD:` pair in the file is a valid account
credential the operator harvested from the victim.

### Tiếng Việt

Thẻ mô-đun phân tách bằng dấu gạch đứng `PW | USER | Snake` kết hợp với dấu phân tách phần `-------- Snake Tracker --------` là dấu hiệu nhận diện rõ ràng nguồn gốc Snake Keylogger. Tên tệp cơ sở `SnakePW.txt` cùng với quy ước đặt tên Telegram-bot `bot-<chatid>-<msgid>-<victim>-SnakePW.txt` đã được ghi nhận trong các phân tích công khai. Các thẻ mô-đun liên quan `KEY | USER | Snake` (thu thập thao tác bàn phím) và `INFO | USER | Snake` (thông tin hệ thống) được xuất trong các tệp riêng biệt cho mỗi nạn nhân. Trong quá trình ứng phó sự cố, hãy coi bất kỳ `SnakePW.txt` nào là một trường hợp xâm phạm thông tin xác thực hoàn toàn: mỗi cặp `USR:` / `PSWD:` trong tệp đều là một thông tin xác thực tài khoản hợp lệ mà đối tượng vận hành đã thu thập được từ nạn nhân.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1056.001](https://attack.mitre.org/techniques/T1056/001/) | Keylogging | Ghi lại phím bấm |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1041](https://attack.mitre.org/techniques/T1041/) | Exfiltration Over C2 Channel | Đưa dữ liệu ra ngoài qua kênh C2 |
| [T1567](https://attack.mitre.org/techniques/T1567/) | Exfiltration Over Web Service | Đưa dữ liệu ra ngoài qua dịch vụ web |

## Related catalog profiles

- [Snake Stealer](../snake-stealer/)

## Related external families

- `agent-tesla`
- `formbook`

## Sources

- <https://www.splunk.com/en_us/blog/security/under-the-hood-of-snakekeylogger-analyzing-its-loader-and-its-tactics-techniques-and-procedures.html>
- <https://www.bitsight.com/blog/exfiltration-over-telegram-bots-skidding-infostealer-logs>
- <https://www.fortinet.com/blog/threat-research/fortisandbox-detects-evolving-snake-keylogger-variant>
- <https://hackread.com/snake-keylogger-variant-windows-data-telegram-bots/>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.404keylogger>

Machine-readable record: [family.json](family.json)
