# CSEvelatedTypoInfoStealer

## Overview / Tổng quan

### English

CSEvelatedTypoInfoStealer is a CyStack-coined identifier for
an ``Information.txt`` panel with the distinctive ``Is Evelated:`` typo (sic, ``Evelated`` not ``Elevated``)
admin-flag field. Observed inside the ``28 APRIL - 37817 LOGS2.part01.rar`` aggregator pack at ``[<panel-tag>] <CC>_<IPv4>/<CC>_<IPv4>_<DDMMYYYY>_<HH>_<MM>_<SS>/ Information.txt`` victim folders where the parent folder
prefix uses a ``[<panel-tag>]`` marker like ``[login.live]``
that identifies the victim category (browser sign-in tag,
filesharing tag, etc.).

Field vocabulary is Redline-lineage (``File Location:``,
``HWID:``, ``Machine Name:``, ``Username:``), but the
distinctive ``Is Evelated:`` typo combined with paired
``GPU:`` + ``Graphical Adapter:`` duplicate fields (both
carrying the same adapter query result under two labels), plus
``Screen Resolution:`` (not ``Display Resolution:``),
``Keyboard Layout:`` singular (not ``Keyboard Languages:``
plural), and a ``Clipboard Text:`` raw-clipboard-content
field, makes it a private fork or niche family whose
fingerprint has not been mapped publicly. The 2022-02-26 log
timestamp on observed samples suggests an older builder whose
panel-format research pre-dates current public reporting.
Family attribution is provisional pending a published
threat-intel mapping.

### Tiếng Việt

CSEvelatedTypoInfoStealer là định danh do CyStack đặt cho một panel ``Information.txt`` có lỗi chính tả đặc trưng ``Is Evelated:`` (sic, ``Evelated`` chứ không phải ``Elevated``) trong trường cờ quản trị (admin-flag). Được quan sát bên trong gói tổng hợp ``28 APRIL - 37817 LOGS2.part01.rar`` tại ``[<panel-tag>] <CC>_<IPv4>/<CC>_<IPv4>_<DDMMYYYY>_<HH>_<MM>_<SS>/ Information.txt`` thư mục nạn nhân, nơi tiền tố thư mục cha sử dụng một dấu hiệu ``[<panel-tag>]`` như ``[login.live]`` để xác định danh mục nạn nhân (thẻ đăng nhập trình duyệt, thẻ chia sẻ tệp, v.v.).

Bộ từ vựng trường dữ liệu có nguồn gốc từ Redline (``File Location:``, ``HWID:``, ``Machine Name:``, ``Username:``), nhưng lỗi chính tả đặc trưng ``Is Evelated:`` kết hợp với cặp trường trùng lặp ``GPU:`` + ``Graphical Adapter:`` (cả hai đều mang cùng kết quả truy vấn adapter dưới hai nhãn khác nhau), cùng với ``Screen Resolution:`` (chứ không phải ``Display Resolution:``), ``Keyboard Layout:`` dạng số ít (chứ không phải ``Keyboard Languages:`` số nhiều), và một trường ``Clipboard Text:`` chứa nội dung clipboard thô, khiến đây trở thành một bản fork riêng hoặc một họ mã độc ngách mà dấu vết nhận diện chưa được công bố rộng rãi. Dấu thời gian log 2022-02-26 trên các mẫu quan sát được cho thấy đây là một builder cũ, có nghiên cứu định dạng panel diễn ra trước các báo cáo công khai hiện tại. Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Is Evelated typo stealer`, `Graphical Adapter dual-GPU stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host OS and hardware fingerprint (CPU, GPU with duplicate ``Graphical Adapter`` label, screen resolution, HWID) | Dấu vết nhận diện hệ điều hành máy và phần cứng (CPU, GPU với nhãn ``Graphical Adapter`` trùng lặp, độ phân giải màn hình, HWID) |
| Geo enrichment (IP, country, city, ZIP, timezone with operator-side default timezone-city annotation) | Làm giàu dữ liệu địa lý (IP, quốc gia, thành phố, mã bưu điện, múi giờ kèm chú thích thành phố-múi giờ mặc định phía đối tượng vận hành) |
| Account identity (Windows username, machine name) | Thông tin định danh tài khoản (tên người dùng Windows, tên máy) |
| Current clipboard content at capture time (crypto addresses, magnet links, other high-value clipboard data) | Nội dung clipboard hiện tại tại thời điểm thu thập (địa chỉ tiền mã hóa, liên kết magnet, dữ liệu clipboard giá trị cao khác) |
| Installed software inventory and running process list | Danh sách phần mềm đã cài đặt và danh sách tiến trình đang chạy |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the ``Is Evelated:`` typo substring
and a line-anchored ``Graphical Adapter:`` field. The typo
is uniquely this panel across this catalog: no canonical
Redline / Lumma / Vidar / StealC / Rhadamanthys /
MetaStealer emits the admin flag with the ``Evelated``
misspelling. The ``Clipboard Text:`` field can carry
high-value tokens (crypto wallet addresses, magnet links,
session tokens) so triage should review the clipboard
value alongside browser credential exports.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con lỗi chính tả ``Is Evelated:`` và trường ``Graphical Adapter:`` được neo theo dòng. Lỗi chính tả này là duy nhất đối với panel này trong toàn bộ danh mục: không có họ Redline / Lumma / Vidar / StealC / Rhadamanthys / MetaStealer chuẩn nào tạo dữ liệu đầu ra cờ quản trị với lỗi chính tả ``Evelated``. Trường ``Clipboard Text:`` có thể mang các token giá trị cao (địa chỉ ví tiền mã hóa, liên kết magnet, token phiên), do đó việc phân loại ban đầu nên xem xét giá trị clipboard cùng với dữ liệu xuất thông tin xác thực trình duyệt.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
