# Bee Stealer

## Overview / Tổng quan

### English

Bee Stealer is a commercially-sold malware-as-a-service
infostealer first publicly documented by Flashpoint in the
"Infostealers to Watch in 2025" brief. Public reporting
places the June 2025 debut at roughly $300 per month on a
centralized-panel model that does not permit customers to
self-host, with a stated feature list covering credential /
cookie / card / cryptocurrency wallet theft plus
attacker-configurable file grabbing. Downstream aggregator
traffic markets (for example the `@FATETRAFFIC` Telegram
MIX packs) resell Bee logs alongside other families.

The panel writes a per-victim `UserInfo.txt` opening with
an ASCII-art bee mascot rendered from parenthesis and
backslash glyphs and a `Bee stealer` self-brand banner line
in lowercase, separated from the device block by a
fixed-width 28-hyphen dash rule. The device block uses a
hyphenated lowercase key vocabulary (`os`, `time-zone`,
`local-date`, `language`, `computer-name`, `netbios`,
`hostname`, `user-name`, `domain`, `cpu-cores`, `cpu`,
`ram-total`, `display-x`, `display-y`, `gpu`) in flat plain
text rather than the YAML block layout Remus uses. A
trailing block carries capitalised `Ip` and `Country` keys
and the report closes with a `Procces riped: True` boolean
that surfaces the panel writer typo verbatim across observed
samples.

### Tiếng Việt

Bee Stealer là một mã độc đánh cắp thông tin dạng malware-as-a-service được thương mại hóa, lần đầu tiên được Flashpoint công khai ghi nhận trong báo cáo "Infostealers to Watch in 2025". Các báo cáo công khai xác định thời điểm ra mắt vào tháng 6 năm 2025 với mức giá khoảng 300 đô la mỗi tháng theo mô hình bảng điều khiển tập trung, không cho phép khách hàng tự lưu trữ (self-host), cùng danh sách tính năng được công bố bao gồm đánh cắp thông tin xác thực / cookie / thông tin thẻ / ví tiền điện tử cùng với mô-đun thu thập tệp có thể được đối tượng tấn công tùy chỉnh cấu hình. Các chợ giao dịch dữ liệu trung gian ở hạ nguồn (ví dụ như các gói MIX trên Telegram `@FATETRAFFIC`) bán lại nhật ký của Bee cùng với các họ mã độc khác.

Bảng điều khiển tạo ra một tệp `UserInfo.txt` cho mỗi nạn nhân, mở đầu bằng một hình vẽ ASCII linh vật con ong được dựng từ các ký tự ngoặc đơn và dấu gạch chéo ngược, cùng một dòng biểu ngữ tự thương hiệu `Bee stealer` viết thường, được ngăn cách với khối thông tin thiết bị bằng một đường kẻ ngang cố định 28 dấu gạch nối. Khối thông tin thiết bị sử dụng bộ từ khóa viết thường có gạch nối (`os`, `time-zone`, `local-date`, `language`, `computer-name`, `netbios`, `hostname`, `user-name`, `domain`, `cpu-cores`, `cpu`, `ram-total`, `display-x`, `display-y`, `gpu`) dưới dạng văn bản thuần túy phẳng thay vì bố cục khối YAML mà Remus sử dụng. Một khối theo sau chứa các khóa viết hoa `Ip` và `Country`, và báo cáo kết thúc bằng một giá trị boolean `Procces riped: True` thể hiện nguyên văn lỗi chính tả của người viết bảng điều khiển trên các mẫu quan sát được.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Bee`, `BeeStealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, card data | Thông tin xác thực, cookie, dữ liệu tự động điền, thông tin thẻ được lưu trong trình duyệt |
| Cryptocurrency wallet browser extensions and desktop clients | Các tiện ích mở rộng trình duyệt và ứng dụng desktop ví tiền điện tử |
| KeePass, Telegram, FileZilla, Binance credential stores | Kho lưu trữ thông tin xác thực của KeePass, Telegram, FileZilla, Binance |
| Host metadata: hostname, NetBIOS, Windows username, language | Thông tin thiết bị: tên máy, NetBIOS, tên người dùng Windows, ngôn ngữ |
| OS fingerprint and hardware inventory | Dấu vân tay hệ điều hành và thông tin kiểm kê phần cứng |
| File grabber configurable by extension and folder | Mô-đun thu thập tệp có thể cấu hình theo phần mở rộng và thư mục |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: the `Bee stealer` self-brand token
AND a line-anchored `cpu-cores:` hyphenated field. The
two-anchor requirement guards against CTI report excerpts
that quote the brand string in prose without shipping the
panel body. The ASCII-art bee mascot, the split
`display-x` / `display-y` dimension pair, and the trailing
`Procces riped: True` typo footer are supporting Bee-specific
artefacts once the primary anchors have fired.

### Tiếng Việt

Dấu hiệu kích hoạt có độ tin cậy cao: mã thương hiệu tự nhận diện `Bee stealer` KẾT HỢP VỚI trường có gạch nối `cpu-cores:` được neo theo dòng. Yêu cầu hai điểm neo này nhằm tránh trường hợp các đoạn trích từ báo cáo CTI dẫn lại chuỗi thương hiệu trong văn bản mà không kèm theo nội dung thực tế của bảng điều khiển. Hình vẽ ASCII linh vật con ong, cặp kích thước tách biệt `display-x` / `display-y`, và phần chân trang chứa lỗi chính tả `Procces riped: True` là các dấu vết đặc trưng bổ sung của Bee sau khi các điểm neo chính đã được kích hoạt.

## Observed log variants

### `v_89b6be67a6b6975295164997e044362f`

- Format ID: `bee-stealer`
- Observed filenames: `UserInfo.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_89b6be67a6b6975295164997e044362f/UserInfo.txt)
- Sample SHA-256: `0b2930290f05ecc20345d0e7e159aa9c61f3e5534d04747773a7b3fd0c9ab2a9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Bee stealer <\\ \|`
- Field labels: `computer-name`, `Country`, `cpu`, `cpu-cores`, `display-x`, `display-y`, `domain`, `gpu`, `hostname`, `Ip`, `language`, `local-date`, `netbios`, `os`, `Procces riped`, `ram-total`, `time-zone`, `user-name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery | Dò tìm tệp và thư mục |
| [T1027](https://attack.mitre.org/techniques/T1027/) | Obfuscated Files or Information | Tệp hoặc thông tin bị làm rối |

## Related catalog profiles

- None recorded.

## Sources

- <https://flashpoint.io/blog/infostealers-2025-katz-bee-acreed-more/>

Machine-readable record: [family.json](family.json)
