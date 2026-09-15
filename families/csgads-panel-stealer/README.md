# CSGADSPanelStealer

## Overview / Tổng quan

### English

CSGADSPanelStealer is a CyStack-coined identifier for a
compact five-line `Information.txt` panel summary observed
inside `!! 2026 JAN.part01.rar`-style aggregator packs in
`[CC]<IPv4>/Information.txt` victim folders. The body lists
IP, Country (flag emoji + ISO code + country name), User,
AntiVirus, and a `Browser Data:` count line in pipe-separated
PXA-style notation:
`CK:<n>|PW:<n>|AF:<n>|CC:<n>|FB:<n>|GADS:<bool>`. No HWID,
hostname, OS, or hardware inventory accompanies the summary,
so the panel is a victim-side fingerprint view rather than a
full system-info export.

The `CK|PW|AF|CC|FB` count abbreviations are publicly
documented as the PXA Stealer data-tracker format, and the
`[CC]<IP>` folder convention matches the PXA panel
exfiltration shape (`[CC_IPADDRESS]_HOSTNAME.zip`). The
attribution is suggestive but not definitive: PXA's documented
victim-side `system_info.txt` uses a verbose
Vietnamese-headered `Thông tin hệ thống` block of WMI
snake_case keys, as documented in the PXA profile, and the trailing
`GADS` (Google Ads account flag) column plus the bare
`AntiVirus:` line are not described in any public reporting.
The format may be a panel-summary view from a PXA log-ingest
pipeline or an unrelated Telegram aggregator that adopted the
PXA count notation.

Family attribution is provisional pending a published
threat-intel mapping for this exact panel-summary layout.

### Tiếng Việt

CSGADSPanelStealer là định danh do CyStack đặt cho một bản tóm tắt panel `Information.txt` gồm năm dòng, được quan sát bên trong các gói tổng hợp kiểu `!! 2026 JAN.part01.rar` nằm trong các thư mục nạn nhân `[CC]<IPv4>/Information.txt`. Phần nội dung liệt kê IP, Country (biểu tượng cờ + mã ISO + tên quốc gia), User, AntiVirus, và một dòng đếm `Browser Data:` theo cấu trúc dữ liệu phân tách bằng dấu gạch đứng kiểu PXA: `CK:<n>|PW:<n>|AF:<n>|CC:<n>|FB:<n>|GADS:<bool>`. Bản tóm tắt không đi kèm HWID, hostname, hệ điều hành hay thông tin kiểm kê phần cứng, do đó đây là một khung nhìn nhận dạng dấu vết phía nạn nhân hơn là một bản xuất thông tin hệ thống đầy đủ.

Các chữ viết tắt đếm `CK|PW|AF|CC|FB` đã được công khai tài liệu hóa là định dạng data-tracker của PXA Stealer, và quy ước thư mục `[CC]<IP>` khớp với cấu trúc dữ liệu đưa dữ liệu ra ngoài của panel PXA (`[CC_IPADDRESS]_HOSTNAME.zip`). Việc quy kết mang tính gợi ý nhưng chưa dứt khoát: khối `system_info.txt` phía nạn nhân đã được tài liệu hóa của PXA sử dụng một khối `Thông tin hệ thống` có tiêu đề tiếng Việt đầy đủ gồm các khóa WMI dạng snake_case, như đã ghi nhận trong hồ sơ PXA, còn cột `GADS` ở cuối (cờ đánh dấu tài khoản Google Ads) cùng dòng `AntiVirus:` trơ trọi không được mô tả trong bất kỳ báo cáo công khai nào. Định dạng này có thể là một khung nhìn tóm tắt panel từ một pipeline nạp log của PXA, hoặc từ một trình tổng hợp Telegram không liên quan nhưng đã áp dụng cấu trúc dữ liệu đếm của PXA.

Việc quy kết họ mã độc vẫn còn tạm thời cho đến khi có một bản ánh xạ threat-intel được công bố cho đúng bố cục tóm tắt panel này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `!! 2026 JAN aggregator panel summary`
- Variants observed: **1**
- CyStack observations represented: **24,995**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill (counts only) | Thông tin xác thực, cookie và dữ liệu tự động điền đã lưu trong trình duyệt (chỉ ở dạng số đếm) |
| Credit-card data (count flag) | Dữ liệu thẻ tín dụng (cờ đếm) |
| Facebook session cookies (count flag) | Cookie phiên Facebook (cờ đếm) |
| Google Ads account presence flag | Cờ đánh dấu sự hiện diện tài khoản Google Ads |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `IP:`, `Country:`,
`User:`, `AntiVirus:` keys plus the `Browser Data: CK:`
substring and the `|GADS:` substring. The `|GADS:` token
is the disambiguator: PXA Stealer Telegram bot captions
use the same pipe-separated count notation but extend it
with `Sites|Wallets|Apps` columns rather than a `GADS`
flag. During triage, treat the family attribution as
unknown - the underlying stealer cannot be identified
from the panel summary alone, and the per-victim folder
is missing the harvested credential bodies that would
allow follow-on family fingerprinting.

### Tiếng Việt

Việc nhận diện dấu vết đòi hỏi các khóa `IP:`, `Country:`, `User:`, `AntiVirus:` được neo theo dòng, cùng với chuỗi con `Browser Data: CK:` và chuỗi con `|GADS:`. Token `|GADS:` là yếu tố phân biệt: các chú thích bot Telegram của PXA Stealer sử dụng cùng cấu trúc dữ liệu đếm phân tách bằng dấu gạch đứng nhưng mở rộng thêm bằng các cột `Sites|Wallets|Apps` thay vì cờ `GADS`. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định - mã độc đánh cắp thông tin bên dưới không thể được xác định chỉ từ bản tóm tắt panel, và thư mục nạn nhân tương ứng đang thiếu phần nội dung thông tin xác thực đã thu thập được, vốn cần thiết để nhận diện họ mã độc ở các bước tiếp theo.

## Observed log variants

### `v_edb227dfc327e94eb4f8726bf60b7c89`

- Format ID: `cs-gads-panel-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **24,995**
- Representative sample: [open sample](samples/v_edb227dfc327e94eb4f8726bf60b7c89/sample.txt)
- Sample SHA-256: `1bcb7dc74275e6505415c7cafd443acd743af2b0240f8d8ea349a41ac45398d9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Browser Data: CK:`, `\|AF:`, `\|CC:`, `\|PW:`
- Field labels: `IP`, `User`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
