# CSBuildBlockStealer

## Overview / Tổng quan

### English

CSBuildBlockStealer is a CyStack-coined identifier for a
`UserInformation.txt` shape distributed via `@ft7links`
aggregator packs that the operator mislabels as `redline`. The
body is a flat key/value block whose distinguishing feature is
a four-line `Build Path:` / `Build ID:` / `Build Version:` /
`Build Comment:` group plus an `Active window:` line and a
two-letter `GEO:` country code. None of the canonical Redline
anchors (`Operation System:` typo, `FileLocation:`,
`Hardwares:` block, `Anti-Viruses:` block) appear, so the
aggregator label cannot be trusted.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
public stealer-format catalogues do not document a family
using this exact `Build` block plus `Active window:` plus
`GEO:` field set. Aurora ships `Build ID` paired with `Build Group`; RisePro ships `Build` and `HWID` only; Mystic Stealer
is documented at the protocol level rather than the
log-template level - none match.

### Tiếng Việt

CSBuildBlockStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu `UserInformation.txt` được phân phối qua các gói tổng hợp `@ft7links` mà đối tượng vận hành gắn nhãn sai là `redline`. Phần thân là một khối key/value phẳng có đặc điểm nhận dạng là nhóm bốn dòng `Build Path:` / `Build ID:` / `Build Version:` / `Build Comment:` cộng với một dòng `Active window:` và mã quốc gia hai chữ cái `GEO:`. Không có dấu vết đặc trưng chuẩn nào của Redline xuất hiện (lỗi chính tả `Operation System:`, `FileLocation:`, khối `Hardwares:`, khối `Anti-Viruses:`), do đó nhãn của gói tổng hợp không thể tin cậy được.

Việc quy kết họ mã độc hiện chỉ mang tính tạm thời, chờ có ánh xạ tình báo mối đe dọa được công bố cho bố cục này. Các báo cáo công khai và các danh mục định dạng mã độc đánh cắp thông tin công khai không ghi nhận họ mã độc nào sử dụng đúng bộ trường gồm khối `Build` cộng `Active window:` cộng `GEO:` này. Aurora tạo dữ liệu đầu ra `Build ID` đi kèm với `Build Group`; RisePro chỉ tạo dữ liệu đầu ra `Build` và `HWID`; Mystic Stealer được ghi nhận ở cấp độ giao thức thay vì cấp độ mẫu log - không có trường hợp nào khớp.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **369**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies | Thông tin xác thực và cookie đã lưu trong trình duyệt |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền mã hóa và ứng dụng desktop |
| System hardware and locale inventory | Thông tin phần cứng hệ thống và ngôn ngữ/vùng |

## Detection notes / Ghi chú nhận diện

### English

Requires all five line-anchored keys: `Build Path:`,
`Build ID:`, `Build Version:`, `Build Comment:`, and
`Active window:`. The five-key combo is unique across
the catalog; a stray document quoting one or two
of the field names cannot produce a false match.
Treat the family attribution as provisional during triage
- the aggregator labels the pack `redline` but the body
lacks every canonical Redline anchor.

### Tiếng Việt

Yêu cầu đầy đủ cả năm khóa gắn theo dòng: `Build Path:`, `Build ID:`, `Build Version:`, `Build Comment:`, và `Active window:`. Tổ hợp năm khóa này là duy nhất trong toàn bộ danh mục; một tài liệu bất kỳ chỉ trích dẫn một hoặc hai trong số các tên trường này không thể tạo ra kết quả trùng khớp giả. Trong quá trình phân loại ban đầu, cần coi việc quy kết họ mã độc là tạm thời - gói tổng hợp gắn nhãn gói này là `redline` nhưng phần thân lại thiếu mọi dấu vết đặc trưng chuẩn của Redline.

## Observed log variants

### `v_bf1a41ea43d38a0ab65502c1f7d81936`

- Format ID: `cs-build-block-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `4-key Build block (Path/ID/Version/Comment)`
- Distribution channel: `@ft7links`
- Attribution confidence: **unknown**
- Historical records represented: **369**
- Representative sample: [open sample](samples/v_bf1a41ea43d38a0ab65502c1f7d81936/sample.txt)
- Sample SHA-256: `4d700e61e5c0fcc1772af67f8b8ee8b2c058923251721b03102aca4b369a7e9d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Active window`, `Build Comment`, `Build Path`, `Build Version`


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

## Observed distribution channels

- <https://t.me/ft7links>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
