# CSFacebookProfileStealer

## Overview / Tổng quan

### English

CSFacebookProfileStealer is a CyStack-coined identifier for a
Facebook-account-profile summary that the `@ft7links-lumma`
panel writes into a file named `System.txt` instead of
canonical stealer system info. Each line uses a U+2013 en-dash
(not the ASCII hyphen-minus) as the prefix glyph and lists
four fields lifted directly from the Facebook Graph API:
`Friends` (account friend count), `Business` (Business Manager
flag), `Marketplace` (Marketplace access flag), and `Country`
(Facebook account country, empty for bogon-IP victims where
the panel could not resolve geo-IP).

The format matches what public reporting documents for
NodeStealer 2.0 and for SYS01 stealer (both query the Facebook
Graph API after exfiltrating a session cookie to enumerate
friends count, business-account flag, and account country),
but no public writeup shows a sample log with this exact
en-dash-prefixed label set, so the format-to-family mapping
remains provisional and the `CS` prefix is retained pending a
published confirmation. This catalog retains the structure as a labeling-only profile: country and the tracking label are recoverable, while the available evidence does not support a stronger family attribution.

### Tiếng Việt

CSFacebookProfileStealer là định danh do CyStack đặt cho một bản tóm tắt hồ sơ tài khoản Facebook mà bảng điều khiển `@ft7links-lumma` ghi vào một tệp có tên `System.txt` thay vì thông tin hệ thống chuẩn của mã độc đánh cắp thông tin. Mỗi dòng sử dụng ký tự en-dash U+2013 (không phải dấu gạch nối ASCII) làm ký tự tiền tố và liệt kê bốn trường được lấy trực tiếp từ Facebook Graph API: `Friends` (số lượng bạn bè của tài khoản), `Business` (cờ đánh dấu Business Manager), `Marketplace` (cờ đánh dấu quyền truy cập Marketplace), và `Country` (quốc gia của tài khoản Facebook, để trống đối với nạn nhân có IP bogon mà bảng điều khiển không thể phân giải geo-IP).

Định dạng này khớp với những gì các báo cáo công khai mô tả về NodeStealer 2.0 và SYS01 stealer (cả hai đều truy vấn Facebook Graph API sau khi đưa cookie phiên ra ngoài để liệt kê số lượng bạn bè, cờ tài khoản doanh nghiệp, và quốc gia tài khoản), nhưng chưa có báo cáo công khai nào cho thấy mẫu log với bộ nhãn tiền tố en-dash chính xác này, do đó việc ánh xạ định dạng sang họ mã độc vẫn mang tính tạm thời và tiền tố `CS` được giữ lại cho đến khi có xác nhận được công bố. Danh mục này giữ nguyên cấu trúc như một hồ sơ chỉ mang tính gán nhãn: quốc gia và nhãn theo dõi có thể được khôi phục, trong khi bằng chứng hiện có không đủ để hỗ trợ một quy kết họ mã độc chắc chắn hơn.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `NodeStealer (provisional)`, `SYS01 (provisional)`
- Variants observed: **1**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Facebook session cookies and account credentials | Cookie phiên Facebook và thông tin xác thực tài khoản |
| Facebook Business Manager and ads account access | Quyền truy cập Facebook Business Manager và tài khoản quảng cáo |
| Facebook Marketplace listing access | Quyền truy cập danh sách rao bán trên Facebook Marketplace |
| Facebook account profile metadata (friends count, country) | Dữ liệu meta hồ sơ tài khoản Facebook (số lượng bạn bè, quốc gia) |

## Detection notes / Ghi chú nhận diện

### English

The U+2013 en-dash (`-`) line prefix combined with the
`Friends:` / `Business:` / `Marketplace:` Facebook-Graph-API
field trio is unique to this artifact: every other dash-prefix family in this catalog uses the ASCII hyphen-minus
or em-dash glyph, and no malware-family format carries
this Facebook-specific field set. False-positive risk is
low because the trio of keys is too specific to overlap
with any system-info format. Triage: any IOC tagged with
this family means the victim had a Facebook session
compromised by a Facebook-targeting infostealer, even when
no other system-info file is present in the victim folder.

### Tiếng Việt

Tiền tố dòng en-dash U+2013 (`-`) kết hợp với bộ ba trường `Friends:` / `Business:` / `Marketplace:` của Facebook Graph API là điểm đặc trưng riêng của dấu vết này: mọi họ mã độc khác dùng tiền tố gạch nối trong danh mục này đều sử dụng ký tự gạch nối ASCII hoặc em-dash, và không có định dạng họ mã độc nào khác mang bộ trường đặc thù Facebook này. Rủi ro dương tính giả thấp vì bộ ba khóa này quá đặc thù để trùng lặp với bất kỳ định dạng thông tin hệ thống nào khác. Xử lý ban đầu: bất kỳ dấu hiệu xâm nhập (IOC) nào được gắn nhãn họ mã độc này đều có nghĩa là nạn nhân đã bị chiếm đoạt phiên Facebook bởi một mã độc đánh cắp thông tin nhắm vào Facebook, ngay cả khi không có tệp thông tin hệ thống nào khác trong thư mục nạn nhân.

## Observed log variants

### `v_17c4049d7ffc5b0cf40d59a6aebc00d8`

- Format ID: `cs-facebook-profile-stealer`
- Observed filenames: `System.txt`
- Panel brand: `U+2013 EN-DASH prefix Facebook profile`
- Distribution channel: `@ft7links`
- Attribution confidence: **low**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_17c4049d7ffc5b0cf40d59a6aebc00d8/sample.txt)
- Sample SHA-256: `4754a3e6c93bb601300321aa73f6e79423c37bb3d99f568ad7c26dde73fd16bb`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `– Business`, `– Friends`, `– Marketplace`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Lumma](../lumma/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
