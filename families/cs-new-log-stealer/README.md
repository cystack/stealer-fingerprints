# CSNewLogStealer

## Overview / Tổng quan

### English

CSNewLogStealer is a CyStack-coined identifier for an
eight-line `Information.txt` panel notification stub observed
inside `!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/` victim folders (e.g.
`1175_CE_<IPv4>_21-10-25/`). The body opens with the
literal banner `⚡️NEW LOG (NOT ENCRYPTED)` (the trailing flag
implies the panel also has an encrypted payload variant),
follows with a comma-separated data line `Username: <user>, Location: <country> [<CC>], <city>`, then enumerates six
emoji-prefixed table-of-contents section names: `🖥General information`, `🌐Browser Data`, `🌐Browser History`,
`🎆Screenshots`, `⚙️Process List`, `📦Desktop Files`. The TOC
entries are *pointers* to sibling sub-folders that ship the
actual harvest inside the per-victim archive; this file is the
panel's notification stub rather than the data itself.

The `(NOT ENCRYPTED)` annotation is the panel's developer side
quirk and serves as the disambiguating signal: no other cataloged format uses this literal. Family attribution is
provisional pending a published threat-intel mapping for this
banner-plus-TOC layout. The closest documented candidates
checked - Continental Stealer, AuraStealer, Mystic Stealer,
Lumma, and the PXA Stealer panel caption - publish different
banner conventions.

### Tiếng Việt

CSNewLogStealer là định danh do CyStack đặt cho một đoạn thông báo panel gồm tám dòng `Information.txt` được phát hiện bên trong các gói tổng hợp kiểu `!! 2025 OCT.part01.rar` nằm trong các thư mục nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/` (ví dụ: `1175_CE_<IPv4>_21-10-25/`). Phần nội dung mở đầu bằng banner nguyên văn `⚡️NEW LOG (NOT ENCRYPTED)` (cờ ở cuối cho thấy panel này còn có biến thể payload được mã hóa), tiếp theo là một dòng dữ liệu phân tách bằng dấu phẩy `Username: <user>, Location: <country> [<CC>], <city>`, sau đó liệt kê sáu tên mục lục (table of contents) có tiền tố emoji: `🖥General information`, `🌐Browser Data`, `🌐Browser History`, `🎆Screenshots`, `⚙️Process List`, `📦Desktop Files`. Các mục trong danh sách này là *con trỏ* trỏ đến các thư mục con liên quan chứa dữ liệu thu thập thực tế bên trong kho lưu trữ theo từng nạn nhân; tệp này chỉ là đoạn thông báo của panel chứ không phải bản thân dữ liệu.

Chú thích `(NOT ENCRYPTED)` là điểm đặc trưng riêng của nhà phát triển panel và đóng vai trò là tín hiệu phân biệt: không có định dạng nào khác trong danh mục sử dụng chuỗi nguyên văn này. Việc quy kết họ mã độc vẫn mang tính tạm thời cho đến khi có ánh xạ tình báo mối đe dọa được công bố cho bố cục banner kèm mục lục này. Các ứng viên tài liệu gần nhất đã được đối chiếu - Continental Stealer, AuraStealer, Mystic Stealer, Lumma, và phần chú thích panel của PXA Stealer - đều sử dụng quy ước banner khác.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator notification stub`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (in sibling Browser Data folder) | Thông tin xác thực và cookie đã lưu trong trình duyệt (trong thư mục liên quan Browser Data) |
| Browser history (in sibling Browser History folder) | Lịch sử duyệt web (trong thư mục liên quan Browser History) |
| Victim screenshots (in sibling Screenshots folder) | Ảnh chụp màn hình của nạn nhân (trong thư mục liên quan Screenshots) |
| Running-process list (in sibling Process List folder) | Danh sách tiến trình đang chạy (trong thư mục liên quan Process List) |
| Desktop files (in sibling Desktop Files folder) | Tệp trên Desktop (trong thư mục liên quan Desktop Files) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the literal `⚡️NEW LOG (NOT ENCRYPTED)`
substring (27 chars including the U+26A1 + U+FE0F lightning
sequence - preserve both glyphs in source) plus the
line-anchored `Username: <user>, Location:` inline-CSV data
line. The banner phrase is distinctive enough on its own
that the data-line check is mainly a sanity guard against
fragments that merely quote the banner phrase out of
context. During triage, treat the family attribution as
unknown: the file is a notification stub with no harvested
credential body, and the underlying stealer cannot be
identified from the TOC alone. The per-victim archive's
sibling sub-folders (`Browser Data/`, `Process List/`,
etc.) carry the actual exfiltrated data and are where any
follow-on family fingerprinting should run.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi nguyên văn `⚡️NEW LOG (NOT ENCRYPTED)` (27 ký tự bao gồm chuỗi ký hiệu tia sét U+26A1 + U+FE0F - cần giữ nguyên cả hai ký tự này trong dữ liệu gốc) cùng với dòng dữ liệu inline-CSV `Username: <user>, Location:` được neo theo dòng. Bản thân cụm từ banner đã đủ đặc trưng, nên việc kiểm tra dòng dữ liệu chủ yếu chỉ đóng vai trò kiểm tra hợp lý (sanity guard) nhằm loại trừ các đoạn dữ liệu chỉ trích dẫn cụm từ banner ngoài ngữ cảnh. Trong quá trình phân loại ban đầu, cần coi việc quy kết họ mã độc là chưa xác định: tệp này chỉ là đoạn thông báo, không chứa phần thông tin xác thực đã thu thập, và không thể xác định mã độc đánh cắp thông tin bên dưới chỉ dựa vào mục lục. Các thư mục con liên quan trong kho lưu trữ theo từng nạn nhân (`Browser Data/`, `Process List/`, v.v.) mới là nơi chứa dữ liệu thực sự đã được đưa ra ngoài, và là nơi cần thực hiện các bước nhận diện họ mã độc tiếp theo.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |

## Related catalog profiles

- [CSEmojiInfoStealer](../cs-emoji-info-stealer/)
- [CSBrowersStealer](../cs-browers-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
