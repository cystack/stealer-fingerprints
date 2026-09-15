# CSSoftUrlPassStealer

## Overview / Tổng quan

### English

CSSoftUrlPassStealer is a CyStack-coined identifier for a
Passwords.txt-shaped block-record file mis-routed to the
``System.txt`` slot inside ``<N> LOGS.rar`` aggregator packs.
Observed inside ``4 APRIL - 2950 LOGS.rar`` at
``JM[<HWID>][<TIMESTAMP>]/System.txt`` victim folders where
the pack builder wrote per-victim credentials under a
``System.txt`` basename rather than the canonical
``Passwords.txt``.

The body is a block-record format with four line-anchored
fields per record in fixed order: ``SOFT:`` (browser
identifier, ``Chrome Profile <N> (<version>)``), ``URL:``
(login origin, HTTPS or Android autofill
``android://<b64hash>@<pkg>/``), ``USER:`` (account handle),
and ``PASS:`` (stored credential). Records are separated by
blank lines. The SOFT/URL/USER/PASS block layout is common
across multiple stealers per a public stealer-log format
writeup (one of five documented Passwords.txt shapes) and
cannot be uniquely mapped to a specific underlying builder
from format alone. Family attribution is provisional pending a
published threat-intel mapping for this specific mis-routing
pattern.

### Tiếng Việt

CSSoftUrlPassStealer là định danh do CyStack đặt cho một tệp bản ghi dạng khối (block-record) có cấu trúc dữ liệu giống Passwords.txt nhưng bị định tuyến nhầm vào vị trí ``System.txt`` bên trong các gói tổng hợp ``<N> LOGS.rar``. Được ghi nhận bên trong ``4 APRIL - 2950 LOGS.rar`` tại các thư mục nạn nhân ``JM[<HWID>][<TIMESTAMP>]/System.txt``, nơi trình đóng gói (pack builder) ghi thông tin xác thực của từng nạn nhân dưới tên tệp cơ sở ``System.txt`` thay vì tên chuẩn ``Passwords.txt``.

Phần nội dung là định dạng bản ghi dạng khối với bốn trường được neo theo dòng trong mỗi bản ghi theo thứ tự cố định: ``SOFT:`` (định danh trình duyệt, ``Chrome Profile <N> (<version>)``), ``URL:`` (nguồn gốc đăng nhập, HTTPS hoặc tự động điền trên Android ``android://<b64hash>@<pkg>/``), ``USER:`` (tên tài khoản), và ``PASS:`` (thông tin xác thực được lưu trữ). Các bản ghi được phân tách bằng dòng trống. Bố cục khối SOFT/URL/USER/PASS này phổ biến trên nhiều mã độc đánh cắp thông tin theo một bài viết công khai về định dạng nhật ký của mã độc đánh cắp thông tin (một trong năm cấu trúc dữ liệu Passwords.txt đã được ghi nhận) và không thể ánh xạ duy nhất về một builder cụ thể chỉ dựa trên định dạng. Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố cho mẫu định tuyến nhầm cụ thể này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `SOFT/URL/USER/PASS block Passwords.txt (mis-routed to System.txt)`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser credentials (Chrome profile passwords), the URL origin the credential belongs to, and the account identifier (email, phone, or username handle) | Thông tin xác thực trình duyệt (mật khẩu hồ sơ Chrome), nguồn gốc URL mà thông tin xác thực thuộc về, và định danh tài khoản (email, số điện thoại, hoặc tên người dùng) |
| Android autofill entries (``android://<b64hash>@<pkg>/`` origins that Chrome for Android replicates into the desktop credential store via Sync) | Các mục tự động điền trên Android (nguồn gốc ``android://<b64hash>@<pkg>/`` mà Chrome dành cho Android sao chép vào kho lưu trữ thông tin xác thực trên máy tính để bàn thông qua Sync) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires four line-anchored anchors, all four
in the same body: ``SOFT:``, ``URL:``, ``USER:``, and
``PASS:``. The four-anchor combination is exclusive to
Passwords.txt-shaped content: no canonical system-info
panel across this catalog carries all four spelling
variants at line start. During incident response, treat
the file as a credentials dump: pull each URL / USER /
PASS triple as a leaked-credential IOC and correlate the
``JM[<HWID>][<TIMESTAMP>]`` sibling folder name for
victim identification.

### Tiếng Việt

Việc nhận diện dấu hiệu đòi hỏi bốn điểm neo theo dòng, tất cả bốn cùng xuất hiện trong cùng một nội dung tệp: ``SOFT:``, ``URL:``, ``USER:``, và ``PASS:``. Sự kết hợp của bốn điểm neo này chỉ dành riêng cho nội dung có cấu trúc dữ liệu giống Passwords.txt: không có bảng thông tin hệ thống chuẩn nào trong danh mục này mang đủ cả bốn biến thể chính tả ở đầu dòng. Trong quá trình ứng phó sự cố, hãy xem tệp này như một bản kết xuất thông tin xác thực: trích xuất từng bộ ba URL / USER / PASS làm dấu hiệu xâm nhập (IOC) về thông tin xác thực bị rò rỉ và đối chiếu tên thư mục liên quan ``JM[<HWID>][<TIMESTAMP>]`` để xác định nạn nhân.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
