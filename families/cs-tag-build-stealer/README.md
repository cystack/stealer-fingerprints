# CSTagBuildStealer

## Overview / Tổng quan

### English

CSTagBuildStealer is a CyStack-coined identifier for a
compact eleven-field `Events/BROWSER/userinfo.txt` panel
observed inside WATER CLOUD Telegram aggregator archives
(`@WATERCLOUD_INFO <count> PIECE & <DD>.<MM>.<YYYY>.zip. <NN>`) at `<32-char>_<YYYY>-<MM>-<DD> <HH>-<MM>-<SS>/ Events/BROWSER/userinfo.txt` victim folders. The panel
body carries only bare `Key: Value` lines with no leading
dash prefix, no section headers, no operator banner, and
no in-body watermark. Fields collected: `Country` (ISO-2),
`RAM` (GB-suffixed), `CPU` (bare integer core count, not
a model name), `Monitors` (integer count), `AV` (product
name plus parenthesised `(ON)` / `(OFF)` state suffix),
`Elevation` (`Normal` for non-elevated, `Elevated` / `Admin`
when observed), `ID` (8-char uppercase alphabetic short
identifier, not a GUID or MD5-hex HWID), `IP`, `Version`
(semantic version like `0.1.18`), `Tag` (campaign or
affiliate label), and `BuildID` (Git-branch-like reference
like `main`).

The `Events/BROWSER/` nested victim-folder path is
distinctive — no other panel in the surveyed corpus writes
its system-info file under a two-level `Events/<Section>/`
folder tree. The three-way `Version` + `Tag` + `BuildID`
build-metadata triple and the `AV: <product>(<STATE>)`
state-suffix syntax are equally novel to the surveyed
corpus.

No two curated CTI vendors document this exact
eleven-field compact shape. Aurora Stealer per eSentire
and
Sekoia ships a compact `UserInformation` file but uses
different field naming (`Screen Size:` / `Display Device:`
/ `Build Group:` / `Log date:`) and does not carry the
`Events/BROWSER/` folder path or the `Elevation: Normal` /
`AV: X(ON)` markers, so attribution to Aurora would be a
mislabel. The WATER CLOUD aggregator resells logs from
multiple underlying builders, so the distribution channel
is recorded as attribution context rather than lineage.

### Tiếng Việt

CSTagBuildStealer là định danh do CyStack đặt cho một bảng điều khiển `Events/BROWSER/userinfo.txt` gọn nhẹ gồm mười một trường, được quan sát bên trong các kho lưu trữ tổng hợp Telegram của WATER CLOUD (`@WATERCLOUD_INFO <count> PIECE & <DD>.<MM>.<YYYY>.zip. <NN>`) tại các thư mục nạn nhân `<32-char>_<YYYY>-<MM>-<DD> <HH>-<MM>-<SS>/ Events/BROWSER/userinfo.txt`. Nội dung bảng điều khiển chỉ chứa các dòng `Key: Value` trần trụi, không có tiền tố gạch đầu dòng, không có tiêu đề phần, không có biểu ngữ của đối tượng vận hành, và không có watermark trong nội dung. Các trường được thu thập gồm: `Country` (ISO-2), `RAM` (hậu tố GB), `CPU` (số nguyên trần chỉ số lượng lõi, không phải tên model), `Monitors` (số nguyên đếm), `AV` (tên sản phẩm kèm hậu tố trạng thái `(ON)` / `(OFF)` trong ngoặc đơn), `Elevation` (`Normal` khi không có đặc quyền cao, `Elevated` / `Admin` khi quan sát được), `ID` (định danh ngắn gồm 8 ký tự chữ cái viết hoa, không phải GUID hay HWID dạng MD5-hex), `IP`, `Version` (phiên bản ngữ nghĩa như `0.1.18`), `Tag` (nhãn chiến dịch hoặc đối tác liên kết), và `BuildID` (tham chiếu kiểu nhánh Git như `main`).

Đường dẫn thư mục nạn nhân lồng nhau `Events/BROWSER/` là đặc điểm khác biệt — không có bảng điều khiển nào khác trong kho dữ liệu khảo sát ghi tệp thông tin hệ thống của mình dưới cây thư mục hai cấp `Events/<Section>/`. Bộ ba dữ liệu build `Version` + `Tag` + `BuildID` và cú pháp hậu tố trạng thái `AV: <product>(<STATE>)` cũng là điểm mới lạ tương tự đối với kho dữ liệu khảo sát.

Không có hai nhà cung cấp CTI được tuyển chọn nào ghi nhận đúng cấu trúc dữ liệu gọn mười một trường này. Theo eSentire và Sekoia, Aurora Stealer có một tệp `UserInformation` gọn nhẹ nhưng sử dụng cách đặt tên trường khác (`Screen Size:` / `Display Device:` / `Build Group:` / `Log date:`) và không mang theo đường dẫn thư mục `Events/BROWSER/` hay các dấu hiệu `Elevation: Normal` / `AV: X(ON)`, do đó việc quy kết cho Aurora sẽ là gán nhãn sai. Kênh phân phối tổng hợp của WATER CLOUD bán lại nhật ký từ nhiều bộ công cụ builder khác nhau, nên kênh phân phối này được ghi nhận như bối cảnh quy kết chứ không phải dòng dõi phát triển.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `WATER CLOUD Events/BROWSER/userinfo.txt panel`, `11-field Tag+BuildID+Elevation stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Public-IP geolocation (ISO-2 country) | Định vị địa lý theo IP công khai (mã quốc gia ISO-2) |
| Coarse hardware inventory (RAM, CPU core count, monitor count) | Kiểm kê phần cứng ở mức thô (RAM, số lượng lõi CPU, số lượng màn hình) |
| Installed antivirus product name with running state | Tên sản phẩm diệt virus đã cài đặt kèm trạng thái đang chạy |
| Sample builder version, campaign tag, and build identifier | Phiên bản builder mẫu, nhãn chiến dịch và định danh build |
| Process elevation flag (Normal vs Elevated) | Cờ đặc quyền tiến trình (Normal so với Elevated) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `Elevation:` AND
`Monitors:` AND `Tag:` AND `BuildID:` — the four-key
combination is unique to this panel across the surveyed
corpus (no canonical Redline / Lumma / Vidar / Rhadamanthys
/ Meduza layout emits any of these four field names
together). `ID:` alone would collide with too many other
panels; `Tag:` alone would collide with the `BuildTag:`
sibling in the bracket-section families.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu `Elevation:` neo theo dòng VÀ `Monitors:` VÀ `Tag:` VÀ `BuildID:` — tổ hợp bốn khóa này là duy nhất đối với bảng điều khiển này trong toàn bộ kho dữ liệu khảo sát (không có bố cục chuẩn nào của Redline / Lumma / Vidar / Rhadamanthys / Meduza tạo dữ liệu đầu ra cùng lúc bốn tên trường này). Chỉ riêng `ID:` sẽ trùng lặp với quá nhiều bảng điều khiển khác; chỉ riêng `Tag:` sẽ trùng lặp với `BuildTag:` liên quan trong các họ dùng cấu trúc phần trong dấu ngoặc vuông.

## Observed log variants

### `v_e6b21c7ebd87c1cbf56dcd1f466cd1a0`

- Format ID: `cs-tag-build-stealer`
- Observed filenames: `userinfo.txt`
- Panel brand: -
- Distribution channel: `@WATERCLOUD_INFO`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_e6b21c7ebd87c1cbf56dcd1f466cd1a0/userinfo.txt)
- Sample SHA-256: `737c6d5995e984803a6e58d43cd0d66ecf1d8f1a1bca1643d4a1f911fe697ec8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `AV`, `BuildID`, `Country`, `CPU`, `Elevation`, `ID`, `IP`, `Monitors`, `RAM`, `Tag`, `Version`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- None recorded.

## Sources

- <https://blog.sekoia.io/aurora-a-rising-stealer-flying-under-the-radar/>
- <https://www.esentire.com/blog/esentire-threat-intelligence-malware-analysis-aurora-stealer>

Machine-readable record: [family.json](family.json)
