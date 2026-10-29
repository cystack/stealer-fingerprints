# CSSlurmCloudSupportWhiteSnakeStealer

## Overview / Tổng quan

### English

CSSlurmCloudSupportWhiteSnakeStealer is a CyStack tracking
name for a whitespace-stripped WhiteSnake `PC_info.txt`
distributed by the @SlurmCloudSupport Telegram reseller.
Observed inside `Slurm Logs (@SlurmLogs).rar` aggregator
packs at `<HWID32>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<SS>_<micros> -@SlurmCloudSupport/PC_info.txt` victim folders where the
per-victim folder suffix carries the operator channel
handle verbatim.

The body is a verbatim WhiteSnake post-2024 `PC_info.txt`
(same emoji-prefixed `🖥Computer info:` / `🛡Security:` /
`📡Whois:` section headers, same `System:` / `User name:` /
`System time:` / `CPU:` / `GPU:` / `RAM:` / `HWID:` /
`Installed antivirus:` / `Started as admin:` / `IP:` /
`Country:` / `City:` / `Region:` / `Internet provider:`
field vocabulary) with two reseller edits: every ASCII
whitespace separator inside field names and values is
removed (`Started as admin: True` → `Startedasadmin:True`,
`Microsoft Windows 10 Pro (x64)` →
`MicrosoftWindows10Pro(x64)`), and a
`WLFRCLOUD===t.me/SlurmCloudSupport` watermark literal is
injected into the `Computer info:` section header and the
`Computer name:` field value (destroying the real
hostname).

Family attribution is canonical WhiteSnake (high
confidence): the `🛡Security:` + `Installed antivirus:` +
`Started as admin:` field trio is the WhiteSnake post-2024
`PC_info.txt` canonical layout per ANY.RUN, SonicWall, and
RussianPanda analyses. HEROIC also attests the `@SlurmLogs`
archive channel as a stealer-log distributor. The reseller
only edits whitespace and injects a watermark; the
underlying builder is unmistakably WhiteSnake. The
CyStack tracking name preserves the @SlurmCloudSupport
rebrand context (operator channel + injected watermark
literal) while `canonical_family` remains `white-snake`.

### Tiếng Việt

CSSlurmCloudSupportWhiteSnakeStealer là tên theo dõi của CyStack dành cho một biến thể WhiteSnake `PC_info.txt` đã bị loại bỏ khoảng trắng, được phân phối bởi đối tượng bán lại Telegram @SlurmCloudSupport. Biến thể này được phát hiện bên trong các gói tổng hợp `Slurm Logs (@SlurmLogs).rar` tại các thư mục nạn nhân `<HWID32>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<SS>_<micros> -@SlurmCloudSupport/PC_info.txt`, trong đó phần hậu tố của tên thư mục theo từng nạn nhân mang nguyên văn tên kênh (channel handle) của đối tượng vận hành.

Phần nội dung chính là bản sao nguyên văn của định dạng `PC_info.txt` thuộc WhiteSnake giai đoạn sau 2024 (cùng các tiêu đề mục có tiền tố emoji `🖥Computer info:` / `🛡Security:` / `📡Whois:`, cùng bộ từ vựng trường dữ liệu `System:` / `User name:` / `System time:` / `CPU:` / `GPU:` / `RAM:` / `HWID:` / `Installed antivirus:` / `Started as admin:` / `IP:` / `Country:` / `City:` / `Region:` / `Internet provider:`) với hai chỉnh sửa của đối tượng bán lại: mọi dấu phân cách khoảng trắng ASCII trong tên trường và giá trị trường đều bị loại bỏ (`Started as admin: True` → `Startedasadmin:True`, `Microsoft Windows 10 Pro (x64)` → `MicrosoftWindows10Pro(x64)`), và một chuỗi watermark `WLFRCLOUD===t.me/SlurmCloudSupport` được chèn vào tiêu đề mục `Computer info:` và giá trị trường `Computer name:` (làm mất tên máy thật).

Việc quy kết họ mã độc là WhiteSnake chính danh (độ tin cậy cao): bộ ba trường `🛡Security:` + `Installed antivirus:` + `Started as admin:` chính là bố cục chính danh của `PC_info.txt` thuộc WhiteSnake giai đoạn sau 2024 theo các phân tích của ANY.RUN, SonicWall và RussianPanda. HEROIC cũng xác nhận kênh lưu trữ `@SlurmLogs` là một kênh phân phối log mã độc đánh cắp thông tin. Đối tượng bán lại chỉ chỉnh sửa khoảng trắng và chèn watermark; bộ builder nền tảng chắc chắn là của WhiteSnake. Tên theo dõi của CyStack vẫn giữ nguyên bối cảnh đổi tên thương hiệu @SlurmCloudSupport (kênh của đối tượng vận hành + chuỗi watermark được chèn vào) trong khi `canonical_family` vẫn là `white-snake`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [white-snake](../white-snake/)
- Aliases: `@SlurmCloudSupport`, `Slurm Cloud Support`, `Slurm Logs`, `@SlurmLogs`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Các tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| Discord, Telegram, Steam session data | Dữ liệu phiên đăng nhập Discord, Telegram, Steam |
| 2FA codes from authenticator apps | Mã 2FA từ các ứng dụng xác thực |
| Email and FTP client credentials | Thông tin xác thực của ứng dụng email và FTP |

## Detection notes / Ghi chú nhận diện

### English

The emoji-prefixed `🛡Security:` section header combined
with the whitespace-stripped `Startedasadmin:` field key
is unique to this reseller variant - canonical WhiteSnake
ships `Started as admin:` with internal spaces, and no
other emoji-sectioned stealer format in the catalog uses
this specific field name. The `WLFRCLOUD=== t.me/SlurmCloudSupport` watermark literal injected into
the first two field values is a secondary confirmation.

### Tiếng Việt

Tiêu đề mục có tiền tố emoji `🛡Security:` kết hợp với khóa trường dữ liệu `Startedasadmin:` đã bị loại bỏ khoảng trắng là đặc trưng riêng của biến thể từ đối tượng bán lại này - WhiteSnake chính danh tạo dữ liệu đầu ra `Started as admin:` với khoảng trắng bên trong, và không có định dạng mã độc đánh cắp thông tin nào khác có tiêu đề mục bằng emoji trong danh mục sử dụng đúng tên trường dữ liệu này. Chuỗi watermark `WLFRCLOUD=== t.me/SlurmCloudSupport` được chèn vào hai giá trị trường đầu tiên là dấu hiệu xác nhận bổ sung.

## Observed log variants

### `v_0752e9fb8c55642738a372e81cedb85e`

- Format ID: `cs-slurm-cloud-support-whitesnake-stealer`
- Observed filenames: `PC_info.txt`
- Panel brand: `Slurm Cloud Support`
- Distribution channel: `@SlurmCloudSupport`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_0752e9fb8c55642738a372e81cedb85e/PC_info.txt)
- Sample SHA-256: `da19f484bdb4b64a65604c156d75f9e9a096f5c3dbc078f3b0a328a3de081796`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `City`, `Computername`, `Country`, `CPU`, `GPU`, `HWID`, `Installedantivirus`, `Internetprovider`, `IP`, `RAM`, `Region`, `Startedasadmin`, `System`, `Systemtime`, `Username`, `📡Whois`, `🖥Computerinfo`, `🛡Security`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [WhiteSnake](../white-snake/)

## Sources

- <https://any.run/malware-trends/whitesnake/>
- <https://www.sonicwall.com/blog/whitesnake-stealer-unveiling-the-latest-version-less-obfuscated-more-dangerous>
- <https://russianpanda.com/WhiteSnake-Stealer-Malware-Analysis>
- <https://heroic.com/darkhive-breaches/slurm-logs-slurmlogs-uploaded-by-a-telegram-user>

Machine-readable record: [family.json](family.json)
