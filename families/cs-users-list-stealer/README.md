# CSUsersListStealer

## Overview / Tổng quan

### English

CSUsersListStealer is a CyStack-coined identifier for a
five-line minimal `Information.txt` panel distributed through
the `@BRADLOGS` Telegram channel (active mirror of the
`@BRADMAX` / `t.me/bradmax_cloud` aggregator that public
channel catalogues list as a "Redline and Raccoon Data Logs"
reseller). Observed at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt` victim folders inside `!! 2025 JULY.part001.rar` packs.

The body is three space-before-colon header lines (`HWID : <uuid>`, `IP : <ipv4>`, `Users : <comma-list>`) followed by
two emoji-prefixed per-category count lines (`🔑 Passwords: <n>`, `🍪 Cookies: <n>`) separated from the header block by
blank-line padding. No hostname, OS, build label, timestamp,
country, or antivirus field is emitted.

The plural `Users :` line carries every Windows user profile
enumerated from `C:\Users\`, including the real victim plus
stale `TEMP` / `TEMP.DESKTOP-XXXX` / `TEMP.DESKTOP-XXXX.000`
remnants left behind when `LoadUserProfile` failed and the OS
created a throwaway profile directory. The multi-profile
enumeration is unique to this panel across the catalog; canonical stealers ship only the current
`Environment.UserName` value. The plural form points at a
Python builder calling `os.listdir(r"C:\Users")` rather than a
.NET runtime API.

Family attribution is provisional pending a published
threat-intel mapping. Community stealer-format catalogues do
not document a family that emits this exact five-line
space-before-colon shape with a plural-profile `Users :` line
and `🔑` / `🍪` per-category count tail. The closest documented
relative is LucaStealer, whose summary format uses `✅`/`❌`
count indicators rather than the `🔑` / `🍪` category emoji used
here, and which ships no plural-profile `Users :` enumeration.
The aggregator self-label (Redline / Raccoon) cannot be
trusted because the body lacks every Redline canonical anchor
(`Operation System:` typo, `Hardwares:` block) and every
Raccoon canonical anchor (`User ID:` UUID, `Last seen:`
JS-date).

### Tiếng Việt

CSUsersListStealer là định danh do CyStack đặt cho một panel tối giản năm dòng `Information.txt` được phân phối qua kênh Telegram `@BRADLOGS` (bản sao đang hoạt động của bộ tổng hợp `@BRADMAX` / `t.me/bradmax_cloud` mà kênh công khai liệt kê là bên bán lại "Redline and Raccoon Data Logs"). Được quan sát tại các thư mục nạn nhân `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt` bên trong các gói `!! 2025 JULY.part001.rar`.

Phần thân gồm ba dòng tiêu đề có khoảng trắng trước dấu hai chấm (`HWID : <uuid>`, `IP : <ipv4>`, `Users : <comma-list>`) tiếp theo là hai dòng đếm theo danh mục có tiền tố emoji (`🔑 Passwords: <n>`, `🍪 Cookies: <n>`), được ngăn cách với khối tiêu đề bằng dòng trống đệm. Không có trường hostname, hệ điều hành, nhãn build, dấu thời gian, quốc gia, hoặc phần mềm diệt virus nào được tạo dữ liệu đầu ra.

Dòng `Users :` ở dạng số nhiều liệt kê mọi hồ sơ người dùng Windows được liệt kê từ `C:\Users\`, bao gồm nạn nhân thật cùng với các dấu vết cũ `TEMP` / `TEMP.DESKTOP-XXXX` / `TEMP.DESKTOP-XXXX.000` còn sót lại khi `LoadUserProfile` thất bại và hệ điều hành tạo ra một thư mục hồ sơ tạm bỏ. Việc liệt kê nhiều hồ sơ là đặc điểm riêng biệt của panel này trong toàn bộ danh mục; các mã độc đánh cắp thông tin kinh điển chỉ xuất giá trị `Environment.UserName` hiện tại. Dạng số nhiều cho thấy một builder Python gọi `os.listdir(r"C:\Users")` thay vì một API runtime .NET.

Việc quy kết họ mã độc hiện vẫn là tạm thời, chờ một ánh xạ threat-intel được công bố. Các danh mục định dạng stealer của cộng đồng không ghi nhận họ mã độc nào tạo ra chính xác cấu trúc dữ liệu năm dòng với khoảng trắng trước dấu hai chấm này, có dòng `Users :` hồ sơ số nhiều cùng phần đuôi đếm theo danh mục `🔑` / `🍪`. Họ mã độc liên quan gần nhất được ghi nhận là LucaStealer, có định dạng tóm tắt sử dụng các chỉ báo đếm `✅`/`❌` thay vì emoji danh mục `🔑` / `🍪` được dùng ở đây, và không có việc liệt kê `Users :` hồ sơ số nhiều. Nhãn tự gán của bộ tổng hợp (Redline / Raccoon) không thể tin cậy được vì phần thân thiếu mọi mốc nhận diện kinh điển của Redline (lỗi chính tả `Operation System:`, khối `Hardwares:`) và mọi mốc nhận diện kinh điển của Raccoon (UUID `User ID:`, ngày kiểu JS `Last seen:`).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@BRADLOGS five-line HWID-IP-Users panel`, `BRADMAX minimal Information.txt with emoji counts`
- Variants observed: **1**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (count flag on `🔑 Passwords:`) | Thông tin xác thực đã lưu trong trình duyệt (cờ đếm trên `🔑 Passwords:`) |
| Browser cookies (count flag on `🍪 Cookies:`) | Cookie trình duyệt (cờ đếm trên `🍪 Cookies:`) |
| Windows HWID (`HWID :` GetSystemUUID 8-4-4-4-12 form) | HWID Windows (`HWID :` dạng GetSystemUUID 8-4-4-4-12) |
| Public IPv4 address (`IP :` line) | Địa chỉ IPv4 công khai (dòng `IP :`) |
| Full Windows user-profile enumeration (`Users :` plural list) | Liệt kê đầy đủ hồ sơ người dùng Windows (danh sách số nhiều `Users :`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `HWID :` AND `IP :` AND
`Users :` (all three with the space-before-colon separator)
AND the `🔑 Passwords:` substring AND the `🍪 Cookies:`
substring. The five-anchor combo is unique across the catalog: the space-before-colon trio on the header lines
is the panel's developer-side quirk, and pairing with both
emoji count labels rules out canonical Redline (which uses
`Field : value` space-colon-space but ships an
`Operation System:` typo and `Hardwares:` / `Anti-Viruses:`
blocks not present here). During triage, treat this label
as a panel-side summary view (counts only): the actual
harvested credentials live in sibling files in the
operator's archive, not in this Information.txt body. The
underlying builder is unidentified.

### Tiếng Việt

Việc nhận diện dấu hiệu yêu cầu các dòng neo theo vị trí `HWID :` VÀ `IP :` VÀ `Users :` (cả ba đều có dấu phân cách khoảng trắng trước dấu hai chấm) VÀ chuỗi con `🔑 Passwords:` VÀ chuỗi con `🍪 Cookies:`. Tổ hợp năm mốc nhận diện này là duy nhất trong toàn bộ danh mục: bộ ba khoảng trắng trước dấu hai chấm trên các dòng tiêu đề là đặc điểm riêng phía nhà phát triển của panel, và khi kết hợp với cả hai nhãn đếm emoji thì loại trừ khả năng đây là Redline kinh điển (vốn dùng khoảng trắng-hai chấm-khoảng trắng `Field : value` nhưng có lỗi chính tả `Operation System:` và các khối `Hardwares:` / `Anti-Viruses:` không xuất hiện ở đây). Trong quá trình phân loại ban đầu, hãy coi nhãn này là một khung nhìn tóm tắt phía panel (chỉ có số đếm): thông tin xác thực thực sự bị đánh cắp nằm trong các tệp liên quan trong kho lưu trữ của đối tượng vận hành, chứ không nằm trong phần thân của Information.txt này. Builder gốc chưa được xác định.

## Observed log variants

### `v_4618db1ec0f8f014785fce65677a7e47`

- Format ID: `cs-users-list-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `BRADMAX`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_4618db1ec0f8f014785fce65677a7e47/sample.txt)
- Sample SHA-256: `9a6deeaa39cd89ff434b1a5989eaeba3b052ebd39feb577225e9852efec04d60`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `HWID`, `IP`, `Users`, `🍪 Cookies`, `🔑 Passwords`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |

## Related catalog profiles

- [CSPyHostTimeStealer](../cs-py-host-time-stealer/)
- [CSPcNameSnakeStealer](../cs-pc-name-snake-stealer/)
- [CSMainLootStealer](../cs-main-loot-stealer/)
- [Lumma](../lumma/)

## Observed distribution channels

- <https://t.me/BRADLOGS>
- <https://t.me/bradmax_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
