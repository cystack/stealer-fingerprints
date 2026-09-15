# Ailurophile

## Overview / Tổng quan

### English

Ailurophile is a subscription-style info-stealer first
publicly documented in August 2024. The stub is PHP-coded,
packaged into a Windows PE with ExeOutput, and then
virtualized with BoxedApp. Operators configure each build
through the family's own web panel, which lets them pick the
extension list, the folder list, and the filename keyword list
that drive the on-victim file grabber. Reports are sent to the
Telegram chat configured at build time.

The on-victim staging directory is
`%LOCALAPPDATA%\Ailurophile`, and the system summary is a flat
`Key: Value` `info.txt` whose distinctive fields are `Allowed Extensions:`, `Folders to Search:`, `PC Type:`, and `Screen Resolution:`.

### Tiếng Việt

Ailurophile là mã độc đánh cắp thông tin theo mô hình đăng ký thuê bao, được ghi nhận công khai lần đầu vào tháng 8 năm 2024. Stub được viết bằng PHP, đóng gói thành tệp PE Windows bằng ExeOutput, sau đó được ảo hóa bằng BoxedApp. Đối tượng vận hành cấu hình từng bản build thông qua bảng điều khiển web riêng của họ mã độc, cho phép chọn danh sách phần mở rộng, danh sách thư mục, và danh sách từ khóa tên tệp để điều khiển mô-đun thu thập tệp trên máy nạn nhân. Báo cáo được gửi đến kênh Telegram được cấu hình tại thời điểm build.

Thư mục lưu trữ tạm trên máy nạn nhân là `%LOCALAPPDATA%\Ailurophile`, và bản tóm tắt hệ thống là một `Key: Value` `info.txt` dạng phẳng với các trường đặc trưng là `Allowed Extensions:`, `Folders to Search:`, `PC Type:`, và `Screen Resolution:`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Ailurophile Stealer`
- Variants observed: **1**
- CyStack observations represented: **66**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, history | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu tự động điền, lịch sử duyệt web |
| Credit card data from browser autofill | Dữ liệu thẻ tín dụng từ tính năng tự động điền của trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| Generic file grabber driven by configurable keyword and extension lists | Mô-đun thu thập tệp tổng quát điều khiển bằng danh sách từ khóa và phần mở rộng có thể cấu hình |

## Detection notes / Ghi chú nhận diện

### English

The combination of `Allowed Extensions:` and `Folders to Search:`
line-anchored is the canonical fingerprint and matches the
public ail-project YARA rule. Operator rebrands prepend an
extra banner line like `HORUS B13: @HORUS B13` above the
canonical block: the underlying fields are identical, so
attribution stays under `Ailurophile` and the banner surfaces
through `panel_brand` and `distribution_channel`. False-positive
risk is low because no other family in this catalog emits the
paired `Allowed Extensions:` / `Folders to Search:` keys.

### Tiếng Việt

Sự kết hợp giữa `Allowed Extensions:` và `Folders to Search:` được neo theo dòng là dấu hiệu nhận diện chính tắc, khớp với quy tắc YARA công khai của ail-project. Các bản gắn thương hiệu lại của đối tượng vận hành chèn thêm một dòng banner phía trên khối chính tắc, ví dụ `HORUS B13: @HORUS B13`: các trường bên dưới vẫn giữ nguyên, do đó việc quy kết vẫn nằm dưới `Ailurophile` và banner thể hiện qua `panel_brand` và `distribution_channel`. Rủi ro dương tính giả thấp vì không có họ mã độc nào khác trong danh mục này tạo dữ liệu đầu ra là cặp khóa `Allowed Extensions:` / `Folders to Search:`.

## Observed log variants

### `v_775f61d0716a746c69c9f5e6fd0c575f`

- Format ID: `ailurophile`
- Observed filenames: `info.txt`
- Panel brand: `HORUS B13`
- Distribution channel: `@HORUS B13`
- Attribution confidence: **high**
- Historical records represented: **66**
- Representative sample: [open sample](samples/v_775f61d0716a746c69c9f5e6fd0c575f/sample.txt)
- Sample SHA-256: `bb2884c73df79e130973e24e6fc3a5840a192edc7bc8f6ce207f9d5a778007af`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `HORUS B13`
- Field labels: `Allowed Extensions`, `Folders to Search`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.cyfirma.com/research/ailurophile-stealer/>
- <https://blog.gdatasoftware.com/2024/08/38005-ailurophile-infostealer>
- <https://github.com/ail-project/ail-yara-rules/blob/master/rules/stealer/ailurophile.yara>

Machine-readable record: [family.json](family.json)
