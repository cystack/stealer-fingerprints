# CSEduResultStealer

## Overview / Tổng quan

### English

CSEduResultStealer is a CyStack-coined identifier for a
minimal five-field Python `system_info.txt` observed inside
`7-11 AUGUST - 31283 LOGS2.part01.rar`-style aggregator packs
at `<HWIDPFX>_<TIMESTAMP>/EDU_RESULT/extracted/ system_info.txt` victim folders. The body carries only `OS`,
`Hostname`, `IP Address` (LAN, not public), `CPU` (in Python
`platform.processor()` output format, e.g. `Intel64 Family 6 Model 186 Stepping 3, GenuineIntel`), and `RAM` (float GB from
`psutil.virtual_memory()`).

The victim-folder `EDU_RESULT/` subtree carries the stealer's
harvest categories (`archives_scanned.txt`, `cards.txt`,
`cookies.txt`, `discord_token.txt`) plus an `extracted/`
sibling with per-category folders (`bin/`,
`Browsers/BraveSoftware/`, `Browsers/Chromium/`, etc.). The
`EDU_RESULT` folder-name literal suggests an "educational"
Python-project origin, likely one of the hobbyist /
open-source stealer scripts indexed under GitHub's
`stealer-2025` / `info-steal` / `stealer-undetectable` Topics
covered in public reporting on the GitVenom campaign. Family
attribution is provisional pending a published threat-intel
mapping for the `EDU_RESULT` output layout.

### Tiếng Việt

CSEduResultStealer là định danh do CyStack đặt cho một `system_info.txt` Python tối giản gồm năm trường, được phát hiện bên trong các gói tổng hợp kiểu `7-11 AUGUST - 31283 LOGS2.part01.rar` tại các thư mục nạn nhân `<HWIDPFX>_<TIMESTAMP>/EDU_RESULT/extracted/ system_info.txt`. Phần nội dung chỉ chứa `OS`, `Hostname`, `IP Address` (mạng LAN, không phải công khai), `CPU` (theo định dạng dữ liệu đầu ra của Python `platform.processor()`, ví dụ `Intel64 Family 6 Model 186 Stepping 3, GenuineIntel`), và `RAM` (số thực dạng GB từ `psutil.virtual_memory()`).

Cây thư mục con `EDU_RESULT/` trong thư mục nạn nhân chứa các nhóm dữ liệu mà mã độc đánh cắp thông tin thu thập được (`archives_scanned.txt`, `cards.txt`, `cookies.txt`, `discord_token.txt`) cùng với một tệp/dấu vết liên quan `extracted/` với các thư mục theo từng nhóm (`bin/`, `Browsers/BraveSoftware/`, `Browsers/Chromium/`, v.v.). Chuỗi ký tự tên thư mục `EDU_RESULT` gợi ý nguồn gốc từ một dự án Python "mang tính giáo dục", có khả năng là một trong các script mã độc đánh cắp thông tin của giới nghiệp dư/mã nguồn mở được lập chỉ mục dưới các Topics `stealer-2025` / `info-steal` / `stealer-undetectable` trên GitHub, được đề cập trong các báo cáo công khai về chiến dịch GitVenom. Việc quy kết họ mã độc vẫn còn mang tính tạm thời cho đến khi có bản đồ tình báo mối đe dọa được công bố cho bố cục dữ liệu đầu ra `EDU_RESULT`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `EDU_RESULT Python stealer`, `system_info.txt platform.processor minimal`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Basic host identity and hardware inventory (OS, hostname, LAN IP, CPU, RAM) | Thông tin định danh máy cơ bản và thống kê phần cứng (hệ điều hành, tên máy, địa chỉ IP LAN, CPU, RAM) |
| Browser saved credentials, cookies, autofills, bookmarks (under `EDU_RESULT/extracted/Browsers/`) | Thông tin xác thực, cookie, dữ liệu tự động điền, bookmark được trình duyệt lưu (trong `EDU_RESULT/extracted/Browsers/`) |
| Discord tokens (`EDU_RESULT/discord_token.txt`) | Token Discord (`EDU_RESULT/discord_token.txt`) |
| Credit-card data (`EDU_RESULT/cards.txt`) | Dữ liệu thẻ tín dụng (`EDU_RESULT/cards.txt`) |
| Cookies dump (`EDU_RESULT/cookies.txt`) | Kết xuất cookie (`EDU_RESULT/cookies.txt`) |
| Archive/wallet scan results (`archives_scanned.txt`) | Kết quả quét tệp nén/ví (`archives_scanned.txt`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires all four of `OS:`, `Hostname:`,
`IP Address:`, and a `CPU:` line whose value matches the
Python `platform.processor()` shape `(Intel64|AMD64| ARM64) Family <N> Model <N> Stepping <N>, (GenuineIntel| AuthenticAMD|...)`. The Python platform.processor CPU
format is the load-bearing anchor: canonical C# / .NET
stealers emit the marketing CPU name (`Intel(R) Core(TM) i5-...`) rather than the raw registry `PROCESSOR_ IDENTIFIER` string. During triage, treat this label as a
"hobbyist Python stealer" marker: the underlying builder
is not identifiable from this shape alone, but the
`EDU_RESULT/extracted/` folder tree is the load-bearing
evidence for confirming the family.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu phải có đủ cả bốn trường `OS:`, `Hostname:`, `IP Address:`, và một dòng `CPU:` có giá trị khớp với cấu trúc dữ liệu `platform.processor()` của Python là `(Intel64|AMD64| ARM64) Family <N> Model <N> Stepping <N>, (GenuineIntel| AuthenticAMD|...)`. Định dạng CPU theo platform.processor của Python chính là điểm neo mang tính quyết định: các mã độc đánh cắp thông tin viết bằng C#/.NET điển hình thường tạo dữ liệu đầu ra là tên CPU thương mại (`Intel(R) Core(TM) i5-...`) chứ không phải chuỗi `PROCESSOR_ IDENTIFIER` thô lấy từ registry. Trong quá trình phân loại ban đầu, hãy coi nhãn này là dấu hiệu của "mã độc đánh cắp thông tin Python nghiệp dư": không thể xác định trình builder gốc chỉ dựa trên cấu trúc dữ liệu này, nhưng cây thư mục `EDU_RESULT/extracted/` mới là bằng chứng mang tính quyết định để xác nhận họ mã độc.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |

## Related catalog profiles

- [PyInfo Stealer](../py-info-stealer/)
- [Blank Grabber](../blank-grabber/)

## Related external families

- `xillenstealer`
- `braodo-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
