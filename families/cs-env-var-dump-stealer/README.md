# CSEnvVarDumpStealer

## Overview / Tổng quan

### English

CSEnvVarDumpStealer is a CyStack-coined identifier for a
.NET-based stealer panel whose `system_info.txt` opens with a
`=== SYSTEM INFORMATION ===` header followed by a `=== ENVIRONMENT VARIABLES ===` block that dumps the full Win32
environment table verbatim. Distributed through the `@BRADMAX`
Telegram aggregator (public channel catalogues list
`t.me/bradmax_cloud` as a Redline / Raccoon Data Logs
channel), with per-victim folders named `[<CC>]@BRADMAX (<N>)/`.

Distinctive to this panel are the `CLR Version:` and `.NET Runtime:` fields (pointing to a .NET builder), the `Default Gateway:` / `Antivirus:` / `Local IP:` triple, and a verbatim
Win32 environment dump as the second section. A panel bug
emits `RAM: NoSystemBattery (100%)` as a duplicate `RAM:`
line: a battery-detection result mislabeled with the RAM key.
The `NoSystemBattery (100%)` literal is shared with
Stealerium's `Info.txt` `BATTERY:` field per a community
stealer-format catalogue, but Stealerium's layout uses
bracket-titled `[Machine]` / `[Virtualization]` sections,
never the `===` triple-equals headers seen here, so the
relationship is at most a snippet lift, not a fork.

### Tiếng Việt

CSEnvVarDumpStealer là định danh do CyStack đặt cho một panel mã độc đánh cắp thông tin dựa trên .NET, trong đó `system_info.txt` mở đầu bằng tiêu đề `=== SYSTEM INFORMATION ===` theo sau là khối `=== ENVIRONMENT VARIABLES ===` dump nguyên văn toàn bộ bảng biến môi trường Win32. Được phát tán qua bộ tổng hợp Telegram `@BRADMAX` (kênh công khai liệt kê `t.me/bradmax_cloud` là kênh Redline / Raccoon Data Logs), với các thư mục theo từng nạn nhân được đặt tên `[<CC>]@BRADMAX (<N>)/`.

Đặc trưng riêng của panel này là các trường `CLR Version:` và `.NET Runtime:` (trỏ đến một builder .NET), bộ ba `Default Gateway:` / `Antivirus:` / `Local IP:`, và phần dump nguyên văn biến môi trường Win32 là mục thứ hai. Một lỗi trong panel khiến `RAM: NoSystemBattery (100%)` tạo dữ liệu đầu ra trùng lặp với dòng `RAM:`: đây là kết quả phát hiện pin bị gán nhãn sai bằng khóa RAM. Chuỗi ký tự `NoSystemBattery (100%)` được dùng chung với trường `Info.txt` `BATTERY:` của Stealerium theo một danh mục định dạng mã độc đánh cắp thông tin do cộng đồng biên soạn, nhưng bố cục của Stealerium sử dụng các mục có tiêu đề trong dấu ngoặc vuông `[Machine]` / `[Virtualization]`, không bao giờ dùng các tiêu đề ba dấu bằng `===` như thấy ở đây, vì vậy mối liên hệ nhiều nhất chỉ là việc sao chép một đoạn mã, chứ không phải là một nhánh (fork).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADMAX system_info.txt`
- Variants observed: **1**
- CyStack observations represented: **875**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (panel companion files) | Thông tin xác thực và cookie đã lưu trong trình duyệt (các tệp đi kèm panel) |
| System hardware and locale inventory | Thông tin kiểm kê phần cứng và ngôn ngữ hệ thống |
| Verbatim Win32 environment-variable dump | Dữ liệu dump nguyên văn biến môi trường Win32 |
| Antivirus product enumeration | Liệt kê các sản phẩm diệt virus |

## Detection notes / Ghi chú nhận diện

### English

Triple fingerprint: `=== SYSTEM INFORMATION ===` substring
AND `=== ENVIRONMENT VARIABLES ===` substring AND
`.NET Runtime:` substring. The `.NET Runtime:` key is unique
across this catalog; the env-var section header excludes
PCInfoStealer (which requires `=== NETWORK INFO ===`) and
CSWmicDumpStealer (snake_case keys, no env-var dump). The
family attribution is provisional pending a published
threat-intel mapping for this layout.

### Tiếng Việt

Dấu vết nhận diện ba phần: chuỗi con `=== SYSTEM INFORMATION ===` VÀ chuỗi con `=== ENVIRONMENT VARIABLES ===` VÀ chuỗi con `.NET Runtime:`. Khóa `.NET Runtime:` là duy nhất trong danh mục này; tiêu đề mục biến môi trường giúp loại trừ PCInfoStealer (vốn yêu cầu `=== NETWORK INFO ===`) và CSWmicDumpStealer (dùng khóa dạng snake_case, không có phần dump biến môi trường). Việc quy kết họ mã độc này vẫn mang tính tạm thời cho đến khi có bản đồ tình báo mối đe dọa được công bố cho bố cục này.

## Observed log variants

### `v_7ba734c3d104f5d042e195feac7c49c7`

- Format ID: `cs-envvar-dump-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **875**
- Representative sample: [open sample](samples/v_7ba734c3d104f5d042e195feac7c49c7/sample.txt)
- Sample SHA-256: `f199a9ebbc21066e827b992498d9b5daf2916bb2388bcca8c5857d92c653093c`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== ENVIRONMENT VARIABLES ===`, `=== SYSTEM INFORMATION ===`
- Field labels: `.NET Runtime`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- [Stealerium](../stealerium/)

## Observed distribution channels

- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
