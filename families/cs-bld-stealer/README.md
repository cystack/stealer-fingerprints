# CSBldStealer

## Overview / Tổng quan

### English

CSBldStealer is a CyStack-coined identifier for a flat
bare-key ``system.txt`` slice with a distinctive short-form
field vocabulary: ``BLD:`` build tag, ``UUID:`` machine UUID,
``PC Name:`` computer name, ``User:`` username, ``AD:`` admin
flag (``+`` / ``-`` sentinel), ``CPU`` / ``GPU`` / ``RAM`` /
``Resolution``, ``System lang:`` UI-language (short-form
``lang``), ``System TimeZone:`` bare-offset key, ``OS:``,
``AV:``, plus a trailing ``Programs:`` installed-software
block.

The short-form abbreviations (``BLD`` / ``AD`` / ``System lang``) do not appear in any public reporting or community
catalog. The panel could be a new .NET stealer, a rebrand of
an existing family, or a private-panel build. Family
attribution is provisional pending a published threat-intel
mapping for this layout.

### Tiếng Việt

CSBldStealer là định danh do CyStack đặt tên cho một cấu trúc dữ liệu phẳng dạng bare-key ``system.txt`` với một tập từ vựng trường dạng viết tắt đặc trưng: ``BLD:`` (thẻ build), ``UUID:`` (UUID máy), ``PC Name:`` (tên máy tính), ``User:`` (tên người dùng), ``AD:`` (cờ admin, sentinel ``+`` / ``-``), ``CPU`` / ``GPU`` / ``RAM`` / ``Resolution``, ``System lang:`` (ngôn ngữ giao diện, dạng viết tắt ``lang``), ``System TimeZone:`` (khóa bare-offset), ``OS:``, ``AV:``, cùng với một khối phần mềm đã cài đặt ``Programs:`` ở cuối.

Các dạng viết tắt ngắn (``BLD`` / ``AD`` / ``System lang``) không xuất hiện trong bất kỳ báo cáo công khai hay danh mục cộng đồng nào. Panel này có thể là một mã độc đánh cắp thông tin .NET mới, một phiên bản đổi thương hiệu của một họ mã độc đã có, hoặc một bản build panel riêng tư. Việc quy kết họ mã độc chỉ mang tính tạm thời cho đến khi có ánh xạ thông tin tình báo đe dọa được công bố cho cấu trúc dữ liệu này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BLD short-form panel`, `System lang / System TimeZone abbreviated variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host hardware and OS fingerprint (CPU, GPU, RAM, resolution, Windows version, UUID) | Dấu vết phần cứng máy và hệ điều hành (CPU, GPU, RAM, độ phân giải, phiên bản Windows, UUID) |
| Account identity (Windows username, computer name, admin flag) | Định danh tài khoản (tên người dùng Windows, tên máy tính, cờ admin) |
| Installed software inventory (per-program name plus version) | Danh mục phần mềm đã cài đặt (tên từng chương trình kèm phiên bản) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three line-anchored short-form
labels together: ``BLD:``, ``System lang:``, and
``System TimeZone:``. The three abbreviations rarely
co-occur outside this panel template; requiring all
three keeps a stray document mentioning only ``BLD:``
in prose from producing a false match. During triage, treat the
underlying stealer family as unattributable and rely
on the parent-folder shape (``<CC> <IPv4> <YYYY-MM-DD> <HH-MM-SS>``) as the correlation anchor. Companion
files (browser exports, wallet artifacts, cookie dumps)
may provide more confident family attribution.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu ba nhãn dạng viết tắt được neo theo dòng xuất hiện cùng nhau: ``BLD:``, ``System lang:``, và ``System TimeZone:``. Ba dạng viết tắt này hiếm khi cùng xuất hiện bên ngoài mẫu panel này; yêu cầu cả ba giúp tránh trường hợp một tài liệu ngẫu nhiên chỉ đề cập đến ``BLD:`` trong văn bản thông thường tạo ra kết quả khớp giả (dương tính giả). Trong quá trình phân loại ban đầu, nên coi họ mã độc đánh cắp thông tin gốc là chưa thể quy kết và dựa vào cấu trúc dữ liệu của thư mục cha (``<CC> <IPv4> <YYYY-MM-DD> <HH-MM-SS>``) làm điểm neo tương quan. Các tệp liên quan (dữ liệu xuất từ trình duyệt, dấu vết ví tiền điện tử, dữ liệu cookie) có thể cung cấp cơ sở quy kết họ mã độc đáng tin cậy hơn.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
