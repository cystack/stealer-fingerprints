# CSDataMonkStealer

## Overview / Tổng quan

### English

CSDataMonkStealer is a CyStack-coined identifier for a shared
`#BUY NOW: TG <buyer> -- <admin>` `SystemInfo.txt` panel
observed inside `@ft7links-mix-<TS>-<COUNT>pcs` aggregator
packs. The panel is a builder that multiple Telegram resellers
distribute under their own buyer / admin handles - the body
shape is identical, only the banner-line handles differ. Two
distributors observed so far: `@DataMonk_file` /
`@DataMonk_Admin` (per-victim `Telegram @Datamonk_file - {<id>}/` subfolder) and `@SunCloudNew` / `@MrSun00` (flat
`@ft7links_mix_<NN>_bogonip_<NN>/SystemInfo.txt` layout, no
per-victim Telegram-handle subfolder).

The panel emits a leading `#BUY NOW` banner with paired buyer
/ admin contacts, then a single mixed-case `=== System Information ===` block of bare `Key: Value` lines terminated
by a 26-character equals-sign rule. The 13-key field set
covers Build, IP, HWID, System Language, Processor, CPU Cores,
CPU Threads, GPU, OS, OS Version, Computer Name, Total RAM,
and Drives. The mixed-case header distinguishes this format
from `PCInfoStealer`, which uses the uppercase `=== SYSTEM INFORMATION ===` form. The `Build: test_00` literal recurs
across distributors, suggesting an early or test-phase
builder.

Family attribution is provisional: the panel is undocumented
in public reporting, and is also absent from the community
stealer-format catalogues. The stable `CSDataMonkStealer` tracking name is retained so
existing CyStack intelligence references remain consistent even
though the panel is shared. Rename the profile when public
research identifies the underlying builder.

### Tiếng Việt

CSDataMonkStealer là định danh do CyStack đặt cho một panel `#BUY NOW: TG <buyer> -- <admin>` `SystemInfo.txt` dùng chung được quan sát bên trong các gói tổng hợp `@ft7links-mix-<TS>-<COUNT>pcs`. Panel này là một builder được nhiều đối tượng bán lại trên Telegram phân phối dưới các handle người mua/quản trị viên riêng của họ - cấu trúc dữ liệu phần thân giống hệt nhau, chỉ khác các handle ở dòng banner. Đã quan sát được hai đối tượng phân phối cho đến nay: `@DataMonk_file` / `@DataMonk_Admin` (thư mục con `Telegram @Datamonk_file - {<id>}/` theo từng nạn nhân) và `@SunCloudNew` / `@MrSun00` (bố cục `@ft7links_mix_<NN>_bogonip_<NN>/SystemInfo.txt` phẳng, không có thư mục con theo handle Telegram của từng nạn nhân).

Panel này tạo dữ liệu đầu ra là một banner `#BUY NOW` ở đầu với các liên hệ người mua/quản trị viên đi kèm nhau, sau đó là một khối `=== System Information ===` hỗn hợp chữ hoa chữ thường gồm các dòng `Key: Value` trần, kết thúc bằng một quy tắc dấu bằng dài 26 ký tự. Tập 13 trường bao gồm Build, IP, HWID, System Language, Processor, CPU Cores, CPU Threads, GPU, OS, OS Version, Computer Name, Total RAM, và Drives. Phần tiêu đề hỗn hợp chữ hoa chữ thường phân biệt định dạng này với `PCInfoStealer`, vốn sử dụng dạng `=== SYSTEM INFORMATION ===` viết hoa toàn bộ. Chuỗi ký tự `Build: test_00` lặp lại ở nhiều đối tượng phân phối, cho thấy đây có thể là một builder giai đoạn đầu hoặc giai đoạn thử nghiệm.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời: panel này chưa được ghi nhận trong các báo cáo công khai, và cũng không xuất hiện trong các danh mục định dạng mã độc đánh cắp thông tin của cộng đồng. Tên theo dõi ổn định `CSDataMonkStealer` được giữ lại để các tham chiếu tình báo hiện có của CyStack luôn nhất quán, dù panel này được nhiều bên cùng sử dụng. Hồ sơ sẽ được đổi tên khi nghiên cứu công khai xác định được builder gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@DataMonk_file`, `@SunCloudNew`, `DataMonk`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| System hardware and locale fingerprint | Dấu vết nhận dạng phần cứng và ngôn ngữ hệ thống |
| Discord token folder (per the @DataMonk_file Application/Discord layout) | Thư mục token Discord (theo bố cục @DataMonk_file Application/Discord) |

## Detection notes / Ghi chú nhận diện

### English

The `#BUY NOW: TG @` panel banner plus the mixed-case
`=== System Information ===` header is the cleanest
fingerprint pair. PCInfoStealer uses the uppercase
header variant and emits `PC Username:` / `PC Name:` keys
instead of `Computer Name:`, so the two formats do not
collide. The `Build:` value (`test_00` in surveyed
samples) suggests an early or test-phase builder; later
production samples may emit a different value. The
banner-line handles vary by distributor, so triage based
on the channel handles in the banner rather than
assuming a single source.

### Tiếng Việt

Cặp dấu hiệu nhận diện rõ ràng nhất là banner panel `#BUY NOW: TG @` kết hợp với tiêu đề `=== System Information ===` hỗn hợp chữ hoa chữ thường. PCInfoStealer sử dụng biến thể tiêu đề viết hoa toàn bộ và tạo dữ liệu đầu ra là các trường `PC Username:` / `PC Name:` thay vì `Computer Name:`, do đó hai định dạng này không trùng lặp với nhau. Giá trị `Build:` (là `test_00` trong các mẫu đã khảo sát) cho thấy đây có thể là builder giai đoạn đầu hoặc giai đoạn thử nghiệm; các mẫu sản xuất sau này có thể tạo dữ liệu đầu ra với giá trị khác. Các handle ở dòng banner thay đổi theo từng đối tượng phân phối, vì vậy nên phân loại dựa trên các handle kênh trong banner thay vì giả định chỉ có một nguồn duy nhất.

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

- None recorded.

## Observed distribution channels

- <https://t.me/DataMonk_file>
- <https://t.me/SunCloudNew>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
