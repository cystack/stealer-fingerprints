# CSMrdUidStealer

## Overview / Tổng quan

### English

CSMrdUidStealer is a CyStack-coined identifier for an
info-stealer `_Information.txt` panel observed inside `!! 2025 DEC.part01.rar` aggregator packs at
`<id>_<CC>_<IPv4>_<DD-MM-YY>/_Information.txt` victim folders.
The body is a 12-line flat `Key: Value` block followed by
three labelled sections (`Installed software:`, `Disk:`,
`Process:`).

Two on-disk quirks pin the format. The `UID:` field carries a
`mrd-<16-hex>` prefix that no documented stealer uses (Vidar /
Lumma / Redline / Raccoon / Mars / Oski / StealC all emit bare
hex / GUID / volume-serial-derived HWIDs without a literal
prefix). The `DateTime:` line splits two timestamps onto one
row with a `||` pipe-pipe separator: `DateTime: <DD.MM.YYYY> || Registration: <DD.MM.YYYY HH:MM:SS>`. `DateTime` is the
panel-side log-emission date, `Registration` is an earlier
date (often years prior) the panel records as the victim's
first-seen timestamp.

Three sub-quirks reinforce the fingerprint. `CPU: <name> <spaces> core <N>` appends a panel-side core / thread count
after the WMI processor name. `RAM: physical <N>MB , virtual <N>MB` reports both physical and virtual totals on one line
with comma-space separation. `Display Resolution: <W> x <H>`
uses spaces around the `x` separator (rather than the tight
`WxH` form most stealers emit).

Family attribution is provisional. Public reporting and the
public stealer-format catalogues do not document a family that
emits this exact field combination. Mars Stealer collects an
overlapping subset (`Keyboard Languages`, `Display Resolution`, `Installed RAM`) per public analyses, but ships a
different on-disk layout with bracket-delimited sections
rather than this bare-key flat shape.

### Tiếng Việt

CSMrdUidStealer là định danh do CyStack đặt tên cho một bảng điều khiển mã độc đánh cắp thông tin `_Information.txt` được quan sát bên trong các gói tổng hợp `!! 2025 DEC.part01.rar` tại các thư mục nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/_Information.txt`.

Phần thân là một khối `Key: Value` phẳng gồm 12 dòng, theo sau bởi ba mục có nhãn (`Installed software:`, `Disk:`, `Process:`).

Hai điểm bất thường trên đĩa giúp xác định định dạng này. Trường `UID:` mang tiền tố `mrd-<16-hex>` mà không họ mã độc đánh cắp thông tin nào được ghi nhận sử dụng (Vidar / Lumma / Redline / Raccoon / Mars / Oski / StealC đều tạo dữ liệu đầu ra là HWID dạng hex / GUID / bắt nguồn từ số serial ổ đĩa thuần túy, không có tiền tố dạng chữ). Dòng `DateTime:` gộp hai mốc thời gian trên cùng một dòng với dấu phân cách hai gạch đứng `||`: `DateTime: <DD.MM.YYYY> || Registration: <DD.MM.YYYY HH:MM:SS>`. `DateTime` là ngày tạo nhật ký phía bảng điều khiển, còn `Registration` là một ngày sớm hơn (thường trước đó nhiều năm) mà bảng điều khiển ghi nhận là mốc thời gian phát hiện lần đầu của nạn nhân.

Ba điểm bất thường phụ củng cố thêm dấu vết nhận diện này. `CPU: <name> <spaces> core <N>` bổ sung số lượng lõi / luồng phía bảng điều khiển ngay sau tên bộ xử lý theo WMI. `RAM: physical <N>MB , virtual <N>MB` báo cáo cả tổng dung lượng vật lý và ảo trên cùng một dòng, phân tách bằng dấu phẩy và khoảng trắng. `Display Resolution: <W> x <H>` sử dụng khoảng trắng bao quanh dấu phân cách `x` (thay vì dạng sát nhau `WxH` mà hầu hết các mã độc đánh cắp thông tin khác tạo ra).

Việc quy kết họ mã độc hiện vẫn chỉ mang tính tạm thời. Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin công khai không ghi nhận họ mã độc nào tạo ra chính xác tổ hợp trường dữ liệu này. Mars Stealer thu thập một tập con có phần trùng lặp (`Keyboard Languages`, `Display Resolution`, `Installed RAM`) theo các phân tích công khai, nhưng sử dụng bố cục trên đĩa khác, với các mục được phân tách bằng dấu ngoặc vuông thay vì cấu trúc dữ liệu phẳng dạng khóa thuần túy này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `mrd-UID Information.txt panel`, `Dual-date Registration stealer log`
- Variants observed: **2**
- CyStack observations represented: **14**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (panel ships an Installed software enumeration but the surveyed sample has the section empty) | Thông tin xác thực được trình duyệt lưu (bảng điều khiển có mục liệt kê phần mềm đã cài đặt nhưng ở mẫu được khảo sát, mục này trống) |
| Victim hostname / username | Tên máy / tên người dùng của nạn nhân |
| Hardware fingerprint (UID, OS, CPU, GPU, RAM) | Dấu vết định danh phần cứng (UID, hệ điều hành, CPU, GPU, RAM) |
| Process snapshot (bare process names, no PID) | Ảnh chụp tiến trình (chỉ tên tiến trình thuần túy, không có PID) |
| Disk inventory (per-drive total / free space) | Danh sách ổ đĩa (tổng dung lượng / dung lượng trống theo từng ổ) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires `UID: mrd-` substring AND
`|| Registration:` substring. Both anchors are unique
across this catalog: the `mrd-` UID prefix is not
documented by any surveyed stealer family, and the
pipe-pipe-separated dual-date line on a single key value
is the panel's developer-side quirk. During triage, treat
the `DateTime:` half as the panel-side log-emission
timestamp (recent) and the `Registration:` half as the
first-seen / account-creation timestamp (often years
older). The `CPU:` value combines the model and a trailing `core <N>`
count; analysts can treat the preceding text as the bare CPU
model.

### Tiếng Việt

Dấu vết nhận diện yêu cầu có cả chuỗi con `UID: mrd-` VÀ chuỗi con `|| Registration:`. Cả hai điểm neo này đều là duy nhất trong danh mục này: tiền tố UID `mrd-` không được bất kỳ họ mã độc đánh cắp thông tin nào được khảo sát ghi nhận sử dụng, và dòng chứa hai mốc thời gian phân tách bằng hai gạch đứng trên cùng một giá trị khóa là điểm bất thường đặc trưng của nhà phát triển bảng điều khiển. Trong quá trình phân loại ban đầu, hãy coi nửa `DateTime:` là mốc thời gian tạo nhật ký phía bảng điều khiển (gần đây), còn nửa `Registration:` là mốc thời gian phát hiện lần đầu / thời điểm tạo tài khoản (thường cũ hơn nhiều năm). Giá trị `CPU:` kết hợp tên model và số lượng `core <N>` ở cuối; nhà phân tích có thể coi phần văn bản đứng trước là tên model CPU thuần túy.

## Observed log variants

### `v_29dd7a8b55e27e9bd3046f3426e477ee`

- Format ID: `cs-mrd-uid-stealer`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `registration`
- Historical records represented: **13**
- Representative sample: [open sample](samples/v_29dd7a8b55e27e9bd3046f3426e477ee/sample.txt)
- Sample SHA-256: `6e89035b208ab576f5cbc1eca23ac13607b01251add2fbeddd638707caa52e15`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `UID: mrd-`, `\|\| Registration:`
- Field labels: -

### `v_cee5eaed2d3cc06a5ee54cd77a385fde`

- Format ID: `cs-mrd-uid-stealer`
- Observed filenames: `_Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `physical-virtual-ram`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_cee5eaed2d3cc06a5ee54cd77a385fde/sample.txt)
- Sample SHA-256: `aa18adf5157d3e54be3485b631d645e5544c92eb6e1f78291e6db3fe374a73f8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `UID: mrd-`
- Field labels: `RAM`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery | Dò tìm tệp và thư mục |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |

## Related catalog profiles

- [Mars Stealer](../mars-stealer/)
- [Vidar](../vidar/)

## Related external families

- `oski-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
