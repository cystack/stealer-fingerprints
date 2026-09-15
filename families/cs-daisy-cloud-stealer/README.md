# CSDaisyCloudStealer

## Overview / Tổng quan

### English

CSDaisyCloudStealer is a CyStack-coined identifier for a
per-line-watermarked `UserInformation.txt` panel distributed
through the `@UP_DAISYCLOUD` Telegram channel. Each line in
the body is prefixed with an obfuscated `Daisy Private cloud`
banner (digit-noise injected between every letter of `Daisy`,
`Private`, and `cloud`) plus a 4-9-character random alphabetic
gibberish token before the actual `Key: Value` payload. The
watermark digits and gibberish vary per line as an anti-leech
mechanism: a single grep for the channel name fails on any
individual line. After stripping the watermark the body is a
canonical RedlineLike variant 3 layout (Buy-now banner plus
extended-block) with the `Operation System:` Redline-canonical
typo and the full `Computer Name:` / `Domain Name:` /
`MachineID:` / `Product Key:` / extended-block field set.

Daisy Cloud has run on Telegram since October 2023 and public
reporting describes it as "potentially linked to the notorious
RedLine Stealer family" - those attributions hedge with
"potentially" / "appears to come from", and no public analysis
confirms the channel reliably resells a single named family.
Family attribution is provisional pending a published
threat-intel report that maps the watermark directly to a
canonical builder.

### Tiếng Việt

CSDaisyCloudStealer là định danh do CyStack đặt cho một bảng điều khiển (panel) `UserInformation.txt` được đánh dấu bản quyền (watermark) theo từng dòng, phân phối qua kênh Telegram `@UP_DAISYCLOUD`. Mỗi dòng trong phần thân được thêm tiền tố là một banner `Daisy Private cloud` bị làm rối (chèn nhiễu chữ số xen giữa từng chữ cái của `Daisy`, `Private`, và `cloud`) cùng một chuỗi ký tự chữ cái ngẫu nhiên vô nghĩa dài 4-9 ký tự trước dữ liệu `Key: Value` thực tế. Các chữ số watermark và chuỗi vô nghĩa thay đổi theo từng dòng như một cơ chế chống rò rỉ (anti-leech): một lệnh grep đơn lẻ tìm tên kênh sẽ thất bại trên bất kỳ dòng riêng lẻ nào. Sau khi loại bỏ watermark, phần thân có bố cục chuẩn của biến thể RedlineLike variant 3 (banner Buy-now cộng với extended-block) kèm lỗi chính tả đặc trưng `Operation System:` của Redline cùng đầy đủ tập trường `Computer Name:` / `Domain Name:` / `MachineID:` / `Product Key:` / extended-block.

Daisy Cloud đã hoạt động trên Telegram từ tháng 10/2023 và các báo cáo công khai mô tả đây là "có khả năng liên quan đến họ mã độc RedLine Stealer khét tiếng" - những nhận định quy kết này đều có tính dè dặt với các từ như "có khả năng" / "dường như xuất phát từ", và không có phân tích công khai nào xác nhận chắc chắn rằng kênh này chuyên bán lại một họ mã độc cụ thể duy nhất. Việc quy kết họ mã độc vẫn mang tính tạm thời, chờ một báo cáo tình báo mối đe dọa được công bố ánh xạ trực tiếp watermark này với một builder gốc đã biết.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `@UP_DAISYCLOUD obfuscated UserInformation.txt`, `Daisy Private cloud per-line watermark variant`
- Variants observed: **1**
- CyStack observations represented: **241**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (harvested by underlying stealer) | Thông tin xác thực được lưu trong trình duyệt (thu thập bởi mã độc đánh cắp thông tin bên dưới) |
| Host metadata: hostname, NetBIOS / domain, Windows username | Metadata của máy: tên máy, NetBIOS / domain, tên người dùng Windows |
| OS fingerprint with build number and architecture | Dấu vân tay hệ điều hành gồm số build và kiến trúc |
| Hardware inventory: CPU model, GPU model, installed RAM | Thông tin phần cứng: model CPU, model GPU, dung lượng RAM đã cài đặt |
| Victim public IP plus ISO country code | Địa chỉ IP công khai của nạn nhân cùng mã quốc gia ISO |
| HWID and Windows MachineID | HWID và MachineID của Windows |
| Wallpaper SHA-1 hash | Mã băm SHA-1 của hình nền desktop |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires 3+ matches of the digit-interspersed
`Daisy Private cloud` watermark regex AND the
`Operation System:` Redline-canonical typo substring. The
3-match threshold rejects unrelated text that happens to
quote the channel name once; the OS typo confirms the
underlying body is Redline-shape rather than an arbitrary
watermarked file. During triage, strip the per-line watermark to recover the
standard Redline-shaped observable fields. Treat the
attribution as low-confidence: the channel reportedly
resells RedLine logs but the body could also come from a
Redline fork or an unrelated stealer that adopted
Redline's `UserInformation.txt` field layout.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu có ít nhất 3 lượt khớp với biểu thức chính quy watermark `Daisy Private cloud` có xen kẽ chữ số VÀ chuỗi con lỗi chính tả đặc trưng `Operation System:` của Redline. Ngưỡng 3 lượt khớp giúp loại bỏ các văn bản không liên quan mà vô tình trích dẫn tên kênh một lần; lỗi chính tả hệ điều hành xác nhận phần thân bên dưới có cấu trúc dữ liệu dạng Redline chứ không phải một tệp có watermark bất kỳ khác. Trong quá trình phân loại (triage), cần loại bỏ watermark theo từng dòng để khôi phục các trường quan sát (observable) theo cấu trúc chuẩn của Redline. Cần xem việc quy kết này ở mức độ tin cậy thấp: kênh này được cho là bán lại log của RedLine, nhưng phần thân dữ liệu cũng có thể xuất phát từ một biến thể fork của Redline hoặc một mã độc đánh cắp thông tin không liên quan nhưng sử dụng cùng bố cục trường `UserInformation.txt` của Redline.

## Observed log variants

### `v_7fbb06edb08e717aa0cd6e0ecc602229`

- Format ID: `cs-daisy-cloud-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `Daisy Private cloud`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **low**
- Historical records represented: **241**
- Representative sample: [open sample](samples/v_7fbb06edb08e717aa0cd6e0ecc602229/sample.txt)
- Sample SHA-256: `9c2e50da54770183f2852eda98b311c4a1f7819af4ee6b04c0a9e459094d6e2e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Installed RAM:`, `Operation System:`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [CSPrimoCloudStealer](../cs-primo-cloud-stealer/)
- [CSDarkSideCloudStealer](../cs-dark-side-cloud-stealer/)

## Observed distribution channels

- <https://t.me/UP_DAISYCLOUD>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
