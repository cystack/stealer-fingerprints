# CSCrownBuildStealer

## Overview / Tổng quan

### English

CSCrownBuildStealer is a CyStack-coined identifier for a
six-line `Information.txt` Telegram-bot caption observed
inside `!! 2025 JULY.part001.rar` aggregator packs under
`[<CC>]<IPv4>/Information.txt` victim folders. The panel is a
compact preview summary - one field per line, each line opens
with an emoji glyph attached directly to the ASCII key with no
separator space (`🚩IP:`, `👑Build:`, `🔑Passwords:`,
`🍪Cookies:`, `💰Wallets:`, `📂Applications:`). The zero-space
form is the panel quirk that distinguishes this layout from
other emoji-prefixed formats.

The IP line carries a trailing `(<CC>)` two-letter ISO country
code in parentheses after the IPv4. The Build line carries an
operator-set build / affiliate label (`STEAM` in the observed
sample, but the slot accepts arbitrary literals). The Wallets
line names a single wallet brand (`MetaMask`) rather than
emitting a count. The Applications line uses a literal `No No / No` placeholder when the empty-bucket sentinel applies.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
public stealer-format catalogues do not document a family that
emits this exact six-line zero-space emoji-key shape with the
country-code-in-parens IP convention and the `Build:` operator
label slot.

### Tiếng Việt

CSCrownBuildStealer là định danh do CyStack đặt cho một caption bot Telegram sáu dòng `Information.txt` được quan sát bên trong các gói tổng hợp `!! 2025 JULY.part001.rar` dưới các thư mục nạn nhân `[<CC>]<IPv4>/Information.txt`. Panel này là bản tóm tắt xem trước gọn nhẹ - mỗi trường một dòng, mỗi dòng mở đầu bằng một ký tự biểu tượng cảm xúc gắn liền trực tiếp vào khóa ASCII mà không có khoảng trắng phân cách (`🚩IP:`, `👑Build:`, `🔑Passwords:`, `🍪Cookies:`, `💰Wallets:`, `📂Applications:`). Dạng không-khoảng-trắng này là đặc điểm riêng của panel giúp phân biệt bố cục này với các định dạng có tiền tố biểu tượng cảm xúc khác.

Dòng IP mang theo mã quốc gia ISO hai chữ cái `(<CC>)` đặt trong ngoặc đơn sau địa chỉ IPv4. Dòng Build mang theo nhãn build/affiliate do đối tượng vận hành thiết lập (`STEAM` trong mẫu quan sát được, nhưng trường này chấp nhận chuỗi văn bản tùy ý). Dòng Wallets nêu tên một thương hiệu ví duy nhất (`MetaMask`) thay vì tạo dữ liệu đầu ra là một số đếm. Dòng Applications sử dụng giá trị chữ nghĩa `No No / No` khi áp dụng cờ báo hiệu rỗng (empty-bucket sentinel).

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ có một bản ánh xạ thông tin tình báo mối đe dọa đã công bố cho bố cục này. Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin công khai không ghi nhận họ mã độc nào tạo dữ liệu đầu ra đúng theo cấu trúc dữ liệu sáu dòng, khóa-emoji viết liền này, cùng quy ước IP có mã quốc gia trong ngoặc đơn và vị trí nhãn đối tượng vận hành `Build:`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **247**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (count surfaced as `Passwords:`) | Thông tin xác thực đã lưu trong trình duyệt (số đếm hiển thị dưới dạng `Passwords:`) |
| Browser cookies (count surfaced as `Cookies:`) | Cookie trình duyệt (số đếm hiển thị dưới dạng `Cookies:`) |
| Cryptocurrency wallet extensions (single brand surfaced as `Wallets:`) | Tiện ích mở rộng ví tiền mã hóa (một thương hiệu duy nhất hiển thị dưới dạng `Wallets:`) |
| Application-data presence flag (`Applications:`) | Cờ báo hiệu sự hiện diện dữ liệu ứng dụng (`Applications:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three line-anchored zero-space
emoji-key literals: `👑Build:`, `🚩IP:`, and
`📂Applications:`. The three-anchor combination is unique
across this catalog - no other format emits any of the
three forms (CSEmojiInfo / CSEmojiCount / CSMainLoot /
CSRLPanel all separate the glyph from the ASCII key
with a space). During triage, treat the family
attribution as unknown: the compact six-line bot-caption shape ships only IP, country, and build-label
as observable fields, so per-victim hostname / username /
OS / HWID / timestamp cannot be recovered from this
log alone. The `Build:` slot is operator-controlled, so
one observed value (`STEAM`) does not represent the
full label space.

### Tiếng Việt

Việc lấy dấu vân tay (fingerprint) yêu cầu ba literal khóa-emoji không có khoảng trắng được neo theo dòng: `👑Build:`, `🚩IP:` và `📂Applications:`. Tổ hợp ba điểm neo này là duy nhất trong toàn bộ danh mục này - không có định dạng nào khác tạo dữ liệu đầu ra theo bất kỳ hình thức nào trong ba hình thức trên (CSEmojiInfo / CSEmojiCount / CSMainLoot / CSRLPanel đều tách biệt ký tự biểu tượng cảm xúc khỏi khóa ASCII bằng một khoảng trắng). Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: cấu trúc dữ liệu caption bot sáu dòng gọn nhẹ này chỉ cung cấp IP, quốc gia và nhãn build như các trường có thể quan sát được, do đó không thể khôi phục tên máy, tên người dùng, hệ điều hành, HWID hay dấu thời gian theo từng nạn nhân chỉ từ log này. Vị trí `Build:` do đối tượng vận hành kiểm soát, vì vậy một giá trị quan sát được (`STEAM`) không đại diện cho toàn bộ không gian nhãn.

## Observed log variants

### `v_eae1f957793bebdb107bbdd9b20a5a3e`

- Format ID: `cs-crown-build-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **247**
- Representative sample: [open sample](samples/v_eae1f957793bebdb107bbdd9b20a5a3e/sample.txt)
- Sample SHA-256: `b85cbebdce04009c11d64d24c265852848495ce896f7ae4fc7bf657638570742`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `👑Build`, `📂Applications`, `🚩IP`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSEmojiCountStealer](../cs-emoji-count-stealer/)
- [CSMainLootStealer](../cs-main-loot-stealer/)
- [RL Stealer](../rl-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
