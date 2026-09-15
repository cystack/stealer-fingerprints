# CSBrowsersDisplayStealer

## Overview / Tổng quan

### English

CSBrowsersDisplayStealer is a CyStack-coined identifier for
the most-stripped BRADMAX-redistributed per-victim folder
layout: a root with exactly two named subdirs, `Browsers/` and
`Display/`, optionally with a packer empty-name DIR sibling.
Cred files live under `Browsers/<browser>/Passwords.txt` with
a simple three-line `URL:` / `Login:` / `Password:` block per
credential. No `Information.txt`, no `System.txt`, no
`Cookies/` or `Wallets/` sibling dirs.

The 2-dir layout sits below the 4-dir
`Browsers/Discord/Files/System` layout that
is represented by `CSBradmaxCategoryStealer`. The underlying builder is
unidentified from the root listing alone: BRADMAX
redistribution strips per-builder branding before repacking.
Family attribution is provisional pending a published mapping
for this exact layout.

### Tiếng Việt

CSBrowsersDisplayStealer là định danh do CyStack đặt cho biến thể bố cục thư mục theo từng nạn nhân được lược bỏ nhiều nhất do BRADMAX phân phối lại: một thư mục gốc chứa đúng hai thư mục con được đặt tên là `Browsers/` và `Display/`, có thể kèm theo một thư mục con DIR không tên do packer tạo ra như một dấu vết liên quan. Các tệp thông tin xác thực nằm trong `Browsers/<browser>/Passwords.txt` với một khối ba dòng đơn giản `URL:` / `Login:` / `Password:` cho mỗi thông tin xác thực. Không có `Information.txt`, không có `System.txt`, không có các thư mục con liên quan như `Cookies/` hoặc `Wallets/`.

Bố cục 2 thư mục này nằm ở cấp thấp hơn so với bố cục 4 thư mục `Browsers/Discord/Files/System` được đại diện bởi `CSBradmaxCategoryStealer`. Chỉ dựa trên danh sách thư mục gốc thì không thể xác định được builder gốc: quá trình phân phối lại của BRADMAX đã loại bỏ mọi dấu hiệu nhận diện đặc trưng của builder trước khi đóng gói lại. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có ánh xạ được công bố cho đúng bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials | Thông tin xác thực đã lưu trong trình duyệt |
| Display info or screenshot | Thông tin màn hình hiển thị hoặc ảnh chụp màn hình |

## Detection notes / Ghi chú nhận diện

### English

The strict 2-or-3 entry root with `Browsers/` and
`Display/` plus the BRADMAX path token is the
fingerprint. Richer Stealerium-fork layouts would add
`Discord/`, `Files/`, `System/`, etc.; canonical family
folders would add `Information.txt` or similar text
dumps at root. This profile records the most-stripped BRADMAX panel-build
variant.

### Tiếng Việt

Dấu hiệu nhận diện đặc trưng là thư mục gốc nghiêm ngặt chỉ gồm 2 hoặc 3 mục với `Browsers/` và `Display/` cùng với token đường dẫn của BRADMAX. Các bố cục phong phú hơn thuộc nhánh fork của Stealerium sẽ có thêm `Discord/`, `Files/`, `System/`, v.v.; còn các thư mục chuẩn của họ mã độc gốc sẽ có thêm `Information.txt` hoặc các bản kết xuất văn bản tương tự ở thư mục gốc. Hồ sơ này ghi nhận biến thể bản dựng panel của BRADMAX bị lược bỏ nhiều nhất.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)
- [CSDiscordDataTokensStealer](../cs-discord-data-tokens-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
