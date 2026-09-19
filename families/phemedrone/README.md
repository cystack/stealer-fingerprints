# Phemedrone

## Overview / Tổng quan

### English

Phemedrone Stealer is an open-source .NET info-stealer first
surfaced in August 2023 at
`github.com/nullixx/Phemedrone-Stealer`. Public research
documented its use in a CVE-2023-36025 Windows SmartScreen
bypass campaign in January 2024, with detailed technical
analyses following. Public malware databases track the family
under `win.phemedrone_stealer` and list Ov3r_Stealer as an
alias. Forks include VGS Stealer and its successor Arcane
(publicly documented in March 2025).

The on-victim panel is a plain-text `Information.txt` with
three dashed-section headers spelled `----- Geolocation Data -----`, `----- Hardware Info -----`, and `----- Miscellaneous -----`. Fields under each header use a column-aligned `Key:`
plus multi-space plus value shape. The Geolocation block ships
IP, Country (name plus alpha-2 code), City, Postal, and MAC.
The Hardware block ships Username (as `<user>\<hostname>`, the
reverse of the Windows `USERDOMAIN\USER` order), Windows name,
Hardware ID (32-hex MachineGuid hash), GPU, CPU, and RAM. The
Miscellaneous block ships Antivirus products (comma-separated
from the WMI SecurityCenter2 query), File Location (usually
`C:\Users\<user>\Downloads\Build.exe`), and Clipboard text.
Treat the Clipboard text field as unreliable for family
attribution: it captures whatever was on the victim clipboard
at exfil time, including coincidental strings that mention
other stealers' names.

### Tiếng Việt

Phemedrone Stealer là một mã độc đánh cắp thông tin viết bằng .NET, mã nguồn mở, xuất hiện lần đầu vào tháng 8/2023 tại `github.com/nullixx/Phemedrone-Stealer`. Các nghiên cứu công khai đã ghi nhận việc mã độc này được sử dụng trong một chiến dịch khai thác lỗ hổng CVE-2023-36025 nhằm vượt qua Windows SmartScreen vào tháng 1/2024, kèm theo các phân tích kỹ thuật chi tiết sau đó. Các cơ sở dữ liệu mã độc công khai theo dõi họ mã độc này dưới tên `win.phemedrone_stealer` và liệt kê Ov3r_Stealer như một bí danh. Các bản fork bao gồm VGS Stealer và phiên bản kế thừa Arcane (được công bố công khai vào tháng 3/2025).

Bảng điều khiển trên máy nạn nhân là một `Information.txt` dạng văn bản thuần với ba tiêu đề mục có gạch ngang được đặt tên là `----- Geolocation Data -----`, `----- Hardware Info -----`, và `----- Miscellaneous -----`. Các trường dữ liệu dưới mỗi tiêu đề sử dụng cấu trúc dữ liệu gồm `Key:` được căn cột, cộng với nhiều khoảng trắng, cộng với giá trị. Khối Geolocation chứa IP, Country (tên quốc gia kèm mã alpha-2), City, Postal, và MAC. Khối Hardware chứa Username (dưới dạng `<user>\<hostname>`, ngược với thứ tự `USERDOMAIN\USER` của Windows), Windows name, Hardware ID (mã băm MachineGuid 32 ký tự hex), GPU, CPU, và RAM. Khối Miscellaneous chứa các sản phẩm diệt virus (phân tách bằng dấu phẩy, lấy từ truy vấn WMI SecurityCenter2), File Location (thường là `C:\Users\<user>\Downloads\Build.exe`), và nội dung Clipboard. Cần coi trường nội dung Clipboard là không đáng tin cậy cho mục đích quy kết họ mã độc: trường này ghi lại bất kỳ nội dung nào có trên clipboard của nạn nhân tại thời điểm đưa dữ liệu ra ngoài, bao gồm cả các chuỗi trùng hợp ngẫu nhiên có nhắc đến tên của các mã độc đánh cắp thông tin khác.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Phemedrone Stealer`, `Ov3r_Stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, credit cards | Thông tin xác thực, cookie, dữ liệu tự động điền, thẻ tín dụng được lưu trong trình duyệt |
| Crypto wallet browser extensions and desktop clients | Tiện ích mở rộng trình duyệt và ứng dụng desktop của ví tiền mã hóa |
| Discord, Telegram, Steam session data | Dữ liệu phiên của Discord, Telegram, Steam |
| Filezilla / VPN / gaming client configs | Cấu hình của Filezilla / VPN / ứng dụng gaming |
| Clipboard content at time of execution | Nội dung clipboard tại thời điểm thực thi |
| System hardware and geolocation inventory | Thông tin phần cứng hệ thống và vị trí địa lý |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires all three dashed section headers
(`----- Geolocation Data -----`,
`----- Hardware Info -----`,
`----- Miscellaneous -----`) line-anchored. The triple
anchor is unique to Phemedrone across this catalog: Arcane
uses triple-dash `---User Info---` / `---Full Pc Info---`
with no spaces around the section name, and canonical bracket-section formats such as Aura and Vidar use `[Section]`
square brackets. During triage, corroborate the profile with a sibling `moi.jpg` selfie screenshot and a `passwords.txt` file opening with `PASSWORDS FROM: <browser path>`. Clipboard content in the Miscellaneous block
sometimes carries other stealers' banners as unrelated
strings the victim happened to copy; do not use that field
to reassign family attribution.

### Tiếng Việt

Việc nhận diện dấu hiệu đặc trưng yêu cầu cả ba tiêu đề mục có gạch ngang (`----- Geolocation Data -----`, `----- Hardware Info -----`, `----- Miscellaneous -----`) phải nằm ở đầu dòng. Bộ ba neo nhận diện này là duy nhất của Phemedrone trong toàn bộ danh mục: Arcane sử dụng ba dấu gạch ngang `---User Info---` / `---Full Pc Info---` không có khoảng trắng quanh tên mục, còn các định dạng mục theo dấu ngoặc vuông chuẩn như Aura và Vidar sử dụng dấu ngoặc vuông `[Section]`. Trong quá trình phân loại ban đầu, nên đối chiếu hồ sơ này với một ảnh chụp màn hình selfie `moi.jpg` liên quan và một tệp `passwords.txt` mở đầu bằng `PASSWORDS FROM: <browser path>`. Nội dung Clipboard trong khối Miscellaneous đôi khi chứa banner của các mã độc đánh cắp thông tin khác dưới dạng các chuỗi không liên quan mà nạn nhân tình cờ sao chép; không được dùng trường này để quy kết lại họ mã độc.

## Observed log variants

### `v_27575f82d15a13014153061521971801`

- Format ID: `phemedrone`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_27575f82d15a13014153061521971801/Information.txt)
- Sample SHA-256: `44ef369f66b7126502d0b2635f7b326206430d514de59dccd19f37b6db69956c`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `88888888888 Custom Stealer`, ``Y888Y' improved and configured by @snyuw`
- Field labels: ``Y' Tag`, ``Y8888888Y' 04/07/2026 00`, `Antivirus products`, `AutoFills`, `Battery`, `City`, `Clipboard text`, `Cookies`, `Country`, `CPU`, `Credit Cards`, `Detected Tags`, `Extensions`, `File Location`, `Files`, `Gaming`, `GPU`, `Hardware ID`, `IP`, `MAC`, `Passwords`, `Postal`, `RAM`, `Screen Resolution`, `Uptime`, `Username`, `Wallets`, `Windows name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |

## Related catalog profiles

- [Arcane](../arcane/)

## Related external families

- `vgs-stealer`

## Sources

- <https://www.trendmicro.com/en_us/research/24/a/cve-2023-36025-exploited-for-defense-evasion-in-phemedrone-steal.html>
- <https://www.splunk.com/en_us/blog/security/unveiling-phemedrone-stealer-threat-analysis-and-detections.html>
- <https://spycloud.com/blog/phemedrone-stealer/>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.phemedrone_stealer>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
