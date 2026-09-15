# CSMatchesFilterStealer

## Overview / Tổng quan

### English

CSMatchesFilterStealer is a CyStack-coined identifier for a
four-line `Information.txt` written by a Telegram broker bot
that pre-scans the victim's harvested cookies and passwords
for high-value domain or keyword hits, then rolls the
per-target counts into a single `Matches:` line so prospective
buyers can rank logs before purchase. The body is `IP:` /
`Country:` / `User:` / `Matches:`, no banner, no section
dividers, no trailing footer. The `Country:` value follows the
dual-token `ISO2 - Name` form (`BD - Bangladesh`), which is
the format's narrowest disambiguator across flat-key shapes.

The format is a broker-side caption rather than a stealer
family's own writer output, so the underlying family for any
given log is not recoverable from this panel alone: multiple
stealers can feed into the broker's pre-scan pipeline. The
`Matches:` enrichment list (per-domain or per-keyword counts)
is panel-side metadata, not victim-side data, so it is
intentionally not retained as victim observables. Observed targets in
the rollup line include freelancer / payment platforms
(`payoneer.com`, `upwork.com`, `gumroad.com`), social-network
accounts (`facebook.com`, `studio.youtube.com`), and free-form
financial keywords (`bank`, `payout`).

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
public stealer-format catalogues do not document a family that
emits this exact four-line `IP` / `Country` / `User` /
`Matches:` shape.

### Tiếng Việt

CSMatchesFilterStealer là định danh do CyStack đặt cho một `Information.txt` bốn dòng được viết bởi một bot môi giới trên Telegram, thực hiện quét sơ bộ các cookie và mật khẩu đã thu thập được của nạn nhân để tìm các kết quả trùng khớp với tên miền hoặc từ khóa có giá trị cao, sau đó gộp số lượng theo từng mục tiêu vào một dòng `Matches:` duy nhất để người mua tiềm năng có thể xếp hạng các log trước khi mua. Phần thân gồm `IP:` / `Country:` / `User:` / `Matches:`, không có banner, không có dòng phân cách phần, không có footer ở cuối. Giá trị `Country:` tuân theo cấu trúc hai token `ISO2 - Name` (`BD - Bangladesh`), đây là yếu tố phân biệt hẹp nhất của định dạng này trong số các cấu trúc dữ liệu khóa phẳng.

Định dạng này là chú thích do bên môi giới tạo ra chứ không phải dữ liệu đầu ra gốc từ một họ mã độc đánh cắp thông tin cụ thể, do đó không thể xác định họ mã độc gốc cho một log cụ thể chỉ dựa vào panel này: nhiều mã độc đánh cắp thông tin khác nhau có thể cùng đưa dữ liệu vào pipeline quét sơ bộ của bên môi giới. Danh sách bổ sung `Matches:` (số lượng theo từng tên miền hoặc từ khóa) là siêu dữ liệu phía panel, không phải dữ liệu từ phía nạn nhân, vì vậy nó chủ đích không được lưu giữ như một dấu hiệu quan sát được của nạn nhân. Các mục tiêu được quan sát trong dòng tổng hợp bao gồm các nền tảng freelancer / thanh toán (`payoneer.com`, `upwork.com`, `gumroad.com`), tài khoản mạng xã hội (`facebook.com`, `studio.youtube.com`), và các từ khóa tài chính dạng tự do (`bank`, `payout`).

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có báo cáo tình báo an ninh mạng ánh xạ bố cục này. Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin công khai hiện chưa ghi nhận họ mã độc nào tạo dữ liệu đầu ra đúng theo cấu trúc dữ liệu bốn dòng `IP` / `Country` / `User` / `Matches:` này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Broker pre-scan caption`, `Matches rollup filter bot`
- Variants observed: **1**
- CyStack observations represented: **9**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials and cookies (counted by `Matches:` rollup) | Thông tin xác thực và cookie được trình duyệt lưu lại (được đếm theo tổng hợp `Matches:`) |
| Freelancer payment accounts (Payoneer, Upwork, Gumroad) | Tài khoản thanh toán freelancer (Payoneer, Upwork, Gumroad) |
| Social-network sessions (Facebook, YouTube Studio) | Phiên đăng nhập mạng xã hội (Facebook, YouTube Studio) |
| Free-form financial keywords (bank, payout) | Từ khóa tài chính dạng tự do (bank, payout) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four line-anchored anchor keys
(`IP:`, `Country:`, `User:`, `Matches:`) plus the
`Country: ISO2 - Name` dual-token country form. The four
anchors alone would collide with any generic flat-key
panel that ships an `IP:` / `Country:` / `User:` triple;
requiring the country value to carry both the two-letter
ISO code and the full name joined by `-` is what
narrows the match. The `Matches:` rollup itself is
broker-side metadata, not victim-side data, so during
triage treat the per-target counts as a relevance signal
(the broker advertised the log because these accounts
were valuable) rather than as direct evidence of
compromise for those services. Treat the family
attribution as unknown: multiple underlying stealers can
feed into the broker's pipeline, and the panel does not
preserve the original writer's family signature.

### Tiếng Việt

Việc lấy dấu hiệu nhận diện yêu cầu bốn khóa neo gắn theo dòng (`IP:`, `Country:`, `User:`, `Matches:`) cùng với cấu trúc quốc gia hai token `Country: ISO2 - Name`. Chỉ riêng bốn khóa neo này sẽ trùng lặp với bất kỳ panel khóa phẳng thông thường nào có bộ ba `IP:` / `Country:` / `User:`; yêu cầu giá trị quốc gia phải mang cả mã ISO hai chữ cái lẫn tên đầy đủ được nối bằng `-` chính là yếu tố thu hẹp việc khớp mẫu. Bản thân dòng tổng hợp `Matches:` là siêu dữ liệu phía bên môi giới, không phải dữ liệu từ phía nạn nhân, do đó trong quá trình phân loại (triage) cần coi số lượng theo từng mục tiêu là tín hiệu liên quan (bên môi giới quảng cáo log này vì các tài khoản đó có giá trị) chứ không phải bằng chứng trực tiếp cho thấy các dịch vụ đó đã bị xâm phạm. Cần coi việc quy kết họ mã độc là chưa xác định: nhiều mã độc đánh cắp thông tin khác nhau có thể cùng đưa dữ liệu vào pipeline của bên môi giới, và panel này không lưu giữ dấu hiệu đặc trưng của họ mã độc gốc từ bộ tạo dữ liệu đầu ra ban đầu.

## Observed log variants

### `v_e969c3c4ba0bb12611cb41de10a5c23f`

- Format ID: `cs-matches-filter-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **9**
- Representative sample: [open sample](samples/v_e969c3c4ba0bb12611cb41de10a5c23f/sample.txt)
- Sample SHA-256: `21f0660b9ade211b7833f67f3471828a5adc27506e0b063ac6f9f85a0cffcdaa`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `IP`, `Matches`, `User`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSCrownBuildStealer](../cs-crown-build-stealer/)
- [CSMainLootStealer](../cs-main-loot-stealer/)
- [RL Stealer](../rl-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
