# CSBugattiPcInfoStealer

## Overview / Tổng quan

### English

CSBugattiPcInfoStealer is a CyStack-coined identifier for the
@Bugatti_Cloud aggregator's ``pc_info.txt`` bare-key text
slice. The file is a flat ``Key: Value`` body whose vocabulary
resembles the publicly documented Acreed pc_info.json key set
but with operator-side renames throughout: ``PcName`` becomes
``Computer Name``, ``Arch`` becomes ``Architecture``,
``CpuCores`` becomes ``Cores``, ``ScreenSize`` becomes
``Resolution``. The panel also emits a duplicate ``Display Resolution:`` line with an empty value on the line just before
the populated ``Resolution:`` key, and the ``HWID:`` value is
a Computer-Name-prefixed UUID composite rather than a bare
UUID or hex blob.

The @Bugatti_Cloud channel is a documented multi-family
aggregator that redistributes Redline and other stealer logs
in a custom container format. This ``pc_info.txt`` variant may
be an operator-normalized text output of Acreed data or a
different underlying builder's panel; the renamed vocabulary
is too far from documented Acreed JSON to attribute directly.
Family attribution is provisional pending a published
threat-intel mapping for this exact text layout.

### Tiếng Việt

CSBugattiPcInfoStealer là định danh do CyStack đặt cho lát cắt văn bản dạng bare-key ``pc_info.txt`` của bộ tổng hợp @Bugatti_Cloud. Tệp này là một khối văn bản ``Key: Value`` phẳng có bộ từ vựng tương tự bộ khóa pc_info.json của Acreed đã được công bố công khai nhưng bị đổi tên xuyên suốt bởi phía đối tượng vận hành: ``PcName`` trở thành ``Computer Name``, ``Arch`` trở thành ``Architecture``, ``CpuCores`` trở thành ``Cores``, ``ScreenSize`` trở thành ``Resolution``. Bảng điều khiển cũng tạo dữ liệu đầu ra là một dòng ``Display Resolution:`` trùng lặp với giá trị rỗng ngay trước dòng chứa khóa ``Resolution:`` đã có giá trị, và giá trị ``HWID:`` là một tổ hợp UUID có tiền tố Computer-Name thay vì một UUID trần hoặc khối dữ liệu hex.

Kênh @Bugatti_Cloud là một bộ tổng hợp đa họ mã độc đã được ghi nhận, chuyên phân phối lại nhật ký của Redline và các mã độc đánh cắp thông tin khác dưới một định dạng container tùy chỉnh. Biến thể ``pc_info.txt`` này có thể là dữ liệu đầu ra dạng văn bản đã được chuẩn hóa bởi đối tượng vận hành từ dữ liệu Acreed, hoặc là bảng điều khiển của một trình builder khác; bộ từ vựng đã bị đổi tên khác quá xa so với JSON của Acreed đã được ghi nhận nên không thể quy kết trực tiếp. Việc quy kết họ mã độc là tạm thời, chờ một ánh xạ tình báo mối đe dọa được công bố cho đúng bố cục văn bản này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@Bugatti_Cloud pc_info.txt slice`, `Bugatti operator-normalized Acreed-adjacent variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU cores, RAM, GPU, screen resolution, Windows version and architecture) | Dấu vết phần cứng máy và hệ điều hành (số lõi CPU, RAM, GPU, độ phân giải màn hình, phiên bản và kiến trúc Windows) |
| Network identity (IP address, country) | Danh tính mạng (địa chỉ IP, quốc gia) |
| Account identity (Windows username, computer name) | Danh tính tài khoản (tên người dùng Windows, tên máy) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four bare-key line-anchored labels
together: ``UserName:``, ``Architecture:``, ``Cores:``,
and ``Local Time:``. The combination is disjoint from
PyInfoStealer (which pairs ``Architecture:`` with
``Processor:`` and ``ISP:`` / ``Org:`` ip-api.com keys)
and from CSRussia34Stealer (which pairs
``Architecture:`` with ``Laptop:`` and the
``russia34.com`` channel substring). During triage,
treat the underlying stealer family as unattributable
and rely on the channel + panel_brand metadata to bucket
samples for analyst review. Companion files in the
victim folder (browser exports, wallet artifacts) may provide more confident family attribution.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu bốn nhãn bare-key gắn theo dòng cùng xuất hiện: ``UserName:``, ``Architecture:``, ``Cores:``, và ``Local Time:``. Tổ hợp này tách biệt với PyInfoStealer (kết hợp ``Architecture:`` với ``Processor:`` và các khóa ip-api.com ``ISP:`` / ``Org:``) và với CSRussia34Stealer (kết hợp ``Architecture:`` với ``Laptop:`` và chuỗi con kênh ``russia34.com``). Trong quá trình phân loại ban đầu, hãy coi họ mã độc đánh cắp thông tin bên dưới là chưa thể quy kết và dựa vào metadata channel + panel_brand để phân nhóm mẫu cho việc rà soát của chuyên viên phân tích. Các tệp liên quan trong thư mục nạn nhân (dữ liệu xuất từ trình duyệt, dấu vết ví) có thể cung cấp cơ sở quy kết họ mã độc đáng tin cậy hơn.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Acreed](../acreed/)
- [Bugatti Cloud](../bugatti-cloud/)
- [Category Stealer](../category-stealer/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
