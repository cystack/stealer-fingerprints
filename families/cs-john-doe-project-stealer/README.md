# CSJohnDoeProjectStealer

## Overview / Tổng quan

### English

CSJohnDoeProjectStealer is a CyStack-coined identifier for a
.NET-based stealer that self-identifies with the single-line
banner ``John Doe Project [t.me/JohnDoeProject]`` at the top
of its ``system_info.txt`` file. The body carries a flat
bare-key ``Key: Value`` identity block with .NET-canonical
fields (``CLR Version:``, ``.NET Runtime:``, ``Processor Count:``, ``System Directory:``) plus host fingerprint
(``Computer Name``, ``User Name``, ``OS Version``, ``System Version``, ``Local IP``, ``Default Gateway``, ``Antivirus``,
``CPU``, ``GPU``, ``RAM``, ``SCREEN``) and a trailing ``=== ENVIRONMENT VARIABLES ===`` section carrying a full ``KEY = value`` env-var dump.

The ``@JohnDoeProject`` Telegram channel and the panel banner
are unattested in public reporting and community catalogues.
The .NET-canonical field set is consistent with a private
C#-based stealer template. Family attribution is provisional
pending a published threat-intel mapping for this layout.

### Tiếng Việt

CSJohnDoeProjectStealer là một định danh do CyStack đặt tên cho một mã độc đánh cắp thông tin dựa trên .NET, tự nhận diện bằng biểu ngữ một dòng ``John Doe Project [t.me/JohnDoeProject]`` ở đầu tệp ``system_info.txt`` của nó. Phần nội dung mang một khối định danh dạng khóa trần phẳng ``Key: Value`` với các trường chuẩn của .NET (``CLR Version:``, ``.NET Runtime:``, ``Processor Count:``, ``System Directory:``) cùng dấu vân tay máy (``Computer Name``, ``User Name``, ``OS Version``, ``System Version``, ``Local IP``, ``Default Gateway``, ``Antivirus``, ``CPU``, ``GPU``, ``RAM``, ``SCREEN``) và một phần cuối ``=== ENVIRONMENT VARIABLES ===`` chứa bản kết xuất đầy đủ các biến môi trường ``KEY = value``.

Kênh Telegram ``@JohnDoeProject`` và biểu ngữ bảng điều khiển chưa được xác nhận trong các báo cáo công khai và danh mục cộng đồng. Tập hợp trường chuẩn của .NET phù hợp với một mẫu mã độc đánh cắp thông tin viết bằng C# dạng riêng tư. Việc quy kết họ mã độc vẫn còn tạm thời cho đến khi có một ánh xạ tình báo mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `John Doe Project banner stealer`, `@JohnDoeProject system_info.txt slice`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU, GPU, RAM, resolution, Windows version, .NET Runtime, CLR) | Dấu vân tay phần cứng máy và hệ điều hành (CPU, GPU, RAM, độ phân giải, phiên bản Windows, .NET Runtime, CLR) |
| Network identity (LAN IP, default gateway) | Định danh mạng (địa chỉ IP LAN, cổng mặc định) |
| Account identity (Windows username, computer name) | Định danh tài khoản (tên người dùng Windows, tên máy tính) |
| Full Windows Environment Variables dump | Bản kết xuất đầy đủ các biến môi trường của Windows |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the ``John Doe Project`` banner
substring, the ``t.me/JohnDoeProject`` URL literal, and a
line-anchored ``CLR Version:`` field key. The banner plus URL
form the operator self-id; pairing them with the
.NET-canonical ``CLR Version:`` distinguishes public writeups that might quote the banner or URL in prose. During
triage, treat the underlying stealer family as unattributable
and rely on the channel plus panel_brand metadata to bucket
samples for analyst review. Companion files in the victim
folder (browser exports, cookie dumps, wallet artifacts) may provide more confident family attribution.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con biểu ngữ ``John Doe Project``, chuỗi URL ``t.me/JohnDoeProject``, và khóa trường ``CLR Version:`` được neo theo dòng. Biểu ngữ cùng với URL tạo thành tự định danh của đối tượng vận hành; kết hợp chúng với trường chuẩn ``CLR Version:`` của .NET giúp phân biệt với các bài viết công khai có thể trích dẫn biểu ngữ hoặc URL trong văn bản. Trong quá trình phân loại ban đầu, hãy coi họ mã độc đánh cắp thông tin bên dưới là chưa thể quy kết và dựa vào siêu dữ liệu kênh cùng panel_brand để nhóm các mẫu phục vụ việc rà soát của nhà phân tích. Các tệp liên quan trong thư mục nạn nhân (dữ liệu xuất từ trình duyệt, bản kết xuất cookie, dấu vết ví) có thể cung cấp mức độ quy kết họ mã độc đáng tin cậy hơn.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/JohnDoeProject>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
