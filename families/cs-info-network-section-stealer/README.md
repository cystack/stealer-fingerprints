# CSInfoNetworkSectionStealer

## Overview / Tổng quan

### English

CSInfoNetworkSectionStealer is a CyStack-coined identifier for
a heavily-padded fixed-width ``_Info.txt`` panel with
underscored field names and ``[Info_Network]`` /
``[Info_Software]`` bracketed-underscore section headers.
Observed inside the ``25 APRIL - 25729 LOGS.part01.rar``
aggregator pack at ``<32-char>_<TIMESTAMP>/_Info.txt`` victim
folders. The 2020-07-10 log timestamp on observed samples
suggests an older builder whose panel-format research
pre-dates current public reporting.

The emitter replaces spaces with underscores inside multi-word
field keys (``Local_Date_and_Time:``, ``OS_Language:``,
``Keyboard_Languages:``, ``Display_Resolution:``) and uses a
paren-with-spaces annotation convention (``UTC ( TimeZone ) :``, ``UserName ( ComputerName ) :``). The ``UTC ( TimeZone )`` value packs a bare 4-digit hhmm offset alongside an IANA
Olson timezone name (``-0400 ( America/New_York )``). Related
to the ``CSStartBuildInfoStealer`` sibling by the
shared ``_Info<...>.txt`` leading-underscore filename
convention and paren-annotated UserName field, but the
specific field-name spellings and bracketed-underscore section
format make it a distinct panel-emit variant.

### Tiếng Việt

CSInfoNetworkSectionStealer là định danh do CyStack đặt cho một panel có định dạng độ rộng cố định được đệm nhiều khoảng trắng ``_Info.txt``, với tên trường sử dụng dấu gạch dưới và các tiêu đề mục dạng ngoặc vuông-gạch dưới ``[Info_Network]`` / ``[Info_Software]``. Được quan sát bên trong gói tổng hợp ``25 APRIL - 25729 LOGS.part01.rar`` tại các thư mục nạn nhân ``<32-char>_<TIMESTAMP>/_Info.txt``. Dấu thời gian log 2020-07-10 trên các mẫu quan sát được cho thấy đây là một builder cũ hơn, có nghiên cứu về định dạng panel diễn ra trước các báo cáo công khai hiện nay.

Bộ phận tạo dữ liệu đầu ra thay thế khoảng trắng bằng dấu gạch dưới trong các khóa trường nhiều từ (``Local_Date_and_Time:``, ``OS_Language:``, ``Keyboard_Languages:``, ``Display_Resolution:``) và sử dụng quy ước chú thích dạng ngoặc đơn có khoảng trắng (``UTC ( TimeZone ) :``, ``UserName ( ComputerName ) :``). Giá trị ``UTC ( TimeZone )`` đóng gói một offset hhmm 4 chữ số thuần túy cùng với tên múi giờ IANA Olson (``-0400 ( America/New_York )``). Có liên quan đến biến thể tương đồng ``CSStartBuildInfoStealer`` thông qua quy ước đặt tên tệp bắt đầu bằng dấu gạch dưới ``_Info<...>.txt`` dùng chung và trường UserName có chú thích dạng ngoặc đơn, nhưng cách viết tên trường cụ thể và định dạng mục theo ngoặc vuông-gạch dưới khiến đây là một biến thể tạo panel riêng biệt.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Info_Network + Info_Software section stealer`, `Underscored-field _Info.txt stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host OS + hardware fingerprint (Windows version + build, CPU with core count, GPU, display resolution, language, IANA Olson timezone) | Dấu vết nhận dạng hệ điều hành + phần cứng máy (phiên bản Windows + build, CPU kèm số nhân, GPU, độ phân giải màn hình, ngôn ngữ, múi giờ IANA Olson) |
| Account identity (user + computer name from the paren-annotated ``UserName ( ComputerName )`` field) | Thông tin định danh tài khoản (tên người dùng + tên máy tính từ trường ``UserName ( ComputerName )`` có chú thích dạng ngoặc đơn) |
| Geo enrichment (IP, country name + ISO code, city) | Dữ liệu làm giàu về vị trí địa lý (IP, tên quốc gia + mã ISO, thành phố) |
| Installed software inventory (bracketed ``[Info_Software]`` section with per-program version tags) | Danh sách phần mềm đã cài đặt (mục ``[Info_Software]`` dạng ngoặc vuông kèm nhãn phiên bản cho từng chương trình) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three line-anchored anchors:
``[Info_Network]``, ``[Info_Software]``, and the
``UserName ( ComputerName ) :`` paren-with-spaces literal.
The bracketed-underscore section headers and the paren-with-spaces literal together are unique across this
catalog. During triage, correlate with the sibling
``CSStartBuildInfoStealer`` variant which
shares the ``_Info<...>.txt`` filename convention but
uses direct labels and tight parens instead of the
underscored + spaced form observed here.

### Tiếng Việt

Việc nhận diện dấu vết cần ba mốc neo cố định theo dòng: ``[Info_Network]``, ``[Info_Software]``, và chuỗi ký tự ``UserName ( ComputerName ) :`` dạng ngoặc đơn có khoảng trắng. Các tiêu đề mục dạng ngoặc vuông-gạch dưới cùng với chuỗi ký tự dạng ngoặc đơn có khoảng trắng là duy nhất trong danh mục này. Trong quá trình phân loại, cần đối chiếu với biến thể tương đồng ``CSStartBuildInfoStealer``, vốn dùng chung quy ước đặt tên tệp ``_Info<...>.txt`` nhưng sử dụng nhãn trực tiếp và dấu ngoặc đơn sát nhau thay vì dạng gạch dưới kết hợp khoảng trắng như quan sát được ở đây.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- [CSStartBuildInfoStealer](../cs-start-build-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
