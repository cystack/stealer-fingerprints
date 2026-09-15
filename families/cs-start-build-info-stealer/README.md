# CSStartBuildInfoStealer

## Overview / Tổng quan

### English

CSStartBuildInfoStealer is a CyStack-coined identifier for a
fixed-width column-aligned ``_Information.txt`` panel observed
inside the ``4,5 MAY - 5433 LOGS2.part1.rar`` aggregator pack
at ``[<CC>][<HWID>]/_Information.txt`` victim folders. The
panel uses a distinctive ``Start Build:`` first-line field
whose value is the harvester's running executable path
(typically ``C:\WINDOWS\SysWOW64\nslookup.exe`` when the
stealer process-hollowed into a Windows built-in), followed by
fixed-width column-aligned key/value pairs where every value
starts at column 25.

Distinctive fields include ``UserName (ComputerName):`` with a
paren-annotated ``<user> (<hostname>)`` value, ``Total RAM:``
with the ``Total`` prefix, ``CPU:`` with a parenthesised
``(Cores: N)`` suffix, ``Display Resolution:`` with spaces
around the ``x``, ``UTC:`` as a bare 4-digit hhmm offset
without colon, and a bracketed ``[Installed software]``
section header followed by a free-form program-list body. The
2020-12-17 log timestamp on observed samples suggests an older
builder whose panel-format research pre-dates current public
reporting. Family attribution is provisional pending a
published threat-intel mapping.

### Tiếng Việt

CSStartBuildInfoStealer là định danh do CyStack đặt tên cho một bảng thông tin ``_Information.txt`` được căn cột theo chiều rộng cố định, quan sát được bên trong gói tổng hợp ``4,5 MAY - 5433 LOGS2.part1.rar`` tại các thư mục nạn nhân ``[<CC>][<HWID>]/_Information.txt``. Bảng thông tin này có dòng đầu tiên đặc trưng ``Start Build:`` với giá trị là đường dẫn tệp thực thi đang chạy của công cụ thu thập dữ liệu (thường là ``C:\WINDOWS\SysWOW64\nslookup.exe`` khi mã độc đánh cắp thông tin thực hiện process hollowing vào một tiến trình có sẵn của Windows), theo sau là các cặp khóa/giá trị được căn cột theo chiều rộng cố định, trong đó mọi giá trị đều bắt đầu từ cột 25.

Các trường đặc trưng bao gồm ``UserName (ComputerName):`` với giá trị dạng ``<user> (<hostname>)`` được chú thích trong ngoặc đơn, ``Total RAM:`` có tiền tố ``Total``, ``CPU:`` có hậu tố dạng ``(Cores: N)`` trong ngoặc đơn, ``Display Resolution:`` có khoảng trắng bao quanh ký tự ``x``, ``UTC:`` là độ lệch hhmm gồm 4 chữ số trần không có dấu hai chấm, và tiêu đề mục ``[Installed software]`` trong ngoặc vuông theo sau là phần nội dung danh sách chương trình dạng tự do. Dấu thời gian nhật ký ngày 2020-12-17 trên các mẫu quan sát được cho thấy đây có thể là một công cụ xây dựng (builder) đời cũ hơn, có nghiên cứu về định dạng bảng thông tin xuất hiện trước các báo cáo công khai hiện nay. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ một ánh xạ tình báo mối đe dọa đã công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Start Build Information.txt stealer`, `Column-aligned nslookup.exe process-hollow stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host OS + hardware fingerprint (Windows version + build, CPU with core count, GPU, RAM, resolution, language, timezone offset) | Dấu vết nhận dạng hệ điều hành máy + phần cứng (phiên bản Windows + số build, CPU kèm số lõi, GPU, RAM, độ phân giải, ngôn ngữ, độ lệch múi giờ) |
| Account identity (user name + computer name from the paren-annotated ``UserName (ComputerName)`` field) | Danh tính tài khoản (tên người dùng + tên máy tính từ trường ``UserName (ComputerName)`` được chú thích trong ngoặc đơn) |
| Installed software inventory (bracketed ``[Installed software]`` section with per-program version tags) | Danh sách phần mềm đã cài đặt (mục ``[Installed software]`` trong ngoặc vuông kèm thẻ phiên bản cho từng chương trình) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four line-anchored anchors: ``Start Build:``, ``UserName (ComputerName):``, ``Total RAM:``, and
the ``[Installed software]`` bracketed section header. The
four-anchor combination is unique across this catalog.
During triage, correlate the ``Start Build:`` value with the
stealer process-hollow target (a Windows built-in exe path
like ``nslookup.exe`` is a strong process-hollow indicator).
The path-embedded HWID and country code fall out of the
``[<CC>][<HWID>]`` folder name convention; the body itself
does not emit IP or country fields.

### Tiếng Việt

Dấu hiệu nhận diện đòi hỏi bốn mốc neo theo dòng: ``Start Build:``, ``UserName (ComputerName):``, ``Total RAM:``, và tiêu đề mục ``[Installed software]`` trong ngoặc vuông. Tổ hợp bốn mốc neo này là duy nhất trong toàn bộ danh mục này. Trong quá trình phân loại, hãy đối chiếu giá trị ``Start Build:`` với mục tiêu process hollowing của mã độc đánh cắp thông tin (một đường dẫn tệp thực thi có sẵn của Windows như ``nslookup.exe`` là dấu hiệu mạnh cho thấy có process hollowing). HWID và mã quốc gia gắn trong đường dẫn được suy ra từ quy ước đặt tên thư mục ``[<CC>][<HWID>]``; bản thân nội dung bảng thông tin không tạo dữ liệu đầu ra về trường IP hay quốc gia.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1055.012](https://attack.mitre.org/techniques/T1055/012/) | Process Hollowing | Process Hollowing (thay thế mã trong tiến trình) |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
