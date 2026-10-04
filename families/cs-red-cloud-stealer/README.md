# CSRedCloudStealer

## Overview / Tổng quan

### English

CSRedCloudStealer is a CyStack-coined identifier for a
stripped seven-field dashed-prefix `information.txt` panel
that self-brands as `RED CLOUD` on its build-line and ships
inside `PRIVATE RED LOGS <N> (TG @ArhontCorp).rar` reseller
archives at `<CC>[<32-char-HWID>]/information.txt` victim
folders. The body preamble is a multi-line @ArhontCorp
advertising header (`Re-Uploads Private Logs and ULPs /// t.me/ArhontCorp`, `t.me/ArhontSupport`, `usrlnk.io/ ArhontCloud`), followed by seven dash-prefixed fields: a
`- RED CLOUD Build:` panel self-identifier with a build
date, a `- Configuration:` operator attribution string
(gem-emoji-wrapped `@ArhontCorp red..shop`), a `- Path:`
stealer install location (with a tab-indented `- t.me/redcloud_link` channel-plug continuation), a
`- Display resolution:` WxH token, a `- IP Address:` IPv4,
a `- Time:` DD-MM-YYYY HH:MM:SS log timestamp, and a
`- Country:` ISO-2 code.

The field vocabulary matches Lumma-canonical dashed-prefix
form (`- IP Address:`, `- Display resolution:`, `- Country:`
all documented as Lumma output by MalBeacon, Outpost24
LummaC2 analysis, and Cloudflare Cloudforce One playbook)
but every Lumma-specific anchor is absent: no `- HWID:`,
no `- CPU Vendor:`, no `- Build Date:`, no
`(sig:UNIX.HEX)` watermark on the timestamp line, and the
timestamp uses hyphen date separators (`29-08-2026`)
rather than Lumma's canonical dot separators
(`29.08.2026`).

Family attribution is provisional pending a published
threat-intel mapping for the `RED CLOUD` brand. Two
independent search passes across curated CTI vendor
corpora and public stealer-format catalogues confirmed
@ArhontCorp as a documented stealer-log Telegram reseller
(32,745-record dump dated 2026-06-03 indexed by
heroic.com darkhive breaches) but surfaced no attribution
for the `RED CLOUD` panel brand or the stripped
seven-field dashed-prefix body shape. The body is too stripped
to call Lumma / Redline / Vidar with confidence. Treat
the family attribution as unknown during triage.

### Tiếng Việt

CSRedCloudStealer là tên định danh do CyStack đặt cho một bảng điều khiển (panel) đã bị tối giản hóa với bảy trường có tiền tố gạch ngang, tự gán nhãn là `RED CLOUD` trên dòng build, và được phân phối trong các gói `information.txt` bên trong các bộ lưu trữ reseller `PRIVATE RED LOGS <N> (TG @ArhontCorp).rar` tại các thư mục nạn nhân `<CC>[<32-char-HWID>]/information.txt`. Phần mở đầu thân nội dung là một tiêu đề quảng cáo nhiều dòng @ArhontCorp (`Re-Uploads Private Logs and ULPs /// t.me/ArhontCorp`, `t.me/ArhontSupport`, `usrlnk.io/ ArhontCloud`), tiếp theo là bảy trường có tiền tố gạch ngang: một chuỗi tự định danh panel `- RED CLOUD Build:` kèm ngày build, một chuỗi quy kết đối tượng vận hành `- Configuration:` (được bao quanh bởi biểu tượng viên ngọc `@ArhontCorp red..shop`), một vị trí cài đặt mã độc đánh cắp thông tin `- Path:` (kèm dòng tiếp nối quảng bá kênh `- t.me/redcloud_link` được thụt lề bằng tab), một token độ phân giải WxH `- Display resolution:`, một địa chỉ IPv4 `- IP Address:`, một mốc thời gian log dạng DD-MM-YYYY HH:MM:SS `- Time:`, và một mã quốc gia ISO-2 `- Country:`.

Tập hợp trường khớp với định dạng tiền tố gạch ngang chuẩn của Lumma (`- IP Address:`, `- Display resolution:`, `- Country:` đều đã được MalBeacon, phân tích LummaC2 của Outpost24, và playbook Cloudforce One của Cloudflare ghi nhận là dữ liệu đầu ra của Lumma) nhưng mọi mốc đặc trưng riêng của Lumma đều vắng mặt: không có `- HWID:`, không có `- CPU Vendor:`, không có `- Build Date:`, không có watermark `(sig:UNIX.HEX)` trên dòng mốc thời gian, và mốc thời gian sử dụng dấu phân cách ngày dạng gạch ngang (`29-08-2026`) thay vì dấu phân cách chấm chuẩn của Lumma (`29.08.2026`).

Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có bản đồ tình báo đe dọa đã công bố cho thương hiệu `RED CLOUD`. Hai lượt tìm kiếm độc lập trên các nguồn dữ liệu CTI đã được tuyển chọn từ các nhà cung cấp và các danh mục định dạng stealer công khai xác nhận @ArhontCorp là một đối tượng reseller stealer-log trên Telegram đã được ghi nhận (bộ dữ liệu rò rỉ 32.745 bản ghi ngày 2026-06-03 được heroic.com darkhive breaches lập chỉ mục) nhưng không tìm thấy thông tin quy kết cho thương hiệu panel `RED CLOUD` hay cấu trúc thân nội dung bảy trường tiền tố gạch ngang đã bị tối giản hóa. Thân nội dung quá tối giản để có thể gọi tên chắc chắn là Lumma / Redline / Vidar. Trong giai đoạn phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `RED CLOUD`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim public IP plus ISO-2 country code | Địa chỉ IP công khai của nạn nhân kèm mã quốc gia ISO-2 |
| Panel install path on the victim host | Đường dẫn cài đặt panel trên máy nạn nhân |
| Display resolution (WxH) | Độ phân giải màn hình (WxH) |
| Panel build date (operator-set label) | Ngày build của panel (nhãn do đối tượng vận hành tự đặt) |
| Operator attribution via the Configuration field | Quy kết đối tượng vận hành qua trường Configuration |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the 18-char line-anchored `- RED CLOUD Build:` literal. The substring is unique across the
registry; no other panel emits the `RED CLOUD` brand
literal paired with a dash-prefix `Build:` sub-key.
Lumma's dashed-variant fallback declines cleanly because
the required `- HWID:` + `- CPU Vendor:` + `- IP Address:`
+ `- Display resolution:` four-anchor combo is incomplete
(this body lacks `- HWID:` and `- CPU Vendor:` entirely).
During triage, treat the family attribution as unknown:
the panel self-id does not map to a named stealer family
in any surveyed curated or community threat-intel corpus.

### Tiếng Việt

Việc nhận diện đòi hỏi chuỗi literal 18 ký tự được gắn cố định theo dòng `- RED CLOUD Build:`. Chuỗi con này là duy nhất trong toàn bộ danh mục; không có panel nào khác tạo dữ liệu đầu ra với literal thương hiệu `RED CLOUD` kết hợp cùng khóa con tiền tố gạch ngang `Build:`. Cơ chế dự phòng dạng biến thể gạch ngang của Lumma bị loại trừ một cách rõ ràng vì tổ hợp bốn mốc bắt buộc `- HWID:` + `- CPU Vendor:` + `- IP Address:` + `- Display resolution:` không đầy đủ (thân nội dung này hoàn toàn thiếu `- HWID:` và `- CPU Vendor:`). Trong giai đoạn phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: chuỗi tự định danh của panel không khớp với bất kỳ họ mã độc đánh cắp thông tin nào có tên trong các nguồn tình báo đe dọa đã được tuyển chọn hoặc từ cộng đồng được khảo sát.

## Observed log variants

### `v_6ce8bc1fd0ec6591279206426672c50b`

- Format ID: `cs-red-cloud-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `RED CLOUD`
- Distribution channel: `@ArhontCorp`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_6ce8bc1fd0ec6591279206426672c50b/UserInformation.txt)
- Sample SHA-256: `ea96f21cde4a85a9174670754692900dad66ea6eff63295cdfe258561f0cc7bc`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `RED CLOUD`
- Field labels: `Configuration`, `Country`, `Display resolution`, `IP Address`, `Path`, `RED CLOUD Build`, `Time`, `❗️Actual Link`, `💎Buy`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
