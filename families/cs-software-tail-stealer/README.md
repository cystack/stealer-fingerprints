# CSSoftwareTailStealer

## Overview / Tổng quan

### English

CSSoftwareTailStealer is a CyStack-coined identifier for a
heavily-stripped `information.txt` panel tail distributed
through the `@BRADLOGS / BRADMAX` Telegram channel inside `!! 2025 NOV.part001.rar` packs at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/information.txt` victim folders. The body opens with a
bare `<exe>.exe` process list (no tab indent, no `[<PID>]`
annotation), then the Vidar-canonical `[Software]` section
marker appears concatenated onto the last process entry as
`<exe>.exe [Software]` rather than on its own line.
Versioned-app entries follow in `<Name> - <Version>` form. No
system info block, no IP / Country / Computer Name / HWID /
Local Time field survives.

The `[Software]` section header is Vidar-canonical per public
Vidar Stealer write-ups, but the heavily-stripped body carries
no other Vidar fingerprint field (no `VideoCard:`, `Work Dir:`, `Keyboard Languages:`, `Local Time:`, `Windows:` /
`AV:` pair). Family attribution is provisional pending a
published threat-intel mapping for this layout. The structural
similarity to Vidar is suggestive but not sufficient for direct Vidar attribution: the BRADMAX aggregator resells multiple
stealer families under a shared redistribution shell, and any
panel that emits a Vidar-style section marker as the only
signal could come from a Vidar fork or an unrelated builder.

### Tiếng Việt

CSSoftwareTailStealer là định danh do CyStack đặt cho phần đuôi bảng điều khiển `information.txt` bị cắt xén nặng, được phân phối qua kênh Telegram `@BRADLOGS / BRADMAX` bên trong các gói `!! 2025 NOV.part001.rar` tại các thư mục nạn nhân `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/information.txt`. Phần thân bắt đầu bằng một danh sách tiến trình `<exe>.exe` trần (không thụt lề tab, không chú thích `[<PID>]`), sau đó dấu hiệu tiêu đề phần mục `[Software]` mang tính chuẩn mực của Vidar xuất hiện nối liền vào mục tiến trình cuối cùng dưới dạng `<exe>.exe [Software]` thay vì nằm trên dòng riêng của nó. Tiếp theo là các mục ứng dụng có phiên bản theo định dạng `<Name> - <Version>`. Không có khối thông tin hệ thống, không có trường IP / Country / Computer Name / HWID / Local Time nào còn tồn tại.

Tiêu đề phần mục `[Software]` mang tính chuẩn mực của Vidar theo các bài phân tích công khai về Vidar Stealer, nhưng phần thân bị cắt xén nặng không mang thêm bất kỳ trường dấu hiệu nhận dạng nào khác của Vidar (không có `VideoCard:`, `Work Dir:`, `Keyboard Languages:`, `Local Time:`, cặp `Windows:` / `AV:`). Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ tình báo mối đe dọa được công bố cho bố cục này. Sự tương đồng về cấu trúc với Vidar có tính gợi ý nhưng chưa đủ để quy kết trực tiếp cho Vidar: đơn vị tổng hợp BRADMAX bán lại nhiều họ mã độc đánh cắp thông tin thông qua một lớp phân phối lại dùng chung, và bất kỳ bảng điều khiển nào tạo dữ liệu đầu ra là dấu hiệu tiêu đề phần mục kiểu Vidar như tín hiệu duy nhất đều có thể xuất phát từ một nhánh rẽ của Vidar hoặc từ một công cụ dựng mã độc không liên quan.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX heavily-stripped information.txt tail`, `Bare-exe + `[Software]` marker labeling artifact`
- Variants observed: **1**
- CyStack observations represented: **301**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Running process names (no PIDs preserved) | Tên tiến trình đang chạy (không giữ lại PID) |
| Installed Windows applications with version strings | Các ứng dụng Windows đã cài đặt kèm chuỗi phiên bản |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `[Software]` substring AND 5+
bare `<exe>.exe` lines (line-anchored, no tab indent, no
`[<PID>]` bracket) AND 3+ `<Name> - <Version>` versioned-app lines. The three-anchor combination remains distinct from canonical Vidar, StealC, Aura, and the user-info bracket profile because each uses mutually exclusive structural anchors. During triage, treat
this label as a "victim infected but system-info
truncated" marker: the sample carries no extractable victim or device fields,
only the tracking label and distribution metadata. The underlying stealer family is
unknown; the Vidar-canonical `[Software]` section marker
suggests but does not confirm Vidar lineage.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu chuỗi con `[Software]` VÀ từ 5 dòng `<exe>.exe` trần trở lên (neo theo dòng, không thụt lề tab, không có dấu ngoặc `[<PID>]`) VÀ từ 3 dòng ứng dụng có phiên bản `<Name> - <Version>` trở lên. Tổ hợp ba điểm neo này vẫn khác biệt với các cấu trúc dữ liệu chuẩn mực của Vidar, StealC, Aura và cấu trúc dấu ngoặc thông tin người dùng, bởi mỗi loại sử dụng các điểm neo cấu trúc loại trừ lẫn nhau. Trong quá trình phân loại ban đầu, hãy coi nhãn này là dấu hiệu "nạn nhân đã bị nhiễm nhưng thông tin hệ thống bị cắt xén": mẫu này không mang bất kỳ trường thông tin nạn nhân hay thiết bị nào có thể trích xuất được, chỉ có nhãn theo dõi và siêu dữ liệu phân phối. Họ mã độc bên dưới hiện chưa xác định; dấu hiệu tiêu đề phần mục `[Software]` mang tính chuẩn mực của Vidar gợi ý nhưng không xác nhận nguồn gốc Vidar.

## Observed log variants

### `v_6923df9abcd89eb0b9f2e37b9e74a64d`

- Format ID: `cs-software-tail-stealer`
- Observed filenames: `_Information.txt`, `information.txt`, `system.txt`, `system_info.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Layout: `process-software`
- Historical records represented: **301**
- Representative sample: [open sample](samples/v_6923df9abcd89eb0b9f2e37b9e74a64d/sample.txt)
- Sample SHA-256: `0d74054a5b0903cd3288dad368cbdf7771c9675934070d6a26a0f04ddf2c0b2b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Software]`, `Microsoft Visual C++`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |

## Related catalog profiles

- [Vidar](../vidar/)
- [CSFacebookMarketStealer](../cs-facebook-market-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
