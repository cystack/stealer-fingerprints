# CSFlatMacProfilerStealer

## Overview / Tổng quan

### English

CSFlatMacProfilerStealer is a CyStack-coined identifier for a
six-field flat `Information.txt` panel carrying raw macOS
`system_profiler` output with no section headers. Observed
inside `@BRADMAX 14000 MARCH.part01.rar` Telegram aggregator
packs at `@BRADMAX <count> <MONTH>/[<CC>] UNKNOWN_(<N>)/Information.txt` GeoIP-fallback filler-folder
paths (e.g. `[FR]UNKNOWN_(4)`). This is the first macOS victim
observed inside a BRADMAX pack in the surveyed samples.

The body ships six flush-left `Key: Value` lines drawn from
`system_profiler SPSoftwareDataType` (`User Name`),
`SPHardwareDataType` (`Model Name`, `Processor Name`,
`Memory`), and `SPDisplaysDataType` (`Chipset Model`,
`Resolution`). The `User Name` value uses the macOS-canonical
`<Real Name> (<login>)` parenthesised shape. The `Resolution`
value includes a human-readable annotation in parentheses
(e.g. `2560 x 1440 (QHD/WQHD - Wide Quad High Definition)`)
matching `system_profiler`'s output style.

Family attribution is provisional with `low` confidence.
Multiple canonical macOS stealer families (AMOS / Atomic,
Banshee, Cthulhu, Poseidon, MacSync) shell out to the same
`system_profiler` subcommands per public writeups. Without a
family-specific banner or section header surviving in this
stripped panel, attribution to any single canonical family is
a guess. Replace this tracking name with the canonical family name when a public writeup later publishes a sample of this
exact six-field stripped variant.

### Tiếng Việt

CSFlatMacProfilerStealer là định danh do CyStack đặt cho một panel phẳng gồm sáu trường (`Information.txt`) chứa dữ liệu đầu ra thô của `system_profiler` trên macOS, không có tiêu đề phân đoạn. Được quan sát bên trong các gói tổng hợp Telegram `@BRADMAX 14000 MARCH.part01.rar` tại các đường dẫn thư mục đệm dự phòng GeoIP `@BRADMAX <count> <MONTH>/[<CC>] UNKNOWN_(<N>)/Information.txt` (ví dụ `[FR]UNKNOWN_(4)`). Đây là nạn nhân macOS đầu tiên được quan sát bên trong một gói BRADMAX trong số các mẫu được khảo sát.

Phần thân chứa sáu dòng `Key: Value` căn trái, được lấy từ `system_profiler SPSoftwareDataType` (`User Name`), `SPHardwareDataType` (`Model Name`, `Processor Name`, `Memory`), và `SPDisplaysDataType` (`Chipset Model`, `Resolution`). Giá trị `User Name` sử dụng cấu trúc dữ liệu có dấu ngoặc đơn kiểu chuẩn của macOS `<Real Name> (<login>)`. Giá trị `Resolution` bao gồm chú thích dễ đọc trong dấu ngoặc đơn (ví dụ `2560 x 1440 (QHD/WQHD - Wide Quad High Definition)`) khớp với phong cách dữ liệu đầu ra của `system_profiler`.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời với mức độ tin cậy `low`. Nhiều họ mã độc đánh cắp thông tin macOS chuẩn mực (AMOS / Atomic, Banshee, Cthulhu, Poseidon, MacSync) đều gọi ra cùng các lệnh con `system_profiler` theo các bài viết công khai. Do không còn banner đặc trưng của họ mã độc hoặc tiêu đề phân đoạn nào tồn tại trong panel đã bị lược bỏ này, việc quy kết cho bất kỳ họ mã độc chuẩn mực cụ thể nào chỉ là suy đoán. Hãy thay thế tên theo dõi này bằng tên họ mã độc chuẩn mực khi có bài viết công khai công bố một mẫu của đúng biến thể sáu trường đã bị lược bỏ này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `Flat macOS system_profiler panel`, `BRADMAX macOS victim minimal Information.txt`
- Variants observed: **3**
- CyStack observations represented: **42,152**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| macOS full user name plus short login | Họ tên đầy đủ trên macOS kèm tên đăng nhập rút gọn |
| Mac model family (iMac / MacBook Pro / Mac mini / etc.) | Dòng máy Mac (iMac / MacBook Pro / Mac mini / v.v.) |
| CPU marketing name (`Quad-Core Intel Core i5`, `Apple M1`, etc.) | Tên thương mại của CPU (`Quad-Core Intel Core i5`, `Apple M1`, v.v.) |
| Physical memory total | Tổng dung lượng bộ nhớ vật lý |
| GPU chipset model | Model chipset GPU |
| Primary display resolution with human-readable annotation | Độ phân giải màn hình chính kèm chú thích dễ đọc |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three line-anchored macOS-canonical
keys: `Model Name:` AND `Processor Name:` AND
`Chipset Model:`. The three-anchor combination is
mutually exclusive with every Windows-panel format and
with every existing macOS-family format (AMOS /
Cthulhu / MacSync / Phexia / CSEssentialMac / CSMac*
each require a different canonical anchor that this
stripped body lacks). During triage, treat the sample
as weak attribution to a macOS stealer family via the
BRADMAX aggregator channel. The parenthesised login
in the `User Name` field is the short-username pivot
that lets analysts correlate with sibling artifacts
(Keychain dumps, browser data) in the same victim
folder if the aggregator preserved them.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu ba khóa chuẩn mực của macOS được neo theo dòng: `Model Name:` VÀ `Processor Name:` VÀ `Chipset Model:`. Tổ hợp ba điểm neo này loại trừ lẫn nhau với mọi định dạng panel Windows và với mọi định dạng họ mã độc macOS hiện có (AMOS / Cthulhu / MacSync / Phexia / CSEssentialMac / CSMac* đều yêu cầu một điểm neo chuẩn mực khác mà phần thân đã bị lược bỏ này không có). Trong quá trình phân loại ban đầu, nên coi mẫu này là quy kết yếu cho một họ mã độc đánh cắp thông tin macOS thông qua kênh tổng hợp BRADMAX. Tên đăng nhập trong dấu ngoặc đơn ở trường `User Name` là điểm xoay tên đăng nhập rút gọn giúp các nhà phân tích tương quan với các dấu vết liên quan (bản trích xuất Keychain, dữ liệu trình duyệt) trong cùng thư mục nạn nhân nếu kênh tổng hợp còn giữ lại chúng.

## Observed log variants

### `v_795d6c44a730d4d0894bf8294e2a524c`

- Format ID: `cs-flat-mac-profiler-stealer`
- Observed filenames: `userinfo.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: `@BRADMAX`
- Attribution confidence: **low**
- Layout: `intel-profiler`
- Historical records represented: **42,116**
- Representative sample: [open sample](samples/v_795d6c44a730d4d0894bf8294e2a524c/sample.txt)
- Sample SHA-256: `433655423ea928323c17433e763032c96d4109341eeacbe5317701fc7d4125cf`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Chipset Model`, `Model Name`, `Processor Name`

### `v_94ff57251e89669ee573ff86ace30073`

- Format ID: `cs-flat-mac-profiler-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `mac.c`
- Distribution channel: `@mentalpositive`
- Attribution confidence: **low**
- Layout: `apple-silicon-profiler`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_94ff57251e89669ee573ff86ace30073/sample.txt)
- Sample SHA-256: `7844a84f6d9e8f76696838ca0855738018b7d41fb9e6186dad652154084084d7`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `mac.c`
- Field labels: `Chipset Model`, `Model Name`, `Resolution`

### `v_b5814736585d30db7e1caf91351dfb6b`

- Format ID: `cs-flat-mac-profiler-stealer`
- Observed filenames: `Information.txt`, `UserInformation.txt`
- Panel brand: -
- Distribution channel: `@BRADMAX`
- Attribution confidence: **low**
- Layout: `apple-silicon-profiler`
- Historical records represented: **35**
- Representative sample: [open sample](samples/v_b5814736585d30db7e1caf91351dfb6b/sample.txt)
- Sample SHA-256: `73c682d7c0f7de79bf1cff4b673b0d30db8fccb5e6bd598af26a7d7cffd551c6`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Chipset Model`, `Model Name`, `Resolution`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)
- [MacSync](../mac-sync/)
- [Phexia](../phexia/)

## Related external families

- `banshee-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
