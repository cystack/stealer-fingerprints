# CSBugattiCloudPcInfoStealer

## Overview / Tổng quan

### English

CSBugattiCloudPcInfoStealer is a CyStack-coined identifier for
the @Bugatti_Cloud Telegram aggregator's normalized
`pc_info.txt` slice. The body is a flat 13-field `Key: Value`
block: `IP`, `Country`, `HWID`, `OS`, `Architecture`,
`UserName`, `Computer Name`, `Local Time`, `Cores`, `RAM`, an
empty `Display Resolution`, a populated top-level
`Resolution`, and a `GPU` header with a tab-indented adapter
list. The `Local Time` field carries the lowercase JSON-null
literal `null` when the value is unset.

Two normalizer-side signatures point to a Python or Node.js
operator tool rather than a native stealer panel. First, the
`HWID` value glues the host's `Computer Name` (verbatim,
including the Windows-default `DESKTOP-` prefix) to the host's
MachineGuid UUID with no separator, a Python f-string
concatenation shape. Second, the `Local Time: null` literal
matches `json.dumps(None)` rather than any canonical stealer's
empty value or `Unknown` fallback string. Family attribution
is provisional pending a published threat-intel mapping for
this layout; public reporting and community catalogues
document @Bugatti_Cloud only as a redistribution channel,
never as a native stealer family.

### Tiếng Việt

CSBugattiCloudPcInfoStealer là định danh do CyStack đặt cho lát cắt `pc_info.txt` đã được chuẩn hoá từ bộ tổng hợp Telegram @Bugatti_Cloud. Phần nội dung là một khối `Key: Value` phẳng gồm 13 trường: `IP`, `Country`, `HWID`, `OS`, `Architecture`, `UserName`, `Computer Name`, `Local Time`, `Cores`, `RAM`, một `Display Resolution` rỗng, một `Resolution` cấp cao nhất đã được điền dữ liệu, và một tiêu đề `GPU` kèm danh sách adapter thụt lề bằng tab. Trường `Local Time` mang literal JSON-null viết thường `null` khi giá trị chưa được thiết lập.

Hai dấu hiệu ở phía bộ chuẩn hoá chỉ ra đây là công cụ vận hành viết bằng Python hoặc Node.js chứ không phải bảng điều khiển (panel) của một mã độc đánh cắp thông tin gốc. Thứ nhất, giá trị `HWID` ghép `Computer Name` của máy (giữ nguyên, bao gồm cả tiền tố mặc định của Windows `DESKTOP-`) với MachineGuid UUID của máy mà không có ký tự phân tách, đây là cấu trúc dữ liệu ghép chuỗi kiểu f-string của Python. Thứ hai, literal `Local Time: null` khớp với `json.dumps(None)` thay vì giá trị rỗng chuẩn hoặc chuỗi dự phòng `Unknown` của bất kỳ họ mã độc đánh cắp thông tin gốc nào. Việc quy kết họ mã độc hiện vẫn còn tạm thời, chờ có báo cáo tình báo mối đe dọa công khai ánh xạ với bố cục này; các báo cáo công khai và danh mục cộng đồng chỉ ghi nhận @Bugatti_Cloud như một kênh phát tán lại, chưa từng được ghi nhận là một họ mã độc đánh cắp thông tin gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@Bugatti_Cloud normalized pc_info.txt slice`, `Bugatti Cloud JSON-null Local Time variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Network identity (IP address, ISO 3166-1 alpha-2 country code) | Thông tin định danh mạng (địa chỉ IP, mã quốc gia ISO 3166-1 alpha-2) |
| Account identity (Windows username, computer name, MachineGuid concatenated into the HWID value) | Thông tin định danh tài khoản (tên người dùng Windows, tên máy tính, MachineGuid được ghép vào giá trị HWID) |
| Host hardware summary (OS name, architecture, core count, RAM in gigabytes, screen resolution, GPU adapter list) | Thông tin tổng quan phần cứng máy (tên hệ điều hành, kiến trúc, số lõi CPU, dung lượng RAM tính bằng gigabyte, độ phân giải màn hình, danh sách adapter GPU) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the line-anchored `Local Time: null`
literal AND line-anchored `Architecture:` AND line-anchored
`HWID:` field keys. The `Local Time: null` literal is the
load-bearing disambiguator: no surveyed canonical stealer
emits the lowercase JSON-null placeholder for an unset
value. The other two anchors narrow the match to a system-info file shape rather than a code snippet or unrelated
document. During triage, treat the underlying source-log
family as unattributable and rely on the channel and panel
brand metadata to bucket samples. Companion files in the
victim folder (sibling `information.txt`, browser dumps,
wallet exports) may carry stronger canonical-family
fingerprints when present.

### Tiếng Việt

Việc tạo dấu vết nhận diện đòi hỏi phải có đồng thời literal `Local Time: null` neo theo dòng, VÀ khóa trường `Architecture:` neo theo dòng, VÀ khóa trường `HWID:` neo theo dòng. Literal `Local Time: null` là yếu tố phân biệt mang tính quyết định: không có họ mã độc đánh cắp thông tin gốc nào được khảo sát tạo dữ liệu đầu ra là placeholder JSON-null viết thường cho giá trị chưa thiết lập. Hai điểm neo còn lại giúp thu hẹp việc khớp mẫu về cấu trúc dữ liệu tệp thông tin hệ thống, thay vì một đoạn mã hay tài liệu không liên quan. Trong quá trình phân loại ban đầu (triage), nên coi họ mã độc thuộc log nguồn gốc là chưa thể quy kết, và dựa vào metadata về kênh phân phối cũng như thương hiệu panel để phân nhóm các mẫu. Các tệp liên quan nằm trong thư mục nạn nhân (các `information.txt` liên quan, dữ liệu trích xuất từ trình duyệt, dữ liệu xuất từ ví) có thể mang dấu vết nhận diện họ mã độc gốc rõ ràng hơn khi có mặt.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1592](https://attack.mitre.org/techniques/T1592/) | Gather Victim Host Information | Thu thập thông tin máy nạn nhân |

## Related catalog profiles

- [Bugatti Cloud](../bugatti-cloud/)
- [Category Stealer](../category-stealer/)
- [CSBradMaxCloudParsedStealer](../cs-brad-max-cloud-parsed-stealer/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
