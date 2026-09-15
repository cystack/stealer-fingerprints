# CSProcessElevationStealer

## Overview / Tổng quan

### English

CSProcessElevationStealer is a CyStack-coined identifier for a
Redline-shape `System.txt` observed inside `@ft7links-lumma`
aggregator packs in `@ft7links_lumma_<NN>_bogonip_<HWIDPFX>/`
victim folders. The body carries the canonical Redline
`Operation System:` (sic) typo and `Hardwares:` block, but
adds a `Process Elevation: True|False` line that canonical
Redline never emits, joins `ScreenSize:` and `TimeZone:` on a
single line with whitespace around the `=` (canonical Redline
emits no spaces and breaks them onto separate lines), and
strips Redline's identity preamble (`Build ID:`, `IP:`,
`FileLocation:`, `MachineName:`, `Location:`, `Log date:`)
entirely on bogon-IP victims.

A community stealer-format catalogue maps this exact field
shape to ArechClient2 / SectopRAT, and an independent
malware-analysis writeup confirms ArechClient2's collector
emits a matching field set (`OSVersion`, `ScreenSize`,
`TimeZone`, `AvailableLanguages`, `SystemHardwares`). The
canonical ArechClient2 / SectopRAT family is well documented
publicly, but none of those writeups publish a sample log
showing the exact label set above, so the format-to-family
mapping remains provisional and the `CS` prefix is retained
pending a published confirmation.

### Tiếng Việt

CSProcessElevationStealer là định danh do CyStack đặt cho một mã độc đánh cắp thông tin có cấu trúc dữ liệu kiểu Redline `System.txt` được phát hiện bên trong các gói tổng hợp `@ft7links-lumma` trong các thư mục nạn nhân `@ft7links_lumma_<NN>_bogonip_<HWIDPFX>/`. Nội dung mang lỗi chính tả điển hình của Redline `Operation System:` (nguyên văn) và khối `Hardwares:`, nhưng bổ sung dòng `Process Elevation: True|False` mà Redline nguyên bản không bao giờ tạo dữ liệu đầu ra, ghép `ScreenSize:` và `TimeZone:` trên cùng một dòng với khoảng trắng quanh `=` (Redline nguyên bản tạo dữ liệu đầu ra không có khoảng trắng và tách chúng thành các dòng riêng biệt), đồng thời loại bỏ hoàn toàn phần mở đầu định danh của Redline (`Build ID:`, `IP:`, `FileLocation:`, `MachineName:`, `Location:`, `Log date:`) đối với các nạn nhân có IP bogon.

Một danh mục định dạng mã độc đánh cắp thông tin do cộng đồng biên soạn ánh xạ chính xác cấu trúc trường dữ liệu này tới ArechClient2 / SectopRAT, và một bài phân tích mã độc độc lập xác nhận rằng bộ thu thập của ArechClient2 tạo dữ liệu đầu ra với tập trường tương ứng (`OSVersion`, `ScreenSize`, `TimeZone`, `AvailableLanguages`, `SystemHardwares`). Họ mã độc ArechClient2 / SectopRAT nguyên bản đã được ghi nhận công khai đầy đủ, nhưng không bài viết nào trong số đó công bố mẫu log cho thấy đúng tập nhãn nêu trên, do đó việc ánh xạ định dạng sang họ mã độc vẫn còn mang tính tạm thời và tiền tố `CS` được giữ nguyên cho đến khi có xác nhận được công bố.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **medium**
- Aliases: `ArechClient2 (provisional)`, `SectopRAT (provisional)`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu tự động điền |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| System hardware, locale, and timezone inventory | Thông tin phần cứng hệ thống, ngôn ngữ vùng và múi giờ |
| Anti-virus product enumeration | Liệt kê sản phẩm diệt vi-rút |

## Detection notes / Ghi chú nhận diện

### English

The `Process Elevation:` line plus the joined
`ScreenSize: {Width = X,Height = Y}TimeZone: ...` emission
(spaces around the `=`, no separator before `TimeZone:`) is
unique to this panel among the Redline-shape rebrands in
this catalog. The `UNKNOWN` literal recurs in `Country:`
and `Zip Code:` for bogon-IP victims, so triage should
treat those values as missing rather than as a real country
or postal code. False-positive risk is low: no other
format fingerprints on `Process Elevation:`, and the
co-required `Operation System:` typo confirms the
Redline-derived body shape.

### Tiếng Việt

Dòng `Process Elevation:` kết hợp với việc tạo dữ liệu đầu ra ghép `ScreenSize: {Width = X,Height = Y}TimeZone: ...` (có khoảng trắng quanh `=`, không có dấu phân tách trước `TimeZone:`) là đặc điểm riêng biệt của bảng điều khiển này trong số các biến thể đổi thương hiệu có cấu trúc dữ liệu kiểu Redline trong danh mục này. Giá trị nguyên văn `UNKNOWN` xuất hiện lặp lại ở `Country:` và `Zip Code:` đối với các nạn nhân có IP bogon, vì vậy quá trình phân loại ưu tiên xử lý nên coi các giá trị này là bị thiếu thay vì là quốc gia hoặc mã bưu chính thực sự. Rủi ro dương tính giả ở mức thấp: không có định dạng nào khác khớp dấu vết nhận diện trên `Process Elevation:`, và lỗi chính tả bắt buộc đi kèm `Operation System:` xác nhận cấu trúc dữ liệu bắt nguồn từ Redline.

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

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)
- [CSEnchantCloudStealer](../cs-enchant-cloud-stealer/)
- [CSRussia34Stealer](../cs-russia34-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
