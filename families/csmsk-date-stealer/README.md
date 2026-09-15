# CSMSKDateStealer

## Overview / Tổng quan

### English

CSMSKDateStealer is a CyStack-coined identifier for an
info-stealer `information.txt` whose opening line is an exfil
timestamp suffixed with `MSK` (Moscow Standard Time). The file
is a flat `Key: Value` block: short 16-hex `Machine UUID`, a
`Machine: <hostname>/<user>` slash-suffix identity, hardware
fields, a localised `Local Time: <date> (UTC+<offset>) <city>`
clock, a geolocation block keyed on the ip-api.com JSON shape
(`CountryCode`, `Region Name`, `IP Timezone`), and a
wallet-extension enumerator that maps wallet names to
`%USERPROFILE%` paths with right-arrow padding (`MetaMask -> ...`).

Family attribution is provisional. The victim-profile field
set overlaps with Snake Keylogger's publicly documented host
profile, but Snake Keylogger's documented exfiltration is an
SMTP / FTP / Telegram message body, not a standalone info.txt
with a wallet-enumerator block. No public source maps this
exact shape to a named family.

### Tiếng Việt

CSMSKDateStealer là một định danh do CyStack đặt cho một mã độc đánh cắp thông tin `information.txt` có dòng mở đầu là dấu thời gian đưa dữ liệu ra ngoài kèm hậu tố `MSK` (giờ chuẩn Moscow). Tệp này là một khối `Key: Value` phẳng: `Machine UUID` hex 16 ký tự ngắn, một định danh hậu tố dấu gạch chéo `Machine: <hostname>/<user>`, các trường phần cứng, đồng hồ `Local Time: <date> (UTC+<offset>) <city>` đã được bản địa hóa, một khối định vị địa lý dựa trên cấu trúc dữ liệu JSON của ip-api.com (`CountryCode`, `Region Name`, `IP Timezone`), và một bộ liệt kê tiện ích mở rộng ví ánh xạ tên ví sang các đường dẫn `%USERPROFILE%` với phần đệm mũi tên phải (`MetaMask -> ...`).

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời. Tập trường hồ sơ nạn nhân trùng lặp với hồ sơ máy đã được công khai tài liệu hóa của Snake Keylogger, nhưng phương thức đưa dữ liệu ra ngoài đã được ghi nhận của Snake Keylogger là nội dung thư SMTP / FTP / Telegram, chứ không phải một tệp info.txt độc lập kèm khối liệt kê ví. Không có nguồn công khai nào ánh xạ chính xác cấu trúc dữ liệu này với một họ mã độc đã được đặt tên.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet browser extensions (MetaMask, Phantom, ...) | Tiện ích mở rộng ví tiền mã hóa trên trình duyệt (MetaMask, Phantom, ...) |
| System hardware and locale inventory | Thông tin kiểm kê phần cứng và ngôn ngữ/vùng của hệ thống |

## Detection notes / Ghi chú nhận diện

### English

The MSK-suffixed `Date:` opener is the single most
distinctive marker: no other family in this catalog emits a
timezone abbreviation on its Date line (Lumma uses dotted
DD.MM.YYYY without trailing abbreviation, .B.A.B.A. uses
DD/MM/YYYY, Snake Stealer uses M/D/YYYY with AM/PM). The
`Machine UUID:` co-requirement closes the loop against a
stray readme that mentions an MSK-suffixed date by
coincidence. If published threat intelligence later attributes this format to a known family, update this tracking profile rather than creating a duplicate record.

### Tiếng Việt

Dòng mở đầu `Date:` kèm hậu tố MSK là dấu hiệu đặc trưng nhất: không có họ mã độc nào khác trong danh mục này tạo dữ liệu đầu ra kèm chữ viết tắt múi giờ trên dòng Date (Lumma dùng định dạng DD.MM.YYYY có dấu chấm mà không kèm chữ viết tắt phía sau, .B.A.B.A. dùng DD/MM/YYYY, Snake Stealer dùng M/D/YYYY kèm AM/PM). Yêu cầu đi kèm `Machine UUID:` giúp khép kín điều kiện nhận diện, tránh trường hợp một tệp readme ngẫu nhiên đề cập đến ngày có hậu tố MSK do trùng hợp. Nếu sau này có thông tin tình báo mối đe dọa đã công bố quy kết định dạng này về một họ mã độc đã biết, hãy cập nhật hồ sơ theo dõi này thay vì tạo một bản ghi trùng lặp.

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
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
