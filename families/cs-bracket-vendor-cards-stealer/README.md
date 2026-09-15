# CSBracketVendorCardsStealer

## Overview / Tổng quan

### English

CSBracketVendorCardsStealer is a CyStack-coined identifier for
a `CreditCards/` victim-folder layout that ships one cred file
per Chromium-based browser vendor / profile combination,
naming each file after the AppData/Local vendor subdirectory
in square brackets. Observed inside `!! 2025 JUNE.part001.rar`
at `CreditCards/ CreditCards_[AVAST Software]_Default.txt`,
`CreditCards_[BraveSoftware]_Default.txt`, and
`CreditCards_[Microsoft]_Default.txt` siblings.

The bracketed-vendor tokens (`[AVAST Software]`,
`[BraveSoftware]`, `[Microsoft]`, `[Google]`, `[Yandex]`,
etc.) are literal copies of the subdirectory names under
`AppData/Local/<Vendor>/` where Chromium-derivative browsers
keep their User Data tree. The stealer reads each browser's
Web Data SQLite `credit_cards` table and writes one file per
source profile. The cred-file body uses `Exp: <MM/YYYY>` for
expiry. Many files are minimal (expiry-only, ~12 bytes)
because the panel app-bound-encryption bypass returned the
encrypted PAN but could not decrypt it on Chrome builds
shipping hardware-bound session keys.

A public stealer-log format writeup documents the sibling
`Autofills/Google_[Chrome]_Default.txt` /
`Autofills/Microsoft_[Edge]_Default.txt` bracketed-vendor
convention as a generic Chromium-credential-extract shape used
by multiple stealers (RedLine, META, Raccoon, Stealc appear in
the same article), but does not pin the
`CreditCards_[<Vendor>]_<Profile>.txt` shape to a named
family. Family attribution is provisional pending a published
threat-intel mapping for this layout.

### Tiếng Việt

CSBracketVendorCardsStealer là định danh do CyStack đặt cho một bố cục thư mục nạn nhân `CreditCards/`, trong đó chứa một tệp thông tin xác thực cho mỗi cặp trình duyệt gốc Chromium / hồ sơ (profile), đặt tên mỗi tệp theo tên thư mục con vendor trong AppData/Local, được bọc trong dấu ngoặc vuông. Được quan sát bên trong `!! 2025 JUNE.part001.rar` tại `CreditCards/ CreditCards_[AVAST Software]_Default.txt`, cùng với các tệp/dấu vết liên quan `CreditCards_[BraveSoftware]_Default.txt` và `CreditCards_[Microsoft]_Default.txt`.

Các token vendor trong ngoặc vuông (`[AVAST Software]`, `[BraveSoftware]`, `[Microsoft]`, `[Google]`, `[Yandex]`, v.v.) là bản sao nguyên văn của tên thư mục con nằm dưới `AppData/Local/<Vendor>/`, nơi các trình duyệt dẫn xuất từ Chromium lưu trữ cây User Data. Mã độc đánh cắp thông tin đọc bảng `credit_cards` trong SQLite Web Data của từng trình duyệt và ghi ra một tệp cho mỗi hồ sơ nguồn. Nội dung tệp thông tin xác thực sử dụng `Exp: <MM/YYYY>` để biểu thị ngày hết hạn. Nhiều tệp có nội dung tối giản (chỉ chứa ngày hết hạn, khoảng 12 byte) vì kỹ thuật vượt qua app-bound-encryption của panel chỉ lấy được PAN đã mã hóa nhưng không thể giải mã trên các bản Chrome sử dụng khóa phiên gắn với phần cứng.

Một bài viết công khai mô tả định dạng log mã độc đánh cắp thông tin đã ghi nhận quy ước đặt tên vendor trong ngoặc vuông ở các tệp/dấu vết liên quan `Autofills/Google_[Chrome]_Default.txt` / `Autofills/Microsoft_[Edge]_Default.txt` như một cấu trúc dữ liệu trích xuất thông tin xác thực Chromium mang tính tổng quát, được nhiều họ mã độc sử dụng (RedLine, META, Raccoon, Stealc đều xuất hiện trong cùng bài viết), nhưng không gắn cụ thể cấu trúc dữ liệu `CreditCards_[<Vendor>]_<Profile>.txt` này với một họ mã độc được nêu tên. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có bản đồ tình báo mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `CreditCards bracketed-vendor per-browser cred-file split`, `CreditCards_[<Vendor>]_<Profile>.txt layout`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Saved credit cards from Chromium-based browser profiles | Thẻ tín dụng đã lưu từ các hồ sơ trình duyệt gốc Chromium |
| Per-vendor extracts from AppData/Local/<Vendor>/ User Data trees | Dữ liệu trích xuất theo từng vendor từ các cây User Data trong AppData/Local/<Vendor>/ |
| Card PAN and expiry from Web Data SQLite `credit_cards` table | Số PAN và ngày hết hạn thẻ từ bảng `credit_cards` trong SQLite Web Data |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires at least one file at folder root
whose basename matches the regex
`^CreditCards_\[[^\]]+\]_[^.]+\.txt$` (case-insensitive).
The `CreditCards_` prefix, square-bracketed vendor token,
underscore separator, profile name, and `.txt` suffix is
unique enough across this catalog that one match is
sufficient for a structural match. Folder root may also carry an
empty-named packer DIR artifact, which the fingerprint
ignores. During triage, treat the family attribution as
unknown: the underlying Chromium-credential extractor
lineage (RedLine / META / Raccoon / Stealc / fork) cannot
be pinned from the filename alone. Many cred files carry
only an `Exp:` expiry line because the panel bypass
failed to decrypt the PAN, so an observed victim may have no recoverable card numbers but still
attests browser-stored card presence.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu ít nhất một tệp ở gốc thư mục có tên tệp khớp với biểu thức chính quy `^CreditCards_\[[^\]]+\]_[^.]+\.txt$` (không phân biệt hoa thường). Tiền tố `CreditCards_`, token vendor trong ngoặc vuông, dấu gạch dưới phân tách, tên hồ sơ, và hậu tố `.txt` đủ đặc trưng trong danh mục này để chỉ cần một kết quả khớp là đủ cho việc nhận diện cấu trúc. Gốc thư mục cũng có thể chứa một dấu vết DIR của trình đóng gói không có tên, dấu vết này bị bỏ qua khi nhận diện. Trong quá trình phân loại ban đầu, cần coi việc quy kết họ mã độc là chưa xác định: không thể xác định chính xác nguồn gốc của công cụ trích xuất thông tin xác thực Chromium (RedLine / META / Raccoon / Stealc / bản fork) chỉ dựa vào tên tệp. Nhiều tệp thông tin xác thực chỉ chứa một dòng ngày hết hạn `Exp:` vì kỹ thuật vượt qua của panel không giải mã được PAN, do đó một nạn nhân được quan sát có thể không có số thẻ nào có thể khôi phục được nhưng vẫn cho thấy bằng chứng về việc có thẻ được lưu trong trình duyệt.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSCardTargetStealer](../cs-card-target-stealer/)
- [CSCcApostropheStealer](../cs-cc-apostrophe-stealer/)
- [Redline](../redline/)
- [StealC](../steal-c/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
