# CSInternalIpStealer

## Overview / Tổng quan

### English

CSInternalIpStealer is a CyStack-coined identifier for a
flattened `Information.txt` panel with square-bracket section
headers (`[Basic]` / `[Network]` / `[Drives]` / `[GPU]`) and a
distinctive `Internal IP:` LAN-IP field paired with the
public-IP `Ip:` field. Observed inside `@BRADMAX 12000 FEB-MARCH.part1.rar` at `@BRADMAX <count> <MONTHS>/[<CC>]<IPv4>/Information.txt` victim folders (e.g.
`[UN]<IPv4>`).

The body ships three physical lines that concatenate the
entire identity preamble plus four bracket-marked section
blocks. Fields include `Ip:` (lowercase `p`), `Internal IP:`
(LAN address), `HWID:` (64-hex SHA256), `Clipboard:`
(opportunistic content), `Build:` (Windows build number), `OS Arch:` (x64/x86), `CPU Name:`, `Logical Cores:`, `RAM Total (MB):`, `RAM Available (MB):`, and `Domain:`. Section headers
appear inline mid-line rather than on their own rows because
of the aggressive-collapse repacking.

The `HWID` SHA256 length points at newer stealer builds
(Arkanix Stealer is publicly documented as using SHA256 for
HWID). The dual public + LAN IP pair is unusual: most
canonical stealers emit only the public IP. The `RAM Total (MB):` / `RAM Available (MB):` parenthesised-unit value shape
is also unusual.

Family attribution is provisional pending a published
threat-intel mapping. Public reporting and community
catalogues do not attest a family emitting this exact flat
bracket-section layout. Candidates ruled out include Arkanix
Stealer (JSON wire format serialised to
`%LOCALAPPDATA%\Arkanix_lol\<class>.json`), Valkyrie Stealer
(JSON output), Easy Stealer (Dashboard-panel view without
published log-file format), Redline (uses `Hardwares:` block
with `Name:` sub-entries), `BracketSectionStealer` (uses
`[System]` + `[Hardware]` sections), AMOS (macOS-specific
`system_profiler` output).

### Tiếng Việt

CSInternalIpStealer là định danh do CyStack đặt cho một bảng điều khiển `Information.txt` dạng làm phẳng với các tiêu đề phần đặt trong dấu ngoặc vuông (`[Basic]` / `[Network]` / `[Drives]` / `[GPU]`) cùng một trường IP LAN đặc trưng `Internal IP:` đi kèm với trường IP công khai `Ip:`. Được ghi nhận bên trong `@BRADMAX 12000 FEB-MARCH.part1.rar` tại các thư mục nạn nhân `@BRADMAX <count> <MONTHS>/[<CC>]<IPv4>/Information.txt` (ví dụ: `[UN]<IPv4>`).

Phần thân chứa ba dòng vật lý gộp toàn bộ phần mở đầu định danh cùng bốn khối phần được đánh dấu bằng ngoặc vuông. Các trường bao gồm `Ip:` (chữ thường `p`), `Internal IP:` (địa chỉ LAN), `HWID:` (SHA256 64 ký tự hex), `Clipboard:` (nội dung thu thập tùy cơ hội), `Build:` (số build Windows), `OS Arch:` (x64/x86), `CPU Name:`, `Logical Cores:`, `RAM Total (MB):`, `RAM Available (MB):`, và `Domain:`. Các tiêu đề phần xuất hiện xen giữa dòng thay vì nằm trên dòng riêng do quá trình đóng gói lại theo kiểu gộp mạnh.

Độ dài SHA256 của `HWID` cho thấy đây là các bản build mã độc đánh cắp thông tin mới hơn (Arkanix Stealer được tài liệu công khai ghi nhận là sử dụng SHA256 cho HWID). Việc có cặp IP công khai và IP LAN đồng thời là điểm bất thường: hầu hết các họ mã độc đánh cắp thông tin phổ biến chỉ tạo dữ liệu đầu ra là IP công khai. Cấu trúc dữ liệu giá trị theo dạng đơn vị trong ngoặc đơn của `RAM Total (MB):` / `RAM Available (MB):` cũng là điểm bất thường.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ thông tin tình báo về mối đe dọa được công bố. Các báo cáo công khai và danh mục cộng đồng chưa xác nhận có họ mã độc nào tạo ra đúng bố cục phần dạng ngoặc phẳng này. Các ứng viên đã bị loại trừ gồm Arkanix Stealer (định dạng dữ liệu trên đường truyền JSON được tuần tự hóa thành `%LOCALAPPDATA%\Arkanix_lol\<class>.json`), Valkyrie Stealer (tạo dữ liệu đầu ra JSON), Easy Stealer (giao diện bảng điều khiển Dashboard không có định dạng tệp log được công bố), Redline (sử dụng khối `Hardwares:` với các mục con `Name:`), `BracketSectionStealer` (sử dụng các phần `[System]` + `[Hardware]`), AMOS (tạo dữ liệu đầu ra `system_profiler` đặc thù cho macOS).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Flat bracket-section Information.txt with Internal IP`, `BRADMAX dual-IP panel with [Basic]/[Network]/[Drives]/[GPU]`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Public IPv4 (external) plus LAN IPv4 (internal) | IPv4 công khai (bên ngoài) cùng IPv4 LAN (nội bộ) |
| HWID as SHA256 hash | HWID dưới dạng băm SHA256 |
| Clipboard content (opportunistic per-victim data) | Nội dung clipboard (dữ liệu thu thập tùy cơ hội theo từng nạn nhân) |
| Windows build number and architecture | Số build Windows và kiến trúc hệ thống |
| CPU name and logical core count | Tên CPU và số nhân logic |
| Total and available RAM (MB) | Tổng dung lượng và dung lượng RAM khả dụng (MB) |
| GPU adapters list | Danh sách card đồ họa (GPU) |
| Windows domain / hostname | Miền Windows / tên máy |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `Ip:` AND `Internal IP:`
AND `HWID:` PLUS at least two of the four bracket-section
markers (`[Basic]` / `[Network]` / `[Drives]` / `[GPU]`)
present anywhere in the body. The `Internal IP:` field is
unique across the cataloged formats - no other family emits
both an external and internal IP as separate fields. The four-section bracket-header set differs from every existing
bracket-section format (`BracketSectionStealer` uses
`[System]` + `[Hardware]`; AMOS uses `[System Info]` +
`[Hardware]`). During triage, the SHA256 HWID length and the
dual-IP shape point at a newer stealer build; the specific
builder is not yet mapped in public reporting, so treat the
family label as a placeholder. Update this tracking profile if a public writeup later
publishes this exact layout.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu phải có đồng thời `Ip:` VÀ `Internal IP:` VÀ `HWID:` được neo theo dòng, CỘNG THÊM ít nhất hai trong bốn dấu hiệu tiêu đề phần dạng ngoặc vuông (`[Basic]` / `[Network]` / `[Drives]` / `[GPU]`) xuất hiện ở bất kỳ vị trí nào trong phần thân. Trường `Internal IP:` là duy nhất trong số các định dạng đã được lập danh mục - không có họ mã độc nào khác tạo dữ liệu đầu ra đồng thời cả IP bên ngoài và IP nội bộ dưới dạng các trường riêng biệt. Bộ bốn tiêu đề phần dạng ngoặc vuông này khác với mọi định dạng phần dạng ngoặc hiện có (`BracketSectionStealer` sử dụng `[System]` + `[Hardware]`; AMOS sử dụng `[System Info]` + `[Hardware]`). Trong quá trình phân tích ban đầu, độ dài SHA256 của HWID cùng cấu trúc dữ liệu IP kép cho thấy đây là bản build mã độc đánh cắp thông tin mới hơn; công cụ builder cụ thể chưa được ánh xạ trong các báo cáo công khai, do đó nhãn họ mã độc này nên được coi là tạm thời. Cập nhật hồ sơ theo dõi này nếu sau này có báo cáo công khai công bố đúng bố cục này.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |

## Related catalog profiles

- [BracketSection Stealer](../bracket-section-stealer/)

## Related external families

- `arkanix-stealer`
- `valkyrie-stealer`
- `easy-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
