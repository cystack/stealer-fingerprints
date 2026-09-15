# CSBugattiUserInfoStealer

## Overview / Tổng quan

### English

CSBugattiUserInfoStealer is a CyStack-coined identifier for
the @Bugatti_Cloud aggregator's ``UserInformation.txt`` hybrid
slice. The file is a flat ``Key: Value`` body whose vocabulary
mixes markers from multiple documented stealer families.
Redline contributes the ``Operation System:`` typo,
``ScreenSize:``, and ``Log date:`` keys. Lumma contributes the
``# Buy now: TG`` operator banner template with the affiliate
value stripped. Rhadamanthys contributes the ``MachineID:``
UUID bot fingerprint. Mars Stealer contributes ``Installed RAM:`` and ``Graphics card:``. Bugatti-specific additions
include CamelCase no-space ``UserName:`` / ``ComputerName:``,
a ``UUID:`` line for the system product UUID, a ``Current Path:`` label for the malware install path, and a 3-language
block with spaced keys.

The @Bugatti_Cloud channel is a documented multi-family
aggregator that redistributes Redline and other stealer logs
in custom container formats. The mixed vocabulary observed
here is consistent with an operator-side reformatter that
normalises logs from multiple underlying panels into a unified
template. The ``UserInformation.txt`` filename is publicly
documented as Aurora Stealer's canonical exfil filename, but
no public writeup publishes the exact field-label mapping.
Family attribution is provisional pending a published
threat-intel writeup for this layout.

### Tiếng Việt

CSBugattiUserInfoStealer là định danh do CyStack đặt cho lát cắt lai ``UserInformation.txt`` của bộ tổng hợp @Bugatti_Cloud. Tệp này là một khối văn bản ``Key: Value`` phẳng có bộ từ vựng pha trộn các dấu hiệu từ nhiều họ mã độc đánh cắp thông tin đã được ghi nhận. Redline đóng góp lỗi chính tả ``Operation System:``, cùng các khóa ``ScreenSize:`` và ``Log date:``. Lumma đóng góp mẫu banner đối tượng vận hành ``# Buy now: TG`` với giá trị affiliate đã bị loại bỏ. Rhadamanthys đóng góp dấu vết bot UUID ``MachineID:``. Mars Stealer đóng góp ``Installed RAM:`` và ``Graphics card:``. Các thành phần bổ sung riêng của Bugatti bao gồm ``UserName:`` / ``ComputerName:`` dạng CamelCase không dấu cách, một dòng ``UUID:`` cho UUID sản phẩm hệ thống, một nhãn ``Current Path:`` cho đường dẫn cài đặt mã độc, và một khối 3 ngôn ngữ với các khóa có dấu cách.

Kênh @Bugatti_Cloud là một bộ tổng hợp đa họ mã độc đã được ghi nhận, chuyên phân phối lại nhật ký của Redline và các mã độc đánh cắp thông tin khác dưới các định dạng container tùy chỉnh. Bộ từ vựng pha trộn quan sát được ở đây phù hợp với một công cụ định dạng lại phía đối tượng vận hành, chuẩn hóa nhật ký từ nhiều bảng điều khiển bên dưới thành một mẫu thống nhất. Tên tệp ``UserInformation.txt`` đã được công khai ghi nhận là tên tệp đưa dữ liệu ra ngoài đặc trưng của Aurora Stealer, nhưng không có bài viết công khai nào công bố ánh xạ nhãn trường chính xác. Việc quy kết họ mã độc là tạm thời, chờ một bài viết tình báo mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@Bugatti_Cloud UserInformation.txt slice`, `Bugatti hybrid Redline/Lumma/Rhadamanthys/Mars variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU model, GPU adapter list, installed RAM, screen resolution, Windows version) | Dấu vết phần cứng máy và hệ điều hành (model CPU, danh sách adapter GPU, dung lượng RAM cài đặt, độ phân giải màn hình, phiên bản Windows) |
| Network identity (IP address, country) | Danh tính mạng (địa chỉ IP, quốc gia) |
| Account identity (Windows username, computer name) | Danh tính tài khoản (tên người dùng Windows, tên máy) |
| Bot fingerprint identifiers (MachineID GUID, system product UUID) | Định danh dấu vết bot (MachineID GUID, UUID sản phẩm hệ thống) |
| Malware install path (Current Path field) | Đường dẫn cài đặt mã độc (trường Current Path) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four line-anchored labels together:
``# Buy now: TG`` (Lumma-affiliate template with stripped
value), ``Current Path:`` (Bugatti-specific label),
``Installed RAM:`` (Mars / Rhadamanthys v0.5 marker),
and ``MachineID:`` (Rhadamanthys bot fingerprint). The
four together are disjoint from Lumma (needs
``@lummanowork`` / ``LummaC2 Build:``), Rhadamanthys
(needs ``Wallpaper Hash:`` / family banner / BRADMAX +
``Traffic Name:``), Redline (needs ``FileLocation:``),
and RedlineLike (needs ``Version Build:`` / ``BUILD NAME:`` / DARKSIDE banner / extended-block triple).
During triage, treat the underlying stealer family as
unattributable and rely on the channel + panel_brand
metadata to bucket samples for analyst review.
Companion files in the victim folder (browser exports,
wallet artifacts, screenshot.jpg) may provide more confident family attribution.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu bốn nhãn gắn theo dòng cùng xuất hiện: ``# Buy now: TG`` (mẫu affiliate-Lumma với giá trị đã bị loại bỏ), ``Current Path:`` (nhãn riêng của Bugatti), ``Installed RAM:`` (dấu hiệu Mars / Rhadamanthys v0.5), và ``MachineID:`` (dấu vết bot của Rhadamanthys). Bốn dấu hiệu này cùng nhau tách biệt với Lumma (cần ``@lummanowork`` / ``LummaC2 Build:``), Rhadamanthys (cần ``Wallpaper Hash:`` / banner họ mã độc / BRADMAX + ``Traffic Name:``), Redline (cần ``FileLocation:``), và RedlineLike (cần ``Version Build:`` / ``BUILD NAME:`` / banner DARKSIDE / bộ ba khối mở rộng). Trong quá trình phân loại ban đầu, hãy coi họ mã độc đánh cắp thông tin bên dưới là chưa thể quy kết và dựa vào metadata channel + panel_brand để phân nhóm mẫu cho việc rà soát của chuyên viên phân tích. Các tệp liên quan trong thư mục nạn nhân (dữ liệu xuất từ trình duyệt, dấu vết ví, screenshot.jpg) có thể cung cấp cơ sở quy kết họ mã độc đáng tin cậy hơn.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |

## Related catalog profiles

- [Aurora Stealer](../aurora-stealer/)
- [Bugatti Cloud](../bugatti-cloud/)
- [CSBugattiPcInfoStealer](../cs-bugatti-pc-info-stealer/)
- [Category Stealer](../category-stealer/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [Rhadamanthys](../rhadamanthys/)
- [Lumma](../lumma/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
