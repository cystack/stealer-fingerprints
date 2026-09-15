# CSFilesStolenStealer

## Overview / Tổng quan

### English

CSFilesStolenStealer is a CyStack-coined identifier for a
compact ten-line `system.txt` panel whose distinctive
signature is the stealer-self-reporting `Files Stolen:`
counter field. Observed inside `JANUARY 15,16 - 4728 LOGS.part1.rar` Telegram aggregator packs at
`<HH-MM-SS>/system.txt` victim folders (e.g.
`00-39-28/system.txt`). The archive-name convention with
comma-separated dates matches the operator lineage of
`CSStartBuildInfoStealer` (`4,5 MAY`) and
`CSExePathInfoStealer` (`5,6 APRIL`) from the same reseller
pipeline.

The body ships ten flush-left `Key: Value` lines: PC Name,
Desktop Name, Windows Version, Files Stolen, IP Address, MAC
Address, GPU, RAM, Public IP, Antivirus. No bracketed section
headers, no banner, no trailing sections. Four features
distinguish this panel from every other cataloged format:

1. `PC Name:` plus `Desktop Name:` sibling pair with both
fields taking the same value on typical single-user Windows
hosts. Common stealer panels emit `Computer Name` /
`ComputerName` / `Hostname` as a single key, never as a `PC Name` + `Desktop Name` pair. 2. `Files Stolen:` inline counter
for the number of files the harvester exfiltrated. Canonical
Vidar, StealC, and Lumma emit grab counts in a separate
summary section or not at all - in-body counter fields are
rare across surveyed families. 3. Dual IP fields side by side:
`IP Address:` carries the RFC-1918 LAN value (192.168.x.x,
10.x.x.x, 172.16-31.x.x) and `Public IP:` carries the WAN
routable value. The routable value is the primary network IOC; the LAN
value remains useful for host-level triage. 4. `MAC Address:` value uses hyphen byte separators (Windows ipconfig
style) rather than the more common colon-separated form.
`RAM:` value uses comma thousands separator (`18,308 MB`).

The `Windows Version:` value carries a trailing `-` sentinel
with no product-name text after it (as if the panel builder
intended to append a Windows edition string but the resolver
returned an empty value on the observed sample). The bare NT version before that sentinel is the reliable OS
value.

Family attribution is provisional. The ten-field combination
is unattested in public reporting and is also absent from the
community stealer-format catalogues. Multiple open-source
Python stealer builders (XillenStealer, Trap Stealer,
SPYSTEALER, py-stealer-builder) publish plain-text system
reports but none of the surveyed writeups document this exact
ten-field key spelling. Update this tracking profile if a public writeup later maps
this layout to a known builder.

### Tiếng Việt

CSFilesStolenStealer là định danh do CyStack đặt cho một panel gọn gồm mười dòng `system.txt` có đặc điểm nhận dạng riêng biệt là trường đếm `Files Stolen:` do chính mã độc đánh cắp thông tin tự báo cáo. Được quan sát bên trong các gói tổng hợp Telegram `JANUARY 15,16 - 4728 LOGS.part1.rar` tại các thư mục nạn nhân `<HH-MM-SS>/system.txt` (ví dụ `00-39-28/system.txt`). Quy ước đặt tên kho lưu trữ với các ngày phân tách bằng dấu phẩy khớp với dòng đối tượng vận hành của `CSStartBuildInfoStealer` (`4,5 MAY`) và `CSExePathInfoStealer` (`5,6 APRIL`) qua cùng một luồng phân phối lại.

Phần thân chứa mười dòng `Key: Value` căn lề trái: PC Name, Desktop Name, Windows Version, Files Stolen, IP Address, MAC Address, GPU, RAM, Public IP, Antivirus. Không có tiêu đề phần trong ngoặc vuông, không có banner, không có phần đuôi. Bốn đặc điểm phân biệt panel này với mọi định dạng khác đã được lập danh mục:

1. Cặp trường liên quan `PC Name:` cộng với `Desktop Name:` với cả hai trường nhận cùng giá trị trên các máy Windows đơn người dùng điển hình. Các panel mã độc đánh cắp thông tin phổ biến tạo dữ liệu đầu ra `Computer Name` / `ComputerName` / `Hostname` dưới dạng một khóa duy nhất, không bao giờ ở dạng cặp `PC Name` + `Desktop Name`. 2. Bộ đếm nội tuyến `Files Stolen:` cho số lượng tệp mà bộ thu thập đã đưa dữ liệu ra ngoài. Các họ mã độc điển hình như Vidar, StealC và Lumma tạo dữ liệu đầu ra là số lượng tệp thu thập trong một phần tóm tắt riêng biệt hoặc không tạo ra hoàn toàn - các trường bộ đếm nằm trong phần thân là hiếm gặp trong số các họ mã độc được khảo sát. 3. Cặp trường IP song song: `IP Address:` mang giá trị LAN theo RFC-1918 (192.168.x.x, 10.x.x.x, 172.16-31.x.x) và `Public IP:` mang giá trị WAN có thể định tuyến. Giá trị có thể định tuyến là dấu hiệu nhận biết xâm nhập (IOC) mạng chính; giá trị LAN vẫn hữu ích cho việc phân loại ở cấp độ máy. 4. Giá trị `MAC Address:` sử dụng dấu phân tách byte bằng dấu gạch nối (kiểu Windows ipconfig) thay vì dạng phân tách bằng dấu hai chấm phổ biến hơn. Giá trị `RAM:` sử dụng dấu phân tách hàng nghìn bằng dấu phẩy (`18,308 MB`).

Giá trị `Windows Version:` mang theo một chuỗi đánh dấu `-` ở cuối mà không có văn bản tên sản phẩm theo sau (như thể bên xây dựng panel định thêm vào một chuỗi phiên bản Windows nhưng bộ phân giải trả về giá trị rỗng trên mẫu quan sát được). Phiên bản NT trần trước chuỗi đánh dấu đó là giá trị hệ điều hành đáng tin cậy.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời. Tổ hợp mười trường này chưa từng được ghi nhận trong các báo cáo công khai và cũng không xuất hiện trong các danh mục định dạng mã độc đánh cắp thông tin của cộng đồng. Nhiều bộ công cụ xây dựng mã độc đánh cắp thông tin mã nguồn mở bằng Python (XillenStealer, Trap Stealer, SPYSTEALER, py-stealer-builder) phát hành báo cáo hệ thống dạng văn bản thuần nhưng không có bài viết nào được khảo sát ghi nhận chính xác cách đặt tên khóa mười trường này. Cập nhật hồ sơ theo dõi này nếu sau này có bài viết công khai ánh xạ bố cục này với một bộ công cụ xây dựng đã biết.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Files Stolen counter system.txt panel`, `PC Name + Desktop Name sibling-pair minimal stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Windows hostname (`PC Name:`) | Tên máy Windows (`PC Name:`) |
| Windows desktop / short login name (`Desktop Name:`) | Tên máy tính để bàn / tên đăng nhập ngắn Windows (`Desktop Name:`) |
| Windows NT version (`Windows Version:` with edition placeholder tail) | Phiên bản Windows NT (`Windows Version:` kèm phần đuôi giữ chỗ cho ấn bản) |
| LAN interface IP (`IP Address:` RFC-1918 value) | IP giao diện LAN (giá trị RFC-1918 `IP Address:`) |
| Public exit IP (`Public IP:` WAN value) | IP thoát công khai (giá trị WAN `Public IP:`) |
| MAC address (Windows ipconfig hyphen-separated form) | Địa chỉ MAC (dạng phân tách bằng dấu gạch nối kiểu Windows ipconfig) |
| GPU adapter name (`None` fallback when no discrete adapter present) | Tên adapter GPU (giá trị dự phòng `None` khi không có adapter rời) |
| Installed RAM in MB (comma thousands separator) | Dung lượng RAM đã cài đặt tính bằng MB (dấu phân tách hàng nghìn bằng dấu phẩy) |
| Antivirus product name (Windows Defender, third-party AV) | Tên sản phẩm diệt virus (Windows Defender, phần mềm AV bên thứ ba) |
| File-exfiltration count self-reported by the stealer (`Files Stolen:`) | Số lượng tệp đã đưa dữ liệu ra ngoài do chính mã độc đánh cắp thông tin tự báo cáo (`Files Stolen:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the four line-prefix anchors
`PC Name:`, `Desktop Name:`, `Files Stolen:`, and
`Public IP:` all present in the same body. The
`Desktop Name:` + `Files Stolen:` pair is itself rare
enough that this triplet-plus-one cannot collide with
any other cataloged format fingerprint. During
triage, the `Files Stolen:` value is a useful sanity
check: values much lower than a typical Documents /
Desktop harvest (single digits) suggest a targeted
grab or a quick-exit run, while values in the hundreds
suggest a full walk of the user profile. The
`Windows Version:` tail with an empty edition slot
suggests the panel builder queries a Windows edition
API path (registry `ProductName` or
`Get-ComputerInfo`) that failed silently on the
observed victim - a diagnostic worth carrying into
any future variants of this panel.

### Tiếng Việt

Việc nhận diện dấu vết đòi hỏi bốn mốc tiền tố dòng `PC Name:`, `Desktop Name:`, `Files Stolen:` và `Public IP:` đều xuất hiện trong cùng một phần thân. Bản thân cặp `Desktop Name:` + `Files Stolen:` đã đủ hiếm để bộ ba-cộng-một này không thể trùng lặp với bất kỳ dấu hiệu nhận diện định dạng nào khác đã được lập danh mục. Trong quá trình phân loại, giá trị `Files Stolen:` là một điểm kiểm tra hữu ích: giá trị thấp hơn nhiều so với mức thu thập Documents / Desktop điển hình (hàng đơn vị) gợi ý một lần thu thập có chủ đích hoặc một lần chạy kết thúc sớm, trong khi giá trị hàng trăm gợi ý một lượt quét toàn bộ hồ sơ người dùng. Phần đuôi `Windows Version:` với ô ấn bản trống cho thấy bên xây dựng panel truy vấn một đường dẫn API ấn bản Windows (registry `ProductName` hoặc `Get-ComputerInfo`) đã thất bại âm thầm trên nạn nhân được quan sát - đây là một dấu hiệu chẩn đoán đáng lưu ý cho các biến thể tương lai của panel này.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- [CSStartBuildInfoStealer](../cs-start-build-info-stealer/)
- [CSExePathInfoStealer](../cs-exe-path-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
