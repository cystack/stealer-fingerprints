# CSBradMaxAgentIdMacStealer

## Overview / Tổng quan

### English

CSBradMaxAgentIdMacStealer is a CyStack-coined identifier
for a banner-stripped macOS `Information.txt` panel
distributed through the @BRADMAX Telegram log-reseller
channel (distinct from the sibling @BRADMAX_CLOUD
reseller). Observed inside `@BRADMAX <N> <MONTH>.part<N> .rar` aggregator packs at `[<CC>]<IPv4>/Information.txt`
victim folders.

The body opens with the `=== System Info ===` triple-equals banner (shared with canonical SHub
Stealer) but
drops the `SHub Stealer` self-identification literal that
SHub bodies carry on the second line. A `Build Tag: <short-tag>` identifier line and an `External IP:` +
`Country:` geo pair follow, then a second `System Info`
section header, a `Username:` line, and the distinctive
`Agent ID: <16-hex>` per-victim session identifier.
Device identity carries `Hostname:` (macOS Bonjour
`<name>.local`), `OS Version:` as bare semantic version
(e.g. `14.5.0` with no `macOS` prefix), `Timezone:` as an
IANA tz-database identifier (`Europe/Zagreb`), and
`Languages:` as a JSON array string of BCP-47 locales
(`["de-AT"]`). A terse `Hardware:` block with four
4-space-indented children follows: `GPU:`, `CPU Cores:`,
`RAM: <N> GB`, `Screen: <WxH>`.

The field set diverges sharply from every registered
macOS stealer: SHub, Phexia, MacSync / mac.c, Cthulhu,
AMOS, Banshee, and Odyssey all ship the verbose
`system_profiler SPSoftwareDataType` /
`SPHardwareDataType` / `SPDisplaysDataType` output with
`System Software Overview` / `Hardware Overview` /
`Model Name` / `Model Identifier` / `Chip` /
`Total Number of Cores` / `Memory` / `Hardware UUID` /
`Serial Number` / `Chipset Model` field wrappers. The
terse four-field `Hardware:` block here indicates a
lightweight custom harvester rather than a
`system_profiler` pipe. The `Agent ID:` plaintext line
with a 16-hex-lowercase value is not observed in any
documented macOS stealer format; closest analogs are
the Odyssey hidden `.botid` config file and build-header
identifiers embedded in Atomic macOS Stealer samples,
neither of which matches the plaintext field shape.

Family attribution stays CyStack-coined (Case C) pending
a published mapping. A multi-vendor curated CTI survey
(SentinelOne Labs, Malwarebytes, Jamf Threat Labs, CIS,
Moonlock Lab, Huntress, Red Canary, Check Point Research,
Elastic Security Labs, Cyfirma, Censys, BleepingComputer
research, Dark Reading, Help Net Security, Datadog
Security Labs, Microsoft TI, Cookie Engineer, PCRisk)
does not document the shape; community catalogues
(MalBeacon what-is-this-stealer, deepdarkCTI,
RussianPanda) also do not attest it. HEROIC darkhive-breaches attests the @BRADMAX
distributor at multiple pack entries separately from
the @BRADMAX_CLOUD sibling.

### Tiếng Việt

CSBradMaxAgentIdMacStealer là định danh do CyStack đặt tên cho một bảng điều khiển `Information.txt` dành cho macOS đã bị loại bỏ banner, được phân phối qua kênh Telegram bán lại log @BRADMAX (khác với kênh @BRADMAX_CLOUD liên quan). Được quan sát trong các gói tổng hợp `@BRADMAX <N> <MONTH>.part<N> .rar` tại các thư mục nạn nhân `[<CC>]<IPv4>/Information.txt`.

Phần thân mở đầu bằng banner ba dấu bằng `=== System Info ===` (dùng chung với SHub Stealer chuẩn) nhưng loại bỏ dấu hiệu tự định danh `SHub Stealer` mà phần thân SHub mang ở dòng thứ hai. Tiếp theo là một dòng định danh `Build Tag: <short-tag>` và một cặp địa lý `External IP:` + `Country:`, sau đó là tiêu đề phần `System Info` thứ hai, một dòng `Username:`, và định danh phiên theo từng nạn nhân đặc trưng `Agent ID: <16-hex>`.

Thông tin định danh thiết bị mang `Hostname:` (tên máy đầy đủ dạng Bonjour của macOS `<name>.local`), `OS Version:` dưới dạng phiên bản ngữ nghĩa trần (ví dụ `14.5.0` không có tiền tố `macOS`), `Timezone:` dưới dạng định danh cơ sở dữ liệu múi giờ IANA (`Europe/Zagreb`), và `Languages:` dưới dạng chuỗi mảng JSON các locale BCP-47 (`["de-AT"]`). Tiếp theo là một khối `Hardware:` ngắn gọn với bốn phần tử con thụt lề 4 khoảng trắng: `GPU:`, `CPU Cores:`, `RAM: <N> GB`, `Screen: <WxH>`.

Tập trường dữ liệu khác biệt rõ rệt so với mọi mã độc đánh cắp thông tin macOS đã được đăng ký: SHub, Phexia, MacSync / mac.c, Cthulhu, AMOS, Banshee và Odyssey đều tạo dữ liệu đầu ra chi tiết `system_profiler SPSoftwareDataType` / `SPHardwareDataType` / `SPDisplaysDataType` với các bộ bao trường `System Software Overview` / `Hardware Overview` / `Model Name` / `Model Identifier` / `Chip` / `Total Number of Cores` / `Memory` / `Hardware UUID` / `Serial Number` / `Chipset Model`. Khối `Hardware:` ngắn gọn với bốn trường ở đây cho thấy đây là một bộ thu thập dữ liệu tùy biến nhẹ hơn là một pipe `system_profiler`. Dòng văn bản thuần `Agent ID:` với giá trị 16 ký tự hex viết thường không được quan sát thấy trong bất kỳ định dạng mã độc đánh cắp thông tin macOS đã được ghi nhận nào; các ví dụ gần nhất là tệp cấu hình ẩn `.botid` của Odyssey và các định danh tiêu đề bản dựng được nhúng trong các mẫu Atomic macOS Stealer, nhưng không cái nào khớp với cấu trúc dữ liệu của trường văn bản thuần này.

Việc quy kết họ mã độc vẫn ở dạng do CyStack đặt tên (Trường hợp C) cho đến khi có một bản đối chiếu được công bố. Một khảo sát CTI đa nguồn được tuyển chọn (SentinelOne Labs, Malwarebytes, Jamf Threat Labs, CIS, Moonlock Lab, Huntress, Red Canary, Check Point Research, Elastic Security Labs, Cyfirma, Censys, nghiên cứu của BleepingComputer, Dark Reading, Help Net Security, Datadog Security Labs, Microsoft TI, Cookie Engineer, PCRisk) không ghi nhận cấu trúc dữ liệu này; các danh mục cộng đồng (MalBeacon what-is-this-stealer, deepdarkCTI, RussianPanda) cũng không xác nhận. HEROIC darkhive-breaches xác nhận đối tượng phân phối @BRADMAX tại nhiều mục trong gói dữ liệu, tách biệt với kênh liên quan @BRADMAX_CLOUD.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `=== System Info ===`, `@BRADMAX Agent-ID macOS panel`, `banner-stripped @BRADMAX macOS Information.txt`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Panel build tag | Thẻ bản dựng của bảng điều khiển |
| Per-victim session identifier (`Agent ID:` 16-hex) | Định danh phiên theo từng nạn nhân (`Agent ID:` 16 ký tự hex) |
| Victim public IP and 2-letter country code | Địa chỉ IP công khai của nạn nhân và mã quốc gia 2 chữ cái |
| macOS user account name | Tên tài khoản người dùng macOS |
| Bonjour-style fully qualified local hostname | Tên máy cục bộ đầy đủ kiểu Bonjour |
| macOS semantic version | Phiên bản ngữ nghĩa macOS |
| IANA timezone identifier | Định danh múi giờ IANA |
| BCP-47 locale list | Danh sách locale BCP-47 |
| GPU product name, CPU core count | Tên sản phẩm GPU, số lõi CPU |
| Installed RAM (GB) | Dung lượng RAM đã cài đặt (GB) |
| Primary display resolution | Độ phân giải màn hình chính |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `@bradmax` channel substring
in the victim-folder path (case-insensitive, matches
both the @BRADMAX bare reseller and the @BRADMAX_CLOUD
sibling) AND the `=== System Info ===` banner literal
AND the `Agent ID:` identifier line AND the absence of
the `SHub Stealer` banner literal. The SHub-banner
negative anchor routes bodies that self-identify as
canonical SHub Stealer to the SHub parser; the
`Agent ID:` line alone is unique enough across the
registry to admit the body, and the two additional
positive anchors plus the SHub-banner negative anchor
keep dispatch deterministic.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con kênh `@bradmax` xuất hiện trong đường dẫn thư mục nạn nhân (không phân biệt hoa thường, khớp cả với kênh bán lại trần @BRADMAX và kênh liên quan @BRADMAX_CLOUD) VÀ dấu hiệu banner `=== System Info ===` VÀ dòng định danh `Agent ID:` VÀ sự vắng mặt của dấu hiệu banner `SHub Stealer`. Mốc phủ định banner-SHub sẽ định tuyến các phần thân tự nhận diện là SHub Stealer chuẩn sang bộ phân tích SHub; riêng dòng `Agent ID:` đã đủ độc nhất trong toàn bộ danh mục để xác nhận phần thân, và hai mốc khẳng định bổ sung cộng với mốc phủ định banner-SHub giúp việc điều hướng luôn mang tính tất định.

## Observed log variants

### `v_ee81e19fad54a22a7c0bbd0229bdfd0b`

- Format ID: `cs-bradmax-agent-id-mac-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `=== System Info ===`
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ee81e19fad54a22a7c0bbd0229bdfd0b/Information.txt)
- Sample SHA-256: `d2a85d078b04373545f8ced6345ffd5fdd8884d783ebaf4215a1106bb865090e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== System Info ===`, `Hardware:`
- Field labels: `Agent ID`, `Build Tag`, `Country`, `CPU Cores`, `External IP`, `GPU`, `Hardware`, `Hostname`, `Languages`, `OS Version`, `RAM`, `Screen`, `Timezone`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [SHub Stealer](../s-hub-stealer/)
- [Phexia](../phexia/)
- [MacSync](../mac-sync/)
- [Cthulhu Stealer](../cthulhu-stealer/)

## Related external families

- `cs-bradmax-cloud-mac`

## Sources

- <https://heroic.com/darkhive-breaches/bradmax-500-nov-stealer-log-12003-records-exposed-2025/>
- <https://heroic.com/darkhive-breaches/bradmax-1000-dec-uploaded-by-a-telegram-user/>
- <https://heroic.com/darkhive-breaches/bradmax-cloud-stealer-log-8418-records-exposed/>

Machine-readable record: [family.json](family.json)
