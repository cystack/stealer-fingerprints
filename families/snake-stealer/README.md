# Snake Stealer

## Overview / Tổng quan

### English

Observed-self-label profile for a `Snake Stealer` system report
redistributed inside `@BRADMAX` packs. The file has an ASCII-art
SNAKE label and seven triple-equals-bracketed sections. No
independent analysis currently maps this exact format to a
canonical family. It is distinct from WhiteSnake and Snake
Keylogger, which use different formats and filenames.

### Tiếng Việt

Hồ sơ tự gán nhãn quan sát được cho báo cáo hệ thống `Snake Stealer`
được phát tán lại bên trong các gói `@BRADMAX`. Tệp này có nhãn ASCII-art
SNAKE và bảy phần được bao trong dấu ngoặc ba-dấu-bằng. Hiện chưa có
phân tích độc lập nào ánh xạ định dạng cụ thể này với một
họ mã độc chính danh. Định dạng này khác biệt với WhiteSnake và Snake
Keylogger, vốn sử dụng định dạng và tên tệp khác.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Observed self-label / Tên tự nhận quan sát được**
- Attribution confidence: **unknown**
- Aliases: `Snake Stealer`
- Variants observed: **1**
- CyStack observations represented: **16**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| System hardware, OS, and locale inventory | Kiểm kê phần cứng hệ thống, hệ điều hành và thông tin ngôn ngữ/khu vực |
| User and computer identity | Danh tính người dùng và máy tính |
| Network adapter configuration | Cấu hình adapter mạng |
| Running processes and installed browser inventory | Danh sách tiến trình đang chạy và trình duyệt đã cài đặt |

## Detection notes / Ghi chú nhận diện

### English

The cataloged format requires the structural `=== INFO ===`,
`=== HARDWARE INFORMATION ===`, and `=== INSTALLED BROWSERS ===`
section triple. The observed SNAKE label names this profile but
does not independently establish payload lineage, so family
attribution remains unknown.

### Tiếng Việt

Định dạng được ghi nhận đòi hỏi bộ ba phần cấu trúc `=== INFO ===`,
`=== HARDWARE INFORMATION ===`, và `=== INSTALLED BROWSERS ===`.
Nhãn SNAKE quan sát được chỉ đặt tên cho hồ sơ này chứ không tự nó
xác lập nguồn gốc payload, do đó việc quy kết họ mã độc vẫn chưa xác định.

## Observed log variants

### `v_dcee825c24d303631633c51dc93685fe`

- Format ID: `snake`
- Observed filenames: `Systeminfo.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **16**
- Representative sample: [open sample](samples/v_dcee825c24d303631633c51dc93685fe/sample.txt)
- Sample SHA-256: `7059e7c60b57393f53c5bd6280315ad6c912969ed7ab7f0e6da0f3c738004afe`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== HARDWARE INFORMATION ===`, `=== INFO ===`, `=== INSTALLED BROWSERS ===`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
