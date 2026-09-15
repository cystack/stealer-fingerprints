# CSBradMaxCloudParsedStealer

## Overview / Tổng quan

### English

CSBradMaxCloudParsedStealer is a CyStack-coined identifier for
a normalizer-generated `Information.txt` shape distributed
through the @bradmax_cloud Telegram channel. The body is the
output of an in-house Python script the operator runs over raw
stealer logs before redistributing them: a leading-space
`Key: Value` block format prefixed by an `aBradMax` Figlet
banner and the literal `Telegram: https://t.me/BRADMAX_CLOUD`
watermark. The first body field is `Stealer: Unknown`, which
is the normalization tool's own admission that it could not
fingerprint the underlying family that captured the source
log.

Independent research across the indexed public stealer-log
normalizer corpus turned up no public tool that emits this
format. The `Original file:` field points to the operator's
analysis-machine path
`C:\Users\admin\Desktop\beka\<id>_<CC>_<IPv4>_<DD-MM-YY>\ /information.txt`, where `beka` is the working-folder handle
on the operator's box. The script also enriches the victim IP
via ip-api.com and records the data source explicitly via a
`Source: IP-API (https://ip-api.com/)` attribution line; no
stealer panel emits this credit.

### Tiếng Việt

CSBradMaxCloudParsedStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu `Information.txt` do công cụ chuẩn hóa tạo ra, được phân phối qua kênh Telegram @bradmax_cloud. Phần nội dung là dữ liệu đầu ra của một script Python nội bộ mà đối tượng vận hành chạy trên các log mã độc đánh cắp thông tin thô trước khi phân phối lại: một định dạng khối `Key: Value` thụt đầu dòng, có tiền tố là banner Figlet `aBradMax` và watermark `Telegram: https://t.me/BRADMAX_CLOUD` dạng chuỗi ký tự cố định. Trường đầu tiên trong phần nội dung là `Stealer: Unknown`, chính là sự thừa nhận của công cụ chuẩn hóa rằng nó không thể lấy dấu vân tay để xác định họ mã độc gốc đã thu thập log nguồn.

Các nghiên cứu độc lập trên kho dữ liệu công khai các công cụ chuẩn hóa log mã độc đánh cắp thông tin đã được lập chỉ mục không tìm thấy công cụ công khai nào tạo ra định dạng này. Trường `Original file:` trỏ đến đường dẫn trên máy phân tích của đối tượng vận hành `C:\Users\admin\Desktop\beka\<id>_<CC>_<IPv4>_<DD-MM-YY>\ /information.txt`, trong đó `beka` là tên thư mục làm việc trên máy của đối tượng vận hành. Script này cũng bổ sung thông tin về IP nạn nhân qua ip-api.com và ghi rõ nguồn dữ liệu thông qua một dòng quy kết `Source: IP-API (https://ip-api.com/)`; không có bảng điều khiển (panel) mã độc đánh cắp thông tin nào tạo ra dòng ghi công này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX_CLOUD normalizer-generated Information.txt`, `BRADMAX_CLOUD Stealer:Unknown normalizer output`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim geolocation (country, region, city, ZIP, ISP) enriched from ip-api.com | Thông tin định vị địa lý nạn nhân (quốc gia, khu vực, thành phố, mã bưu điện, nhà cung cấp dịch vụ Internet) được bổ sung từ ip-api.com |
| Host hardware summary (OS, screen resolution, CPU, GPU, RAM) | Bản tóm tắt phần cứng máy (hệ điều hành, độ phân giải màn hình, CPU, GPU, RAM) |
| Original-source-log path reference on the operator's analysis machine | Tham chiếu đường dẫn log nguồn gốc trên máy phân tích của đối tượng vận hành |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both the
`Telegram: https://t.me/BRADMAX_CLOUD` watermark AND the
line-anchored `Stealer: Unknown` normalizer literal. The
watermark is shared with DCRat- and Lumma-shaped sibling
profiles in the same @bradmax_cloud channel portfolio; the
`Stealer: Unknown` field distinguishes this
normalizer-generated variant. During triage, treat the underlying
stealer family as unattributable - the normalization tool itself records it as unknown. The victim
IP, country, and hardware summary are still real and
indexable.

### Tiếng Việt

Việc lấy dấu vân tay đòi hỏi phải có cả watermark `Telegram: https://t.me/BRADMAX_CLOUD` VÀ chuỗi ký tự cố định của công cụ chuẩn hóa `Stealer: Unknown` được neo theo dòng. Watermark này được dùng chung với các hồ sơ liên quan có cấu trúc dạng DCRat và Lumma trong cùng danh mục kênh @bradmax_cloud; trường `Stealer: Unknown` giúp phân biệt biến thể do công cụ chuẩn hóa này tạo ra. Trong quá trình phân loại ban đầu, cần coi họ mã độc đánh cắp thông tin gốc là không thể quy kết - bản thân công cụ chuẩn hóa cũng ghi nhận đây là chưa xác định. Tuy nhiên, IP nạn nhân, quốc gia và bản tóm tắt phần cứng vẫn là dữ liệu thực và có thể lập chỉ mục.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1592](https://attack.mitre.org/techniques/T1592/) | Gather Victim Host Information | Thu thập thông tin máy nạn nhân |

## Related catalog profiles

- [DCRat](../dc-rat/)
- [Lumma](../lumma/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
