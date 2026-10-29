# CSDarkSideCloudStealer

## Overview / Tổng quan

### English

CSDarkSideCloudStealer is a CyStack-coined identifier for a
`DARKSIDE PRIVATE CLOUD` aggregator wrap observed inside
`@ft7links-vidar` packs. The panel encloses an ASCII-art
`Darkside` banner between `===DARKSIDE_BRAND_BEGIN===` and
`===DARKSIDE_BRAND_END===` delimiter lines, advertises a
tiered subscription model (BUDGET $100, PREMIUM $200, GOLD
$300), and embeds the channel handle
`https://t.me/+abRpT5eRHCplNzIy`. Body shape is heavily-stripped Redline-canonical key naming (`AV:`, `User Name:`,
`Display Resolution:`).

### Tiếng Việt

CSDarkSideCloudStealer là định danh do CyStack đặt cho một lớp bọc trình tổng hợp `DARKSIDE PRIVATE CLOUD` được quan sát bên trong các gói `@ft7links-vidar`. Bảng điều khiển bao quanh một banner ASCII-art `Darkside` giữa các dòng phân tách `===DARKSIDE_BRAND_BEGIN===` và `===DARKSIDE_BRAND_END===`, quảng cáo mô hình đăng ký theo cấp (BUDGET 100 USD, PREMIUM 200 USD, GOLD 300 USD), và nhúng tên kênh `https://t.me/+abRpT5eRHCplNzIy`. Cấu trúc dữ liệu phần thân sử dụng cách đặt tên khóa theo chuẩn Redline đã bị lược bỏ mạnh (`AV:`, `User Name:`, `Display Resolution:`).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `DARKSIDE PRIVATE CLOUD`, `darkside linklogs`, `DarkSide Cloud`
- Variants observed: **4**
- CyStack observations represented: **4**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The 28-character `===DARKSIDE_BRAND_BEGIN===` delimiter is
the cleanest trigger; no other format in this catalog uses it. Pair with at least one Redline-canonical body field
(`User Name:` or `Display Resolution:`) to distinguish banner-only README artefacts the panel may also emit.
Note: unrelated to the Russia-affiliated DarkSide ransomware
operation (Colonial Pipeline, May 2021); naming collision
is incidental.

### Tiếng Việt

Dòng phân tách `===DARKSIDE_BRAND_BEGIN===` dài 28 ký tự là dấu hiệu kích hoạt rõ ràng nhất; không có định dạng nào khác trong danh mục này sử dụng nó. Kết hợp với ít nhất một trường phần thân theo chuẩn Redline (`User Name:` hoặc `Display Resolution:`) để phân biệt với các dấu vết README chỉ chứa banner mà bảng điều khiển này cũng có thể tạo ra. Lưu ý: không liên quan đến chiến dịch mã độc tống tiền DarkSide có liên hệ với Nga (Colonial Pipeline, tháng 5/2021); việc trùng tên chỉ là ngẫu nhiên.

## Observed log variants

### `v_1eab99ee6efb286013fa92719c5eecb3`

- Format ID: `cs-darkside-cloud-stealer`
- Observed filenames: `pc_info.txt`
- Panel brand: `DARKSIDE PRIVATE CLOUD`
- Distribution channel: `t.me/+abRpT5eRHCplNzIy`
- Attribution confidence: **high**
- Layout: `razertop-pc-info`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_1eab99ee6efb286013fa92719c5eecb3/pc_info.txt)
- Sample SHA-256: `e703a82ef4c9e457daa7c823f460326f5c5576d4c04022c465cc2b4fdc3f817b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `DARKSIDE PRIVATE CLOUD`
- Field labels: `A Join`, `Arch`, `C O Gold Channel`, `City`, `Country`, `CpuCores`, `D C Budget Channel`, `Domain`, `E L Premium Channel`, `GPU`, `Hwid`, `Ip`, `K TIERS (monthly`, `L U Join`, `LocalTime`, `O D Join`, `Os`, `PcName`, `RAM`, `ScreenSize`, `U Join`, `UserName`, `ZipCode`

### `v_41fcd53373cc7b29f886b62f0825807a`

- Format ID: `cs-darkside-cloud-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: `DARKSIDE PRIVATE CLOUD`
- Distribution channel: `t.me/+abRpT5eRHCplNzIy`
- Attribution confidence: **high**
- Layout: `cryptogol-full-fields`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_41fcd53373cc7b29f886b62f0825807a/System_Info.txt)
- Sample SHA-256: `79ddbdc646886fe2dfc09a9d42719f44e6a22b6152bffb09a5c48d25e1144d63`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `DARKSIDE PRIVATE CLOUD`
- Field labels: `A Join`, `C O Gold Channel`, `Computer Name`, `Cores`, `Country`, `D C Budget Channel`, `Date`, `Display Resolution`, `E L Premium Channel`, `GUID`, `HWID`, `IP`, `K TIERS (monthly`, `L U Join`, `MachineID`, `O D Join`, `Path`, `Processor`, `RAM`, `Threads`, `Time`, `U Join`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

### `v_d0c06343b0ca484c1792e85d07834f2f`

- Format ID: `cs-darkside-cloud-stealer`
- Observed filenames: `information.txt`
- Panel brand: `DARKSIDE PRIVATE CLOUD`
- Distribution channel: `t.me/+abRpT5eRHCplNzIy`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d0c06343b0ca484c1792e85d07834f2f/information.txt)
- Sample SHA-256: `e6fc14c13c89a047727b9d90f06993a838b09875af476b2803000adb7d76cd91`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Hardware]`, `[Processes]`, `[Software]`, `DARKSIDE PRIVATE CLOUD`
- Field labels: `A Join`, `C O Gold Channel`, `Computer Name`, `Cores`, `Country`, `D C Budget Channel`, `Date`, `Display Resolution`, `E L Premium Channel`, `GUID`, `HWID`, `IP`, `K TIERS (monthly`, `L U Join`, `Local Time`, `MachineID`, `O D Join`, `Path`, `Processor`, `RAM`, `Threads`, `U Join`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

### `v_d2b59235f3cc35ad3b3da3f2b658998b`

- Format ID: `cs-darkside-cloud-stealer`
- Observed filenames: `information.txt`
- Panel brand: `DARKSIDE PRIVATE CLOUD`
- Distribution channel: `t.me/+abRpT5eRHCplNzIy`
- Attribution confidence: **high**
- Layout: `stripped-redline`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d2b59235f3cc35ad3b3da3f2b658998b/information.txt)
- Sample SHA-256: `cd624103b346b7f1526fb011ddd386415c584df7cf1795331501293233a798a4`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `DARKSIDE PRIVATE CLOUD`
- Field labels: `A Join`, `AV`, `C O Gold Channel`, `Computer Name`, `Cores`, `D C Budget Channel`, `Display Resolution`, `E L Premium Channel`, `HWID`, `K TIERS (monthly`, `Keyboard Languages`, `L U Join`, `Local Time`, `O D Join`, `Path`, `Processor`, `RAM`, `Threads`, `TimeZone`, `U Join`, `User Name`, `Windows`, `Work Dir`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Redline](../redline/)
- [Vidar](../vidar/)

## Observed distribution channels

- <https://t.me/+abRpT5eRHCplNzIy>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
