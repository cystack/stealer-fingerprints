# CSForzaTrafficStealer

## Overview / Tổng quan

### English

CSForzaTrafficStealer is a CyStack tracking name for an
observed `Info.txt` layout. The retained body identifies
`CLÓUD CHANNEL - @forza_traffic` and
`SUPPORT - @ez_sources`; its archive provenance carries the
separate `@FORZATRAFFICx` handle in
`MIX_LOGS_<NNNN>_BONUS_UPDATE_@FORZATRAFFICx_<Month>_<YYYY>_part<N>.rar` packs. These labels establish
distribution provenance, not a canonical malware-family
attribution.

After the banner, the device-information block shares a
verbose bare `Key: Value` vocabulary with
`CSRoyCloudInfoStealer` and `CSSigInfoStealer`. Stable fields
cover build and execution context, privilege state, host and
user identity, OS and language, install and system time,
antivirus, HWID, CPU, GPU, RAM, and display resolution.

The observed body has neither the `(sig:UNIX.HEX)` footer of
`CSSigInfoStealer` nor the `RÔýĆløud` wrapper of
`CSRoyCloudInfoStealer`. Its `<CC>_<32-hex>/Info.txt` folder
name contains a country-code token and an opaque identifier,
not an IP address or timestamp. Log time is derived from the
`System Date` and `Time Zone` body fields; IP and country stay
unset unless explicit fields are present.

No defensible public mapping currently ties this exact layout
to a canonical builder, so attribution remains a CyStack
tracking name.

### Tiếng Việt

CSForzaTrafficStealer là định danh theo dõi do CyStack đặt cho một định dạng `Info.txt` đã được quan sát. Mẫu đại diện có biểu ngữ `CLÓUD CHANNEL - @forza_traffic` và `SUPPORT - @ez_sources`; đường dẫn trong gói lưu trữ mang thêm tên tài khoản `@FORZATRAFFICx` ở các gói `MIX_LOGS_<NNNN>_BONUS_UPDATE_@FORZATRAFFICx_<Month>_<YYYY>_part<N>.rar`. Những nhãn này chỉ phản ánh nguồn phân phối, không phải tên một họ mã độc đã được quy kết.

Sau biểu ngữ, khối thông tin thiết bị dùng tập trường `Key: Value` chi tiết tương tự `CSRoyCloudInfoStealer` và `CSSigInfoStealer`. Các trường ổn định mô tả bản dựng và ngữ cảnh thực thi, quyền của tiến trình, danh tính máy và người dùng, hệ điều hành và ngôn ngữ, thời gian cài đặt và thời gian hệ thống, phần mềm diệt virus, HWID, CPU, GPU, RAM và độ phân giải màn hình.

Mẫu được quan sát không có phần cuối `(sig:UNIX.HEX)` của `CSSigInfoStealer` và cũng không có biểu ngữ `RÔýĆløud` của `CSRoyCloudInfoStealer`. Tên thư mục `<CC>_<32-hex>/Info.txt` chứa mã quốc gia và một định danh chưa xác định ý nghĩa; nó không chứa địa chỉ IP hay dấu thời gian. Thời gian ghi log được suy ra từ hai trường `System Date` và `Time Zone`; IP và quốc gia được để trống nếu nội dung không có trường tương ứng.

Hiện chưa có ánh xạ công khai đủ tin cậy để liên hệ chính xác định dạng này với một bộ công cụ tạo mã độc cụ thể, vì vậy CyStack tiếp tục giữ định danh theo dõi riêng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@forza_traffic`, `@FORZATRAFFICx`, `@ez_sources`, `ForzaTraffic MIX LOGS`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host identity and operating-system metadata | Thông tin nhận dạng máy và hệ điều hành |
| CPU, GPU, RAM, and display inventory | Thông tin phần cứng: CPU, GPU, RAM và độ phân giải màn hình |
| Antivirus product and execution-path metadata | Sản phẩm diệt virus và đường dẫn thực thi |

## Detection notes / Ghi chú nhận diện

### English

Require the same line to contain
`CLÓUD CHANNEL - @forza_traffic` and
`SUPPORT - @ez_sources`, together with
line-anchored `Execution Path:` and `Installed RAM:` fields.
The `@FORZATRAFFICx` archive-path token corroborates observed
distribution but is not sufficient by itself. Do not
attribute the layout from the shared bare fields alone.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu `CLÓUD CHANNEL - @forza_traffic` và `SUPPORT - @ez_sources` xuất hiện trên cùng một dòng, đồng thời có các trường `Execution Path:` và `Installed RAM:` được neo ở đầu dòng. Chuỗi `@FORZATRAFFICx` trong đường dẫn gói lưu trữ giúp xác nhận nguồn phân phối đã quan sát, nhưng không đủ để nhận diện nếu đứng riêng. Không quy kết chỉ từ các trường khóa–giá trị dùng chung.

## Observed log variants

### `v_b69e0e2c91e37b3a9e78e1452a1fe542`

- Format ID: `cs-forzatraffic-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `@forza_traffic`
- Distribution channel: `@FORZATRAFFICx`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_b69e0e2c91e37b3a9e78e1452a1fe542/Info.txt)
- Sample SHA-256: `0d1d48d0eefa4e15994db2039cceafd04d15d7b11c57101cb7514ccf28c21e1d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `│ [ CLÓUD CHANNEL - @forza_traffic ] [ SUPPORT - @ez_sources ] │`
- Field labels: `Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `Install Date`, `Installed RAM`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time Zone`, `User Language`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery | Xác định ngôn ngữ hệ thống |

## Related catalog profiles

- [CSRoyCloudInfoStealer](../cs-roy-cloud-info-stealer/)
- [CSSigInfoStealer](../cs-sig-info-stealer/)

## Observed distribution channels

- <https://t.me/forza_traffic>
- <https://t.me/ez_sources>
- <https://t.me/FORZATRAFFICx>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
