# CSBradmaxRedlineTruncStealer

## Overview / Tổng quan

### English

CSBradmaxRedlineTruncStealer is a CyStack-coined identifier
for the BRADMAX-truncated Redline-shape `System.txt` panel
where the identity preamble (`IP:`, `UserName:`,
`MachineName:`, `Country:`) is stripped by the aggregator and
the body starts flush with `Zip Code:`. Observed inside
`@BRADMAX 27000 FEB-MARCH.part01.rar` at `@BRADMAX <count> <MONTHS>/[<CC>]<IPv4>/System.txt` victim folders (e.g.
`@BRADMAX 27000 FEB-MARCH/[DE]<IPv4>/System.txt`).

Body vocabulary is Redline-canonical: the `Operation System:`
typo (singular `Operation`, no trailing `ing`), the `Available KeyboardLayouts:` plural marker (no space between `Keyboard`
and `Layouts`), the `Hardwares:` block header with `Name: <label>, <values>` rows below (RAM row uses the
dual-serialisation `<N.NN> Mb or <bytes> bytes` format, GPU
rows use `<vendor> <model>, <bytes> bytes`), plus a bare
`Windows Defender` line at the tail with no `AV:` /
`Antivirus:` key prefix. The `FileLocation:` field emitted by canonical Redline `UserInformation.txt` panels is absent, distinguishing this preamble-stripped variant from the canonical layout.

The same underlying panel-render lineage appears in the Daisy
Cloud reseller output handled by `CSDaisyBlockCloudStealer`
(which retains the identity preamble and adds a pipe-bordered
ASCII-art banner) and `CSDaisyCloudStealer` (per-line
watermark overlay). This BRADMAX-truncated variant is the
bannerless, preamble-stripped sibling.

Family attribution is provisional pending a published
threat-intel mapping for this specific stripped variant.
Public reporting and community catalogues document the
underlying Redline body shape but do not attest this specific
BRADMAX-stripped preamble-less variant. Without the canonical
`FileLocation:` anchor and identity preamble it is impossible
to confirm the builder is stock Redline versus a Redline-fork
(Meta, Aurora, Amadey inherit some Redline vocabulary).

### Tiếng Việt

CSBradmaxRedlineTruncStealer là định danh do CyStack đặt cho phần thân dữ liệu dạng Redline bị cắt bởi BRADMAX (`System.txt` panel), trong đó phần mở đầu định danh (`IP:`, `UserName:`, `MachineName:`, `Country:`) đã bị bộ tổng hợp (aggregator) loại bỏ và phần thân bắt đầu ngay từ `Zip Code:`. Được ghi nhận bên trong `@BRADMAX 27000 FEB-MARCH.part01.rar` tại các thư mục nạn nhân `@BRADMAX <count> <MONTHS>/[<CC>]<IPv4>/System.txt` (ví dụ: `@BRADMAX 27000 FEB-MARCH/[DE]<IPv4>/System.txt`).

Từ vựng trong phần thân mang tính đặc trưng chuẩn của Redline: lỗi chính tả `Operation System:` (dạng số ít `Operation`, không có `ing` ở cuối), ký hiệu số nhiều `Available KeyboardLayouts:` (không có khoảng trắng giữa `Keyboard` và `Layouts`), tiêu đề khối `Hardwares:` với các dòng `Name: <label>, <values>` bên dưới (dòng RAM dùng định dạng tuần tự hóa kép `<N.NN> Mb or <bytes> bytes`, các dòng GPU dùng `<vendor> <model>, <bytes> bytes`), cùng với một dòng `Windows Defender` trơn ở cuối, không có tiền tố khóa `AV:` / `Antivirus:`. Trường `FileLocation:` mà các panel Redline chuẩn `UserInformation.txt` thường tạo ra không xuất hiện, đây là điểm phân biệt biến thể bị cắt phần mở đầu này với bố cục chuẩn.

Cùng một nguồn gốc render panel này cũng xuất hiện trong dữ liệu đầu ra của đại lý bán lại Daisy Cloud, được xử lý bởi `CSDaisyBlockCloudStealer` (vẫn giữ nguyên phần mở đầu định danh và bổ sung banner ASCII art viền bằng ký tự pipe) và `CSDaisyCloudStealer` (lớp phủ watermark theo từng dòng). Biến thể bị cắt bởi BRADMAX này là biến thể liên quan không có banner và không có phần mở đầu định danh.

Việc quy kết họ mã độc hiện vẫn ở dạng tạm thời, chờ có báo cáo tình báo mối đe dọa ánh xạ cho biến thể bị cắt cụ thể này. Các báo cáo công khai và danh mục cộng đồng có ghi nhận cấu trúc phần thân dạng Redline nền tảng, nhưng chưa xác nhận biến thể bị BRADMAX cắt bỏ phần mở đầu định danh cụ thể này. Do thiếu điểm neo `FileLocation:` chuẩn và phần mở đầu định danh, không thể xác nhận builder là Redline nguyên bản hay một bản fork của Redline (Meta, Aurora, Amadey đều kế thừa một phần từ vựng của Redline).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `BRADMAX truncated Redline-shape System.txt`, `BRADMAX preamble-stripped Redline variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim ZIP code and city (IP geolocation) | Mã ZIP code và thành phố của nạn nhân (định vị theo IP) |
| HWID (32-hex device identifier) | HWID (định danh thiết bị dạng 32 ký tự hex) |
| Current UI language and timezone | Ngôn ngữ giao diện hiện tại và múi giờ |
| OS caption with architecture suffix | Tên hệ điều hành kèm hậu tố kiến trúc |
| Installed keyboard layouts | Các bố cục bàn phím đã cài đặt |
| Total system RAM (MB, extracted from `Total of RAM` row) | Tổng dung lượng RAM hệ thống (MB, trích xuất từ dòng `Total of RAM`) |
| GPU vendor and model list | Danh sách hãng và model GPU |
| Bare antivirus product name (trailing line) | Tên phần mềm diệt virus dạng trơn (dòng cuối) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires (a) line-anchored `Operation System:`
(Redline-canonical typo) AND (b) line-anchored
`Hardwares:` (Redline-canonical plural block header) AND
(c) `Name: Total of RAM,` substring (Redline-specific
dual-serialisation RAM entry) AND (d) `@BRADMAX` in the
archive-path preamble (aggregator scope gate). Five negative anchors distinguish sibling formats: `FileLocation:` (canonical `Redline`),
`t.me/UP_DAISYCLOUD` (`CSDaisyBlockCloudStealer`), the
per-line watermark scramble regex (`CSDaisyCloudStealer`),
`cheshire_aurora` (`CSDaisyAuroraStealer`), and
`misericorde_supp` (`CSDaisyMisericordeStealer`). During
triage, treat this label as a "Redline-shape body
shipped by BRADMAX with the identity preamble stripped"
marker: the ZIP / city / HWID / OS / RAM / GPU fields
are usable IOCs, but the underlying builder cannot be
confirmed as stock Redline without a `FileLocation:` or
ASCII banner. The `Country:` value that the canonical
panel would emit is absent from the body; the archive-path folder-prefix (`[<CC>]<IPv4>/`) carries a country
tag but the aggregator sometimes ships an incorrect tag
(the sample folder `[DE]<IPv4>` indicates Germany
while the IP is ARIN-registered in the US and the
`Location:` field says Pontiac, Michigan).

### Tiếng Việt

Dấu hiệu nhận diện yêu cầu đồng thời: (a) `Operation System:` neo theo dòng (lỗi chính tả đặc trưng chuẩn của Redline) VÀ (b) `Hardwares:` neo theo dòng (tiêu đề khối số nhiều đặc trưng chuẩn của Redline) VÀ (c) chuỗi con `Name: Total of RAM,` (mục RAM tuần tự hóa kép đặc thù của Redline) VÀ (d) `@BRADMAX` trong phần mở đầu đường dẫn kho lưu trữ (điều kiện phạm vi của bộ tổng hợp). Năm điểm neo phủ định giúp phân biệt các định dạng liên quan: `FileLocation:` (chuẩn `Redline`), `t.me/UP_DAISYCLOUD` (`CSDaisyBlockCloudStealer`), biểu thức chính quy xáo trộn watermark theo từng dòng (`CSDaisyCloudStealer`), `cheshire_aurora` (`CSDaisyAuroraStealer`), và `misericorde_supp` (`CSDaisyMisericordeStealer`). Trong quá trình phân loại, hãy coi nhãn này là dấu hiệu "phần thân dạng Redline được BRADMAX phát hành với phần mở đầu định danh đã bị loại bỏ": các trường ZIP / thành phố / HWID / hệ điều hành / RAM / GPU là các IOC có thể sử dụng được, nhưng không thể xác nhận builder nền tảng là Redline nguyên bản nếu thiếu `FileLocation:` hoặc banner ASCII. Giá trị `Country:` mà panel chuẩn sẽ tạo ra không xuất hiện trong phần thân; tiền tố thư mục trong đường dẫn kho lưu trữ (`[<CC>]<IPv4>/`) mang một nhãn quốc gia, nhưng đôi khi bộ tổng hợp gán sai nhãn (thư mục mẫu `[DE]<IPv4>` cho thấy Đức trong khi IP được đăng ký bởi ARIN tại Mỹ và trường `Location:` ghi Pontiac, Michigan).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery | Xác định ngôn ngữ hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- [Redline](../redline/)
- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
