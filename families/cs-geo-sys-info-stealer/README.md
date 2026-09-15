# CSGeoSysInfoStealer

## Overview / Tổng quan

### English

CSGeoSysInfoStealer is a CyStack-coined identifier for
a single-section `=== SYSTEM INFO ===` `system.txt` panel
distributed through the `@BRADMAX` Telegram channel.
The body carries 8 flat `Key: Value` lines under one
triple-equals header: `Computer`, `User`, `OS`, `IP`,
`Country`, `CPU`, `GPU`, `RAM`. Hardware fields are
present but typically empty on observed bodies; the
`OS` value is the literal placeholder `Windows 10/11`
rather than a real version string.

The format shares the `=== SYSTEM INFO ===` header with
CSStatsSectionStealer but ships an
entirely different field set and no second STATS
section. Same operator channel `@BRADMAX` but a
different builder.

### Tiếng Việt

CSGeoSysInfoStealer là định danh do CyStack đặt cho một panel `=== SYSTEM INFO ===` `system.txt` đơn phần, được phân phối qua kênh Telegram `@BRADMAX`.

Phần thân chứa 8 dòng `Key: Value` dạng phẳng nằm dưới một tiêu đề ba dấu bằng: `Computer`, `User`, `OS`, `IP`, `Country`, `CPU`, `GPU`, `RAM`. Các trường phần cứng có xuất hiện nhưng thường để trống trong các phần thân đã quan sát được; giá trị `OS` là chuỗi giữ chỗ (placeholder) `Windows 10/11` theo nghĩa đen, chứ không phải một chuỗi phiên bản thực.

Định dạng này dùng chung tiêu đề `=== SYSTEM INFO ===` với CSStatsSectionStealer nhưng mang một tập trường hoàn toàn khác và không có phần STATS thứ hai. Cùng kênh đối tượng vận hành `@BRADMAX` nhưng khác builder.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| IP and geo fingerprint | Dấu vết nhận dạng IP và địa lý |
| System hardware and OS inventory | Thông tin phần cứng hệ thống và hệ điều hành |

## Detection notes / Ghi chú nhận diện

### English

The header `=== SYSTEM INFO ===` plus the IP + Country
geo block plus the bare-key hardware tail is the
fingerprint. The negative anchor on `=== STATS ===`
separates this panel from CSStatsSectionStealer, which
uses the same header but adds a count section. The
`OS: Windows 10/11` literal placeholder is a strong
tell that the panel never enumerated the actual
version, useful as a triage signal.

### Tiếng Việt

Dấu hiệu nhận diện là tiêu đề `=== SYSTEM INFO ===` kết hợp với khối địa lý IP + quốc gia và phần đuôi các khóa trần về phần cứng. Việc không có `=== STATS ===` (mốc phủ định) giúp phân biệt panel này với CSStatsSectionStealer, vốn dùng cùng tiêu đề nhưng có thêm phần đếm. Chuỗi giữ chỗ (placeholder) `OS: Windows 10/11` theo nghĩa đen là dấu hiệu mạnh cho thấy panel chưa bao giờ liệt kê phiên bản thực tế, hữu ích như một tín hiệu sàng lọc ban đầu.

## Observed log variants

### `v_bfb272d1a685583ab75ebac60c4da8f2`

- Format ID: `cs-geo-sys-info-stealer`
- Observed filenames: `system.txt`
- Panel brand: -
- Distribution channel: `@BRADMAX`
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_bfb272d1a685583ab75ebac60c4da8f2/sample.txt)
- Sample SHA-256: `d397ccf04a3f36789d00fe08ba92e011b18eed591bf5ee3ab386487c43b47471`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `=== SYSTEM INFO ===`, `CPU:`
- Field labels: `Country`, `IP`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |

## Related catalog profiles

- [CSStatsSectionStealer](../cs-stats-section-stealer/)

## Observed distribution channels

- <https://t.me/BRADMAX>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
