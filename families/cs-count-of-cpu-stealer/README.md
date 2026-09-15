# CSCountOfCpuStealer

## Overview / Tổng quan

### English

CSCountOfCpuStealer is a CyStack-coined identifier for a
Python-shaped `UserInformation.txt` panel observed inside
`<MONTH DAY> - <count> LOGS.part<N>.rar` aggregator packs
at `<30-char alphanum>-XT/UserInformation.txt` victim
folders. The body is a flat `Key: Value` block split into
an identity header (`Timezone:`, `Time:`, `Username:`,
`PC Name:`, `OS:`, `HWID:`), a hardware-identifier block
(`BIOS Serial Number:`, `Machine GUID:`, `BaseBoard Manufacturer:`), a `Network:` section with ipapi.co-style
geolocation (`IP:`, `Country:`, `Region:`, `City:`,
`Postal:`), a `Hardwares:` section (`CPU:`, `Count of CPU cores:`, `Count of CPU threads:`, `GPU:`, `Screen Resolution:`), and a bare RAM triple (`RAM:`, `RAM Available:`, `RAM Used:`).

Multiple details in the format read as hand-rolled Python
rather than a compiled C# or NodeJS panel. `Time:` is
written in `time.asctime()` shape (`Sun Dec 17 11:24:02 2023`). `Timezone:` uses the Olson (IANA) form
(`Africa/Accra`) that `zoneinfo` / `time.tzname` return.
`Postal: None` writes the Python `None` literal verbatim
when the ipapi.co lookup returns no postal code. The
verbose `Count of CPU cores:` and `Count of CPU threads:`
keys read like an f-string that composed the label from a
`psutil.cpu_count(logical=False)` / `psutil.cpu_count()`
call. `RAM:` values use `X.XX GB` decimal-GB units, not
the `MB` or `bytes` shapes canonical C# panels emit.

Family attribution is provisional pending a published
threat-intel mapping for this exact caption format.
Curated CTI vendors (TrendMicro, SentinelOne Labs,
Kaspersky SecureList, Cyfirma, SOCRadar, Cloudflare
Cloudforce One, Talos, Unit 42, Microsoft TI, Mandiant,
Recorded Future, eSentire, ANY.RUN) and community
catalogues (MalBeacon what-is-this-stealer, deepdarkCTI,
Malpedia, lexfo/stealer-parser, thredb/sysinfo-parser)
do not document this exact `Count of CPU cores:` +
`Postal: None` combination. The closest Python-hand-rolled candidates surveyed (Blank Grabber, XillenStealer,
Inf0s3c) either use a different filename
(`Information.txt`), a different banner (`<name> got a new victim:`), or different field vocabulary (`Computer Name:` + `Total Memory:` + `UUID:` rather than `PC Name:`
+ `RAM:` + `HWID:` + `Machine GUID:`).

### Tiếng Việt

CSCountOfCpuStealer là định danh do CyStack đặt cho một bảng thông tin (panel) dạng Python `UserInformation.txt` được phát hiện bên trong các gói tổng hợp `<MONTH DAY> - <count> LOGS.part<N>.rar` tại các thư mục nạn nhân `<30-char alphanum>-XT/UserInformation.txt`. Nội dung là một khối `Key: Value` phẳng được chia thành phần đầu định danh (`Timezone:`, `Time:`, `Username:`, `PC Name:`, `OS:`, `HWID:`), khối định danh phần cứng (`BIOS Serial Number:`, `Machine GUID:`, `BaseBoard Manufacturer:`), phần `Network:` chứa dữ liệu định vị địa lý kiểu ipapi.co (`IP:`, `Country:`, `Region:`, `City:`, `Postal:`), phần `Hardwares:` (`CPU:`, `Count of CPU cores:`, `Count of CPU threads:`, `GPU:`, `Screen Resolution:`), và một bộ ba RAM trần (`RAM:`, `RAM Available:`, `RAM Used:`).

Nhiều chi tiết trong định dạng này cho thấy đây là mã Python viết tay thay vì một panel C# hoặc NodeJS được biên dịch. `Time:` được viết theo cấu trúc dữ liệu `time.asctime()` (`Sun Dec 17 11:24:02 2023`). `Timezone:` sử dụng dạng Olson (IANA) (`Africa/Accra`) mà `zoneinfo` / `time.tzname` trả về. `Postal: None` ghi nguyên văn giá trị literal Python `None` khi truy vấn ipapi.co không trả về mã bưu chính. Các khóa đầy đủ `Count of CPU cores:` và `Count of CPU threads:` đọc giống như một f-string ghép nhãn từ lệnh gọi `psutil.cpu_count(logical=False)` / `psutil.cpu_count()`. Các giá trị `RAM:` sử dụng đơn vị GB thập phân `X.XX GB`, không theo cấu trúc dữ liệu `MB` hoặc `bytes` mà các panel C# chuẩn tạo dữ liệu đầu ra.

Việc quy kết họ mã độc hiện vẫn là tạm thời, chờ có tài liệu tình báo mối đe dọa công bố ánh xạ chính xác cho định dạng caption này. Các nhà cung cấp CTI đã được tuyển chọn (TrendMicro, SentinelOne Labs, Kaspersky SecureList, Cyfirma, SOCRadar, Cloudflare Cloudforce One, Talos, Unit 42, Microsoft TI, Mandiant, Recorded Future, eSentire, ANY.RUN) và các danh mục cộng đồng (MalBeacon what-is-this-stealer, deepdarkCTI, Malpedia, lexfo/stealer-parser, thredb/sysinfo-parser) đều không ghi nhận đúng tổ hợp `Count of CPU cores:` + `Postal: None` này. Các ứng viên Python viết tay gần nhất được khảo sát (Blank Grabber, XillenStealer, Inf0s3c) đều dùng tên tệp khác (`Information.txt`), banner khác (`<name> got a new victim:`), hoặc từ vựng trường dữ liệu khác (`Computer Name:` + `Total Memory:` + `UUID:` thay vì `PC Name:` + `RAM:` + `HWID:` + `Machine GUID:`).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `LOGS-pack Python-shaped UserInformation panel`, `Count-of-CPU verbose-key UserInformation panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (harvested in sibling files) | Thông tin xác thực và cookie đã lưu trong trình duyệt (được thu thập trong các tệp liên quan) |
| Host and hardware fingerprint (HWID, Machine GUID, BIOS Serial, BaseBoard Manufacturer) | Dấu vết nhận diện máy và phần cứng (HWID, Machine GUID, BIOS Serial, BaseBoard Manufacturer) |
| Public IP and coarse geolocation (country, region, city, postal) | Địa chỉ IP công khai và vị trí địa lý ở mức thô (quốc gia, khu vực, thành phố, mã bưu chính) |
| Locale and OS build (timezone, Windows version) | Ngôn ngữ vùng và phiên bản hệ điều hành (múi giờ, phiên bản Windows) |
| CPU, GPU, screen resolution, and RAM inventory | Danh sách kiểm kê CPU, GPU, độ phân giải màn hình và RAM |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires both line-anchored keys `Count of CPU cores:` and `Count of CPU threads:`. The verbose
`Count of` key prefix is unique in the catalog:
canonical Lumma uses `- CPU Cores:` / `- CPU Threads:`
with the dash bullet, DataMonk uses bare `CPU Cores:` /
`CPU Threads:`, CSCountCoreStealer uses the transposed
singular `Count Core:`, the user-info bracket template uses
`Logical Cores:`, and Redline uses the WMI
`Name: Intel(R) ..., N Cores`
shape. False-positive risk is low. Treat the family
attribution as unknown during triage: the panel is
clearly Python-hand-rolled per the `Postal: None`
literal and the ipapi.co geolocation triple, but no
public writeup maps this caption to a named family.
Downstream consumers can filter on the `CSCountOfCpu Stealer` family literal to segregate the discovery.

### Tiếng Việt

Dấu vết nhận diện yêu cầu cả hai khóa cố định vị trí dòng `Count of CPU cores:` và `Count of CPU threads:`. Tiền tố khóa đầy đủ `Count of` là duy nhất trong danh mục: Lumma chuẩn sử dụng `- CPU Cores:` / `- CPU Threads:` kèm ký hiệu gạch đầu dòng, DataMonk sử dụng `CPU Cores:` / `CPU Threads:` trần, CSCountCoreStealer sử dụng dạng số ít đảo vị `Count Core:`, mẫu ngoặc thông tin người dùng sử dụng `Logical Cores:`, và Redline sử dụng cấu trúc dữ liệu WMI `Name: Intel(R) ..., N Cores`. Rủi ro dương tính giả ở mức thấp. Trong quá trình phân loại ban đầu (triage), nên xem việc quy kết họ mã độc là chưa xác định: panel này rõ ràng là mã Python viết tay dựa trên literal `Postal: None` và bộ ba dữ liệu định vị địa lý ipapi.co, nhưng chưa có bài viết công khai nào ánh xạ caption này với một họ mã độc có tên cụ thể. Các bên tiêu thụ dữ liệu ở hạ nguồn có thể lọc theo literal họ mã độc `CSCountOfCpu Stealer` để tách riêng phát hiện này.

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

## Related catalog profiles

- [Blank Grabber](../blank-grabber/)

## Related external families

- `xillenstealer`
- `inf0s3c-stealer`

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://blog.lexfo.fr/infostealer-parser.html>
- <https://github.com/thredb/sysinfo-parser>
- <https://cyble.com/blog/lummac2-stealer-a-potent-threat-to-crypto-users/>

Machine-readable record: [family.json](family.json)
