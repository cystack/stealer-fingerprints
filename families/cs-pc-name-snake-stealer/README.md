# CSPcNameSnakeStealer

## Overview / Tổng quan

### English

CSPcNameSnakeStealer is a CyStack-coined identifier for an
eleven-line minimal `system_info.txt` panel distributed
through the `@BRADLOGS / BRADMAX` Telegram channel inside
`!! 2025 NOV.part001.rar` packs at
`[<TAG>]@BRADLOGS (BRADMAX)/system_info.txt` victim folders.
The body is a flat `key: value` block with all-lowercase
snake_case keys and short-form field abbreviations:
`username`, `pc_name`, `os`, `ram`, `cpu`, `gpu`, `mac`,
`hwid`, `ip`, `country`, `city`. The `os:` value is the
Python `platform.platform()` dash-joined shape
(`Windows-10-10.0.19045-SP0`), and the `hwid:` value is
the classic Windows `GetSystemUUID` format (8-4-4-4-12
hex with dashes, trailing segment matching the `mac:`
value with dashes stripped).

When the panel cannot resolve geo-IP, it emits the
literal `Unknown` placeholder for `ip`, `country`, and
`city`. The Python-builder OS shape pairs this format
with `CSPyHostTimeStealer` as a sibling panel that the
same `@BRADLOGS / BRADMAX` aggregator distributes; this
eleven-key variant carries richer device metadata
(MAC, HWID, CPU, GPU, RAM) but omits the timestamp.
Family attribution is provisional pending a published
threat-intel mapping for this layout.

### Tiếng Việt

CSPcNameSnakeStealer là định danh do CyStack đặt tên cho một bố cục panel `system_info.txt` tối giản gồm mười một dòng, được phân phối qua kênh Telegram `@BRADLOGS / BRADMAX` bên trong các gói `!! 2025 NOV.part001.rar` tại các thư mục nạn nhân `[<TAG>]@BRADLOGS (BRADMAX)/system_info.txt`.
Phần thân là một khối `key: value` phẳng với các khóa dạng snake_case viết thường toàn bộ và các dạng viết tắt ngắn của trường dữ liệu:
`username`, `pc_name`, `os`, `ram`, `cpu`, `gpu`, `mac`,
`hwid`, `ip`, `country`, `city`. Giá trị `os:` là cấu trúc dữ liệu nối bằng dấu gạch ngang của Python `platform.platform()`
(`Windows-10-10.0.19045-SP0`), và giá trị `hwid:` là
định dạng `GetSystemUUID` cổ điển của Windows (8-4-4-4-12 ký tự hex có dấu gạch ngang, đoạn cuối khớp với giá trị `mac:` sau khi loại bỏ dấu gạch ngang).

Khi panel không thể phân giải geo-IP, nó tạo dữ liệu đầu ra là placeholder `Unknown` cho `ip`, `country`, và
`city`. Cấu trúc dữ liệu hệ điều hành theo kiểu Python-builder đi kèm định dạng này với `CSPyHostTimeStealer` như một panel liên quan mà cùng bộ tổng hợp `@BRADLOGS / BRADMAX` phân phối; biến thể mười một khóa này mang theo siêu dữ liệu thiết bị phong phú hơn
(MAC, HWID, CPU, GPU, RAM) nhưng không có dấu thời gian.
Việc quy kết họ mã độc hiện vẫn là tạm thời, chờ một bản ánh xạ tình báo về mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX minimal snake_case system_info.txt`, `11-field pc_name/mac/hwid snake_case panel`
- Variants observed: **1**
- CyStack observations represented: **23**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Windows username | Tên người dùng Windows |
| Host metadata: hostname (pc_name), MAC address, HWID UUID | Siêu dữ liệu máy: tên máy (pc_name), địa chỉ MAC, HWID UUID |
| OS fingerprint via Python `platform.platform()` output | Dấu vân tay hệ điều hành qua dữ liệu đầu ra của Python `platform.platform()` |
| Hardware inventory: CPU model, GPU model, RAM size | Kiểm kê phần cứng: model CPU, model GPU, dung lượng RAM |
| Victim public IP plus country / city (placeholder Unknown when geo-IP fails) | Địa chỉ IP công khai của nạn nhân cùng quốc gia / thành phố (placeholder Unknown khi geo-IP thất bại) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires all four line-anchored short-form keys:
`username:`, `pc_name:`, `mac:`, `hwid:`. The combination of
lowercase snake_case keys with these short-form abbreviations
(no `_address` suffix on `mac`, no `_id` suffix on `hwid`, no
`computer_` prefix on `pc_name`) cannot collide with any other
cataloged format. During triage, treat the family attribution
as unknown: the format is structurally a Python-builder panel
(`platform.platform()` OS shape) but no public source maps the
11-key layout to a specific named family. Geo-IP placeholders
(`Unknown`) indicate the victim was offline or behind a
firewall during panel exfiltration.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu đầy đủ bốn khóa dạng viết tắt ngắn được neo theo dòng:
`username:`, `pc_name:`, `mac:`, `hwid:`. Sự kết hợp giữa các khóa snake_case viết thường với các dạng viết tắt ngắn này
(không có hậu tố `_address` trên `mac`, không có hậu tố `_id` trên `hwid`, không có
tiền tố `computer_` trên `pc_name`) không thể trùng lặp với bất kỳ định dạng nào khác đã được thu thập trong danh mục. Trong quá trình phân loại ban đầu, hãy coi việc quy kết họ mã độc là chưa xác định: xét về cấu trúc, đây là một panel kiểu Python-builder
(cấu trúc dữ liệu hệ điều hành `platform.platform()`) nhưng không có nguồn công khai nào ánh xạ bố cục 11 khóa này với một họ mã độc cụ thể được đặt tên. Các placeholder geo-IP
(`Unknown`) cho thấy nạn nhân đang ngoại tuyến hoặc nằm sau tường lửa trong quá trình panel đưa dữ liệu ra ngoài.

## Observed log variants

### `v_a518f20e8beffe929060e8d959b2b01c`

- Format ID: `cs-pc-name-snake-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **23**
- Representative sample: [open sample](samples/v_a518f20e8beffe929060e8d959b2b01c/sample.txt)
- Sample SHA-256: `c593944d228fcb55426fd7148086fb0bab573ca48d15be120a47c8bec8eef293`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `hwid`, `mac`, `pc_name`, `username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSWmicDumpStealer](../cs-wmic-dump-stealer/)
- [PyInfo Stealer](../py-info-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
