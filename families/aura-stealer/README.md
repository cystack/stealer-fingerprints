# AuraStealer

## Overview / Tổng quan

### English

Aura Stealer (a.k.a. AuraStealer) is a C++ infostealer-as-a-service advertised on underground forums from July 2025 by the
threat actor AuraCorp. Subscription tiers ship a builder plus
a web panel that aggregates harvested logs. Antivirus
signatures catalogue it under the detection name
`Trojan:MSIL/AuraStealer.AUKB!MTB`; Public malware trackers
list it as `win.aurastealer`.

The on-wire exfil is JSON, GZIP-compressed and Base64-encoded
to the C2. The artifact documented here is the operator-facing panel render written as `System.txt` inside each per-victim folder. The render opens with an `AURA v<x.y.z>` build
banner, then a top block of identity fields (`HWID:`, the
`Launched at:` local/UTC pair, `Location:`, the elevation
flags), then four square-bracket sections in order: `[System Info]`, `[Hardware]`, `[Processes List]`, `[Installed Software]`. The `Location:` field carries the
process-hollowing target, usually
`C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\RegAsm.exe`
per the publicly documented injection chain.

### Tiếng Việt

Aura Stealer (còn gọi là AuraStealer) là mã độc đánh cắp thông tin dưới dạng dịch vụ (infostealer-as-a-service) viết bằng C++, được quảng cáo trên các diễn đàn ngầm từ tháng 7 năm 2025 bởi tác nhân đe dọa AuraCorp. Các gói đăng ký đi kèm một trình dựng (builder) cùng một bảng điều khiển web tổng hợp các nhật ký thu thập được. Các chữ ký diệt vi-rút phân loại mã độc này dưới tên nhận diện `Trojan:MSIL/AuraStealer.AUKB!MTB`; các công cụ theo dõi mã độc công khai liệt kê nó là `win.aurastealer`.

Dữ liệu đưa ra ngoài trên đường truyền là JSON, được nén GZIP và mã hóa Base64 gửi đến C2. Dấu vết được ghi lại ở đây là bản kết xuất bảng điều khiển dành cho đối tượng vận hành, được ghi dưới dạng `System.txt` bên trong mỗi thư mục theo từng nạn nhân. Bản kết xuất bắt đầu bằng một biểu ngữ bản dựng `AURA v<x.y.z>`, sau đó là một khối trường thông tin định danh ở trên cùng (`HWID:`, cặp giờ địa phương/UTC `Launched at:`, `Location:`, các cờ nâng quyền), rồi đến bốn phần trong dấu ngoặc vuông theo thứ tự: `[System Info]`, `[Hardware]`, `[Processes List]`, `[Installed Software]`. Trường `Location:` mang mục tiêu process hollowing, thường là `C:\\Windows\\Microsoft.NET\\Framework\\v4.0.30319\\RegAsm.exe` theo chuỗi tiêm mã được ghi nhận công khai.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Aura Stealer`, `AuraStealer`
- Variants observed: **1**
- CyStack observations represented: **3,537**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill (110+ browsers) | Thông tin xác thực, cookie, dữ liệu tự động điền được trình duyệt lưu (hơn 110 trình duyệt) |
| Crypto wallet extensions and desktop clients (250+ extensions) | Tiện ích mở rộng ví tiền mã hóa và ứng dụng ví trên máy tính (hơn 250 tiện ích mở rộng) |
| Authenticator and 2FA app data (70+ apps) | Dữ liệu ứng dụng xác thực và 2FA (hơn 70 ứng dụng) |
| System hardware and installed-software inventory | Kiểm kê phần cứng hệ thống và phần mềm đã cài đặt |

## Detection notes / Ghi chú nhận diện

### English

The line-anchored `AURA v<digits>` banner on the opening line
is the cleanest fingerprint and is the panel's own self-identifier. The `[System Info]` + `[Hardware]` + `[Processes List]` + `[Installed Software]` bracket-section quartet with
this exact spelling is unique to Aura. False-positive risk is
negligible: prose that quotes the banner phrase will fail the
bracket-section + `HWID:` guard.

When triaging a panel-render log, treat `Location:` ending in
`RegAsm.exe` as the injection-host signal. The on-wire JSON
transport is not represented by this artifact; pair host telemetry
on RegAsm.exe outbound HTTPS with the published Aura C2 domain
list.

### Tiếng Việt

Biểu ngữ `AURA v<digits>` neo theo dòng ở dòng mở đầu là dấu hiệu nhận diện rõ ràng nhất và cũng là chuỗi tự nhận diện của chính bảng điều khiển. Bộ bốn phần trong dấu ngoặc vuông `[System Info]` + `[Hardware]` + `[Processes List]` + `[Installed Software]` với chính tả chính xác này là đặc điểm riêng của Aura. Nguy cơ dương tính giả là không đáng kể: văn bản trích dẫn cụm biểu ngữ này sẽ không vượt qua bộ lọc phần trong ngoặc vuông + `HWID:`.

Khi phân loại một nhật ký kết xuất bảng điều khiển, hãy coi `Location:` kết thúc bằng `RegAsm.exe` là tín hiệu tiến trình đích bị chèn mã. Kênh truyền tải JSON trên đường truyền không được thể hiện qua dấu vết này; hãy kết hợp dữ liệu đo từ xa trên máy về lưu lượng HTTPS đi ra từ RegAsm.exe với danh sách tên miền C2 của Aura đã được công bố.

## Observed log variants

### `v_97204ede3c0a7a80adbe42a20d7509b3`

- Format ID: `aura-stealer`
- Observed filenames: `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **3,537**
- Representative sample: [open sample](samples/v_97204ede3c0a7a80adbe42a20d7509b3/sample.txt)
- Sample SHA-256: `30d64ac0e523bea150efddfa0d23068ef181f08d4d13250e20ba3b71dd1a7cc8`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Hardware]`, `[System Info]`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1055.012](https://attack.mitre.org/techniques/T1055/012/) | Process Hollowing | Process Hollowing (thay thế mã trong tiến trình) |

## Related catalog profiles

- [Lumma](../lumma/)

## Sources

- <https://www.microsoft.com/en-us/wdsi/threats/malware-encyclopedia-description?Name=Trojan:MSIL/AuraStealer.AUKB!MTB&ThreatID=2147957435>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.aurastealer>
- <https://www.gendigital.com/blog/insights/research/defeating-aurastealer-obfuscation>
- <https://www.intrinsec.com/en/analysis-of-aurastealer-an-emerging-infostealer/>

Machine-readable record: [family.json](family.json)
