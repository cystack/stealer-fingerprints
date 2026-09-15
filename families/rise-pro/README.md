# RisePro

## Overview / Tổng quan

### English

RisePro is a C++ info-stealer first documented in December
2022 and re-covered in 2023 when PrivateLoader began
redropping updated builds. A 2024 `gitgub` campaign writeup
catalogued RisePro v1.6 with FNV-1A dynamic import resolution,
XOR-obfuscated stack strings, TCP port 50500
command-and-control, and Base64-encoded ZIP exfiltration to
Telegram bot channels. Functionally it resembles Vidar:
browser credential grab, wallet grab, and a `brute.txt`
password aggregate for downstream brute-forcing.

The log documented here is not native RisePro output. It is
emitted by an in-house Python normalizer that a Telegram log
broker runs over raw stealer output before redistribution. The
tool writes leading-space `Key: Value` fields, a pipe-joined
`Single-line params:` hardware summary, an `Original file:`
reference to the operator working folder, and a `Source: IP-API (https://ip-api.com/)` geolocation attribution line.
The tool self-declares the family via a `Stealer:` field; here
it points at RisePro. The BRADMAX_CLOUD sibling format handles
the same wrapper when the tool cannot fingerprint the
underlying stealer (`Stealer: Unknown`).

### Tiếng Việt

RisePro là mã độc đánh cắp thông tin viết bằng C++, được ghi nhận lần đầu vào tháng 12 năm 2022 và tái xuất hiện vào năm 2023 khi PrivateLoader bắt đầu phát tán lại các bản dựng cập nhật. Một bài viết phân tích chiến dịch `gitgub` năm 2024 đã ghi nhận RisePro v1.6 với cơ chế phân giải import động bằng FNV-1A, các chuỗi trên stack bị làm rối bằng XOR, kênh command-and-control qua cổng TCP 50500, và cơ chế đưa dữ liệu ra ngoài dưới dạng ZIP mã hóa Base64 tới các kênh bot Telegram. Về mặt chức năng, nó tương tự Vidar: thu thập thông tin xác thực trình duyệt, thu thập ví tiền điện tử, và tổng hợp `brute.txt` mật khẩu để phục vụ tấn công dò mật khẩu (brute-force) ở giai đoạn sau.

Bản log được mô tả ở đây không phải là dữ liệu đầu ra gốc của RisePro. Nó được tạo ra bởi một công cụ chuẩn hóa Python nội bộ mà một đầu mối phân phối log trên Telegram chạy trên dữ liệu đầu ra thô của mã độc đánh cắp thông tin trước khi phân phối lại. Công cụ này ghi ra các trường `Key: Value` có khoảng trắng ở đầu, một bản tóm tắt phần cứng `Single-line params:` nối bằng dấu gạch đứng, một tham chiếu `Original file:` đến thư mục làm việc của đối tượng vận hành, và một dòng quy kết định vị địa lý `Source: IP-API (https://ip-api.com/)`. Công cụ tự khai báo họ mã độc thông qua một trường `Stealer:`; ở đây trường này trỏ đến RisePro. Định dạng liên quan BRADMAX_CLOUD xử lý cùng một lớp bọc này khi công cụ không thể xác định dấu vết của mã độc đánh cắp thông tin bên dưới (`Stealer: Unknown`).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **medium**
- Aliases: `RisePro Stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực, cookie, dữ liệu tự động điền đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| Discord and Telegram session data | Dữ liệu phiên đăng nhập Discord và Telegram |
| System hardware, locale, and installed-software inventory | Kiểm kê phần cứng hệ thống, ngôn ngữ vùng, và phần mềm đã cài đặt |
| Password aggregate for offline brute-forcing (`brute.txt`) | Tổng hợp mật khẩu để dò mật khẩu ngoại tuyến (`brute.txt`) |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger for the normalized wrapper: line-anchored `Stealer: RisePro` (leading space) plus `Original file:` plus `Source: IP-API (https://ip-api.com/)`. Attribution
to RisePro runs through the normalizer tool, so triage should
cross-check the raw-log fingerprint (TCP port 50500 traffic,
`brute.txt` in the archive, RISEPRO banner in `password.txt`)
before pivoting on the family label. Native RisePro panels do
not credit their geolocation data source; the `Source: IP-API`
line is the wrapper-tool tell.

### Tiếng Việt

Dấu hiệu nhận diện độ tin cậy cao cho lớp bọc đã chuẩn hóa: dòng có neo tại `Stealer: RisePro` (có khoảng trắng ở đầu) kết hợp với `Original file:` và `Source: IP-API (https://ip-api.com/)`. Việc quy kết cho RisePro đi qua công cụ chuẩn hóa, vì vậy khi phân loại cần đối chiếu chéo với dấu vết của log thô (lưu lượng cổng TCP 50500, `brute.txt` trong kho lưu trữ, banner RISEPRO trong `password.txt`) trước khi dựa vào nhãn họ mã độc để phân tích tiếp. Các bảng điều khiển RisePro gốc không ghi nguồn dữ liệu định vị địa lý của chúng; dòng `Source: IP-API` chính là dấu hiệu đặc trưng của công cụ lớp bọc.

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

- [Vidar](../vidar/)
- [StealC](../steal-c/)

## Sources

- <https://www.sekoia.com/blog/new-risepro-stealer-distributed-by-the-prominent-privateloader>
- <https://blog.gdatasoftware.com/2024/03/37885-risepro-stealer-campaign-github>
- <https://flashpoint.io/blog/risepro-stealer-and-pay-per-install-malware-privateloader/>
- <https://www.pcrisk.com/removal-guides/25589-risepro-stealer>

Machine-readable record: [family.json](family.json)
