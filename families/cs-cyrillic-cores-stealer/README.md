# CSCyrillicCoresStealer

## Overview / Tổng quan

### English

CSCyrillicCoresStealer is a CyStack-coined identifier for a
fixed-width `_Information.txt` panel whose CPU line carries a
mixed-script `[ Сores: N ]` bracket where the first character
is Cyrillic Es (U+0421) rather than Latin C (U+0043). Observed
inside a @bugatti_cloud multi-family aggregator archive
delivered on 2022-05-09, with victim folders named
`<CC>_<YYYY>_<MM>_<DD>_<HH>_<MM>_<6-char-id>`.

The panel is a sibling of the fixed-width column-aligned
family that also emits CSStartBuildInfoStealer,
CSInfoNetworkSectionStealer, and CSExePathInfoStealer; each
variant differs in its first-line field, section-header
shape, and CPU-cores marker spelling. This variant uses a bare
`OS:` first field, a composite `Local Date and Time: <ts> [ UTC: (<offset>) <city list> ]` value that packs the timezone
into the date line, a lowercase `RAM: N Gb` unit, and a bare
`Software:` section header (no brackets, no `Installed`
qualifier). The Cyrillic quirk points at a Russian-speaking
developer whose panel template mixed scripts inadvertently,
but the specific builder identity is not attested in public
reporting or community catalogues. Family attribution is
provisional pending a published threat-intel mapping for this
layout.

### Tiếng Việt

CSCyrillicCoresStealer là định danh do CyStack đặt cho một bảng điều khiển có bố cục cột cố định (fixed-width) `_Information.txt`, trong đó dòng CPU chứa một dấu ngoặc `[ Сores: N ]` pha trộn hệ chữ viết, với ký tự đầu tiên là chữ Es Cyrillic (ki-rin) (U+0421) thay vì chữ Latin C (U+0043). Mẫu này được quan sát bên trong một kho lưu trữ tổng hợp đa họ mã độc @bugatti_cloud được phát tán vào ngày 09/05/2022, với các thư mục nạn nhân được đặt tên `<CC>_<YYYY>_<MM>_<DD>_<HH>_<MM>_<6-char-id>`.

Bảng điều khiển này là một biến thể liên quan trong cùng họ có bố cục cột cố định, vốn cũng tạo dữ liệu đầu ra cho CSStartBuildInfoStealer, CSInfoNetworkSectionStealer, và CSExePathInfoStealer; mỗi biến thể khác nhau ở trường dữ liệu dòng đầu tiên, cấu trúc dữ liệu tiêu đề phần (section-header), và cách viết ký hiệu số lõi CPU (CPU-cores marker). Biến thể này sử dụng trường đầu tiên không có tiền tố `OS:`, một giá trị `Local Date and Time: <ts> [ UTC: (<offset>) <city list> ]` dạng ghép đóng gói múi giờ vào dòng ngày tháng, đơn vị `RAM: N Gb` viết thường, và tiêu đề phần `Software:` không có tiền tố (không có dấu ngoặc, không có bổ ngữ `Installed`). Đặc điểm chữ Cyrillic cho thấy khả năng nhà phát triển bảng điều khiển này là người nói tiếng Nga và đã vô tình pha trộn hệ chữ viết trong mẫu bảng điều khiển, nhưng danh tính cụ thể của bộ công cụ tạo dựng (builder) chưa được ghi nhận trong các báo cáo công khai hay danh mục cộng đồng. Việc quy kết họ mã độc vẫn ở trạng thái tạm thời cho đến khi có ánh xạ tình báo về mối đe dọa được công bố cho bố cục này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Installed-software inventory (bare `Software:` block) | Kiểm kê phần mềm đã cài đặt (khối `Software:` không có tiền tố) |
| System hardware and locale (fixed-width identity block) | Phần cứng hệ thống và ngôn ngữ khu vực (khối định danh cột cố định) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint is the mixed-script `Сores:` bracket literal
(Cyrillic Es prefix + Latin `ores:`) plus line-anchored
`UserName (ComputerName):` paren-composite key plus line-anchored bare `Software:` section header. The Cyrillic
prefix is the discriminator: no other cataloged format
emits a `Сores` mixed-script bracket, and the combination
with the paren-composite user key and the bare `Software:`
header is disjoint from every sibling fixed-width format
(CSStartBuildInfoStealer uses `[Installed software]`,
CSInfoNetworkSectionStealer uses `[Info_Software]`,
CSExePathInfoStealer uses `[Software]`). During triage,
the `Software:` block enumerates the victim's installed
programs with a `<name> [ <version> ]` shape and can be
paired with the OS / user / hostname identity block for
per-victim asset inventory.

### Tiếng Việt

Dấu hiệu nhận diện là chuỗi ký tự dấu ngoặc `Сores:` pha trộn hệ chữ viết (tiền tố chữ Es Cyrillic (ki-rin) + chữ Latin `ores:`), kết hợp với khóa dạng ghép trong ngoặc đơn `UserName (ComputerName):` neo theo dòng, cùng tiêu đề phần `Software:` không có tiền tố neo theo dòng. Tiền tố chữ Cyrillic là yếu tố phân biệt chính: không có định dạng nào khác trong danh mục tạo dữ liệu đầu ra với dấu ngoặc pha trộn hệ chữ viết `Сores`, và sự kết hợp giữa khóa người dùng dạng ghép trong ngoặc đơn với tiêu đề `Software:` không có tiền tố là hoàn toàn tách biệt so với mọi định dạng cột cố định liên quan khác (CSStartBuildInfoStealer sử dụng `[Installed software]`, CSInfoNetworkSectionStealer sử dụng `[Info_Software]`, CSExePathInfoStealer sử dụng `[Software]`). Trong quá trình phân tích ban đầu, khối `Software:` liệt kê các chương trình đã cài đặt của nạn nhân theo cấu trúc dữ liệu `<name> [ <version> ]` và có thể được kết hợp với khối định danh hệ điều hành / người dùng / tên máy để lập kiểm kê tài sản theo từng nạn nhân.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSStartBuildInfoStealer](../cs-start-build-info-stealer/)
- [CSInfoNetworkSectionStealer](../cs-info-network-section-stealer/)
- [CSExePathInfoStealer](../cs-exe-path-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
