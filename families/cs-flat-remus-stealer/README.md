# CSFlatRemusStealer

## Overview / Tổng quan

### English

CSFlatRemusStealer is a CyStack-coined identifier for a
heavily-stripped `Info.txt` panel whose Remus-vocabulary YAML
keys have been flattened to root level with no `build:` /
`os:` / `hardware:` block wrappers. Observed inside `@BRADMAX 14000 MARCH.part01.rar` Telegram aggregator packs at `@BRADMAX <count> <MONTH>/ [<CC>]<IPv4>/Info.txt` victim folders (e.g.
`@BRADMAX 14000 MARCH/[DZ]<IPv4>/Info.txt`).

The nine root-level keys (`path`, `country`, `os`, `version`,
`language`, `domain`, `cpu`, `ram`, `gpu`) match Remus
Stealer's YAML manifest vocabulary verbatim, but the panel
writer collapsed the canonical nested structure into a flat
key list. Both the block wrappers (`os`, `cpu`, `ram`, `gpu`)
and their would-be children (`version`, `language`, `domain`)
sit at column 0 as sibling root keys. Most values are empty
because the panel-side collection failed for hardware fields,
leaving only `path`, `country`, and `version` populated.

Public writeups confirm that Remus Stealer emits its victim
manifest as YAML with these exact key names, and public
channel catalogues attest BRADMAX as a Remus / Lumma / DCRat /
Mars redistribution channel. The field-vocabulary and
distribution-channel corroboration gives medium confidence in
Remus lineage, but no Remus-canonical identity anchor (`ip-address:`, `elevated:`, `HWID:`, `Computer Name:`)
survives in this flat variant to pin attribution. Family
attribution stays CyStack-coined with `low` confidence pending
a published Remus sample of this exact flat serialisation.

### Tiếng Việt

CSFlatRemusStealer là định danh do CyStack đặt tên cho một bảng điều khiển `Info.txt` đã bị lược bỏ mạnh, trong đó các khóa YAML thuộc từ vựng của Remus đã bị làm phẳng về cấp gốc, không còn các khối bao bọc `build:` / `os:` / `hardware:`. Được ghi nhận bên trong các gói tổng hợp Telegram `@BRADMAX 14000 MARCH.part01.rar` tại các thư mục nạn nhân `@BRADMAX <count> <MONTH>/ [<CC>]<IPv4>/Info.txt` (ví dụ: `@BRADMAX 14000 MARCH/[DZ]<IPv4>/Info.txt`).

Chín khóa ở cấp gốc (`path`, `country`, `os`, `version`, `language`, `domain`, `cpu`, `ram`, `gpu`) trùng khớp nguyên văn với từ vựng trong manifest YAML của Remus Stealer, nhưng cơ chế ghi của bảng điều khiển đã gộp cấu trúc lồng nhau chuẩn thành một danh sách khóa phẳng. Cả các khối bao bọc (`os`, `cpu`, `ram`, `gpu`) lẫn các khóa con lẽ ra thuộc về chúng (`version`, `language`, `domain`) đều nằm ở cột 0 như các khóa gốc ngang hàng nhau. Hầu hết giá trị đều rỗng do quá trình thu thập phía bảng điều khiển thất bại đối với các trường phần cứng, chỉ còn `path`, `country` và `version` có dữ liệu.

Các bài phân tích công khai xác nhận rằng Remus Stealer tạo dữ liệu đầu ra là manifest nạn nhân dưới dạng YAML với chính xác các tên khóa này, và các danh mục kênh công khai xác nhận BRADMAX là một kênh phân phối lại của Remus / Lumma / DCRat / Mars. Sự tương đồng về từ vựng trường dữ liệu và kênh phân phối mang lại mức độ tin cậy trung bình về nguồn gốc Remus, nhưng không có mốc định danh chuẩn của Remus nào (`ip-address:`, `elevated:`, `HWID:`, `Computer Name:`) còn tồn tại trong biến thể phẳng này để cố định việc quy kết. Việc quy kết họ mã độc vẫn do CyStack đặt tên với mức độ tin cậy `low`, chờ đến khi có mẫu Remus được công bố với đúng kiểu serialization phẳng này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `Flat-key Remus-vocabulary Info.txt panel`, `BRADMAX stripped Remus YAML variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Malware install path (WinRAR temp-extraction `Rar$EX...` folder in observed samples) | Đường dẫn cài đặt mã độc (thư mục giải nén tạm `Rar$EX...` của WinRAR trong các mẫu đã quan sát) |
| Country code (ISO 3166-1 alpha-2) | Mã quốc gia (ISO 3166-1 alpha-2) |
| OS caption with build number | Tên hiển thị hệ điều hành kèm số build |
| System locale (`fr-FR` / `en-US` / etc.) | Ngôn ngữ hệ thống (`fr-FR` / `en-US` / v.v.) |
| Windows domain / netbios name (empty in observed sample) | Tên miền Windows / tên netbios (rỗng trong mẫu đã quan sát) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires seven line-anchored column-0 keys:
`path:` AND `country:` AND `os:` AND `version:` AND `cpu:` AND
`ram:` AND `gpu:`. The column-0 requirement distinguishes from
canonical Remus (children indented 2 spaces under `build:` /
`os:` / `hardware:` block wrappers) and from every other
cataloged format. During triage, treat the sample as weak
attribution to Remus Stealer via the BRADMAX aggregator
channel; update this tracking profile to `Remus Stealer` if a
public writeup later publishes a sample of this exact
flattened variant. The empty hardware-field values in the
observed sample suggest a panel-side WMI-collection failure
that stripped most identity data, so the IOC carries only
path, country, OS, and language fields.

### Tiếng Việt

Việc nhận diện dấu hiệu yêu cầu bảy khóa neo theo dòng ở cột 0: `path:` VÀ `country:` VÀ `os:` VÀ `version:` VÀ `cpu:` VÀ `ram:` VÀ `gpu:`. Yêu cầu về cột 0 giúp phân biệt với Remus chuẩn (các khóa con thụt lề 2 dấu cách dưới các khối bao bọc `build:` / `os:` / `hardware:`) và với mọi định dạng khác đã được phân loại. Trong quá trình phân tích ban đầu, hãy xem mẫu này là quy kết yếu về Remus Stealer thông qua kênh tổng hợp BRADMAX; cập nhật hồ sơ theo dõi này thành `Remus Stealer` nếu sau này có bài phân tích công khai công bố một mẫu đúng với biến thể đã làm phẳng này. Các giá trị trường phần cứng rỗng trong mẫu đã quan sát cho thấy khả năng thu thập WMI phía bảng điều khiển đã thất bại, làm mất phần lớn dữ liệu định danh, do đó dấu hiệu nhận biết (IOC) chỉ còn các trường đường dẫn, quốc gia, hệ điều hành và ngôn ngữ.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [Lumma](../lumma/)
- [CSHardwareTailStealer](../cs-hardware-tail-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
