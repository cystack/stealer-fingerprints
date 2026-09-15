# CSCountCoreStealer

## Overview / Tổng quan

### English

CSCountCoreStealer is a CyStack-coined identifier for a
fifteen-line `Information.txt` panel summary that opens with a
`🔐 Passwords Count: <n>` banner and a `⚙ System Information:`
header, then ships a keyed field block carrying NodeJS `os`
module values. Observed inside `!! 2025 OCT.part01.rar`-style
aggregator packs in `<id>_<CC>_<IPv4>_<DD-MM-YY>/` victim
folders (e.g. `1273_UN_<IPv4>_16-10-25/`). The keyed
block carries `Mac:`, `Gpu:`, `Cpu:`, `Uuid:`, `Hostname:`,
`User Info:`, `IP Address:`, `Version:`, `Type:`, `Arch:`,
`Release:`, `Count Core:`, `File Location:`. Multi-GPU systems
put the second GPU name on its own line after `Gpu:` with no
key prefix.

The NodeJS `os` module fingerprint is unmistakable: `Type: Windows_NT` is the `os.type()` literal, `Arch: x64` is
`os.arch()`, `Release: 10.0.22631` is `os.release()`, and
`Count Core: 8` is the transposed phrasing for
`os.cpus().length`. The transposed `Count Core` plus the `User Info:` label (rather than `Username:`) is the panel's
developer-side quirk. Family attribution is provisional
pending a published threat-intel mapping for this exact
caption format. The closest publicly documented JavaScript /
NodeJS infostealer candidates - Celestial Stealer, Bizfum
Stealer, Wish Stealer - do not publish a matching caption
format in their write-ups.

### Tiếng Việt

CSCountCoreStealer là định danh do CyStack đặt cho một bản tóm tắt bảng điều khiển gồm mười lăm dòng `Information.txt`, mở đầu bằng biểu ngữ `🔐 Passwords Count: <n>` và tiêu đề `⚙ System Information:`, sau đó chứa một khối trường có khóa mang các giá trị mô-đun NodeJS `os`. Được ghi nhận bên trong các gói tổng hợp dạng `!! 2025 OCT.part01.rar` trong các thư mục nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/` (ví dụ: `1273_UN_<IPv4>_16-10-25/`). Khối có khóa mang `Mac:`, `Gpu:`, `Cpu:`, `Uuid:`, `Hostname:`, `User Info:`, `IP Address:`, `Version:`, `Type:`, `Arch:`, `Release:`, `Count Core:`, `File Location:`. Trên hệ thống nhiều GPU, tên GPU thứ hai được đặt trên một dòng riêng sau `Gpu:` mà không có tiền tố khóa.

Dấu vết đặc trưng của mô-đun NodeJS `os` là không thể nhầm lẫn: `Type: Windows_NT` là chuỗi ký tự `os.type()`, `Arch: x64` là `os.arch()`, `Release: 10.0.22631` là `os.release()`, và `Count Core: 8` là cách diễn đạt đảo vị trí cho `os.cpus().length`. Cách diễn đạt đảo vị trí `Count Core` cùng với nhãn `User Info:` (thay vì `Username:`) là điểm đặc trưng riêng từ phía nhà phát triển bảng điều khiển. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ có ánh xạ tình báo mối đe dọa được công bố cho đúng định dạng chú thích này. Các ứng viên mã độc đánh cắp thông tin JavaScript/NodeJS được công khai tài liệu hóa gần nhất - Celestial Stealer, Bizfum Stealer, Wish Stealer - đều không công bố định dạng chú thích khớp với định dạng này trong các bài viết của họ.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator NodeJS-os panel summary`
- Variants observed: **1**
- CyStack observations represented: **23,809**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (count flag plus harvested body in sibling files) | Thông tin xác thực đã lưu trong trình duyệt (cờ đếm số lượng cùng nội dung thu thập được trong các tệp liên quan) |
| Host metadata: MAC address, hardware UUID, hostname | Metadata của máy: địa chỉ MAC, UUID phần cứng, tên máy |
| Hardware inventory: CPU model, GPU list | Kiểm kê phần cứng: model CPU, danh sách GPU |
| OS fingerprint: NodeJS os.type/arch/release plus friendly Windows version | Dấu vết hệ điều hành: NodeJS os.type/arch/release cùng phiên bản Windows thân thiện với người dùng |
| Victim public IP | Địa chỉ IP công khai của nạn nhân |
| Stealer install path under `C:\WINDOWS\System32` | Đường dẫn cài đặt mã độc đánh cắp thông tin dưới `C:\WINDOWS\System32` |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the line-anchored `Count Core:` key (the
transposed phrasing is the disambiguator - no other cataloged
format uses it) plus the `Type: Windows_NT` NodeJS
`os.type()` literal. Together the pair cannot collide with
other cataloged formats. During triage, treat the family
attribution as unknown: the panel summary is the metadata view
of a JavaScript / NodeJS infostealer whose canonical name has
not been mapped to this caption layout in any public
reporting.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu khóa `Count Core:` được neo theo dòng (cách diễn đạt đảo vị trí là yếu tố phân biệt - không có định dạng nào khác trong danh mục sử dụng cách này) cùng với chuỗi ký tự NodeJS `Type: Windows_NT` `os.type()`. Kết hợp cả hai yếu tố này sẽ không trùng lặp với các định dạng khác đã được lập danh mục. Trong quá trình phân loại ban đầu, cần coi việc quy kết họ mã độc là chưa xác định: bản tóm tắt bảng điều khiển là góc nhìn metadata của một mã độc đánh cắp thông tin JavaScript/NodeJS mà tên gọi chưa được ánh xạ với bố cục chú thích này trong bất kỳ báo cáo công khai nào.

## Observed log variants

### `v_1021cf33442dd3c624bed4d2c8af05e8`

- Format ID: `cs-count-core-stealer`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **23,809**
- Representative sample: [open sample](samples/v_1021cf33442dd3c624bed4d2c8af05e8/sample.txt)
- Sample SHA-256: `080b0b0dc3db8d919c1b220daf009b2acf5aa9ffd0d0e64b9ebe91821f663870`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Count Core`, `User Info`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSNewLogStealer](../cs-new-log-stealer/)

## Related external families

- `celestial-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
