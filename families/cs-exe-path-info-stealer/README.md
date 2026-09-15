# CSExePathInfoStealer

## Overview / Tổng quan

### English

CSExePathInfoStealer is a CyStack-coined identifier for a
heavily-padded fixed-width ``system_info.txt`` panel with the
distinctive ``EXE_PATH:`` uppercase-underscore header field.
Observed inside the ``5,6 APRIL - 10250 LOGS.part1.rar``
aggregator pack at ``<32-char>_<TIMESTAMP>/system_info.txt``
victim folders where the archive-name convention with
comma-separated dates mirrors ``CSStartBuildInfoStealer`` (``4,5 MAY``).

Third variant of a common panel-builder family sharing the
paren-annotated ``UserName`` / ``Username`` and heavy
column-alignment style with ``CSStartBuildInfoStealer`` and
``CSInfoNetworkSectionStealer``, but each variant emits a
distinct field-key spelling convention. This variant uses
``Operating system:`` (verbose lowercase-after-first-word),
``Memory ram:`` (lowercase-r ``ram``), ``Video card:``
(spaced), ``Username (Computername):`` (tight parens
lowercase-c), and a single ``[Software]`` bracketed section.

The 2021-01-19 log timestamp on observed samples suggests an
older builder whose panel-format research pre-dates current
public reporting. Family attribution is provisional pending a
published threat-intel mapping.

### Tiếng Việt

CSExePathInfoStealer là định danh do CyStack đặt cho một panel ``system_info.txt`` có định dạng độ rộng cố định với nhiều khoảng đệm, đặc trưng bởi trường tiêu đề chữ hoa-gạch dưới ``EXE_PATH:``. Được quan sát bên trong gói tổng hợp ``5,6 APRIL - 10250 LOGS.part1.rar`` tại ``<32-char>_<TIMESTAMP>/system_info.txt`` thư mục nạn nhân, nơi quy ước đặt tên kho lưu trữ với các ngày phân tách bằng dấu phẩy tương tự ``CSStartBuildInfoStealer`` (``4,5 MAY``).

Đây là biến thể thứ ba của một họ panel-builder phổ biến, có chung trường ``UserName`` / ``Username`` chú thích trong ngoặc đơn và phong cách căn chỉnh cột dày đặc với ``CSStartBuildInfoStealer`` và ``CSInfoNetworkSectionStealer``, nhưng mỗi biến thể tạo dữ liệu đầu ra với quy ước chính tả khóa trường riêng biệt. Biến thể này sử dụng ``Operating system:`` (chữ thường sau từ đầu tiên, dạng đầy đủ), ``Memory ram:`` (chữ r thường ``ram``), ``Video card:`` (có khoảng trắng), ``Username (Computername):`` (ngoặc sát nhau, chữ c thường), và một mục ``[Software]`` duy nhất đặt trong dấu ngoặc vuông.

Dấu thời gian log 2021-01-19 trên các mẫu quan sát được cho thấy đây là một builder cũ, có nghiên cứu định dạng panel diễn ra trước các báo cáo công khai hiện tại. Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `EXE_PATH header stealer`, `Operating system + Memory ram spelling variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host OS and hardware fingerprint (Windows version + build, CPU with lowercase-cores count, GPU with lowercase-second-word Video card key, RAM, display resolution, language) | Dấu vết nhận diện hệ điều hành máy và phần cứng (phiên bản + số bản dựng Windows, CPU với số lõi chữ thường, GPU với khóa Video card từ chữ thường ở từ thứ hai, RAM, độ phân giải màn hình, ngôn ngữ) |
| Account identity (user + computer name from the tight-parens ``Username (Computername)`` field) | Thông tin định danh tài khoản (tên người dùng + tên máy tính từ trường ``Username (Computername)`` ngoặc sát nhau) |
| Harvester install path (``EXE_PATH:`` value points to the random-name .com dropped in a TMP IXP subdir) | Đường dẫn cài đặt trình thu thập (giá trị ``EXE_PATH:`` trỏ đến tệp .com tên ngẫu nhiên được thả trong thư mục con TMP IXP) |
| Installed software inventory (bracketed ``[Software]`` section with per-program version tags) | Danh sách phần mềm đã cài đặt (mục ``[Software]`` trong ngoặc vuông kèm thẻ phiên bản theo từng chương trình) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four line-anchored anchors:
``EXE_PATH:``, ``Operating system:``, ``Memory ram:``, and
``Username (Computername):``. The four-anchor combination
is distinctive across this catalog and disjoint from the
sibling ``CSStartBuildInfoStealer`` and
``CSInfoNetworkSectionStealer`` formats which each require
different key-spelling anchors. During triage, correlate
the ``EXE_PATH:`` value with a TMP IXP subdirectory to
identify the harvester process path.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu bốn điểm neo được neo theo dòng: ``EXE_PATH:``, ``Operating system:``, ``Memory ram:``, và ``Username (Computername):``. Sự kết hợp bốn điểm neo này là đặc trưng riêng trong toàn bộ danh mục và tách biệt với các định dạng liên quan ``CSStartBuildInfoStealer`` và ``CSInfoNetworkSectionStealer``, vốn mỗi định dạng đòi hỏi các điểm neo chính tả khóa khác nhau. Trong quá trình phân loại ban đầu, hãy đối chiếu giá trị ``EXE_PATH:`` với một thư mục con TMP IXP để xác định đường dẫn tiến trình thu thập.

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
- [CSInfoNetworkSectionStealer](../cs-info-network-section-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
