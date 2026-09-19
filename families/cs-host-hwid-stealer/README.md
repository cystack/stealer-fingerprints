# CSHostHwidStealer

## Overview / Tổng quan

### English

CSHostHwidStealer is a CyStack-coined identifier for a
plain `Key: Value` `UserInfo.txt` panel whose HWID field
carries a compound `<8-hex>-<HOSTNAME>` identifier that
embeds the Windows hostname into the second half of the
HWID. Observed inside `BONUS @FATETRAFFIC <count> MIX <DD>-<MM>-<YYYY>.part<N>.rar` aggregator packs at
`[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/UserInfo.txt`
victim folders (for example
`[EG]_@FATETRAFFIC_2026_08_30_62434557/UserInfo.txt`).

Body fields: `IP`, `Country`, `City`, `ISP`, `HWID`, `OS`,
`Username`, `Hostname`, `Language`, `CPU Cores`, `RAM`,
`Disk`, `Display`, followed by a `--- Installed Software ---` triple-dash section header and 2-space-indented
program names one per line (WMI-derived DisplayName strings
from the standard `HKLM\Software\Microsoft\Windows\ CurrentVersion\Uninstall` registry hive). The layout is
plain (no leading-dash prefix unlike Lumma and its Deimos /
BABA / AL variants), lacks the Redline-canonical
`Operation System:` typo and `FileLocation:` / `Build ID:`
anchors, is not YAML (unlike Remus), and does not carry
the Meduza `UserInfo.txt` layout markers or the plain hex
or GUID HWID hashes emitted by Redline, Lumma, Vidar,
Rhadamanthys, StealC, RisePro, Meduza, Acreed, and
MetaStealer.

Attribution is provisional. No curated CTI vendor writeup
or community catalog surveyed at time of integration
documents this exact combination of `UserInfo.txt` filename,
`<hex>-<HOSTNAME>` compound-HWID shape, `--- Installed Software ---` triple-dash section header, and indented
software-inventory bullet layout. The archive-side
`@FATETRAFFIC` handle is an aggregator label documented as
a mixed-source redistributor rather than a stealer builder.

### Tiếng Việt

CSHostHwidStealer là mã định danh do CyStack đặt tên cho một panel `Key: Value` `UserInfo.txt` dạng văn bản thuần, trong đó trường HWID mang một định danh `<8-hex>-<HOSTNAME>` dạng ghép, nhúng tên máy Windows vào nửa sau của HWID. Được ghi nhận bên trong các gói tổng hợp `BONUS @FATETRAFFIC <count> MIX <DD>-<MM>-<YYYY>.part<N>.rar` tại các thư mục nạn nhân `[<CC>]_@FATETRAFFIC_<YYYY>_<MM>_<DD>_<N>/UserInfo.txt` (ví dụ `[EG]_@FATETRAFFIC_2026_08_30_62434557/UserInfo.txt`).

Các trường trong phần nội dung: `IP`, `Country`, `City`, `ISP`, `HWID`, `OS`, `Username`, `Hostname`, `Language`, `CPU Cores`, `RAM`, `Disk`, `Display`, theo sau là tiêu đề mục ba dấu gạch ngang `--- Installed Software ---` và các tên chương trình được thụt lề 2 khoảng trắng, mỗi tên một dòng (các chuỗi DisplayName lấy từ WMI, xuất phát từ registry hive `HKLM\Software\Microsoft\Windows\ CurrentVersion\Uninstall` chuẩn). Bố cục này thuần túy (không có tiền tố gạch đầu dòng như Lumma và các biến thể Deimos / BABA / AL của nó), không có lỗi chính tả đặc trưng của Redline `Operation System:` và các mốc neo `FileLocation:` / `Build ID:`, không phải YAML (khác với Remus), và không mang các dấu hiệu bố cục `UserInfo.txt` của Meduza hay các hash HWID dạng hex thuần hoặc GUID mà Redline, Lumma, Vidar, Rhadamanthys, StealC, RisePro, Meduza, Acreed, và MetaStealer tạo ra.

Việc quy kết hiện chỉ mang tính tạm thời. Không có báo cáo CTI đã qua kiểm duyệt từ nhà cung cấp nào hay danh mục cộng đồng nào được khảo sát tại thời điểm tích hợp ghi nhận đúng sự kết hợp này giữa tên tệp `UserInfo.txt`, cấu trúc dữ liệu HWID dạng ghép `<hex>-<HOSTNAME>`, tiêu đề mục ba dấu gạch ngang `--- Installed Software ---`, và bố cục danh sách phần mềm được thụt lề. Nhãn `@FATETRAFFIC` ở phía kho lưu trữ là nhãn của một bên tổng hợp, được ghi nhận là đơn vị phân phối lại từ nhiều nguồn khác nhau chứ không phải nhà phát triển mã độc đánh cắp thông tin.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `FATETRAFFIC UserInfo.txt with compound HWID`, `HostHwid stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host metadata: hostname, Windows username, language | Metadata của máy: tên máy, tên người dùng Windows, ngôn ngữ |
| OS fingerprint with build number and edition | Dấu vết nhận dạng hệ điều hành kèm số hiệu bản dựng và phiên bản |
| Hardware inventory: CPU core count, installed RAM, disk capacity | Kiểm kê phần cứng: số nhân CPU, dung lượng RAM đã cài đặt, dung lượng ổ đĩa |
| Screen resolution and display configuration | Độ phân giải màn hình và cấu hình hiển thị |
| Full installed-software inventory from the Uninstall registry hive | Danh sách đầy đủ phần mềm đã cài đặt lấy từ registry hive Uninstall |
| Victim public IP plus ISO country code and city | Địa chỉ IP công cộng của nạn nhân kèm mã quốc gia ISO và thành phố |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `--- Installed Software ---`
triple-dash section header literal AND a line-anchored
`HWID:` line. The section-header literal is invariant
across observed samples and cannot collide with any other
registered format; pairing with the HWID line guards
against unrelated documents that might quote the header
string in prose. Canonical Redline declines because of
the absent operator banner and `FileLocation:` /
`Build ID:` keys. Canonical Lumma declines because of
the absent `-` dash prefix on every field. Meduza
declines because its `UserInfo.txt` carries a plain hex
HWID hash rather than the compound `<hex>-<HOSTNAME>`
shape and does not emit a triple-dash section header.
During triage, treat the panel as an unattributed builder
until published research maps the compound-HWID shape to
a specific family.

### Tiếng Việt

Việc nhận diện đòi hỏi phải có chuỗi tiêu đề mục ba dấu gạch ngang `--- Installed Software ---` VÀ một dòng `HWID:` được neo theo dòng. Chuỗi tiêu đề mục này là bất biến trên các mẫu đã quan sát và không thể trùng lặp với bất kỳ định dạng nào khác đã được đăng ký; việc kết hợp với dòng HWID giúp tránh nhầm lẫn với các tài liệu không liên quan có thể trích dẫn chuỗi tiêu đề này trong văn bản thông thường. Redline chuẩn bị loại trừ do thiếu banner của đối tượng vận hành và các khóa `FileLocation:` / `Build ID:`. Lumma chuẩn bị loại trừ do thiếu tiền tố gạch ngang `-` ở mọi trường. Meduza bị loại trừ vì `UserInfo.txt` của nó mang hash HWID dạng hex thuần thay vì cấu trúc dữ liệu ghép `<hex>-<HOSTNAME>`, và không tạo dữ liệu đầu ra là tiêu đề mục ba dấu gạch ngang. Trong quá trình phân loại ban đầu, hãy xem panel này là một công cụ builder chưa được quy kết cho đến khi có nghiên cứu được công bố ánh xạ cấu trúc dữ liệu HWID dạng ghép này với một họ mã độc cụ thể.

## Observed log variants

### `v_4d36d33e840d0ff63e5f43c98ccd5481`

- Format ID: `cs-host-hwid-stealer`
- Observed filenames: `UserInfo.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_4d36d33e840d0ff63e5f43c98ccd5481/UserInfo.txt)
- Sample SHA-256: `1e1d652ea130f45cd07035dce791f514f5e9fd592e8e31820fb95829633dec78`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `City`, `Country`, `CPU Cores`, `Disk`, `Display`, `Hostname`, `HWID`, `IP`, `ISP`, `Language`, `OS`, `RAM`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
