# CSExceptionCookiesOnlyStealer

## Overview / Tổng quan

### English

CSExceptionCookiesOnlyStealer is a CyStack-coined identifier
for a LOGS-pack per-victim folder-style IOC shipping only a
``Cookies/`` subdirectory (Netscape cookies.txt dumps) plus
a root-level ``Exception.txt`` file (the harvester panel-side exception log). Observed inside the ``23-24 JUNE - 25597 LOGS.part01.rar`` aggregator pack at
``<CC>- -<HWID>-<TIMESTAMP>/`` victim folders where the
folder name uses a distinctive 2-letter country code + dash
+ 4-space padding + dash + ~30-character alphanumeric HWID +
dash + full dash-separated ISO 8601 timestamp with
microsecond precision.

The LOGS pack ships multiple stealer families (canonical
Lumma, StealC, Mars-fork, AMOS, Cthulhu per prior LOGS-pack
format research), so the minimal cookies-plus-exception-log
layout carries no remaining family signal beyond ``cookie-jar exporter with .NET / Python exception traceback dump``.
The label exists to attribute the artifact by its fingerprint
rather than guessing which stealer harvested the cookie jar.

### Tiếng Việt

CSExceptionCookiesOnlyStealer là định danh do CyStack đặt cho một dấu hiệu nhận biết (IOC) dạng thư mục theo từng nạn nhân trong gói LOGS, chỉ chứa một thư mục con ``Cookies/`` (các bản dump cookies.txt định dạng Netscape) cùng một tệp ``Exception.txt`` ở cấp gốc (nhật ký ngoại lệ phía panel của trình thu thập dữ liệu). Được quan sát bên trong gói tổng hợp ``23-24 JUNE - 25597 LOGS.part01.rar`` tại ``<CC>- -<HWID>-<TIMESTAMP>/`` thư mục nạn nhân, nơi tên thư mục sử dụng một quy ước đặc trưng: mã quốc gia 2 chữ cái + dấu gạch ngang + đệm 4 khoảng trắng + dấu gạch ngang + HWID chữ và số dài khoảng 30 ký tự + dấu gạch ngang + dấu thời gian ISO 8601 đầy đủ phân tách bằng dấu gạch ngang với độ chính xác micro giây.

Gói LOGS phân phối nhiều họ mã độc đánh cắp thông tin (Lumma chuẩn, StealC, bản fork của Mars, AMOS, Cthulhu theo nghiên cứu định dạng gói LOGS trước đây), do đó bố cục tối giản chỉ gồm cookies và nhật ký ngoại lệ không còn mang tín hiệu nhận diện họ mã độc nào ngoài ``cookie-jar exporter with .NET / Python exception traceback dump``. Nhãn này tồn tại nhằm quy kết dấu vết theo đặc điểm nhận dạng của nó thay vì đoán xem họ mã độc đánh cắp thông tin nào đã thu thập lọ cookie này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `LOGS-pack cookies + Exception.txt bundle`, `Space-padded folder-name cookies-only bundle`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser session cookies (Chromium / Firefox) exported as Netscape cookies.txt files per browser profile | Cookies phiên trình duyệt (Chromium / Firefox) được xuất dưới dạng tệp cookies.txt định dạng Netscape theo từng hồ sơ trình duyệt |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the folder root to be a subset of
``{cookies, exception.txt, ""}`` (case-insensitive) with
both ``cookies`` and ``exception.txt`` present, plus at
least two canonical Netscape cookies.txt rows in the cred
file body. The ``Exception.txt`` sibling is typically
non-empty (contains the harvester traceback), distinguishing
this from `CSBradmaxCookiesOnlyStealer` which requires
empty panel-placeholder siblings. During triage, correlate
the folder-name prefix with the LOGS pack archive to
identify the redistributor; the underlying harvester
family is unattributable from the cookies-only layout
alone.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu gốc thư mục là một tập con của ``{cookies, exception.txt, ""}`` (không phân biệt hoa thường), có mặt cả ``cookies`` và ``exception.txt``, cùng ít nhất hai dòng cookies.txt định dạng Netscape chuẩn trong nội dung tệp thông tin xác thực. Tệp liên quan ``Exception.txt`` thường không rỗng (chứa traceback của trình thu thập), giúp phân biệt với `CSBradmaxCookiesOnlyStealer` vốn yêu cầu các tệp liên quan là tệp giữ chỗ rỗng của panel. Trong quá trình phân loại ban đầu, hãy đối chiếu tiền tố tên thư mục với kho lưu trữ gói LOGS để xác định đối tượng phân phối lại; họ mã độc thu thập gốc không thể quy kết được chỉ từ bố cục chỉ chứa cookies.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSBradmaxCookiesOnlyStealer](../cs-bradmax-cookies-only-stealer/)

## Related external families

- `CSDaisyCloudCookiesOnlyStealer`
- `CSBradmaxAppCookiesStealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
