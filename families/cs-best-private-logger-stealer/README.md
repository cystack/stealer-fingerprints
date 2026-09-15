# CSBestPrivateLoggerStealer

## Overview / Tổng quan

### English

CSBestPrivateLoggerStealer is a CyStack-coined identifier for
a Telegram-bot-exfil stealer that emits a single
`bot-<bot-id>-<chat-id>-Userdata.txt` victim file with a `Best Private LOGGER` ASCII-art banner, a `==========PC INFO==========` PC-info block, and one
`============X============`-delimited record per harvested
browser credential. Observed inside `!! 2025 JULY.part001.rar`
BRADMAX / `@BRADLOGS` aggregator packs at `[<CC>]@BRADLOGS (BRADMAX) (<NN>)/ bot-<bot-id>-<chat-id>-Userdata.txt` victim
files.

The PC-info block carries `Client Name:` (hostname),
`FullDate:` (US-locale `M/D/YYYY - H:MM:SS AM/PM`), `IP:`, and
`Country:` (full country name like `United States` rather than
the ISO 3166-1 alpha-2 code). Each credential block carries
`URL:` / `Username:` / `Password:` / `Application:` fields
with the `Application:` value carrying browser-name plus
chromium-variant strings (`Edge Chromium`, observed). The two
numeric segments in the filename encode the operator Telegram
bot's chat ID and the per-victim chat ID, both visible to
whoever harvested the bot inbox.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The Telegram-bot
exfiltration shape is broadly documented as a common pattern
across multiple builders, but no public source ties the `Best Private LOGGER` banner and the `==========PC INFO==========`
panel template to a specific named family.

### Tiếng Việt

CSBestPrivateLoggerStealer là định danh do CyStack đặt cho một mã độc đánh cắp thông tin đưa dữ liệu ra ngoài qua Telegram bot, tạo dữ liệu đầu ra là một tệp nạn nhân duy nhất `bot-<bot-id>-<chat-id>-Userdata.txt` có banner ASCII-art `Best Private LOGGER`, khối thông tin PC `==========PC INFO==========`, và một bản ghi được phân tách bởi `============X============` cho mỗi thông tin xác thực trình duyệt thu thập được. Được ghi nhận bên trong các gói tổng hợp `!! 2025 JULY.part001.rar` BRADMAX / `@BRADLOGS` tại `[<CC>]@BRADLOGS (BRADMAX) (<NN>)/ bot-<bot-id>-<chat-id>-Userdata.txt` tệp nạn nhân.

Khối thông tin PC mang `Client Name:` (tên máy), `FullDate:` (định dạng khu vực US `M/D/YYYY - H:MM:SS AM/PM`), `IP:`, và `Country:` (tên quốc gia đầy đủ như `United States` thay vì mã ISO 3166-1 alpha-2). Mỗi khối thông tin xác thực mang các trường `URL:` / `Username:` / `Password:` / `Application:` với giá trị `Application:` mang tên trình duyệt cùng các chuỗi biến thể chromium (`Edge Chromium`, đã ghi nhận). Hai đoạn số trong tên tệp mã hóa chat ID của Telegram bot do đối tượng vận hành sử dụng và chat ID riêng cho từng nạn nhân, cả hai đều hiển thị với bất kỳ ai thu thập được hộp thư đến của bot.

Việc quy kết họ mã độc vẫn còn tạm thời do chưa có ánh xạ tình báo mối đe dọa được công bố cho bố cục này. Cấu trúc dữ liệu đưa dữ liệu ra ngoài qua Telegram bot được ghi nhận rộng rãi như một mẫu hình phổ biến trên nhiều bộ công cụ tạo mã độc (builder), nhưng không có nguồn công khai nào liên kết banner `Best Private LOGGER` và mẫu bảng điều khiển `==========PC INFO==========` với một họ mã độc cụ thể được đặt tên.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Best Private LOGGER Telegram-bot stealer`, `bot-<id>-<id>-Userdata.txt panel`, `==========PC INFO========== Userdata stealer`
- Variants observed: **1**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (URL, Username, Password) | Thông tin xác thực được lưu trong trình duyệt (URL, Username, Password) |
| Source browser application (`Edge Chromium`, similar variants) | Ứng dụng trình duyệt nguồn (`Edge Chromium`, các biến thể tương tự) |
| Victim hostname (`Client Name:` field) | Tên máy nạn nhân (trường `Client Name:`) |
| Victim public IP and country (in the PC INFO block) | Địa chỉ IP công khai và quốc gia của nạn nhân (trong khối PC INFO) |
| Victim local clock at exfil time (`FullDate:` field) | Đồng hồ cục bộ của nạn nhân tại thời điểm đưa dữ liệu ra ngoài (trường `FullDate:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the line-anchored `==========PC INFO==========` 10-equals header AND a
`============X============` 12-equals-plus-X record separator
anywhere in the body. Both anchors are needed: the PC INFO
header alone could match a documentation snippet that quotes
the panel, and the separator alone is short enough to appear
in unrelated separator-art. During triage, treat the family
attribution as unknown - the underlying builder is
undocumented in public reporting and community catalogues.
Inspect the filename for the bot-id / chat-id pair to identify
the Telegram bot operator; the bot chat ID is the same across
every victim file that operator distributes.

### Tiếng Việt

Dấu hiệu nhận diện đòi hỏi tiêu đề PC INFO 10 dấu bằng `==========PC INFO==========` được neo theo dòng VÀ dấu phân tách bản ghi 12 dấu bằng cộng X `============X============` xuất hiện ở bất kỳ đâu trong phần nội dung. Cần cả hai điểm neo: chỉ riêng tiêu đề PC INFO có thể khớp với một đoạn tài liệu trích dẫn bảng điều khiển, còn chỉ riêng dấu phân tách thì đủ ngắn để xuất hiện trong các hình vẽ phân tách không liên quan. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định - bộ công cụ tạo mã độc (builder) nền tảng chưa được ghi nhận trong các báo cáo công khai và danh mục cộng đồng. Kiểm tra tên tệp để tìm cặp bot-id / chat-id nhằm xác định đối tượng vận hành Telegram bot; chat ID của bot giống nhau trên mọi tệp nạn nhân mà đối tượng vận hành đó phát tán.

## Observed log variants

### `v_8ed58f5f3aef8144b0c675eacfba6344`

- Format ID: `cs-best-private-logger-stealer`
- Observed filenames: `bot-<bot-id>-<chat-id>-Userdata.txt`
- Panel brand: `Best Private LOGGER`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_8ed58f5f3aef8144b0c675eacfba6344/sample.txt)
- Sample SHA-256: `02454f5061b7243f4647864a3295ef0d0ffa6b63aa1e6a6483ba31a399e9ce26`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `============X============`, `==========PC INFO==========`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSAppProfileStealer](../cs-app-profile-stealer/)
- [CSLoginsPathStealer](../cs-logins-path-stealer/)
- [CSDateCreatedStealer](../cs-date-created-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
