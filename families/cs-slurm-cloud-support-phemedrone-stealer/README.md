# CSSlurmCloudSupportPhemedroneStealer

## Overview / Tổng quan

### English

CSSlurmCloudSupportPhemedroneStealer is a CyStack tracking
name for a whitespace-stripped Phemedrone `Information.txt`
distributed by the @SlurmCloudSupport Telegram reseller
under the operator rebrand label `Custom Stealer`.
Observed inside `Slurm Logs (@SlurmLogs).rar` aggregator
packs at `<HWID32>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<SS>_<micros> -@SlurmCloudSupport/Information.txt` victim folders where
the per-victim folder suffix carries the operator channel
handle verbatim.

The body is a verbatim Phemedrone dashed-section
`Information.txt` (same `----- Geolocation Data -----` /
`----- Hardware Info -----` / `----- Report Contents -----`
/ `----- Miscellaneous -----` section headers, same
`Username: <user>\<hostname>` concatenated-user shape,
same `Country: <Name> (<CC>)` parenthesised ISO2 shape,
same 32-hex `Hardware ID:`, same plural `Antivirus products:`, same `File Location:` and `Clipboard text:`
miscellaneous fields) with three reseller edits: every
ASCII whitespace separator is removed from section
headers, field names, and field values
(`-----GeolocationData-----`, `Antivirusproducts:`,
`FileLocation:`, `Windowsname:`, etc.); a 5-line
`,d88b.d88b,` ASCII-art banner labelled `CustomStealer`
is prepended, with the collection timestamp,
`improvedandconfiguredby@SlurmCloudSupport` operator
credit, and operator-set `Tag:<csv>` service-target list
attached to the banner lines; and three reseller-specific
fields are injected (`ScreenResolution:`, `Uptime:`,
`Battery:` in Hardware Info; `Gaming:` count in Report
Contents).

Family attribution is canonical Phemedrone (high
confidence): the dashed-section `Information.txt` layout
and the Phemedrone-specific key set (`Windows name:`,
`Hardware ID:`, `Antivirus products:`, `File Location:`,
`Clipboard text:`, `Country: <Name> (<CC>)` parenthesised
ISO2, `Username: <user>\<hostname>` concatenated-user)
is Phemedrone-canonical per Trend Micro, Splunk,
Brandefense, SpyCloud, and Malpedia. HEROIC also attests
the `@SlurmLogs` archive channel as a stealer-log
distributor. The reseller only edits whitespace, prepends
an ASCII-art rebrand banner, and injects a few extra
inventory fields; the underlying builder is unmistakably
Phemedrone. The CyStack tracking name preserves the
@SlurmCloudSupport rebrand context (operator channel +
`Custom Stealer` label) while `canonical_family` remains
`phemedrone`.

### Tiếng Việt

CSSlurmCloudSupportPhemedroneStealer là tên theo dõi của CyStack đặt cho một biến thể Phemedrone `Information.txt` đã bị loại bỏ khoảng trắng, được phân phối bởi đối tượng bán lại (reseller) Telegram @SlurmCloudSupport dưới nhãn đổi thương hiệu (rebrand) của đối tượng vận hành là `Custom Stealer`. Mẫu này được quan sát bên trong các gói tổng hợp `Slurm Logs (@SlurmLogs).rar` tại các thư mục nạn nhân `<HWID32>_<YYYY>_<MM>_<DD>T<HH>_<MM>_<SS>_<micros> -@SlurmCloudSupport/Information.txt`, trong đó phần hậu tố của thư mục từng nạn nhân mang nguyên văn tên kênh (channel handle) của đối tượng vận hành.

Phần nội dung chính là nguyên văn cấu trúc dạng các mục có gạch ngang (dashed-section) `Information.txt` của Phemedrone (cùng các tiêu đề mục `----- Geolocation Data -----` / `----- Hardware Info -----` / `----- Report Contents -----` / `----- Miscellaneous -----`, cùng cấu trúc dữ liệu nối chuỗi người dùng (concatenated-user) `Username: <user>\<hostname>`, cùng cấu trúc dữ liệu ISO2 đặt trong dấu ngoặc `Country: <Name> (<CC>)`, cùng chuỗi 32 ký tự hex `Hardware ID:`, cùng dạng số nhiều `Antivirus products:`, cùng các trường linh tinh `File Location:` và `Clipboard text:`) với ba chỉnh sửa của đối tượng bán lại: mọi dấu phân tách khoảng trắng ASCII đều bị loại bỏ khỏi tiêu đề mục, tên trường và giá trị trường (`-----GeolocationData-----`, `Antivirusproducts:`, `FileLocation:`, `Windowsname:`, v.v.); một banner ASCII-art gồm 5 dòng `,d88b.d88b,` được gán nhãn `CustomStealer` được chèn thêm vào đầu, kèm theo mốc thời gian thu thập, ghi công đối tượng vận hành `improvedandconfiguredby@SlurmCloudSupport`, và danh sách dịch vụ mục tiêu `Tag:<csv>` do đối tượng vận hành thiết lập được gắn vào các dòng banner; và ba trường đặc thù của đối tượng bán lại được chèn thêm (`ScreenResolution:`, `Uptime:`, `Battery:` trong Hardware Info; số lượng `Gaming:` trong Report Contents).

Việc quy kết họ mã độc là Phemedrone chính thống (độ tin cậy cao): bố cục dạng mục có gạch ngang `Information.txt` và tập khóa đặc trưng của Phemedrone (`Windows name:`, `Hardware ID:`, `Antivirus products:`, `File Location:`, `Clipboard text:`, cấu trúc dữ liệu ISO2 đặt trong dấu ngoặc `Country: <Name> (<CC>)`, cấu trúc dữ liệu nối chuỗi người dùng `Username: <user>\<hostname>`) được xác nhận là đặc trưng chính thống của Phemedrone theo Trend Micro, Splunk, Brandefense, SpyCloud và Malpedia. HEROIC cũng xác nhận kênh lưu trữ `@SlurmLogs` là một đối tượng phân phối log mã độc đánh cắp thông tin. Đối tượng bán lại chỉ chỉnh sửa khoảng trắng, chèn thêm banner ASCII-art đổi thương hiệu, và bổ sung một vài trường kiểm kê; trình dựng (builder) bên dưới chắc chắn là của Phemedrone. Tên theo dõi của CyStack giữ lại bối cảnh đổi thương hiệu @SlurmCloudSupport (kênh của đối tượng vận hành + nhãn `Custom Stealer`) trong khi `canonical_family` vẫn là `phemedrone`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [phemedrone](../phemedrone/)
- Aliases: `@SlurmCloudSupport`, `Custom Stealer`, `Slurm Cloud Support`, `Slurm Logs`, `@SlurmLogs`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, and card data | Thông tin xác thực đã lưu trên trình duyệt, cookie, dữ liệu tự điền (autofill) và dữ liệu thẻ thanh toán |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền mã hóa và ứng dụng desktop |
| Discord, Telegram, Steam session data | Dữ liệu phiên (session) của Discord, Telegram, Steam |
| FTP and VPN client credentials | Thông tin xác thực của ứng dụng FTP và VPN |
| Clipboard capture and screenshot grab | Thu thập nội dung clipboard và chụp ảnh màn hình |

## Detection notes / Ghi chú nhận diện

### English

The three whitespace-stripped section headers
`-----GeolocationData-----`, `-----HardwareInfo-----`, and
`-----Miscellaneous-----` form a unique triple -
canonical Phemedrone emits the spaced form
`----- Geolocation Data -----` etc., so the reseller
variant does not collide with the sibling canonical
parser. The ASCII-art `,d88b.d88b,` + `CustomStealer`
banner prefix and the `improvedandconfiguredby @SlurmCloudSupport` operator-credit watermark provide
secondary confirmation.

### Tiếng Việt

Ba tiêu đề mục đã bị loại bỏ khoảng trắng `-----GeolocationData-----`, `-----HardwareInfo-----` và `-----Miscellaneous-----` tạo thành một tổ hợp ba duy nhất - Phemedrone chính thống tạo dữ liệu đầu ra dưới dạng có khoảng trắng `----- Geolocation Data -----` v.v., do đó biến thể của đối tượng bán lại không trùng lặp với bộ phân tích (parser) dành cho các tệp/dấu vết liên quan chính thống. Phần tiền tố banner ASCII-art `,d88b.d88b,` + `CustomStealer` và watermark ghi công đối tượng vận hành `improvedandconfiguredby @SlurmCloudSupport` cung cấp xác nhận bổ sung.

## Observed log variants

### `v_5c7f8582071d840909b78f3edffb7307`

- Format ID: `cs-slurm-cloud-support-phemedrone-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `Custom Stealer`
- Distribution channel: `@SlurmCloudSupport`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_5c7f8582071d840909b78f3edffb7307/Information.txt)
- Sample SHA-256: `d637b2acc8c36ce725bf0ff696e61c1d0d59c18d9acc8cfd35f9ee93cafdafe5`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `88888888888CustomStealer`, ``Y888Y'improvedandconfiguredby@SlurmCloudSupport`
- Field labels: ``Y'Tag`, ``Y8888888Y'18/07/202611`, `Antivirusproducts`, `AutoFills`, `Battery`, `City`, `Clipboardtext`, `Cookies`, `Country`, `CPU`, `CreditCards`, `Extensions`, `FileLocation`, `Files`, `Gaming`, `GPU`, `HardwareID`, `IP`, `MAC`, `Passwords`, `Postal`, `RAM`, `ScreenResolution`, `Uptime`, `Username`, `Wallets`, `Windowsname`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Phemedrone](../phemedrone/)

## Sources

- <https://www.trendmicro.com/en_us/research/24/a/cve-2023-36025-exploited-for-defense-evasion-in-phemedrone-steal.html>
- <https://www.splunk.com/en_us/blog/security/unveiling-phemedrone-stealer-threat-analysis-and-detections.html>
- <https://brandefense.io/blog/phemedrone-stealer-technical-analysis/>
- <https://spycloud.com/blog/phemedrone-stealer/>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.phemedrone_stealer>
- <https://heroic.com/darkhive-breaches/slurm-logs-slurmlogs-uploaded-by-a-telegram-user>

Machine-readable record: [family.json](family.json)
