# Remus Stealer

## Overview / Tổng quan

### English

Remus Stealer is a 64-bit malware-as-a-service infostealer first
observed in 2026 and independently analyzed as closely related
to Lumma. Its known `Info.txt` body contains the `@rmsops`
distribution reference, a `# REMUS LOG` banner, and a YAML-style
`build:` block. Some collected artifacts place an additional
reseller banner, such as the stylised `RÔýĆløud` watermark,
before that body. Field shape parallels Lumma's dash-prefix list
but uses a different banner and distribution channel.

### Tiếng Việt

Remus Stealer là mã độc đánh cắp thông tin 64-bit được cung cấp theo mô hình malware-as-a-service, ghi nhận lần đầu vào năm 2026 và được các nghiên cứu độc lập xác định có quan hệ gần với Lumma. Phần thân `Info.txt` đã biết chứa tham chiếu phân phối `@rmsops`, banner `# REMUS LOG` và khối gốc `build:` dạng YAML. Một số mẫu thu thập được có thêm banner của bên phân phối, chẳng hạn watermark cách điệu `RÔýĆløud`, đặt trước phần thân này. Cấu trúc trường tương đồng với danh sách tiền tố dấu gạch ngang của Lumma nhưng sử dụng banner và kênh phân phối khác.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Remus`
- Variants observed: **3**
- CyStack observations represented: **56**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet extensions and clients | Tiện ích mở rộng và ứng dụng ví tiền điện tử |
| System hardware and locale inventory | Thông tin phần cứng hệ thống và ngôn ngữ/khu vực |

## Detection notes / Ghi chú nhận diện

### English

The `# REMUS LOG` banner together with the `@rmsops` channel
reference is a high-confidence Remus signature. The YAML-shaped
`build:` root and nested `hardware:` block distinguish Remus
from Lumma proper, which uses the dash-prefix `- LummaC2 Build:`
form instead. A reseller watermark may precede these anchors and
should be treated as distribution context, not a different body
format.

### Tiếng Việt

Banner `# REMUS LOG` kết hợp với tham chiếu kênh `@rmsops` tạo thành dấu hiệu nhận diện Remus có độ tin cậy cao. Khối gốc `build:` dạng YAML và khối `hardware:` lồng bên trong giúp phân biệt Remus với Lumma nguyên bản, vốn sử dụng dạng `- LummaC2 Build:` có tiền tố dấu gạch ngang. Watermark của bên phân phối có thể xuất hiện trước các neo này và cần được xem là ngữ cảnh phân phối, không phải một định dạng phần thân khác.

## Observed log variants

### `v_0b6a40975520ab343d4d6ad9a6073ea0`

- Format ID: `remus`
- Observed filenames: `Info.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `yaml-build-root`
- Historical records represented: **46**
- Representative sample: [open sample](samples/v_0b6a40975520ab343d4d6ad9a6073ea0/sample.txt)
- Sample SHA-256: `dc289702682a735f5566e6b52da1f22b3d99526d4f28c8409d75bd02dbb715ff`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `# REMUS LOG`, `hardware:`, `os:`
- Field labels: `elevated`, `ip-address`

### `v_35b77a5daa4d8a67c5e2aacb67efa6c2`

- Format ID: `remus`
- Observed filenames: `Info.txt`
- Panel brand: `RoyCloud`
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `yaml-build-root`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_35b77a5daa4d8a67c5e2aacb67efa6c2/Info.txt)
- Sample SHA-256: `34d8e7925ca6c707bdbb30cd5625ea084875b7f31fcb3f4f86c26a8876c5f8e6`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `# REMUS LOG`, `hardware:`, `RÔýĆløud`
- Field labels: `anti-virus`, `build`, `computer-name`, `core count`, `core enabled`, `country`, `cpu`, `date`, `display`, `domain`, `elevated`, `gpu`, `hardware`, `hostname`, `install-date`, `ip-address`, `language`, `local-date`, `manufacturer`, `motherboard`, `name`, `netbios`, `os`, `path`, `product`, `ram`, `size`, `state`, `tag`, `thread count`, `time`, `time-zone`, `user-name`, `version`

### `v_40b69f8215f8aad13e8f74334058d313`

- Format ID: `remus`
- Observed filenames: `Info.txt`
- Panel brand: `Daisy Cloud`
- Distribution channel: `@UP_DAISYCLOUD`
- Attribution confidence: **high**
- Layout: `yaml-build-root`
- Historical records represented: **9**
- Representative sample: [open sample](samples/v_40b69f8215f8aad13e8f74334058d313/sample.txt)
- Sample SHA-256: `795a50c7235d2d0299b86b9589d8bcdd3446b0d9cd93c472cc5c8f1d3fc1d4b0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `# REMUS LOG`, `Daisy Cloud`, `hardware:`, `os:`
- Field labels: `elevated`, `ip-address`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Lumma](../lumma/)

## Observed distribution channels

- <https://t.me/rmsops>

## Sources

- <https://stairwell.com/resources/detecting-remus-infostealer/>
- <https://flashpoint.io/blog/remus-stealer-a-new-not-so-new-infostealer/>
- <https://www.gendigital.com/blog/insights/reports/threat-report-h1-2026>

Machine-readable record: [family.json](family.json)
