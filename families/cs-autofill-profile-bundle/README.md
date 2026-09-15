# CSAutofillProfileBundle

## Overview / Tổng quan

### English

CSAutofillProfileBundle is a CyStack-coined identifier
for the per-browser-per-profile autofill leaf folder
`Autofill/<browser><profile>/autofill.txt` observed
inside `202605112215_MAY 09 - 20614 LOGS2.part01.rar`
aggregator packs at `-[<32-hex-md5>]/Autofill/...`
victim paths. The leaf-folder basename jams browser and
profile names together in lowercase (`googledefault`,
`chromedefault`, `edgedefault`) rather than the
underscore-or-bracket-separated forms documented for
Vidar / RedLine / Lumma per-browser autofill grabs.

The `MAY 09 - 20614 LOGS2` pack belongs to the same
operator series as the `MAY 02 - 8230 LOGS2` packs
carrying `CSTikTokAccountBundle` /
`CSNetflixCookiesBundle` /
`CSCommonFilesCategoryBundle` victims. The dash-prefixed bracketed-MD5 parent folder convention
(`-[<32-hex>]`) is a variant of the same operator's
bracketed-MD5 naming.

Each leaf `autofill.txt` carries one
`<field_name>: <value>` line per harvested Chromium
autofill entry. The reference sample is 8 bytes
(`c9: test`, a single field-id-prefixed key/value
pair), suggesting victims with minimal or test
autofill state on the targeted profile.

### Tiếng Việt

CSAutofillProfileBundle là định danh do CyStack đặt cho thư mục lá autofill theo từng trình duyệt-hồ sơ `Autofill/<browser><profile>/autofill.txt` được quan sát bên trong các gói tổng hợp `202605112215_MAY 09 - 20614 LOGS2.part01.rar` tại các đường dẫn nạn nhân `-[<32-hex-md5>]/Autofill/...`. Tên cơ sở của thư mục lá ghép tên trình duyệt và tên hồ sơ lại với nhau theo dạng chữ thường (`googledefault`, `chromedefault`, `edgedefault`) thay vì các dạng phân tách bằng dấu gạch dưới hoặc dấu ngoặc vuông đã được ghi nhận đối với các lượt thu thập autofill theo từng trình duyệt của Vidar / RedLine / Lumma.

Gói `MAY 09 - 20614 LOGS2` thuộc cùng chuỗi đối tượng vận hành với các gói `MAY 02 - 8230 LOGS2` mang nạn nhân `CSTikTokAccountBundle` / `CSNetflixCookiesBundle` / `CSCommonFilesCategoryBundle`. Quy ước thư mục cha có tiền tố dấu gạch ngang kèm MD5 trong dấu ngoặc vuông (`-[<32-hex>]`) là một biến thể của cách đặt tên MD5-trong-ngoặc-vuông của cùng đối tượng vận hành đó.

Mỗi `autofill.txt` lá mang một dòng `<field_name>: <value>` cho mỗi mục autofill Chromium đã thu thập được. Mẫu tham chiếu có kích thước 8 byte (`c9: test`, một cặp khóa/giá trị duy nhất có tiền tố id trường), cho thấy nạn nhân có trạng thái autofill tối thiểu hoặc mang tính thử nghiệm trên hồ sơ bị nhắm tới.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Autofill per-profile bundle`, `Browser-profile autofill leaf folder`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Chromium browser autofill entries from the `autofill_entries` SQLite table (form field names and saved values) | Các mục autofill của trình duyệt Chromium từ bảng SQLite `autofill_entries` (tên trường biểu mẫu và giá trị đã lưu) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires `system_path` to be a folder, its
id to contain `/Autofill/` (case-sensitive), its
basename to match a lowercase-alphanumeric 4-30 char
shape, and the folder root to contain `autofill.txt`.
The four-anchor combination excludes random or spaced folder names that happen to live
under any `Autofill/` parent. False-positive risk is
low because the strict basename guard rules out the
spaced or bracket-suffixed naming used by documented
stealer-family autofill layouts. During triage, the
parent victim folder convention (`-[<32-hex-md5>]`)
plus the LOGS2 archive name help bucket victims back
to the operator pack.

### Tiếng Việt

Việc nhận diện dấu hiệu đòi hỏi `system_path` phải là một thư mục, id của nó phải chứa `/Autofill/` (phân biệt chữ hoa/thường), tên cơ sở của nó phải khớp với cấu trúc dữ liệu chữ-số thường dài 4-30 ký tự, và thư mục gốc phải chứa `autofill.txt`. Sự kết hợp bốn điểm neo này loại trừ các tên thư mục ngẫu nhiên hoặc có khoảng trắng tình cờ nằm dưới bất kỳ thư mục cha `Autofill/` nào. Nguy cơ dương tính giả ở mức thấp vì điều kiện chặt chẽ về tên cơ sở đã loại trừ cách đặt tên có khoảng trắng hoặc hậu tố trong ngoặc vuông được dùng trong các bố cục autofill của những họ mã độc đánh cắp thông tin đã được ghi nhận. Trong quá trình phân loại ban đầu, quy ước thư mục nạn nhân cha (`-[<32-hex-md5>]`) cùng với tên kho lưu trữ LOGS2 giúp gộp nhóm nạn nhân trở lại gói của đối tượng vận hành.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |

## Related catalog profiles

- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)

## Related external families

- `cs-tiktok-account-bundle`
- `cs-common-files-category-bundle`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
