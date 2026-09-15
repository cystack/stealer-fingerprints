# CSNovyiLogStealer

## Overview / Tổng quan

### English

CSNovyiLogStealer is a CyStack-coined identifier for a
Russian-language `info.txt` panel observed inside `!! 2025 NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs. The
file lands buried inside the victim
`AppData/Local/Temp/<8-char-random>/info.txt` path, not at a
top-level victim folder. The body opens with the Cyrillic
`Новый лог!` (`New log!`) banner that the operator's Telegram
bot posts on every new upload, then a `🗃Build ID: <name>`
per-build tag, then a 10-field count panel with Russian field
names and one emoji glyph per line.

Field set: `🏳️ IP`, `🌎 Страна` (ISO 3166-1 alpha-2 code, not
the country name), `💻 Система` (localised Windows product
name), `🍪 Куков` (cookies count), `🔐 Паролей` (passwords
count), `💳 Карт` (cards count), `📥 Загрузок` (downloads
count), `📚 Истории` (history count), `🎫 Токенов` (tokens
count), `👛 Кошельков` (wallets count), `📱 Tdata` (Telegram
tdata count). The retained research record focuses on the build ID, public
IP, ISO2 country, and OS string; the raw sample preserves the
per-category counts for analyst review.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a stealer that emits this
exact `Новый лог!` banner with the 10-field emoji panel. A
public Angry Stealer / Rage Stealer write-up describes a
similar field set (cookies + passwords + cards + downloads +
wallets + Tdata) distributed via a Telegram bot, but does not
show the panel format verbatim, so the field-set similarity is
not enough to attribute. The `Build ID: Kev1n` value is a
per-build operator tag, not a family brand.

### Tiếng Việt

CSNovyiLogStealer là định danh do CyStack đặt cho một bảng điều khiển tiếng Nga của `info.txt` được quan sát bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` BRADMAX / `@BRADLOGS`. Tệp nằm ẩn sâu bên trong đường dẫn `AppData/Local/Temp/<8-char-random>/info.txt` của nạn nhân, không phải ở thư mục cấp cao nhất của nạn nhân. Nội dung mở đầu bằng biểu ngữ Cyrillic `Новый лог!` (`New log!`) mà bot Telegram của đối tượng vận hành đăng lên mỗi khi có bản tải lên mới, tiếp theo là thẻ `🗃Build ID: <name>` cho từng bản dựng, sau đó là bảng đếm gồm 10 trường với tên trường bằng tiếng Nga và một biểu tượng emoji cho mỗi dòng.

Bộ trường: `🏳️ IP`, `🌎 Страна` (mã ISO 3166-1 alpha-2, không phải tên quốc gia), `💻 Система` (tên sản phẩm Windows đã bản địa hóa), `🍪 Куков` (số lượng cookie), `🔐 Паролей` (số lượng mật khẩu), `💳 Карт` (số lượng thẻ), `📥 Загрузок` (số lượng bản tải xuống), `📚 Истории` (số lượng lịch sử), `🎫 Токенов` (số lượng token), `👛 Кошельков` (số lượng ví), `📱 Tdata` (số lượng tdata Telegram). Bản ghi nghiên cứu được lưu giữ tập trung vào mã bản dựng, địa chỉ IP công cộng, mã quốc gia ISO2 và chuỗi hệ điều hành; mẫu thô lưu giữ số lượng theo từng hạng mục để nhà phân tích xem xét.

Việc quy kết họ mã độc mới chỉ là tạm thời, chờ có ánh xạ tình báo mối đe dọa được công bố cho cấu trúc dữ liệu này. Các báo cáo công khai và danh mục cộng đồng không ghi nhận một mã độc đánh cắp thông tin nào tạo dữ liệu đầu ra đúng với biểu ngữ `Новый лог!` này cùng bảng emoji 10 trường. Một bài viết công khai về Angry Stealer / Rage Stealer mô tả một bộ trường tương tự (cookie + mật khẩu + thẻ + bản tải xuống + ví + Tdata) được phân phối qua bot Telegram, nhưng không thể hiện nguyên văn định dạng bảng điều khiển, do đó sự tương đồng về bộ trường là chưa đủ để quy kết. Giá trị `Build ID: Kev1n` là thẻ theo từng bản dựng của đối tượng vận hành, không phải tên thương hiệu của họ mã độc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Novyi log info.txt Russian emoji panel`, `BRADMAX Temp/info.txt 10-field Cyrillic count panel`
- Variants observed: **1**
- CyStack observations represented: **26**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (count flag only; harvested body in sibling files) | Thông tin xác thực đã lưu trên trình duyệt (chỉ có cờ đếm số lượng; nội dung thu thập được nằm trong các tệp liên quan) |
| Browser cookies (count flag only) | Cookie trình duyệt (chỉ có cờ đếm số lượng) |
| Browser autofill / credit cards (count flag only) | Tự động điền / thẻ tín dụng trên trình duyệt (chỉ có cờ đếm số lượng) |
| Browser download history (count flag only) | Lịch sử tải xuống trên trình duyệt (chỉ có cờ đếm số lượng) |
| Browser history (count flag only) | Lịch sử duyệt web (chỉ có cờ đếm số lượng) |
| Discord / Steam / Telegram tokens (count flag only) | Token Discord / Steam / Telegram (chỉ có cờ đếm số lượng) |
| Cryptocurrency wallets (count flag only) | Ví tiền điện tử (chỉ có cờ đếm số lượng) |
| Telegram tdata desktop sessions (count flag only) | Phiên desktop tdata của Telegram (chỉ có cờ đếm số lượng) |
| Host OS string and victim public IP / country | Chuỗi hệ điều hành của máy và địa chỉ IP công cộng / quốc gia của nạn nhân |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the literal `Новый лог!` Cyrillic banner
AND the `Build ID:` key AND the Cyrillic `Страна:` field name.
The three-anchor combination cannot collide with any other
cataloged format: `Новый лог!` is the operator's Telegram bot
notification text and only appears in this panel template;
`Страна:` is the Russian noun for country and is rare outside
Russian-localised stealer output. During triage, treat the
family attribution as unknown: the panel is a count summary,
not the harvested data itself, and the count fields plus the
Russian field labels match several known Telegram-bot stealer
panels (the publicly documented Angry / Rage Stealer family)
without enough discriminating detail to confirm any specific
builder. The actual harvested credentials live in sibling
files inside the same per-victim folder.

### Tiếng Việt

Việc lấy dấu hiệu nhận diện đòi hỏi phải có nguyên văn biểu ngữ Cyrillic `Новый лог!` VÀ khóa `Build ID:` VÀ tên trường Cyrillic `Страна:`. Tổ hợp ba điểm neo này không thể trùng lặp với bất kỳ định dạng nào khác đã được ghi nhận: `Новый лог!` là nội dung thông báo của bot Telegram thuộc đối tượng vận hành và chỉ xuất hiện trong mẫu bảng điều khiển này; `Страна:` là danh từ tiếng Nga có nghĩa là quốc gia và hiếm khi xuất hiện ngoài dữ liệu đầu ra của mã độc đánh cắp thông tin đã bản địa hóa tiếng Nga. Trong quá trình phân loại ban đầu, cần coi việc quy kết họ mã độc là chưa xác định: bảng điều khiển này chỉ là bản tóm tắt số lượng, không phải bản thân dữ liệu đã thu thập, và các trường đếm số cùng nhãn trường tiếng Nga trùng khớp với nhiều bảng điều khiển mã độc đánh cắp thông tin qua bot Telegram đã biết (họ mã độc Angry / Rage Stealer đã được ghi nhận công khai) nhưng không đủ chi tiết phân biệt để xác nhận bất kỳ công cụ dựng (builder) cụ thể nào. Thông tin xác thực thực sự đã thu thập được nằm trong các tệp liên quan bên trong cùng thư mục theo từng nạn nhân.

## Observed log variants

### `v_f5261d16e45e2fc5a86962a5fdbe680c`

- Format ID: `cs-novyi-log-stealer`
- Observed filenames: `info.txt`
- Panel brand: `Новый лог!`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **26**
- Representative sample: [open sample](samples/v_f5261d16e45e2fc5a86962a5fdbe680c/sample.txt)
- Sample SHA-256: `8974ce614c995e809cb7acfca2c0a1c3ff193e7dc91fbfc20178d78c9ab31959`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Build ID:`, `Новый лог!`, `Страна:`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSNewLogStealer](../cs-new-log-stealer/)
- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSEmojiCountStealer](../cs-emoji-count-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
