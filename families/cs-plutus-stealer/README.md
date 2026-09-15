# CSPlutusStealer

## Overview / Tổng quan

### English

CSPlutusStealer is a CyStack-coined identifier for the
``Plutus Stealer v 3.0`` ``SystemInfo.txt`` panel. The malware
self-brands via a Figlet ``Plutus`` ASCII-art banner and a
bare ``Plutus Stealer v <MAJOR>.<MINOR>`` line, followed by
five uppercase bracket sections in fixed order: ``[GENERAL]``,
``[LOCATION]``, ``[SYSTEM]``, ``[HARDWARE]``, ``[CLIPBOARD]``.

The ``[GENERAL]`` block carries a two-line ``Build Tag`` +
``Build Version`` panel-versioning pair, a ``Machine Id``
panel-issued victim identifier (two-letter panel prefix plus a
24-character alphanumeric tail), an ``Is running as admin``
boolean flag, and a ``File Location`` path pointing at the
malware install location. The ``[LOCATION]`` block reports IP
plus a full geo-IP profile (Country, ISO, City, ZIP, Postal,
Time Zone with Olson name and UTC offset, Location with
European comma-decimal latitude / longitude). The
``[HARDWARE]`` block ships a Windows registry ``MachineGuid``
wrapped in curly braces under the ``HWID`` key, distinct from
the panel-issued ``Machine Id`` above. The ``[CLIPBOARD]``
block captures the foreground clipboard contents at capture
time and can carry chat fragments and account-transfer
templates in the victim locale.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting returns
no hits for a ``Plutus Stealer`` name paired with an
infostealer format. Community catalogues also carry no
attestation. The operator self-brand is preserved verbatim in
``panel_brand`` but not trusted as an attribution mapping.
Update this tracking profile when a public writeup identifies
the underlying builder.

The single observed pack was delivered through the
``@bugatti_cloud`` Telegram channel, a publicly catalogued
multi-family stealer-log aggregator. Sibling slices of the
same channel already carry DCRat, BracketSection, and
CyStack-coined variants; this Plutus-branded slice extends
that portfolio.

### Tiếng Việt

CSPlutusStealer là định danh do CyStack đặt cho bảng điều khiển ``Plutus Stealer v 3.0`` ``SystemInfo.txt``. Mã độc tự gắn thương hiệu qua banner ASCII-art ``Plutus`` dạng Figlet và một dòng đơn giản ``Plutus Stealer v <MAJOR>.<MINOR>``, theo sau là năm mục ngoặc vuông viết hoa theo thứ tự cố định: ``[GENERAL]``, ``[LOCATION]``, ``[SYSTEM]``, ``[HARDWARE]``, ``[CLIPBOARD]``.

Khối ``[GENERAL]`` mang theo cặp thông tin phiên bản bảng điều khiển gồm hai dòng ``Build Tag`` + ``Build Version``, một định danh nạn nhân do bảng điều khiển cấp gọi là ``Machine Id`` (tiền tố hai chữ cái của bảng điều khiển cộng với chuỗi đuôi 24 ký tự chữ và số), một cờ boolean ``Is running as admin``, và một đường dẫn ``File Location`` trỏ đến vị trí cài đặt mã độc. Khối ``[LOCATION]`` báo cáo địa chỉ IP cùng hồ sơ định vị địa lý theo IP đầy đủ (Country, ISO, City, ZIP, Postal, Time Zone kèm tên Olson và độ lệch UTC, Location với vĩ độ / kinh độ dùng dấu phẩy thập phân kiểu châu Âu). Khối ``[HARDWARE]`` chứa ``MachineGuid`` trong registry Windows được bọc trong dấu ngoặc nhọn dưới khóa ``HWID``, khác biệt với ``Machine Id`` do bảng điều khiển cấp nêu ở trên. Khối ``[CLIPBOARD]`` ghi lại nội dung clipboard đang hiển thị tại thời điểm thu thập và có thể mang các đoạn hội thoại cùng mẫu chuyển khoản tài khoản theo ngôn ngữ địa phương của nạn nhân.

Việc quy kết họ mã độc hiện còn tạm thời, chờ một ánh xạ tình báo mối đe dọa được công bố cho bố cục này. Các báo cáo công khai không cho ra kết quả nào khi tra cứu tên ``Plutus Stealer`` gắn với định dạng infostealer. Các danh mục cộng đồng cũng không có xác nhận nào. Thương hiệu tự nhận của đối tượng vận hành được giữ nguyên văn trong ``panel_brand`` nhưng không được tin cậy như một ánh xạ quy kết. Cập nhật hồ sơ theo dõi này khi có bài viết công khai xác định được builder gốc.

Gói mẫu duy nhất được quan sát được phân phối qua kênh Telegram ``@bugatti_cloud``, một bộ tổng hợp log đánh cắp thông tin đa họ mã độc đã được lập danh mục công khai. Các lát cắt liên quan của cùng kênh này đã mang DCRat, BracketSection, và các biến thể do CyStack đặt tên; lát cắt mang thương hiệu Plutus này mở rộng thêm danh mục đó.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Plutus Stealer`, `Plutus Stealer v 3.0`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (indicated by the stealer nomenclature and the WinRAR SFX temp-folder install-path shape) | Thông tin xác thực và cookie đã lưu trong trình duyệt (được chỉ ra qua cách đặt tên stealer và cấu trúc đường dẫn cài đặt thư mục tạm của WinRAR SFX) |
| Clipboard contents at capture time via the ``[CLIPBOARD]`` section (chat fragments, account-transfer templates in the victim locale) | Nội dung clipboard tại thời điểm thu thập qua mục ``[CLIPBOARD]`` (các đoạn hội thoại, mẫu chuyển khoản tài khoản theo ngôn ngữ địa phương của nạn nhân) |
| System hardware and locale fingerprint (OS, CPU, GPU, RAM, HWID / MachineGuid, screen resolution, keyboard layouts) | Dấu vết nhận dạng phần cứng hệ thống và ngôn ngữ địa phương (OS, CPU, GPU, RAM, HWID / MachineGuid, độ phân giải màn hình, bố cục bàn phím) |
| Geo-IP profile (Country, ISO, City, ZIP, Postal, Olson timezone, latitude / longitude) | Hồ sơ định vị địa lý theo IP (Country, ISO, City, ZIP, Postal, múi giờ Olson, vĩ độ / kinh độ) |

## Detection notes / Ghi chú nhận diện

### English

Line-anchored ``Plutus Stealer v`` self-brand (with the
trailing space and a version digit immediately after) plus the
``[GENERAL]`` section marker on its own line is the cleanest
fingerprint pair. Neither alone is safe: a public writeup or
catalog entry may quote the family name in prose without
carrying the uppercase bracketed section headers, and a stray
README with a ``[GENERAL]`` section may share the header
spelling without the self-brand. During triage, treat the
panel-issued ``Machine Id`` and the ``HWID`` MachineGuid as
separate identifiers: the former is the operator-side victim
key (useful for correlating multiple logs from the same
infection) while the latter is the host fingerprint (useful
for correlating across families).

### Tiếng Việt

Cặp dấu hiệu nhận diện rõ ràng nhất là dòng tự gắn thương hiệu ``Plutus Stealer v`` được neo theo dòng (kèm khoảng trắng cuối và một chữ số phiên bản ngay sau đó) kết hợp với mục đánh dấu ``[GENERAL]`` nằm trên một dòng riêng. Không dấu hiệu nào an toàn khi đứng riêng lẻ: một bài viết công khai hoặc mục danh mục có thể trích dẫn tên họ mã độc trong văn xuôi mà không mang theo các tiêu đề mục viết hoa trong ngoặc vuông, còn một tệp README ngẫu nhiên có mục ``[GENERAL]`` có thể trùng cách viết tiêu đề mà không có dòng tự gắn thương hiệu. Trong quá trình phân loại ban đầu, hãy coi ``Machine Id`` do bảng điều khiển cấp và ``HWID`` MachineGuid là hai định danh riêng biệt: cái trước là khóa nạn nhân phía đối tượng vận hành (hữu ích để liên kết nhiều log từ cùng một lần lây nhiễm), trong khi cái sau là dấu vết nhận dạng máy (hữu ích để liên kết dữ liệu qua nhiều họ mã độc khác nhau).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- None recorded.

## Observed distribution channels

- <https://t.me/bugatti_cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
