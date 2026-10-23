# CSCuriricaStealer

## Overview / Tổng quan

### English

CSCuriricaStealer is a CyStack-coined identifier for an
emoji-sectioned `Information.txt` panel that self-identifies
with the literal `Curirica Stealer` (comet-emoji wrapped) at
the top of the body. Observed inside reseller packs
distributed through the `@Primo_Cloud` Telegram channel,
with victim folders named `[<CC>]_<32-char-HWID>/ Information.txt`. The body opens with a `Curirica Stealer`
self-id line, a horizontal-rule separator, then a sequence
of named sections (Geolocation, Hardware Info, Report
Contents, Tags, Environment) each delimited by a
`<section-emoji> ── <section-name> ─────` header line and
containing data lines of the form `<field-emoji> <ASCII-key>: <value>`.

The hardware block ships IP, country name, concatenated
user/hostname pair (`User\PCName`), OS display string,
display resolution (bare `WxH` form), GPU, CPU, and RAM
(human-readable `N GB` form). The report-contents block
carries per-category counts for cookies, saved passwords,
credit cards, autofills, browser extensions, cryptocurrency
wallets, and generic files harvested. The environment
block exposes the antivirus brand present at exfiltration
time and the panel executable path on the victim host. A
footer line names an operator Telegram handle; the
archive filename names a separate reseller handle
(distribution-chain intermediary).

Family attribution is provisional pending a published
threat-intel mapping for the `Curirica Stealer` brand or
the emoji-sectioned body shape. Two independent search
passes across curated CTI vendor corpora and public
stealer-format catalogues returned only generic
infostealer-ecosystem overviews, with one indirect
reference to the `Primo_Cloud` distribution channel in the
heroic.com darkhive breaches catalogue. Neither source
attributes the specific layout or the `Curirica` brand to
a documented stealer family. Treat the family attribution
as unknown during triage.

### Tiếng Việt

CSCuriricaStealer là một định danh do CyStack đặt tên cho một bảng điều khiển (panel) có phần thân chia theo mục bằng emoji, tự nhận dạng bằng chuỗi ký tự `Curirica Stealer` (được bọc bởi emoji sao chổi) ở đầu phần thân, với tên panel là `Information.txt`. Mẫu này được ghi nhận bên trong các gói reseller phân phối qua kênh Telegram `@Primo_Cloud`, với các thư mục nạn nhân được đặt tên theo định dạng `[<CC>]_<32-char-HWID>/ Information.txt`. Phần thân mở đầu bằng một dòng tự nhận dạng `Curirica Stealer`, tiếp theo là dấu phân cách dạng đường kẻ ngang, sau đó là một chuỗi các mục có tên gọi (Geolocation, Hardware Info, Report Contents, Tags, Environment), mỗi mục được phân tách bằng dòng tiêu đề `<section-emoji> ── <section-name> ─────` và chứa các dòng dữ liệu theo định dạng `<field-emoji> <ASCII-key>: <value>`.

Khối Hardware chứa IP, tên quốc gia, cặp user/hostname được nối liền (`User\PCName`), chuỗi hiển thị hệ điều hành, độ phân giải màn hình (dạng `WxH` không kèm nhãn), GPU, CPU và RAM (dạng `N GB` dễ đọc). Khối Report Contents mang số lượng theo từng hạng mục đối với cookie, mật khẩu đã lưu, thẻ tín dụng, dữ liệu tự động điền (autofill), tiện ích mở rộng trình duyệt, ví tiền điện tử, và các tệp thông thường đã thu thập được. Khối Environment hiển thị tên thương hiệu phần mềm diệt virus có mặt tại thời điểm đưa dữ liệu ra ngoài và đường dẫn tệp thực thi của panel trên máy nạn nhân. Một dòng footer nêu tên tài khoản Telegram của đối tượng vận hành; tên tệp lưu trữ (archive) nêu tên một tài khoản reseller khác (bên trung gian trong chuỗi phân phối).

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có bản đồ tình báo mối đe dọa đã công bố cho thương hiệu `Curirica Stealer` hoặc cho cấu trúc dữ liệu phần thân chia theo mục bằng emoji. Hai lượt tìm kiếm độc lập trên các kho dữ liệu CTI đã được tuyển chọn từ các nhà cung cấp cùng các danh mục định dạng stealer công khai chỉ trả về các tổng quan chung chung về hệ sinh thái mã độc đánh cắp thông tin, cùng một tham chiếu gián tiếp tới kênh phân phối `Primo_Cloud` trong danh mục rò rỉ dữ liệu darkhive của heroic.com. Không nguồn nào trong số đó quy kết bố cục cụ thể này hay thương hiệu `Curirica` cho một họ mã độc đánh cắp thông tin đã được ghi nhận. Trong quá trình phân loại ban đầu (triage), hãy coi việc quy kết họ mã độc là chưa xác định.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Curirica Stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (count surfaced as `Passwords`) | Thông tin xác thực đã lưu trên trình duyệt (số lượng hiển thị dưới dạng `Passwords`) |
| Browser cookies (count surfaced as `Cookies`) | Cookie trình duyệt (số lượng hiển thị dưới dạng `Cookies`) |
| Browser autofill entries (count surfaced as `AutoFills`) | Mục dữ liệu tự động điền (autofill) trên trình duyệt (số lượng hiển thị dưới dạng `AutoFills`) |
| Payment-card entries (count surfaced as `Credit Cards`) | Mục dữ liệu thẻ thanh toán (số lượng hiển thị dưới dạng `Credit Cards`) |
| Cryptocurrency wallet extensions (count surfaced as `Wallets`) | Tiện ích mở rộng ví tiền điện tử (số lượng hiển thị dưới dạng `Wallets`) |
| Browser extensions (count surfaced as `Extensions`) | Tiện ích mở rộng trình duyệt (số lượng hiển thị dưới dạng `Extensions`) |
| Generic files harvested from the victim host (`Files`) | Các tệp thông thường thu thập được từ máy nạn nhân (`Files`) |
| Antivirus product present at exfiltration time (`AVs`) | Sản phẩm diệt virus có mặt tại thời điểm đưa dữ liệu ra ngoài (`AVs`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the 16-char literal `Curirica Stealer`
substring in the body. The literal is unique across the
registry - no other panel self-identifies with the
`Curirica` brand, and the `<emoji> <ASCII-key>: <value>`
field vocabulary paired with `──`-delimited section headers
is distinct from every other emoji-prefixed panel
(CSEmojiInfo / CSEmojiCount / CSMainLoot / CSRLPanel /
CSCrownBuild all use different section conventions or no
section-header pattern at all). During triage, treat the
family attribution as unknown: the panel self-id does not
map to a named stealer family in any surveyed curated or
community threat-intel corpus. The per-victim user/host
pair is emitted joined with a literal backslash
(`User\PCName`) rather than as two distinct fields; the
account and computer name should be split on the
backslash separator before correlation. The operator
Telegram handle in the footer is a channel-admin
attribution, not an evidence of family affiliation.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu chuỗi ký tự dài 16 ký tự `Curirica Stealer` xuất hiện trong phần thân. Chuỗi này là duy nhất trong toàn bộ danh mục - không có panel nào khác tự nhận dạng bằng thương hiệu `Curirica`, và bộ từ vựng trường dữ liệu `<emoji> <ASCII-key>: <value>` kết hợp với các tiêu đề mục được phân tách bằng `──` khác biệt hoàn toàn so với mọi panel có tiền tố emoji khác (CSEmojiInfo / CSEmojiCount / CSMainLoot / CSRLPanel / CSCrownBuild đều dùng quy ước phân mục khác hoặc không có dạng tiêu đề mục nào cả). Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: tên tự nhận dạng của panel không ánh xạ tới bất kỳ họ mã độc đánh cắp thông tin nào có tên gọi trong các kho dữ liệu tình báo mối đe dọa đã được tuyển chọn hoặc từ cộng đồng mà nhóm đã khảo sát. Cặp user/host theo từng nạn nhân được tạo dữ liệu đầu ra dưới dạng nối với nhau bằng ký tự dấu gạch chéo ngược (`User\PCName`) thay vì là hai trường riêng biệt; cần tách tên tài khoản và tên máy tính theo dấu phân cách gạch chéo ngược trước khi đối chiếu dữ liệu. Tài khoản Telegram của đối tượng vận hành ở phần footer chỉ là thông tin quy kết quản trị viên kênh, không phải bằng chứng về mối liên hệ với một họ mã độc cụ thể.

## Observed log variants

### `v_2f5b31b97024b373ca847185ee9cbe28`

- Format ID: `cs-curirica-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `Curirica Stealer`
- Distribution channel: `@Primo_Cloud`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_2f5b31b97024b373ca847185ee9cbe28/Information.txt)
- Sample SHA-256: `9a6565411aa312a8ae38d2283a10676d22493b2c7206c96fd28a9f341a8016bf`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Curirica Stealer`, `☄️ Curirica Stealer ☄️`, `👤 @renggli`
- Field labels: `⚙️ Service Tags`, `✍️ AutoFills`, `🌍 IP`, `🍪 Cookies`, `🍪 Cookies Tags`, `🎮 GPU(s`, `👛 Wallets`, `👤 User`, `💳 Credit Cards`, `💾 RAM`, `📁 Files`, `📂 Location`, `📍 Country`, `📐 Resolution`, `🔐 Password Tags`, `🔐 Passwords`, `🕒 22/05/2026 23`, `🧠 CPU`, `🧩 Extensions`, `🧰 AVs`, `🪟 OS`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
