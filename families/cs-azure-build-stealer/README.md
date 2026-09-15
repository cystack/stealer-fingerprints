# CSAzureBuildStealer

## Overview / Tổng quan

### English

CSAzureBuildStealer is a CyStack-coined identifier for a
dash-prefixed `System.txt` panel observed inside
`!! 2025 JULY` aggregator packs under `[<CC>]<IP>/System.txt`
victim folders. Every line is shaped `- Key: Value` with a
leading ASCII hyphen plus space. The panel ships an
`Azure Build:` date stamp and a `Worker Tag:` operator-set
label as the first two fields, then a fixed system summary
covering OS, hardware, network, and the local clock.

Family attribution is provisional pending a published
threat-intel mapping for this layout. The `Worker Tag` value
observed in the first sample was `XwormExp`, which hints at
an operator affiliation with XWorm but does not match XWorm's
own published log shape, so attribution to XWorm would be
misleading.

### Tiếng Việt

CSAzureBuildStealer là định danh do CyStack đặt cho một bảng điều khiển có tiền tố dấu gạch ngang `System.txt` được quan sát bên trong các gói tổng hợp `!! 2025 JULY` nằm dưới các thư mục nạn nhân `[<CC>]<IP>/System.txt`. Mỗi dòng có cấu trúc dữ liệu `- Key: Value` với một dấu gạch ngang ASCII đứng đầu kèm theo dấu cách. Bảng điều khiển này chứa một mốc thời gian `Azure Build:` và một nhãn do đối tượng vận hành thiết lập `Worker Tag:` làm hai trường đầu tiên, tiếp theo là một bản tóm tắt hệ thống cố định bao gồm hệ điều hành, phần cứng, mạng và đồng hồ cục bộ.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời cho đến khi có một ánh xạ thông tin tình báo về mối đe dọa được công bố cho bố cục này. Giá trị `Worker Tag` quan sát được trong mẫu đầu tiên là `XwormExp`, gợi ý về một mối liên hệ của đối tượng vận hành với XWorm, nhưng không khớp với cấu trúc dữ liệu log riêng đã được công bố của XWorm, do đó việc quy kết cho XWorm sẽ gây hiểu nhầm.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **2,480**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| System hardware and locale inventory | Kiểm kê phần cứng hệ thống và ngôn ngữ khu vực |
| Anti-virus product name (Windows Defender / installed AV) | Tên phần mềm diệt vi-rút (Windows Defender / phần mềm diệt vi-rút đã cài đặt) |
| Geo-IP country code | Mã quốc gia theo Geo-IP |

## Detection notes / Ghi chú nhận diện

### English

Line-anchored `- Azure Build:` plus `- Worker Tag:` plus
`- HWID:` plus `- Time Save Log:` is the fingerprint. The
`-` dash prefix is part of every key literal so a bare
`Azure Build` mention (Microsoft Azure DevOps build-task
documentation uses that phrase) cannot produce a false match.
Timestamps are in `DD.MM.YYYY HH:MM:SS` form and the
`Time Zone` field is bare `UTC<N>` with no sign or minutes.

### Tiếng Việt

Dấu vết đặc trưng là sự kết hợp giữa `- Azure Build:`, `- Worker Tag:`, `- HWID:` và `- Time Save Log:` neo theo dòng. Tiền tố dấu gạch ngang `-` là một phần của mọi chuỗi khóa cố định, vì vậy chỉ riêng cụm `Azure Build` (được tài liệu về tác vụ build của Microsoft Azure DevOps sử dụng) không thể tạo ra kết quả trùng khớp sai. Dấu thời gian có dạng `DD.MM.YYYY HH:MM:SS` và trường `Time Zone` là dạng thuần `UTC<N>` không có dấu hoặc phút.

## Observed log variants

### `v_6fc6c2fd95c996b3102846257cf1e256`

- Format ID: `cs-azure-build-stealer`
- Observed filenames: `System.txt`
- Panel brand: `Azure Build`
- Distribution channel: -
- Attribution confidence: **unknown**
- Historical records represented: **2,480**
- Representative sample: [open sample](samples/v_6fc6c2fd95c996b3102846257cf1e256/sample.txt)
- Sample SHA-256: `ef9b784f4feede70941b4fe5cd457bf9e0b3165263ec9086304878fd6bc682ba`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Azure Build`
- Field labels: `Azure Build`, `HWID`, `Time Save Log`, `Worker Tag`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- None recorded.

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
