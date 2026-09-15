# CSBrowersStealer

## Overview / Tổng quan

### English

CSBrowersStealer is a CyStack-coined identifier for a
nine-line `Information.txt` panel summary observed inside `!! 2025 OCT.part01.rar`-style aggregator packs in
`<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` victim folders
(e.g. `1110_CA_<IPv4>_18-10-25/`). The body lists IP,
Country (flag emoji + ISO code + country name), Username,
Antivirus, then four standalone section keys `Facebook:`,
`Extensions:`, `Wallets:`, `Applications:` (each carrying a
literal comma-separated value or `None`), and closes with a
pipe-separated count line under the developer-misspelled key
`Browers:` (sic, missing `s`):
`CK:<n>|PW:<n>|AF:<n>|CC:<n>|GG:<n>|TT:<n>|FB:<n>|HOST:<bool>`.
No HWID, hostname, OS, or hardware inventory is shipped, so
the artifact is a victim-side fingerprint view rather than a
full system-info export.

The `CK|PW|AF|CC|FB` subset overlaps with the publicly
documented PXA Stealer count notation, but the per-section
split (standalone `Facebook:`, `Extensions:`, `Wallets:`,
`Applications:` lines rather than the PXA caption single `Data Information:` line), the `Browers:` typo, and the
`GG`/`TT`/`HOST:FALSE` count columns are not described in any
public source. Family attribution is provisional pending a
published threat-intel mapping for this exact panel layout.

### Tiếng Việt

CSBrowersStealer là định danh do CyStack đặt cho một bản tóm tắt panel gồm chín dòng `Information.txt` được quan sát bên trong các gói tổng hợp (aggregator pack) kiểu `!! 2025 OCT.part01.rar` nằm trong các thư mục nạn nhân `<id>_<CC>_<IPv4>_<DD-MM-YY>/Information.txt` (ví dụ `1110_CA_<IPv4>_18-10-25/`). Phần nội dung liệt kê IP, Country (biểu tượng cờ + mã ISO + tên quốc gia), Username, Antivirus, sau đó là bốn khóa mục độc lập `Facebook:`, `Extensions:`, `Wallets:`, `Applications:` (mỗi khóa mang một giá trị dạng chuỗi phân tách bằng dấu phẩy hoặc `None`), và kết thúc bằng một dòng đếm phân tách bằng dấu gạch đứng dưới khóa bị lỗi chính tả do nhà phát triển gõ sai `Browers:` (nguyên văn, thiếu `s`): `CK:<n>|PW:<n>|AF:<n>|CC:<n>|GG:<n>|TT:<n>|FB:<n>|HOST:<bool>`.

Dấu vết này không đi kèm HWID, tên máy, hệ điều hành hay bản kiểm kê phần cứng, do đó đây là một khung nhìn fingerprint phía nạn nhân chứ không phải bản xuất thông tin hệ thống đầy đủ.

Tập con `CK|PW|AF|CC|FB` trùng lặp với ký hiệu đếm của PXA Stealer đã được công khai tài liệu hóa, nhưng cách tách theo từng mục (các dòng `Facebook:`, `Extensions:`, `Wallets:`, `Applications:` độc lập thay vì một dòng caption duy nhất `Data Information:` như của PXA), lỗi chính tả `Browers:`, và các cột đếm `GG`/`TT`/`HOST:FALSE` chưa được mô tả trong bất kỳ nguồn công khai nào. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ thông tin tình báo mối đe dọa đã công bố cho đúng bố cục panel này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `!! 2025 OCT aggregator panel summary`
- Variants observed: **1**
- CyStack observations represented: **15,869**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill (counts only) | Thông tin xác thực, cookie, tự động điền đã lưu trên trình duyệt (chỉ dạng số đếm) |
| Credit-card data (count flag) | Dữ liệu thẻ tín dụng (cờ đếm) |
| Google session artifacts (count, suspected) | Dấu vết phiên Google (số đếm, nghi ngờ) |
| Twitter/X session artifacts (count, suspected) | Dấu vết phiên Twitter/X (số đếm, nghi ngờ) |
| Facebook session cookies (count flag) | Cookie phiên Facebook (cờ đếm) |
| Browser extensions (per-victim list) | Tiện ích mở rộng trình duyệt (danh sách theo từng nạn nhân) |
| Crypto wallet extensions and desktop clients (per-victim list) | Tiện ích mở rộng ví crypto và ứng dụng desktop (danh sách theo từng nạn nhân) |
| Installed applications of interest (per-victim list) | Ứng dụng đã cài đặt đáng chú ý (danh sách theo từng nạn nhân) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `Browers: CK:` substring (the
developer typo plus the leading count column) plus
line-anchored `IP:`, `Country:`, `Username:`, and
`Antivirus:` keys. The misspelling of `Browers` is the
disambiguator: no other cataloged format uses the typo. The lowercase-v `Antivirus:` distinguishes the
format from PXA's caption shape (`AntiVirus:`, as seen in the PXA caption) and the GADS panel-summary shape
(also `AntiVirus:`, as seen in CSGADSPanelStealer).
During triage, treat the family attribution as unknown:
the panel summary lacks the harvested credential bodies
that would allow follow-on family fingerprinting, and the
panel's underlying stealer cannot be identified from the
summary fields alone.

### Tiếng Việt

Việc nhận diện fingerprint đòi hỏi chuỗi con `Browers: CK:` (lỗi chính tả của nhà phát triển cộng với cột đếm ở đầu) cùng với các khóa `IP:`, `Country:`, `Username:` và `Antivirus:` được neo theo dòng. Lỗi chính tả của `Browers` chính là yếu tố phân biệt: không có định dạng nào khác trong danh mục sử dụng lỗi chính tả này. Chữ v viết thường trong `Antivirus:` giúp phân biệt định dạng này với cấu trúc dữ liệu caption của PXA (`AntiVirus:`, như thấy trong caption của PXA) và cấu trúc dữ liệu bản tóm tắt panel GADS (cũng là `AntiVirus:`, như thấy trong CSGADSPanelStealer).

Trong quá trình phân loại ban đầu, nên coi việc quy kết họ mã độc là chưa xác định: bản tóm tắt panel thiếu phần nội dung thông tin xác thực đã thu thập được để có thể tiến hành nhận diện họ mã độc tiếp theo, và không thể xác định mã độc đánh cắp thông tin làm nền tảng cho panel này chỉ từ các trường tóm tắt.

## Observed log variants

### `v_5d3e7c5ff44f847c51a6ef2713ecb340`

- Format ID: `cs-browers-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **15,869**
- Representative sample: [open sample](samples/v_5d3e7c5ff44f847c51a6ef2713ecb340/sample.txt)
- Sample SHA-256: `505d4712952f10ce4695ac9bae96401d5784539458b4d739f8cb6ef082a41c40`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Browers: CK:`
- Field labels: `Antivirus`, `Country`, `Ip`, `Username`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [PXA Stealer](../pxa-stealer/)
- [CSGADSPanelStealer](../csgads-panel-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
