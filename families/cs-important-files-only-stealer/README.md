# CSImportantFilesOnlyStealer

## Overview / Tổng quan

### English

CSImportantFilesOnlyStealer is a CyStack-coined
identifier for the most-stripped BRADMAX-redistributed
per-victim ``[<CC>]<IPv4>`` folder shape that ships a
single ``Important Files/`` subdirectory at root plus
the BRADMAX packer's empty-name DIR artifact. Harvested
content lives under ``Important Files/<subfolder>/ <name>.txt``, typically random ``Documents/`` and
``Desktop/`` text notes swept off the victim host.

Observed inside 2024-era BRADMAX aggregator packs at
``!! <YYYY> <MONTH>/@BRADMAX <count> <MONTH>/ [<CC>]<IPv4>/`` paths, distinct from the newer
``@BRADLOGS (BRADMAX) (<NN>)/`` per-victim shape.
The layout has no ``Browsers/`` per-browser credential
section, no aggregate ``Passwords.txt`` or
``All Passwords.txt``, and no ``System.txt`` /
``Information.txt`` system fingerprint - the
aggregator kept only the harvested-files bucket. The
underlying stealer family that captured the original
log cannot be recovered from this stripped shape
because the BRADMAX channel resells multiple families'
logs under a single packer.

### Tiếng Việt

CSImportantFilesOnlyStealer là định danh do CyStack đặt cho cấu trúc thư mục ``[<CC>]<IPv4>`` theo từng nạn nhân bị lược bớt nhiều nhất, được phân phối lại qua BRADMAX, chỉ chứa một thư mục con ``Important Files/`` ở cấp gốc cùng dấu vết DIR không tên đặc trưng của trình đóng gói BRADMAX. Nội dung thu thập được nằm dưới ``Important Files/<subfolder>/ <name>.txt``, thường là các ghi chú văn bản ngẫu nhiên ``Documents/`` và ``Desktop/`` được quét ra từ máy nạn nhân.

Được quan sát bên trong các gói tổng hợp BRADMAX thời kỳ 2024 tại đường dẫn ``!! <YYYY> <MONTH>/@BRADMAX <count> <MONTH>/ [<CC>]<IPv4>/``, khác biệt với cấu trúc thư mục theo từng nạn nhân mới hơn ``@BRADLOGS (BRADMAX) (<NN>)/``. Bố cục này không có mục thông tin xác thực theo từng trình duyệt ``Browsers/``, không có ``Passwords.txt`` hoặc ``All Passwords.txt`` tổng hợp, và không có dấu vết nhận diện hệ thống ``System.txt`` / ``Information.txt`` — bên tổng hợp chỉ giữ lại nhóm tệp đã thu thập. Họ mã độc đánh cắp thông tin gốc đã thu thập log ban đầu không thể khôi phục được từ cấu trúc bị lược bớt này vì kênh BRADMAX bán lại log của nhiều họ mã độc khác nhau dưới một trình đóng gói duy nhất.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX Important Files only bundle`, `BRADMAX 1-dir victim folder`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Random victim-Documents / Desktop text notes swept by the underlying stealer's file-grabber module | Các ghi chú văn bản ngẫu nhiên trong thư mục Documents / Desktop của nạn nhân, được quét bởi mô-đun thu thập tệp của mã độc đánh cắp thông tin gốc |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires three conditions: (1) root
contains an ``Important Files`` directory, (2) the
only other root entry is the BRADMAX packer empty-name
DIR artifact (strict 1-or-2 entry root), and (3) the
system_path ID carries a ``BRADMAX`` or ``BRADLOGS``
token. The path-side anchor excludes generic ``Important Files/``-only folders distributed
through other channels. During triage, treat the
underlying stealer family as unattributable and rely
on the channel + panel_brand metadata to bucket samples
for analyst review.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu ba điều kiện: (1) thư mục gốc chứa một thư mục ``Important Files``, (2) mục còn lại duy nhất ở gốc là dấu vết DIR không tên của trình đóng gói BRADMAX (gốc chỉ có nghiêm ngặt 1 hoặc 2 mục), và (3) system_path ID mang token ``BRADMAX`` hoặc ``BRADLOGS``. Điểm neo phía đường dẫn loại trừ các thư mục chỉ chứa ``Important Files/`` chung chung được phân phối qua các kênh khác. Trong quá trình phân loại ban đầu, hãy coi họ mã độc đánh cắp thông tin gốc là không thể quy kết được và dựa vào metadata channel + panel_brand để nhóm các mẫu phục vụ đánh giá của chuyên gia phân tích.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSBrowsersDisplayStealer](../cs-browsers-display-stealer/)

## Related external families

- `cs-bradmax-category-bundle`
- `cs-applications-discord-bundle`
- `cs-discord-data-tokens-bundle`

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
