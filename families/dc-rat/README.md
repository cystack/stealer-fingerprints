# DCRat

## Overview / Tổng quan

### English

DCRat (Dark Crystal RAT, DarkCrystal RAT) is a .NET-based
remote access trojan plus info-stealer that has been sold as
malware-as-a-service since at least 2019. Public trackers list
the family under the canonical literal DCRat. CERT-UA has
flagged DCRat campaigns against Ukrainian defense and
government targets, attributed to Russia-aligned operators
(Sandworm plus other clusters).

The harvested log opens with a five-line Figlet `small`- font
ASCII-art banner spelling `Dark Crystal RAT`, then a
horizontal-rule line of em-dashes, then four flat `Key: Value`
blocks separated by blank lines. The first block carries WMI
hardware enumeration including `PC Name`, `User Name`,
`Windows` version, `CPU Name`, `CPU Cores` (with parenthesised
logical-thread count), `GPU Name`, `GPU Mode` (WxH x
color-depth triple), `Motherboard` (Win32_BaseBoard SMBIOS
string), `BIOS` (Win32_BIOS string), `Antivirus`, `Firewall`,
`RAM` (locale-aware comma decimal), and `LANIP`. The second
block reports the .NET Framework version and the install path
(DCRat typically masquerades as a fake system service binary,
for example `fontdrvhost.exe` under a typo-squatted
`MsHyperserverBrokersvc` folder). The third block is
geolocation (`IP`, `City`, `Country` as `CC / Name`,
`Location` as latitude / longitude). The tail reports the
monitor list and `Save Time` in `DD.MM.YYYY HH:MM` European
format.

### Tiếng Việt

DCRat (Dark Crystal RAT, DarkCrystal RAT) là một mã độc điều khiển từ xa (RAT) dựa trên nền tảng .NET kết hợp mã độc đánh cắp thông tin, được rao bán dưới dạng malware-as-a-service ít nhất từ năm 2019. Các hệ thống theo dõi công khai liệt kê họ mã độc này dưới tên định danh chuẩn DCRat. CERT-UA đã ghi nhận các chiến dịch DCRat nhắm vào mục tiêu quốc phòng và chính phủ Ukraine, được quy kết cho các đối tượng vận hành liên kết với Nga (Sandworm cùng các cụm khác).

Bản ghi thu thập được mở đầu bằng banner ASCII-art Figlet 5 dòng phông chữ `small` đánh vần `Dark Crystal RAT`, tiếp theo là một dòng kẻ ngang bằng dấu gạch dài, rồi đến bốn khối phẳng `Key: Value` ngăn cách nhau bằng dòng trống. Khối đầu tiên chứa dữ liệu liệt kê phần cứng qua WMI bao gồm `PC Name`, `User Name`, phiên bản `Windows`, `CPU Name`, `CPU Cores` (kèm số luồng logic trong ngoặc đơn), `GPU Name`, `GPU Mode` (bộ ba chiều rộng x chiều cao x độ sâu màu), `Motherboard` (chuỗi SMBIOS của Win32_BaseBoard), `BIOS` (chuỗi Win32_BIOS), `Antivirus`, `Firewall`, `RAM` (dấu phẩy thập phân theo ngôn ngữ hệ thống), và `LANIP`. Khối thứ hai báo cáo phiên bản .NET Framework và đường dẫn cài đặt (DCRat thường giả dạng một tệp nhị phân dịch vụ hệ thống giả, ví dụ `fontdrvhost.exe` nằm trong thư mục `MsHyperserverBrokersvc` đánh lừa bằng lỗi chính tả tên thư mục thật). Khối thứ ba là dữ liệu định vị địa lý (`IP`, `City`, `Country` dưới dạng `CC / Name`, `Location` là vĩ độ/kinh độ). Phần cuối báo cáo danh sách màn hình và `Save Time` theo định dạng châu Âu `DD.MM.YYYY HH:MM`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Dark Crystal RAT`, `DarkCrystal RAT`, `dcRAT`
- Variants observed: **1**
- CyStack observations represented: **177**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (plugin modules: Plugin_AutoStealer) | Thông tin xác thực và cookie đã lưu trong trình duyệt (các mô-đun plugin: Plugin_AutoStealer) |
| Keystroke capture (Plugin_AutoKeylogger) | Ghi lại thao tác bàn phím (Plugin_AutoKeylogger) |
| Clipboard contents | Nội dung clipboard |
| Remote shell command execution | Thực thi lệnh shell từ xa |
| WMI-enumerated machine fingerprint (motherboard, BIOS, monitors) | Dấu vết nhận diện máy thu thập qua WMI (bo mạch chủ, BIOS, màn hình) |
| Installed antivirus and firewall product detection | Phát hiện phần mềm diệt virus và tường lửa đã cài đặt |

## Detection notes / Ghi chú nhận diện

### English

The Figlet `small`-font `Dark Crystal RAT` ASCII banner is the
cleanest fingerprint. CyStack Threat Intelligence uses the same banner literal as the
primary structural anchor, keeping family attribution consistent
across collection and analysis. The .NET / WMI enumeration profile plus the
`MsHyperserverBrokersvc` style fake-service install path is
the secondary confidence signal. Public analyses note plugin
identifiers like `DCRatBuild`, `DCStlr`, `Plugin_AutoStealer`,
and `Plugin_AutoKeylogger` in the binary; defenders triaging a
victim host should hunt for those strings in process memory or
on disk to confirm the family.

### Tiếng Việt

Banner ASCII Figlet phông chữ `small` `Dark Crystal RAT` là dấu hiệu nhận diện rõ ràng nhất. CyStack Threat Intelligence sử dụng cùng chuỗi banner này làm điểm neo cấu trúc chính, giúp việc quy kết họ mã độc nhất quán xuyên suốt quá trình thu thập và phân tích. Cấu trúc dữ liệu liệt kê .NET / WMI cùng đường dẫn cài đặt giả dạng dịch vụ kiểu `MsHyperserverBrokersvc` là tín hiệu tin cậy thứ cấp. Các phân tích công khai ghi nhận các định danh plugin như `DCRatBuild`, `DCStlr`, `Plugin_AutoStealer`, và `Plugin_AutoKeylogger` trong tệp nhị phân; đội ngũ ứng phó khi rà soát một máy nạn nhân nên tìm kiếm các chuỗi này trong bộ nhớ tiến trình hoặc trên đĩa để xác nhận họ mã độc.

## Observed log variants

### `v_c05affb578cdd7ad283bd765c0f9cc1c`

- Format ID: `dcrat`
- Observed filenames: `Information [ID].txt`, `Information [IN].txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `gpu-mode`
- Historical records represented: **177**
- Representative sample: [open sample](samples/v_c05affb578cdd7ad283bd765c0f9cc1c/sample.txt)
- Sample SHA-256: `80541f90621ee53219173218c227126bbe60ecf769d3369b2a0ced1b8af26355`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `/ __\|_`, `/_\_   _\|`
- Field labels: `.NET Framework Version`, `GPU Mode`, `LANIP`, `PC Name`, `Save Time`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1056.001](https://attack.mitre.org/techniques/T1056/001/) | Keylogging | Ghi lại phím bấm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery | Dò tìm tệp và thư mục |
| [T1071.001](https://attack.mitre.org/techniques/T1071/001/) | Application Layer Protocol: Web Protocols | Giao thức tầng ứng dụng: giao thức web |
| [T1218](https://attack.mitre.org/techniques/T1218/) | System Binary Proxy Execution | Thực thi gián tiếp qua tệp nhị phân hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- <https://cloud.google.com/blog/topics/threat-intelligence/analyzing-dark-crystal-rat-backdoor>
- <https://www.splunk.com/en_us/blog/security/dark-crystal-rat-agent-deep-dive.html>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.dcrat>
- <https://any.run/malware-trends/dcrat/>
- <https://thehackernews.com/2025/03/cert-ua-warns-dark-crystal-rat-targets.html>

Machine-readable record: [family.json](family.json)
