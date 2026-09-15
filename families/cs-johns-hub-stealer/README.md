# CSJohnsHubStealer

## Overview / Tổng quan

### English

CSJohnsHubStealer is a CyStack-coined identifier for a stealer
that self-identifies with the ``JOHN GOT RIPPED`` Figlet
ASCII-art banner and the ``https://t.me/johns_hub`` Telegram
channel URL. The panel writes a flat bare-key ``UserInfo.txt``
body with 12 identity fields: ``Build: @johns_hub``
(self-referencing tag), ``Stealer version: <N.N.N>``
self-declared version, plus ``Country``, ``IP``, ``HWID``
(32-character uppercase hex), ``Username``, ``OS``,
``Language``, ``CPU``, ``GPU``, ``RAM``, ``Resolution``, and a
US-format ``Date:`` timestamp.

The @johns_hub channel and JOHN GOT RIPPED banner are not
documented in any public reporting or community catalog. The
flat field set is consistent with a generic .NET stealer
template that could be a new family, a rebrand of an existing
one, or a private-panel build. Family attribution is
provisional pending a published threat-intel mapping for this
layout.

### Tiếng Việt

CSJohnsHubStealer là định danh do CyStack đặt cho một mã độc đánh cắp thông tin tự nhận diện bằng banner ASCII-art Figlet ``JOHN GOT RIPPED`` và URL kênh Telegram ``https://t.me/johns_hub``. Bảng điều khiển ghi ra một khối bare-key ``UserInfo.txt`` phẳng gồm 12 trường danh tính: ``Build: @johns_hub`` (thẻ tự tham chiếu), ``Stealer version: <N.N.N>`` phiên bản tự khai báo, cùng với ``Country``, ``IP``, ``HWID`` (hex 32 ký tự chữ hoa), ``Username``, ``OS``, ``Language``, ``CPU``, ``GPU``, ``RAM``, ``Resolution``, và một dấu thời gian ``Date:`` theo định dạng Mỹ.

Kênh @johns_hub và banner JOHN GOT RIPPED chưa được ghi nhận trong bất kỳ báo cáo công khai hay danh mục cộng đồng nào. Bộ trường phẳng này phù hợp với một mẫu mã độc đánh cắp thông tin .NET tổng quát, có thể là một họ mã độc mới, một bản đổi thương hiệu của một họ đã có, hoặc một bản dựng bảng điều khiển riêng tư. Việc quy kết họ mã độc là tạm thời, chờ một ánh xạ tình báo mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `JOHN GOT RIPPED banner stealer`, `@johns_hub UserInfo.txt slice`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU, GPU, RAM, resolution, Windows version, HWID) | Dấu vết phần cứng máy và hệ điều hành (CPU, GPU, RAM, độ phân giải, phiên bản Windows, HWID) |
| Network identity (IP, country, language) | Danh tính mạng (IP, quốc gia, ngôn ngữ) |
| Account identity (Windows username) | Danh tính tài khoản (tên người dùng Windows) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both the ``https://t.me/johns_hub``
channel URL and the line-anchored ``Stealer version:`` field
key. Neither anchor alone is unique enough (the URL could
appear in prose in a public writeup), so both are required.
During triage, treat the underlying stealer family as
unattributable and rely on the channel + panel_brand metadata
to bucket samples for analyst review. Companion files in the
victim folder (browser exports, wallet artifacts, cookie
dumps) may provide more confident family attribution.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu cả URL kênh ``https://t.me/johns_hub`` và khóa trường ``Stealer version:`` gắn theo dòng. Không dấu hiệu nào trong hai dấu hiệu này đủ riêng biệt khi đứng một mình (URL có thể xuất hiện trong văn xuôi của một bài viết công khai), nên cần cả hai. Trong quá trình phân loại ban đầu, hãy coi họ mã độc đánh cắp thông tin bên dưới là chưa thể quy kết và dựa vào metadata channel + panel_brand để phân nhóm mẫu cho việc rà soát của chuyên viên phân tích. Các tệp liên quan trong thư mục nạn nhân (dữ liệu xuất từ trình duyệt, dấu vết ví, dữ liệu xuất cookie) có thể cung cấp cơ sở quy kết họ mã độc đáng tin cậy hơn.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/johns_hub>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
