# CSRedhiveStealer

## Overview / Tổng quan

### English

CSRedhiveStealer is a CyStack-coined identifier for a
Lumma-shape `System.txt` panel that self-brands as
`Redhive Stealer` on its build banner line. Observed inside
`BONUS$#01(c)_NEW_ROYCLOUD_HQ_MIX_<n>_<Mon>_<YYYY>.part1.rar`
archives at `<CC>_<IPv4>-<HWID>/System.txt` victim folders
(e.g. `CO_181.52.194.15-043BD157EE/System.txt`), preceded by
the same stylised `RÔýĆløud` reseller banner that wraps the
Remus and bare key-value variants distributed through the same
channel.

The body opens with `- Redhive Stealer: <DD.MM.YYYY>` and
`- Lid: <numeric>`, then continues with the Lumma-canonical
dash-prefixed field set: `- OS Version`, `- System Installed`
(ISO calendar date, replaces canonical Lumma `- Install Date`), `- Local Date`, `- Time Zone`, `- Computer`, `- User`,
`- Language`, `- Anti Virus`, `- HWID`, `- RAM Size`, `- CPU Name`, `- CPU Threads`, `- CPU Cores`, `- GPU`, `- Display resolution`, `- IP Address`, `- Time Save Log` (ISO datetime,
replaces canonical Lumma `- Time`), `- Country`. The `- CPU Vendor` field canonical Lumma always emits is absent, and the
Lumma-canonical `(sig:UNIX.HEX)` watermark is stripped
entirely from the timestamp line. HWID is short-form 8-hex
rather than the canonical Lumma 32-hex hash.

The `- Lid`, `- Computer`, `- User`, `- Anti Virus`, `- HWID`,
`- RAM Size`, `- GPU`, `- IP Address`, `- Country`
dash-prefixed vocabulary is documented as Lumma-canonical by
MalBeacon `what-is-this-stealer`, Outpost24 LummaC2 analysis,
and Cloudflare Cloudforce One playbook analysis of Lumma
panel output. The `Redhive Stealer` self-brand string is
novel and unattested in curated CTI mappings at time of
integration; the profile is classified as a Lumma variant
because the field lattice unambiguously matches documented
Lumma output.

### Tiếng Việt

CSRedhiveStealer là định danh do CyStack đặt cho một bảng điều khiển (panel) có cấu trúc dữ liệu kiểu Lumma `System.txt` tự gắn nhãn thương hiệu là
`Redhive Stealer` trên dòng banner phiên bản build. Được quan sát bên trong
`BONUS$#01(c)_NEW_ROYCLOUD_HQ_MIX_<n>_<Mon>_<YYYY>.part1.rar`
các kho lưu trữ tại các thư mục nạn nhân `<CC>_<IPv4>-<HWID>/System.txt` (ví dụ: `CO_181.52.194.15-043BD157EE/System.txt`), đi trước là
cùng một banner reseller cách điệu `RÔýĆløud` vốn bao bọc
các biến thể Remus và biến thể khóa-giá trị thuần được phân phối qua cùng
kênh đó.

Phần thân mở đầu bằng `- Redhive Stealer: <DD.MM.YYYY>` và
`- Lid: <numeric>`, sau đó tiếp tục với tập trường mang gạch ngang đứng trước theo chuẩn Lumma: `- OS Version`, `- System Installed`
(ngày theo lịch ISO, thay thế trường chuẩn Lumma `- Install Date`), `- Local Date`, `- Time Zone`, `- Computer`, `- User`,
`- Language`, `- Anti Virus`, `- HWID`, `- RAM Size`, `- CPU Name`, `- CPU Threads`, `- CPU Cores`, `- GPU`, `- Display resolution`, `- IP Address`, `- Time Save Log` (thời gian ISO,
thay thế trường chuẩn Lumma `- Time`), `- Country`. Trường `- CPU Vendor` mà Lumma chuẩn luôn tạo dữ liệu đầu ra thì không xuất hiện, và
watermark chuẩn Lumma `(sig:UNIX.HEX)` bị loại bỏ hoàn toàn khỏi dòng dấu thời gian. HWID có dạng ngắn 8 ký tự hex
thay vì mã băm 32 ký tự hex chuẩn của Lumma.

Bộ từ vựng mang gạch ngang đứng trước `- Lid`, `- Computer`, `- User`, `- Anti Virus`, `- HWID`,
`- RAM Size`, `- GPU`, `- IP Address`, `- Country`
được ghi nhận là chuẩn Lumma bởi MalBeacon `what-is-this-stealer`, phân tích LummaC2 của Outpost24,
và phân tích playbook của Cloudflare Cloudforce One về dữ liệu đầu ra của panel Lumma. Chuỗi tự gắn nhãn thương hiệu `Redhive Stealer` là
mới và chưa từng được ghi nhận trong các ánh xạ CTI đã tuyển chọn tại thời điểm tích hợp; hồ sơ này được phân loại là một biến thể Lumma vì
cấu trúc trường khớp rõ ràng, không mơ hồ với dữ liệu đầu ra đã được ghi nhận của Lumma.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [lumma](../lumma/)
- Aliases: `Redhive Stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet extensions | Tiện ích mở rộng ví tiền mã hóa |
| Host metadata: hostname, Windows username, language | Siêu dữ liệu máy: tên máy, tên người dùng Windows, ngôn ngữ |
| OS fingerprint with build number and architecture | Dấu vết nhận diện hệ điều hành kèm số hiệu build và kiến trúc |
| Hardware inventory: CPU model with cores/threads, GPU, installed RAM | Thông tin phần cứng: dòng CPU kèm số nhân/luồng, GPU, dung lượng RAM đã cài đặt |
| Installed antivirus product name | Tên phần mềm diệt virus đã cài đặt |
| Victim public IP plus ISO country code | Địa chỉ IP công khai của nạn nhân kèm mã quốc gia ISO |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `- Redhive Stealer` self-brand
literal AND the Lumma-canonical `- Lid:` panel affiliate
identifier line. Distinguish it from canonical Lumma by the
absent `- LummaC2 Build:` header, absent `- CPU Vendor:`
field, absent `- Install Date:` field (replaced by
`- System Installed:` with an ISO calendar date shape),
and absent `(sig:UNIX.HEX)` timestamp watermark. During
triage, treat the panel as a Lumma affiliate or fork rebrand
until published research maps the `Redhive` brand to a
specific Lumma successor or to an independent builder.

### Tiếng Việt

Việc nhận diện đòi hỏi đồng thời chuỗi tự gắn nhãn `- Redhive Stealer` và dòng định danh affiliate của panel theo chuẩn Lumma `- Lid:`. Phân biệt biến thể này với Lumma chuẩn dựa trên việc không có tiêu đề `- LummaC2 Build:`, trường `- CPU Vendor:`, trường `- Install Date:` (được thay bằng `- System Installed:` với ngày theo định dạng ISO) và watermark thời gian `(sig:UNIX.HEX)`. Trong quá trình phân loại ban đầu, hãy coi panel này là một affiliate hoặc bản fork của Lumma cho đến khi có nghiên cứu công bố ánh xạ thương hiệu `Redhive` tới một biến thể kế thừa cụ thể của Lumma hoặc một builder độc lập.

## Observed log variants

### `v_a661ca4b8afb41bbbc2591fb49278974`

- Format ID: `cs-redhive-stealer`
- Observed filenames: `System.txt`
- Panel brand: `Redhive Stealer`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_a661ca4b8afb41bbbc2591fb49278974/System.txt)
- Sample SHA-256: `5eb4654b9b9709cac361932eab0785222777a42c3c9c5aefb98d5297dc6d5257`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Redhive Stealer`
- Field labels: `Anti Virus`, `Computer`, `Configuration`, `Country`, `CPU Cores`, `CPU Name`, `CPU Threads`, `Display resolution`, `GPU`, `HWID`, `IP Address`, `Language`, `Lid`, `Local Date`, `OS Version`, `RAM Size`, `Redhive Stealer`, `System Installed`, `Time Save Log`, `Time Zone`, `User`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- [Lumma](../lumma/)

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://outpost24.com/blog/everything-you-need-to-know-lummac2-stealer/>
- <https://www.cloudflare.com/cloudforce-one/research/loot-load-repeat-dissecting-the-lumma-stealer-playbook/>

Machine-readable record: [family.json](family.json)
