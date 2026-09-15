# CSStealerCloudInfoStealer

## Overview / Tổng quan

### English

CSStealerCloudInfoStealer is a CyStack-coined identifier for
the STEALERCLOUD broker's third file shape: a stripped 2-field
`Information.txt` containing just a `GPU:` line and a
`Displays:` (plural) line with multi-space value padding after
each colon. The body carries no banner, no operator handle,
and no other fields. Same `STEALERCLOUD` panel brand and
`@STEALERBOSS` distribution channel as CSHardwareTailStealer
(Info.txt YAML hardware tail) and
CSStealerCloudUserInfoStealer (UserInformation.txt locale +
geo block); the broker ships per-victim context split across
three filename shapes.

The stripped 2-field form likely reflects a fallback path the
broker takes when no canonical source-stealer panel was
available, falling back to a bare Win32 WMI
`Win32_VideoController` + `Win32_DisplayMonitor` enumeration.
Family attribution is provisional pending a public writeup.

### Tiếng Việt

CSStealerCloudInfoStealer là một định danh do CyStack đặt tên cho cấu trúc tệp thứ ba của broker STEALERCLOUD: một `Information.txt` tối giản 2 trường chỉ chứa một dòng `GPU:` và một dòng `Displays:` (số nhiều) có phần đệm nhiều khoảng trắng sau mỗi dấu hai chấm. Nội dung không có banner, không có tên đối tượng vận hành, và không có trường nào khác. Cùng thương hiệu bảng điều khiển `STEALERCLOUD` và kênh phân phối `@STEALERBOSS` như CSHardwareTailStealer (phần đuôi phần cứng dạng YAML trong Info.txt) và CSStealerCloudUserInfoStealer (khối locale + vị trí địa lý trong UserInformation.txt); broker này phân phối dữ liệu ngữ cảnh theo từng nạn nhân, chia thành ba cấu trúc tên tệp.

Dạng tối giản 2 trường này có thể phản ánh một đường dẫn dự phòng mà broker sử dụng khi không có bảng điều khiển mã độc đánh cắp thông tin nguồn gốc chuẩn nào khả dụng, khi đó chuyển sang liệt kê thuần túy qua Win32 WMI `Win32_VideoController` + `Win32_DisplayMonitor`. Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ có bài viết công khai xác nhận.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: -
- Variants observed: **2**
- CyStack observations represented: **2,160**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim GPU model (from WMI `Win32_VideoController`) | Model GPU của nạn nhân (từ WMI `Win32_VideoController`) |
| Victim display resolution (from WMI `Win32_DisplayMonitor`) | Độ phân giải màn hình của nạn nhân (từ WMI `Win32_DisplayMonitor`) |

## Detection notes / Ghi chú nhận diện

### English

The line-anchored `GPU:` plus line-anchored `Displays:`
(plural) fingerprint is unique across this catalog. The
plural `Displays:` form rules out sibling panels that
emit singular `Display:` or `Display Resolution:`. Pair
this label with CSHardwareTailStealer Info.txt and
CSStealerCloudUserInfoStealer UserInformation.txt files
in the same `STEALERCLOUD#<NN>` victim folder for the
full per-victim summary.

### Tiếng Việt

Dấu hiệu nhận diện kết hợp giữa `GPU:` neo theo dòng và `Displays:` (số nhiều) neo theo dòng là duy nhất trong toàn bộ danh mục này. Dạng số nhiều của `Displays:` giúp loại trừ các bảng điều khiển liên quan tạo dữ liệu đầu ra dạng số ít `Display:` hoặc `Display Resolution:`. Hãy kết hợp nhãn này với các tệp Info.txt của CSHardwareTailStealer và UserInformation.txt của CSStealerCloudUserInfoStealer trong cùng một thư mục nạn nhân `STEALERCLOUD#<NN>` để có bản tóm tắt đầy đủ theo từng nạn nhân.

## Observed log variants

### `v_1bdd89ba317526aee7eba31023ec3ca7`

- Format ID: `cs-stealer-cloud-info-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `STEALERCLOUD`
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Historical records represented: **298**
- Representative sample: [open sample](samples/v_1bdd89ba317526aee7eba31023ec3ca7/sample.txt)
- Sample SHA-256: `297314c85c3b72f3a2204e78a3fa68a27536509f24f3c3ee8e8d494d3c5ba18f`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Displays`, `GPU`

### `v_37cf42da017bf5a1efd7e81fa6f57304`

- Format ID: `cs-stealer-cloud-info-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Historical records represented: **1,862**
- Representative sample: [open sample](samples/v_37cf42da017bf5a1efd7e81fa6f57304/sample.txt)
- Sample SHA-256: `cce24ebd2450b80bb74a3ff079522b5093cd05ac388e7639267524b7e7502a54`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Displays`, `GPU`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSHardwareTailStealer](../cs-hardware-tail-stealer/)
- [CSStealerCloudUserInfoStealer](../cs-stealer-cloud-user-info-stealer/)

## Observed distribution channels

- <https://t.me/STEALERBOSS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
