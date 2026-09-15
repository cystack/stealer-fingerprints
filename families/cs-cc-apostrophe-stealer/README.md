# CSCcApostropheStealer

## Overview / Tổng quan

### English

CSCcApostropheStealer is a CyStack-coined identifier for a
minimal three-file victim folder observed inside `!! 2025 NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs at
`[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` victim folders. The pack
ships `cc's.txt` (credit-card listing with apostrophe-s
lowercase naming) plus `cookies.txt` plus `history.txt`, and
sometimes an empty-named packer directory artifact. No
companion system-info file, no passwords dump, no token files.

`cc's.txt` opens with the panel's 5-column pipe-header `Name on Card | Expiration Month | Expiration Year | Card Number | Date Modified` (double-space-pipe-double-space separators).
Per-card rows follow when the victim had saved cards; victims
with no saved cards produce a header-only file (~89 bytes).
The apostrophe-s filename is the distinguishing feature:
canonical Lumma / Vidar / Redline / StealC /
Phantom-documented credit-card files use `cards.txt` /
`CC.txt` / `CreditCards.txt`, never the `cc's.txt` form.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and
community catalogues do not document a stealer that emits
exactly this `cc's.txt` + `cookies.txt` + `history.txt` shape
with the pipe-header credit-card file. The column-style
writing pattern is consistent with Stealerium and its forks
(public reporting documents Stealerium and Phantom as one fork
lineage), but no public Stealerium / Phantom analysis attests
the `cc's.txt` apostrophe filename, so the family attribution
stays unknown.

### Tiếng Việt

CSCcApostropheStealer là một định danh do CyStack đặt cho một thư mục nạn nhân tối giản gồm ba tệp, được phát hiện bên trong `!! 2025 NOV.part001.rar` BRADMAX / `@BRADLOGS` aggregator packs tại `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/` thư mục nạn nhân. Gói này chứa `cc's.txt` (danh sách thẻ tín dụng với cách đặt tên apostrophe-s chữ thường) cộng với `cookies.txt` và `history.txt`, và đôi khi có một dấu vết thư mục packer không đặt tên. Không có tệp thông tin hệ thống đi kèm, không có bản dump mật khẩu, không có tệp token.

`cc's.txt` mở đầu bằng dòng tiêu đề 5 cột dùng dấu pipe của panel `Name on Card | Expiration Month | Expiration Year | Card Number | Date Modified` (dấu phân cách khoảng-trắng-kép-pipe-khoảng-trắng-kép). Các hàng theo từng thẻ sẽ xuất hiện tiếp theo nếu nạn nhân có lưu thẻ; nạn nhân không lưu thẻ nào sẽ tạo ra tệp chỉ có tiêu đề (~89 byte). Tên tệp dạng apostrophe-s là đặc điểm phân biệt: các tệp thẻ tín dụng đã được ghi nhận của Lumma / Vidar / Redline / StealC / Phantom sử dụng `cards.txt` / `CC.txt` / `CreditCards.txt`, chứ không bao giờ dùng dạng `cc's.txt`.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ có một ánh xạ tình báo mối đe dọa được công bố cho bố cục này. Các báo cáo công khai và các danh mục cộng đồng không ghi nhận bất kỳ mã độc đánh cắp thông tin nào tạo dữ liệu đầu ra đúng theo cấu trúc `cc's.txt` + `cookies.txt` + `history.txt` này kèm tệp thẻ tín dụng có tiêu đề dùng dấu pipe. Kiểu ghi dữ liệu theo cột này phù hợp với Stealerium và các bản fork của nó (các báo cáo công khai ghi nhận Stealerium và Phantom thuộc cùng một dòng fork), nhưng không có phân tích công khai nào về Stealerium / Phantom xác nhận tên tệp apostrophe `cc's.txt` này, do đó việc quy kết họ mã độc vẫn chưa xác định.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX 3-file cc/cookies/history minimal pack`, `cc apostrophe-s pipe-header layout`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credit-card numbers (with expiry and name) | Số thẻ tín dụng đã lưu trên trình duyệt (kèm ngày hết hạn và tên chủ thẻ) |
| Browser cookies | Cookie trình duyệt |
| Browser history | Lịch sử duyệt web |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires (a) `cc's.txt` AND `cookies.txt`
AND `history.txt` in the folder root, (b) root-entry
count <= 4 (the optional fourth entry is an empty-named
packer DIR), and (c) the `Name on Card | Expiration Month | Expiration Year | Card Number | Date Modified` pipe-header literal in the `cc's.txt` body.
The header anchor fires even on victims with no saved
cards because the panel writes the header row
unconditionally. The 3-file root-entry cap distinguishes larger Lumma-shaped folders (which require
`All_Passwords.txt` + `passwords.txt` + `cookies.txt` +
`history.txt` as documented in the Lumma profile). During triage,
treat the family attribution as unknown: the underlying
stealer builder cannot be identified from the 3-file
shape plus pipe-header alone.

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu (a) `cc's.txt` VÀ `cookies.txt` VÀ `history.txt` nằm tại gốc thư mục, (b) số lượng mục ở gốc <= 4 (mục thứ tư tùy chọn là một thư mục (DIR) packer không đặt tên), và (c) chuỗi tiêu đề dùng dấu pipe `Name on Card | Expiration Month | Expiration Year | Card Number | Date Modified` xuất hiện trong nội dung `cc's.txt`. Mốc nhận diện tiêu đề này vẫn kích hoạt ngay cả với nạn nhân không lưu thẻ nào, vì panel luôn ghi dòng tiêu đề một cách vô điều kiện. Giới hạn tối đa 3 tệp ở gốc giúp phân biệt với các thư mục có cấu trúc Lumma lớn hơn (yêu cầu `All_Passwords.txt` + `passwords.txt` + `cookies.txt` + `history.txt` như đã mô tả trong hồ sơ Lumma). Trong quá trình phân loại ban đầu, cần coi việc quy kết họ mã độc là chưa xác định: không thể xác định được trình dựng (builder) mã độc đánh cắp thông tin gốc chỉ dựa trên cấu trúc 3 tệp cùng tiêu đề dùng dấu pipe.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Stealerium](../stealerium/)
- [Phantom Stealer](../phantom-stealer/)
- [CSWifiBackslashNStealer](../cs-wifi-backslash-n-stealer/)
- [CSSoftHostStealer](../cs-soft-host-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
