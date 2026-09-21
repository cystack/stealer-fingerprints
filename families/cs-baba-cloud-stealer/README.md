# CSBabaCloudStealer

## Overview / Tổng quan

### English

CSBabaCloudStealer is a CyStack tracking name for a
Vidar-shaped `System_Info.txt` distributed by the
`@BabaCloud_New` Telegram channel operator. Victim folders
follow the shape `@BabaCloud_New {<seq>} [<CC>]_<IPv4>_ <HWID8>_<DDMMYYYY>_<HHMMSS>` and ship inside archives
named `@BabaCloudNew { <count> } Logs Cloud <DDMMYYYY>.rar`.

The body carries the Vidar-canonical identifier preamble
(`MachineID`, `GUID`, `HWID`, `Path`, `Work Dir`, `Windows`,
`Computer Name`, `User Name`, `Display Resolution`) plus the
Vidar-canonical five-field hardware tuple (`Processor`,
`Cores`, `Threads`, `RAM`, `VideoCard`) that public reporting
documents as Vidar's own build-4.x+ schema. The rebrand
strips `Version`, `Install date`, `AV`, `Display Language`,
`Keyboard Languages`, `Local Time`, `TimeZone`, and the
trailing `[Processes]` and `[Software]` sections.

Distinctive presentation differences vs the canonical Vidar
body: every field uses a space-before-colon form
(`Key : Value`), the harvest wall clock is split across
adjacent `Date :` and `Time :` lines instead of a single
combined value, the hardware block is introduced by a
`--- [ Hardware ] ---` dash-boxed header rather than a bare
`[Hardware]` bracket header, and absent-path victims carry a
`Path : >-` YAML-block-scalar sentinel. The framing banner
is an angle-bracket sandwiched caret block advertising
`Main Channel - @Baba_Logs`, `Public Logs Channel : @BabaCloud_New`, `Public Ulp Channel : @BabaUlp_New`, and
`Admin : @Mr_Ghost_004` between two horizontal rules.

Public reporting attests `@BabaCloud_New` as a
Telegram-distributed cloud-logs operation that has released
multiple thousand-record credential dumps since mid-2025 but
does not explicitly name the underlying panel family. The
Vidar attribution here is inferred from the identifier
preamble plus the five-field hardware tuple - a combination
that is Vidar-canonical - and is retained at medium
confidence pending an explicit rebrand mapping.

This tracking name is unrelated to the `CSBabaStealer`
profile, which covers a `.B.A.B.A.` Lumma-rebrand distributed
by a different operator; the shared `Baba` substring in the
names is incidental.

### Tiếng Việt

CSBabaCloudStealer là định danh do CyStack đặt cho một `System_Info.txt` có cấu trúc dữ liệu giống Vidar, được đối tượng vận hành kênh Telegram `@BabaCloud_New` phát tán. Các thư mục nạn nhân tuân theo cấu trúc `@BabaCloud_New {<seq>} [<CC>]_<IPv4>_ <HWID8>_<DDMMYYYY>_<HHMMSS>` và được đóng gói bên trong các tệp nén có tên `@BabaCloudNew { <count> } Logs Cloud <DDMMYYYY>.rar`.

Phần nội dung mang theo phần mở đầu định danh chuẩn của Vidar (`MachineID`, `GUID`, `HWID`, `Path`, `Work Dir`, `Windows`, `Computer Name`, `User Name`, `Display Resolution`) cùng với bộ năm trường phần cứng chuẩn của Vidar (`Processor`, `Cores`, `Threads`, `RAM`, `VideoCard`) mà các báo cáo công khai ghi nhận là lược đồ riêng của Vidar từ bản dựng 4.x trở lên. Bản đổi thương hiệu này đã loại bỏ `Version`, `Install date`, `AV`, `Display Language`, `Keyboard Languages`, `Local Time`, `TimeZone`, cùng các phần `[Processes]` và `[Software]` ở cuối.

Các khác biệt đáng chú ý trong cách trình bày so với nội dung Vidar chuẩn: mọi trường đều dùng dạng có khoảng trắng trước dấu hai chấm (`Key : Value`), thời điểm thu thập theo đồng hồ hệ thống được tách thành hai dòng `Date :` và `Time :` liền kề thay vì gộp thành một giá trị duy nhất, khối phần cứng được mở đầu bằng tiêu đề đóng khung bằng dấu gạch ngang `--- [ Hardware ] ---` thay vì tiêu đề dấu ngoặc vuông trần `[Hardware]`, và các nạn nhân không có đường dẫn mang dấu hiệu nhận biết dạng YAML block-scalar `Path : >-`. Biểu ngữ khung viền là một khối dấu mũ được kẹp giữa các dấu ngoặc nhọn, quảng cáo `Main Channel - @Baba_Logs`, `Public Logs Channel : @BabaCloud_New`, `Public Ulp Channel : @BabaUlp_New`, và `Admin : @Mr_Ghost_004` nằm giữa hai đường kẻ ngang.

Các báo cáo công khai xác nhận `@BabaCloud_New` là một hoạt động log đám mây phát tán qua Telegram, đã phát hành nhiều lượt rò rỉ thông tin xác thực với hàng nghìn bản ghi kể từ giữa năm 2025, nhưng không nêu rõ tên họ panel nền tảng. Việc quy kết về Vidar ở đây được suy ra từ phần mở đầu định danh cùng bộ năm trường phần cứng - một tổ hợp mang tính chuẩn của Vidar - và được giữ ở mức độ tin cậy trung bình cho đến khi có ánh xạ đổi thương hiệu rõ ràng.

Tên theo dõi này không liên quan đến hồ sơ `CSBabaStealer`, vốn đề cập đến một bản đổi thương hiệu từ Lumma `.B.A.B.A.` được phát tán bởi một đối tượng vận hành khác; chuỗi ký tự `Baba` chung trong tên gọi chỉ là sự trùng hợp ngẫu nhiên.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **medium**
- Canonical family: [vidar](../vidar/)
- Aliases: `BabaCloud Logs`, `BabaCloudLogs`, `@BabaCloud_New`
- Variants observed: **2**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực, cookie, dữ liệu tự động điền đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| Cloud service session tokens and endpoint URLs | Token phiên đăng nhập dịch vụ đám mây và URL điểm cuối |
| System hardware and identity inventory | Kiểm kê phần cứng và định danh hệ thống |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `@BabaCloud_New` distributor-brand
literal present in content AND at least one Vidar-canonical
field line-anchored with the space-before-colon form
(`MachineID :` OR `VideoCard :`). Canonical Vidar cleanly
declines these bodies because every canonical fingerprint
requires the `Key:` no-space form.

### Tiếng Việt

Việc nhận diện dấu hiệu yêu cầu chuỗi ký tự thương hiệu phân phối `@BabaCloud_New` xuất hiện trong nội dung VÀ ít nhất một dòng trường chuẩn của Vidar được neo theo dạng có khoảng trắng trước dấu hai chấm (`MachineID :` HOẶC `VideoCard :`). Nội dung Vidar chuẩn sẽ không khớp với các mẫu này vì mọi dấu hiệu nhận diện chuẩn đều yêu cầu dạng không có khoảng trắng `Key:`.

## Observed log variants

### `v_636e5657cf3f5ac2f89d1f6765a6f2b9`

- Format ID: `cs-baba-cloud-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: `@BabaCloud_New`
- Distribution channel: `@Baba_Logs`
- Attribution confidence: **medium**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_636e5657cf3f5ac2f89d1f6765a6f2b9/System_Info.txt)
- Sample SHA-256: `56e50db45ad291ded9819a0dee4f0c71f85ca2ae13168f5d72058a32dd0cf321`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `< Main Channel - @Baba_Logs . >`, `@BabaCloud_New`
- Field labels: `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `IP`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `Time`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

### `v_a80f145319e1797ee4f6b31abe02cb29`

- Format ID: `cs-baba-cloud-stealer`
- Observed filenames: `System_Info.txt`
- Panel brand: `@Universe_Logs`
- Distribution channel: `@Rus_cloud`
- Attribution confidence: **medium**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_a80f145319e1797ee4f6b31abe02cb29/System_Info.txt)
- Sample SHA-256: `3a39c9cc5fe9296ccdc72dc1992bf2e3444c3ded0ffbc41f65cabe8f0efbfb0e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `< Main Channel - @Rus_cloud. >`, `@Universe_Logs`
- Field labels: `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `IP`, `MachineID`, `Path`, `Processor`, `RAM`, `Threads`, `Time`, `User Name`, `VideoCard`, `Windows`, `Work Dir`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Vidar](../vidar/)

## Sources

- <https://www.trendmicro.com/en_us/research/25/j/how-vidar-stealer-2-upgrades-infostealer-capabilities.html>
- <https://www.kaspersky.com/resource-center/threats/vidar-stealer>
- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-22361-credentials-leaked/>
- <https://heroic.com/darkhive-breaches/babacloudlogs-stealer-log-breach-explained-17507-records/>

Machine-readable record: [family.json](family.json)
