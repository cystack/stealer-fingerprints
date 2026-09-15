# CSOlsonTzGeoStealer

## Overview / Tổng quan

### English

CSOlsonTzGeoStealer is a CyStack-coined identifier for a
minimal 5-field geo-only ``info.txt`` panel observed inside
the ``25-26 JUNE - 5000 LOGS2.rar`` aggregator pack. The
panel emits only ``City``, ``Region``, ``IP``, ``TimeZone``,
and ``ZIP`` fields with a distinctive tight-colon convention
(no space between the colon and the value) and an IANA / Olson
timezone format (``TimeZone:Europe/Paris`` instead of the
``UTC±HH:MM`` offset shape most canonical stealers emit).
The 5-field set matches an ``ipinfo.io`` or ``ip-api.com``
geo-lookup response verbatim, so the underlying builder is
likely a Python-based stealer that ships the raw geo-API
response as its ``info.txt``.

No banner, no HWID line, no host fingerprint (OS, CPU, RAM,
user, hostname all absent). The HWID appears in the folder-path prefix ``<CC>[<HWID>][<TIMESTAMP>]/`` but the body
itself is heavily truncated. Family attribution is
provisional pending a published threat-intel mapping.

### Tiếng Việt

CSOlsonTzGeoStealer là định danh do CyStack đặt cho một panel tối giản dạng ``info.txt`` chỉ chứa 5 trường thông tin địa lý, được phát hiện trong bộ gói tổng hợp ``25-26 JUNE - 5000 LOGS2.rar``. Panel này chỉ tạo dữ liệu đầu ra gồm các trường ``City``, ``Region``, ``IP``, ``TimeZone``, và ``ZIP`` với một quy ước dấu hai chấm sát đặc trưng (không có khoảng trắng giữa dấu hai chấm và giá trị) và định dạng múi giờ IANA/Olson (``TimeZone:Europe/Paris`` thay vì cấu trúc dữ liệu lệch giờ ``UTC±HH:MM`` mà hầu hết các mã độc đánh cắp thông tin kinh điển tạo ra).

Tập 5 trường này khớp chính xác từng chữ với phản hồi tra cứu địa lý (geo-lookup) từ ``ipinfo.io`` hoặc ``ip-api.com``, do đó builder gốc nhiều khả năng là một mã độc đánh cắp thông tin viết bằng Python, đưa trực tiếp phản hồi thô từ geo-API vào làm ``info.txt`` của nó.

Không có banner, không có dòng HWID, không có dấu vết nhận dạng máy (thiếu hoàn toàn OS, CPU, RAM, user, hostname). HWID xuất hiện trong tiền tố đường dẫn thư mục ``<CC>[<HWID>][<TIMESTAMP>]/`` nhưng phần nội dung chính lại bị cắt xén nặng. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ có bản đồ tình báo về mối đe dọa được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Olson TZ geo-only info.txt`, `Tight-colon 5-field geo panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Geo-IP enrichment only: victim IP, city, region name, ZIP / postal code, IANA timezone name | Chỉ làm giàu dữ liệu Geo-IP: IP của nạn nhân, thành phố, tên khu vực, mã ZIP/mã bưu chính, tên múi giờ IANA |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four line-anchored no-space-after-colon
anchors: ``City:``, ``Region:``, ``ZIP:``, and ``TimeZone:``
followed by an Olson-format value. The combination is
distinctive across this catalog. During triage, correlate with
companion files in the victim folder (browser exports,
wallet artifacts, cookie dumps, credential stores) to identify
the underlying stealer family. The `info.txt` contributes only the geo block; use companion credential artifacts to establish the underlying family.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu bốn mốc gắn theo dòng không có khoảng trắng sau dấu hai chấm: ``City:``, ``Region:``, ``ZIP:``, và ``TimeZone:`` theo sau bởi giá trị theo định dạng Olson. Sự kết hợp này là đặc trưng riêng biệt trong danh mục này. Trong quá trình phân loại ban đầu, cần đối chiếu với các tệp liên quan trong thư mục nạn nhân (dữ liệu xuất từ trình duyệt, dấu vết ví điện tử, dữ liệu cookie, kho lưu trữ thông tin xác thực) để xác định họ mã độc đánh cắp thông tin gốc. `info.txt` chỉ đóng góp phần khối dữ liệu địa lý; hãy sử dụng các dấu vết thông tin xác thực liên quan để xác định họ mã độc gốc.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
