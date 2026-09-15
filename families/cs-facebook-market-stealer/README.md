# CSFacebookMarketStealer

## Overview / Tổng quan

### English

CSFacebookMarketStealer is a CyStack-coined identifier for a
Facebook-account-resale marketplace listing emitted as
`Information.txt` inside `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX` aggregator packs. Per-victim folders follow the
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` layout. The body is a
four-line record: a 15-digit Facebook user ID plus display
name plus date of birth header, a crown emoji pricing tier
line, a related-pages line, and a raw Facebook session cookie
string carrying `c_user`, `xs`, `datr`, `sb`, `fr`, `ps_l`,
`ps_n`, `wd`.

The pricing-tier line uses U+1F451 `👑` followed by a U+2219
`∙` BULLET OPERATOR separator chain that carries asking price
(with U+1F4B6 `💶` euro-banknote suffix), age and ratio stats,
trading currency, ISO 3166 country code, a `TS[<n>-<m>]`
trust-score bracket, and a U+2119 `ℙ` category flag. The body
is most likely a panel-side post-processing artifact where a
raw stealer cookie dump has been converted into a resale
listing for an underground Facebook account marketplace.
Family attribution is provisional pending a published
threat-intel mapping for this layout. The closest documented
relatives are NodeStealer, SYS01, and the public
Facebook-Profile-Stealer write-ups: each collects the `c_user`
and `xs` cookie pair from Facebook accounts, but none
publishes a sample log showing this exact emoji-tagged
marketplace listing shape.

### Tiếng Việt

CSFacebookMarketStealer là một định danh do CyStack đặt tên cho một tin đăng rao bán tài khoản Facebook trên chợ đen, được tạo dữ liệu đầu ra dưới dạng `Information.txt` bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX`. Các thư mục theo từng nạn nhân tuân theo bố cục `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/`. Phần nội dung là một bản ghi bốn dòng: dòng tiêu đề gồm ID người dùng Facebook 15 chữ số cùng tên hiển thị và ngày sinh, dòng phân hạng giá kèm biểu tượng cảm xúc vương miện, dòng các trang liên quan, và một chuỗi cookie phiên Facebook thô mang `c_user`, `xs`, `datr`, `sb`, `fr`, `ps_l`, `ps_n`, `wd`.

Dòng phân hạng giá sử dụng ký tự U+1F451 `👑` theo sau là một chuỗi dấu phân cách U+2219 `∙` BULLET OPERATOR mang giá rao bán (kèm hậu tố tờ tiền euro U+1F4B6 `💶`), các số liệu thống kê về tuổi và tỉ lệ, đơn vị tiền tệ giao dịch, mã quốc gia theo chuẩn ISO 3166, một mức phân hạng điểm tin cậy `TS[<n>-<m>]`, và cờ phân loại U+2119 `ℙ`. Phần nội dung này nhiều khả năng là dấu vết xử lý hậu kỳ phía bảng điều khiển, trong đó bản dump cookie thô từ mã độc đánh cắp thông tin đã được chuyển đổi thành một tin rao bán trên chợ đen tài khoản Facebook. Việc quy kết họ mã độc hiện vẫn còn tạm thời, chờ có ánh xạ tình báo mối đe dọa được công bố cho bố cục này. Các họ mã độc gần nhất được ghi nhận là NodeStealer, SYS01, và các bài viết công khai về Facebook-Profile-Stealer: mỗi họ đều thu thập cặp cookie `c_user` và `xs` từ tài khoản Facebook, nhưng không có tài liệu nào công bố mẫu log cho thấy đúng cấu trúc tin rao bán có gắn biểu tượng cảm xúc này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Facebook account marketplace listing`, `Crown-emoji Facebook resale Information.txt`
- Variants observed: **1**
- CyStack observations represented: **925**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Facebook user ID | ID người dùng Facebook |
| Facebook session cookies (`c_user`, `xs`, `datr`, `sb`, `fr`) | Cookie phiên Facebook (`c_user`, `xs`, `datr`, `sb`, `fr`) |
| Facebook account creation year and trust-score metadata | Năm tạo tài khoản Facebook và dữ liệu meta về điểm tin cậy |
| Account display name and date of birth | Tên hiển thị tài khoản và ngày sinh |
| Related Facebook page IDs | ID các trang Facebook liên quan |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires U+1F451 `👑` crown glyph AND `c_user=` AND
`xs=` AND `datr=` cookie-name substrings. Four anchors
together cannot collide with any other cataloged format: the
crown glyph alone rules out every system-info shape, and the
three Facebook session-cookie name substrings rule out any
non-Facebook artifact that happens to carry a crown emoji.
During triage, treat the raw `c_user`, `xs`, and `datr` cookie
values as exfiltrated session secrets that grant attacker-side
Facebook account takeover. Family attribution is unknown: the
underlying stealer that scraped the original cookie dump has
not been mapped to this marketplace-listing layout in any
public reporting.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu có mặt đồng thời ký tự vương miện U+1F451 `👑` VÀ `c_user=` VÀ `xs=` VÀ chuỗi con tên cookie `datr=`. Bốn điểm neo này kết hợp lại không thể trùng lặp với bất kỳ định dạng nào khác đã được phân loại: riêng ký tự vương miện đã loại trừ mọi cấu trúc dữ liệu thông tin hệ thống, và ba chuỗi con tên cookie phiên Facebook loại trừ mọi dấu vết không thuộc Facebook mà tình cờ mang biểu tượng cảm xúc vương miện. Trong quá trình phân loại ban đầu, cần coi các giá trị cookie thô `c_user`, `xs` và `datr` là bí mật phiên đã bị đưa dữ liệu ra ngoài, cho phép đối tượng tấn công chiếm quyền kiểm soát tài khoản Facebook. Việc quy kết họ mã độc hiện chưa xác định: mã độc đánh cắp thông tin gốc đã thu thập bản dump cookie ban đầu vẫn chưa được ánh xạ với bố cục tin rao bán trên chợ đen này trong bất kỳ báo cáo công khai nào.

## Observed log variants

### `v_cd44448921562de22da01df5270af56b`

- Format ID: `cs-facebook-market-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **925**
- Representative sample: [open sample](samples/v_cd44448921562de22da01df5270af56b/sample.txt)
- Sample SHA-256: `c631122ad6230c405c5e4d526c8b5869185f87f579e7c9c59eaee9e715d6f7ad`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `c_user=`, `datr=`, `xs=`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSFacebookProfileStealer](../cs-facebook-profile-stealer/)
- [CSDashPlusSepStealer](../cs-dash-plus-sep-stealer/)

## Related external families

- `nodestealer`
- `sys01-stealer`

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
