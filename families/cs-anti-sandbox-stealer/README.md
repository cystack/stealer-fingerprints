# CSAntiSandboxStealer

## Overview / Tổng quan

### English

CSAntiSandboxStealer is a CyStack-coined identifier for a
triple-equals-section `system_info.txt` panel observed inside
`!! 2025 DEC.part01.rar` aggregator packs at
`[<CC>]<IPv4>/system_info.txt` victim folders. The body opens
with six Title-case `=== <Section> ===` headers (`=== System Information ===`, `=== Network ===`, `=== Hardware ===`, `=== Disk ===`, `=== Anti-Sandbox Diagnostics ===`, `=== Summary ===`) and a verbatim Anti-Sandbox Diagnostics block that
exposes the stealer's sandbox-detection logic line by line
with arrow-verdict suffixes (`-> PASS` / `-> FAIL`).

The diagnostic block is the panel's distinguishing
developer-side quirk. Most stealers hide their sandbox-detection logic so analysts cannot easily map the thresholds,
but this builder prints every check and its configured
threshold (`RAM: 3 GB (threshold: 8 GB) -> FAIL`). The `=== Summary ===` block carries the `Anti-Sandbox: ENABLED` flag
plus a `Mode: V2 (Evasive)` panel-version identifier; the `V2`
literal suggests this is the second revision of the builder's
anti-sandbox logic.

Public reporting and the community stealer-format catalogues
do not document a family that emits this exact
triple-equals-section + verbatim diagnostic block +
arrow-verdict shape. Multiple public writeups document modern
stealers that implement anti-sandbox checks (Lumma C2, Typhon
Reborn V2, Akira Stealer v2, Rhadamanthys, Vidar 2.0), but
none of those writeups quote a sample log with the diagnostic
block exposed verbatim. The format may be a debug /
developer-test build of one of those families that left the
verbose diagnostic output enabled, or a separate undocumented
builder. Family attribution is provisional pending a published
mapping.

### Tiếng Việt

CSAntiSandboxStealer là một định danh do CyStack đặt tên cho bảng điều khiển `system_info.txt` theo phần dấu bằng ba lần, quan sát được bên trong các gói tổng hợp `!! 2025 DEC.part01.rar` tại các thư mục nạn nhân `[<CC>]<IPv4>/system_info.txt`. Nội dung mở đầu bằng sáu tiêu đề `=== <Section> ===` viết hoa chữ cái đầu (`=== System Information ===`, `=== Network ===`, `=== Hardware ===`, `=== Disk ===`, `=== Anti-Sandbox Diagnostics ===`, `=== Summary ===`) và một khối Anti-Sandbox Diagnostics nguyên văn để lộ logic phát hiện sandbox của mã độc đánh cắp thông tin theo từng dòng với hậu tố kết luận dạng mũi tên (`-> PASS` / `-> FAIL`).

Khối chẩn đoán này là đặc điểm riêng biệt nhất của bảng điều khiển, thể hiện thói quen của nhà phát triển. Hầu hết các mã độc đánh cắp thông tin ẩn logic phát hiện sandbox để nhà phân tích không dễ dàng ánh xạ được các ngưỡng, nhưng trình dựng này in ra từng kiểm tra và ngưỡng đã cấu hình của nó (`RAM: 3 GB (threshold: 8 GB) -> FAIL`). Khối `=== Summary ===` mang cờ `Anti-Sandbox: ENABLED` cùng một định danh phiên bản bảng điều khiển `Mode: V2 (Evasive)`; chuỗi `V2` gợi ý đây là lần lặp thứ hai của logic anti-sandbox trong trình dựng này.

Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin do cộng đồng biên soạn không ghi nhận một họ mã độc tạo ra đúng cấu trúc dữ liệu phần dấu bằng ba lần + khối chẩn đoán nguyên văn + kết luận dạng mũi tên này. Nhiều bài phân tích công khai ghi nhận các mã độc đánh cắp thông tin hiện đại triển khai kiểm tra anti-sandbox (Lumma C2, Typhon Reborn V2, Akira Stealer v2, Rhadamanthys, Vidar 2.0), nhưng không có bài phân tích nào trong số đó trích dẫn một mẫu nhật ký với khối chẩn đoán được để lộ nguyên văn. Định dạng này có thể là một bản dựng debug / kiểm thử nội bộ của một trong các họ mã độc trên, vô tình để lại dữ liệu đầu ra chẩn đoán chi tiết ở chế độ bật, hoặc là một trình dựng riêng biệt chưa được ghi nhận. Việc quy kết họ mã độc là tạm thời, chờ có ánh xạ công khai.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Anti-Sandbox Diagnostics V2 panel`, `Mode V2 Evasive stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| System fingerprint (Hostname, Username, OS, RAM, CPU cores, disk size, screen resolution) | Dấu vân tay hệ thống (Hostname, Username, hệ điều hành, RAM, số nhân CPU, dung lượng đĩa, độ phân giải màn hình) |
| Sandbox-detection diagnostic state (the panel itself ships only system info plus the diagnostic block; harvested credentials live in sibling files) | Trạng thái chẩn đoán phát hiện sandbox (bản thân bảng điều khiển chỉ gửi thông tin hệ thống cùng khối chẩn đoán; thông tin xác thực thu thập được nằm trong các tệp liên quan) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires `=== System Information ===` (Title
case) AND `=== Anti-Sandbox Diagnostics ===` AND
`Mode: V2` substrings. The Title-case section names rule
out `CSEnvVarDumpStealer` which uses ALL-CAPS headers
(`=== SYSTEM INFORMATION ===`). The verbatim diagnostic
block is the most distinguishing single anchor; no other
documented stealer exposes its sandbox-detection logic
this way. During triage, the per-check threshold lines
(`RAM: 3 GB (threshold: 8 GB) -> FAIL`) reveal the
builder's configured evasion bounds and can be tracked
across samples to detect threshold tuning.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu chuỗi con `=== System Information ===` (viết hoa chữ cái đầu) VÀ `=== Anti-Sandbox Diagnostics ===` VÀ `Mode: V2`. Tên phần viết hoa chữ cái đầu loại trừ `CSEnvVarDumpStealer` vốn sử dụng tiêu đề VIẾT HOA TOÀN BỘ (`=== SYSTEM INFORMATION ===`). Khối chẩn đoán nguyên văn là mỏ neo đơn lẻ mang tính phân biệt cao nhất; không có mã độc đánh cắp thông tin nào khác được ghi nhận công khai lại để lộ logic phát hiện sandbox theo cách này. Trong quá trình phân loại ban đầu, các dòng ngưỡng cho từng kiểm tra (`RAM: 3 GB (threshold: 8 GB) -> FAIL`) tiết lộ các giới hạn né tránh đã cấu hình trong trình dựng và có thể được theo dõi qua các mẫu để phát hiện việc điều chỉnh ngưỡng.

## Observed log variants

### `v_afd6a02604a11b541c94ed4334adccf3`

- Format ID: `cs-anti-sandbox-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_afd6a02604a11b541c94ed4334adccf3/sample.txt)
- Sample SHA-256: `741924979c4f544ca36d7af70d8d7e3ec6082d8f7fcede9ac7e8db220b47ae99`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== Anti-Sandbox Diagnostics ===`, `=== System Information ===`, `Mode: V2`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1497](https://attack.mitre.org/techniques/T1497/) | Virtualization/Sandbox Evasion | Né tránh môi trường ảo hóa/sandbox |
| [T1497.001](https://attack.mitre.org/techniques/T1497/001/) | System Checks | Kiểm tra hệ thống |
| [T1497.003](https://attack.mitre.org/techniques/T1497/003/) | Time Based Evasion | Né tránh dựa trên thời gian |
| [T1622](https://attack.mitre.org/techniques/T1622/) | Debugger Evasion | Né tránh trình gỡ lỗi |

## Related catalog profiles

- [Lumma](../lumma/)
- [Rhadamanthys](../rhadamanthys/)
- [Vidar](../vidar/)

## Related external families

- `typhon-stealer`
- `akira-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
