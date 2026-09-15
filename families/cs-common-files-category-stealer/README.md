# CSCommonFilesCategoryStealer

## Overview / Tổng quan

### English

CSCommonFilesCategoryStealer is a CyStack-coined identifier
for a Windows-victim folder layout shipping a four-directory
category split inside a per-victim folder named
`[<IPv4>]-<HOSTNAME>`. The four root subdirectories are
`Common Files`, `Credentials`, `Directories`, and `System`,
with a `Display (N).png` screenshot at root and an optional
packer empty-name DIR sibling. `Common Files` carries the
FileGrabber output (harvested user docs from Downloads /
Documents), `Credentials` ships the stealer-emitted credential
dumps, `Directories` carries walked-directory listings, and
`System` carries the text system-info dumps.

Observed inside `MAY 02 - 8230 LOGS2` aggregator packs that
also carry the TikTok-account harvest folders represented by CSTikTokAccountStealer. The category naming is the panel's undocumented builder choice rather than a documented stealer
convention. Family attribution is provisional pending a
published mapping for this layout.

### Tiếng Việt

CSCommonFilesCategoryStealer là định danh do CyStack đặt cho một bố cục thư mục ở máy nạn nhân Windows, triển khai cách chia bốn thư mục phân loại bên trong một thư mục theo từng nạn nhân có tên `[<IPv4>]-<HOSTNAME>`. Bốn thư mục con gốc là `Common Files`, `Credentials`, `Directories` và `System`, kèm ảnh chụp màn hình `Display (N).png` ở thư mục gốc và một DIR không tên tùy chọn dùng cho packer đi kèm. `Common Files` chứa dữ liệu đầu ra của mô-đun thu thập tệp (tài liệu người dùng thu thập từ Downloads / Documents), `Credentials` chứa các bản kết xuất thông tin xác thực do mã độc đánh cắp thông tin tạo ra, `Directories` chứa danh sách thư mục đã duyệt qua, và `System` chứa các bản kết xuất thông tin hệ thống dạng văn bản.

Được quan sát bên trong các gói tổng hợp `MAY 02 - 8230 LOGS2` mà cũng chứa các thư mục thu thập tài khoản TikTok được đại diện bởi CSTikTokAccountStealer. Cách đặt tên phân loại này là lựa chọn không được ghi chép của công cụ dựng bảng điều khiển, chứ không phải một quy ước có tài liệu của mã độc đánh cắp thông tin. Việc quy kết họ mã độc vẫn còn tạm thời cho đến khi có ánh xạ được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trên trình duyệt |
| Harvested user documents from Downloads / Documents folders | Tài liệu người dùng thu thập được từ thư mục Downloads / Documents |
| Directory listings from the victim's drives | Danh sách thư mục từ các ổ đĩa của nạn nhân |
| System info: hostname, IP, hardware fingerprint, installed software | Thông tin hệ thống: tên máy, địa chỉ IP, dấu vân tay phần cứng, phần mềm đã cài đặt |
| Desktop screenshot (per-monitor, numbered `Display (N).png`) | Ảnh chụp màn hình desktop (theo từng màn hình, đánh số `Display (N).png`) |

## Detection notes / Ghi chú nhận diện

### English

The four-dir set `Common Files`, `Credentials`,
`Directories`, `System` plus the `[<IPv4>]-<HOSTNAME>`
parent folder name is the fingerprint. The IP-bracketed
parent convention is distinctive: most stealer panels
use `<HOSTNAME>_<IPv4>_<date>` or `<CC>_<IPv4>` rather
than embedding the IP in brackets. Triage by walking
`System/` first for the canonical Information.txt then
`Credentials/` for stealer-emitted password files.

### Tiếng Việt

Bộ bốn thư mục `Common Files`, `Credentials`, `Directories`, `System` cùng tên thư mục cha `[<IPv4>]-<HOSTNAME>` là dấu hiệu nhận diện. Quy ước thư mục cha đặt IP trong dấu ngoặc vuông là đặc trưng khác biệt: hầu hết các bảng điều khiển mã độc đánh cắp thông tin dùng `<HOSTNAME>_<IPv4>_<date>` hoặc `<CC>_<IPv4>` thay vì nhúng IP trong dấu ngoặc vuông. Khi phân loại ưu tiên, duyệt `System/` trước để tìm tệp Information.txt chuẩn, sau đó duyệt `Credentials/` để tìm các tệp mật khẩu do mã độc đánh cắp thông tin tạo ra.

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
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery | Dò tìm tệp và thư mục |

## Related catalog profiles

- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSBrowsersDisplayStealer](../cs-browsers-display-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
