# CSWmicDumpStealer

## Overview / Tổng quan

### English

CSWmicDumpStealer is a CyStack-coined identifier for a
snake_case `system_info.txt` panel observed inside `!! 2026 JAN.part01.rar` aggregator packs distributed via Telegram log
channels. Per-victim folders follow a
`<id>_<2-hex>_<ip>_<DD-MM-YY>/system_info.txt` layout. The
body opens with an uppercase `=== SYSTEM INFORMATION ===`
header and is composed of snake_case `key: value` lines where
many of the values are raw stdout from Windows command-line
tools: `wmic baseboard get`, `wmic bios get`, `wmic memorychip get`, `wmic memphysical get`, `wmic diskdrive get`, `wmic computersystem get`, `wmic path Win32_VideoController get`,
`wmic os get LastBootUpTime`, plus `ipconfig /all` and `ver`.
The fixed-width WMIC tabular output is captured verbatim, with
the column-header row sitting on the same line as the field
key.

The snake_case naming convention plus the "shell out to wmic
and stash the stdout" pattern strongly suggests a Python-based
stealer (`subprocess.check_output("wmic ...")` shape) but no
surveyed Python-stealer write-up (Inf0s3c, XillenStealer,
Akira, ExelaStealer, BlankGrabber) documents this exact field
set.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting plus
public stealer-format catalogues do not document a family
using this exact snake_case field set. The `CSWmicDumpStealer`
literal preserves the panel's most distinctive trait (raw WMIC
stdout dumped into snake_case fields) as the suffix; rename
the CyStack tracking name if a public writeup later identifies the
underlying builder.

### Tiếng Việt

CSWmicDumpStealer là định danh do CyStack đặt cho một bảng điều khiển snake_case `system_info.txt` được quan sát bên trong các gói tổng hợp `!! 2026 JAN.part01.rar` được phân phối qua các kênh log Telegram. Các thư mục theo từng nạn nhân tuân theo bố cục `<id>_<2-hex>_<ip>_<DD-MM-YY>/system_info.txt`. Phần thân bắt đầu bằng tiêu đề chữ hoa `=== SYSTEM INFORMATION ===` và được cấu tạo từ các dòng `key: value` dạng snake_case, trong đó nhiều giá trị là dữ liệu stdout thô từ các công cụ dòng lệnh Windows: `wmic baseboard get`, `wmic bios get`, `wmic memorychip get`, `wmic memphysical get`, `wmic diskdrive get`, `wmic computersystem get`, `wmic path Win32_VideoController get`, `wmic os get LastBootUpTime`, cùng với `ipconfig /all` và `ver`. Dữ liệu bảng WMIC có độ rộng cố định được lưu lại nguyên văn, với dòng tiêu đề cột nằm trên cùng dòng với khóa trường.

Quy ước đặt tên snake_case cùng với mẫu "gọi ra wmic rồi lưu lại stdout" gợi ý mạnh mẽ đây là một mã độc đánh cắp thông tin viết bằng Python (cấu trúc dữ liệu `subprocess.check_output("wmic ...")`), nhưng không có bài phân tích nào về stealer viết bằng Python đã khảo sát (Inf0s3c, XillenStealer, Akira, ExelaStealer, BlankGrabber) ghi nhận đúng tập trường dữ liệu này.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ tình báo mối đe dọa công khai cho bố cục này. Các báo cáo công khai cũng như các danh mục định dạng stealer công khai đều không ghi nhận họ mã độc nào sử dụng đúng tập trường dạng snake_case này. Chuỗi ký tự `CSWmicDumpStealer` giữ lại đặc điểm nổi bật nhất của bảng điều khiển này (dữ liệu stdout thô từ WMIC được đổ vào các trường snake_case) làm hậu tố; hãy đổi tên định danh theo dõi của CyStack nếu sau này có bài viết công khai xác định được builder gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **148**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| System hardware and locale inventory | Thông tin phần cứng hệ thống và ngôn ngữ/khu vực |
| Network configuration and adapter details | Cấu hình mạng và chi tiết bộ điều hợp mạng |
| BIOS / motherboard / disk serial numbers | Số sê-ri BIOS / bo mạch chủ / ổ đĩa |

## Detection notes / Ghi chú nhận diện

### English

Requires the `=== SYSTEM INFORMATION ===` uppercase header
AND the `network_config_full:` snake_case key AND the
`user_domain:` snake_case key. PCInfoStealer uses the same
header but additionally requires `=== NETWORK INFO ===`
and `PC Username:`, neither of which appears here, so the two structures remain distinct. No other cataloged family
uses snake_case keys at all, so the snake_case markers
are sufficient to reject unrelated content.

### Tiếng Việt

Yêu cầu phải có tiêu đề chữ hoa `=== SYSTEM INFORMATION ===` VÀ khóa dạng snake_case `network_config_full:` VÀ khóa dạng snake_case `user_domain:`. PCInfoStealer sử dụng cùng tiêu đề nhưng còn yêu cầu thêm `=== NETWORK INFO ===` và `PC Username:`, cả hai đều không xuất hiện ở đây, do đó hai cấu trúc này vẫn được phân biệt riêng biệt. Không có họ mã độc nào khác trong danh mục sử dụng khóa dạng snake_case, vì vậy các dấu hiệu snake_case đủ để loại trừ nội dung không liên quan.

## Observed log variants

### `v_b56df7c47c8dd6e3c8b68ae39e89c1c5`

- Format ID: `cs-wmic-dump-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: `snake_case wmic-dump system_info.txt`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **148**
- Representative sample: [open sample](samples/v_b56df7c47c8dd6e3c8b68ae39e89c1c5/sample.txt)
- Sample SHA-256: `07f7e3b36590b5a1bcf82f8400b88dc18af3dca57c0224172d909aadf0b70811`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== SYSTEM INFORMATION ===`, `network_config_full:`
- Field labels: `memory_slots`, `motherboard_info`, `ram_modules`, `user_domain`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
