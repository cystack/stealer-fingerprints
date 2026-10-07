# CSArhontIdentityStealer

## Overview / Tổng quan

### English

CSArhontIdentityStealer is a CyStack-coined identifier for a
stripped 6-field identity preamble observed inside `CryptogoL #<N> (TG @ArhontCorp).rar` aggregator packs at `<CC>_<Prefix>_ <DD.MM.YYYY> (TG @ArhontCorp)/information.txt` victim folder
paths. The pack ships two per-victim files: an `Info.txt`
containing a canonical Remus Stealer YAML body (handled under
the Remus profile with the Bugatti Private Cloud panel-brand
overlay) and this lowercase `information.txt` sibling carrying
only an identity preamble - no system info, no device info,
no credentials.

Body fields: `IP`, `Country`, `Date` (DD.MM.YYYY HH:MM:SS
timestamp), `MachineID` (canonical Windows `MachineGuid`
UUID), `GUID` (brace-wrapped truncated 8-4 hex pair, e.g.
`{9aefd928-78ee}`), and `HWID` (dashed compound
`<20-hex>-<8-hex>-<4-hex>-<7-hex>` with the GUID embedded
as the middle segments). The @ArhontCorp Telegram channel
is attested as a Russian-speaking log-aggregator and
reseller brand (HEROIC darkhive-breaches catalogue:
`Private Russia 34 TG ArhontCorp`, `KATANA CLOUD PRIVATE TG ArhontCorp`, `Slurm Private TG ArhontCorp`, `FateTraffic TG ArhontCloud`). No published source attributes the
stripped-identity preamble shape to a specific builder.

Family attribution is provisional pending a published
threat-intel mapping. During triage, treat this label as a
"victim identity triple preserved under @ArhontCorp
redistribution" marker: the MachineID / GUID / HWID values
still travel through the IOC and are usable for
cross-sample pivoting even without an underlying family
attribution. The companion `Info.txt` carries the Remus
YAML body with full system / hardware / anti-virus
enumeration.

### Tiếng Việt

CSArhontIdentityStealer là một định danh do CyStack đặt cho một phần mở đầu danh tính (identity preamble) gồm 6 trường đã bị rút gọn, được quan sát trong các gói tổng hợp `CryptogoL #<N> (TG @ArhontCorp).rar` tại đường dẫn thư mục nạn nhân `<CC>_<Prefix>_ <DD.MM.YYYY> (TG @ArhontCorp)/information.txt`. Gói này chứa hai tệp cho mỗi nạn nhân: một tệp `Info.txt` chứa phần nội dung YAML chuẩn của Remus Stealer (được xử lý theo hồ sơ Remus với lớp phủ thương hiệu panel Bugatti Private Cloud) và một tệp liên quan viết thường `information.txt` chỉ chứa phần mở đầu danh tính - không có thông tin hệ thống, không có thông tin thiết bị, không có thông tin xác thực.

Các trường trong nội dung: `IP`, `Country`, `Date` (mốc thời gian theo định dạng DD.MM.YYYY HH:MM:SS), `MachineID` (UUID `MachineGuid` chuẩn của Windows), `GUID` (một cặp hex 8-4 đã bị cắt ngắn và bao trong dấu ngoặc nhọn, ví dụ `{9aefd928-78ee}`), và `HWID` (một chuỗi ghép có dấu gạch ngang `<20-hex>-<8-hex>-<4-hex>-<7-hex>` với GUID được nhúng vào làm các đoạn giữa). Kênh Telegram @ArhontCorp được xác nhận là một thương hiệu tổng hợp và tái bán log nói tiếng Nga (danh mục HEROIC darkhive-breaches: `Private Russia 34 TG ArhontCorp`, `KATANA CLOUD PRIVATE TG ArhontCorp`, `Slurm Private TG ArhontCorp`, `FateTraffic TG ArhontCloud`). Không có nguồn công bố nào quy kết cấu trúc dữ liệu phần mở đầu danh tính đã bị rút gọn này cho một công cụ builder cụ thể.

Việc quy kết họ mã độc chỉ là tạm thời, chờ một bản đồ quy kết tình báo đe dọa đã được công bố. Trong quá trình phân loại ban đầu (triage), hãy coi nhãn này như một dấu hiệu "bộ ba danh tính nạn nhân được giữ lại dưới hình thức phân phối lại @ArhontCorp": các giá trị MachineID / GUID / HWID vẫn di chuyển theo IOC và có thể dùng để đối chiếu xoay trục giữa các mẫu (cross-sample pivoting) ngay cả khi không có quy kết họ mã độc làm nền. Tệp đi kèm `Info.txt` chứa phần nội dung YAML của Remus với đầy đủ thông tin liệt kê hệ thống / phần cứng / phần mềm diệt virus.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@ArhontCorp information.txt identity preamble`, `Bugatti Private Cloud 6-field identity sibling`, `CryptogoL (TG @ArhontCorp) information.txt layout`
- Variants observed: **2**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim identity preamble (IP, country, machine identifiers) | Phần mở đầu danh tính nạn nhân (IP, quốc gia, các định danh máy) |
| Cross-sample pivot values (MachineID UUID, bracketed truncated GUID, dashed compound HWID) | Các giá trị dùng để đối chiếu xoay trục giữa các mẫu (UUID của MachineID, GUID bị cắt ngắn trong dấu ngoặc, HWID ghép có dấu gạch ngang) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `t.me/ArhontCorp` channel
substring plus the six identity-preamble keys all
line-anchored: `IP:` + `Country:` + `Date:` + `MachineID:` +
`GUID:` + `HWID:`. The channel substring alone is not
unique (the Remus profile's Bugatti Private Cloud
overlay also sees it); pairing it with the full
six-field identity-preamble shape identifies the lowercase
`information.txt` sibling rather than the Remus-wrapped
`Info.txt`. The `GUID: {<trunc-pair>}` brace-wrapped
truncated-GUID shape and the dashed compound HWID with
the GUID embedded as middle segments are the panel's
distinguishing serialisation choices.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con của kênh `t.me/ArhontCorp` cùng với toàn bộ sáu khóa trong phần mở đầu danh tính, tất cả đều được neo theo dòng (line-anchored): `IP:` + `Country:` + `Date:` + `MachineID:` + `GUID:` + `HWID:`. Chỉ riêng chuỗi con của kênh thì không đủ để xác định duy nhất (lớp phủ Bugatti Private Cloud của hồ sơ Remus cũng chứa chuỗi này); việc kết hợp nó với toàn bộ cấu trúc dữ liệu sáu trường của phần mở đầu danh tính mới giúp xác định tệp liên quan viết thường `information.txt` thay vì tệp `Info.txt` được đóng gói theo Remus. Cấu trúc dữ liệu GUID bị cắt ngắn và bao trong dấu ngoặc nhọn của `GUID: {<trunc-pair>}`, cùng với HWID ghép có dấu gạch ngang với GUID được nhúng làm các đoạn giữa, là những lựa chọn tuần tự hóa (serialisation) đặc trưng, giúp phân biệt panel này.

## Observed log variants

### `v_34b1d454a2cd7513cc50033d08fe6748`

- Format ID: `cs-arhont-identity-stealer`
- Observed filenames: `information.txt`
- Panel brand: `Bugatti Private Cloud (identity preamble)`
- Distribution channel: `@ArhontCorp`
- Attribution confidence: **unknown**
- Layout: `cvv-identity-plus-windows-software`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_34b1d454a2cd7513cc50033d08fe6748/information.txt)
- Sample SHA-256: `1db23a2b88ae7667c5ba248c64b16f770dfefd48a0e7583489638caa4d21b57e`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Hardware]`, `[Software]`
- Field labels: `Country`, `Date`, `GUID`, `HWID`, `IP`, `MachineID`, `Windows`

### `v_55cfc6b045fab62684be1fde211ee4c2`

- Format ID: `cs-arhont-identity-stealer`
- Observed filenames: `information.txt`
- Panel brand: `Bugatti Private Cloud (identity preamble)`
- Distribution channel: `@ArhontCorp`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_55cfc6b045fab62684be1fde211ee4c2/information.txt)
- Sample SHA-256: `2ee500cce358a1915d5684a4ea5dd0cfc4a66bf5eed7e0cead5080cfcc4597e5`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `Date`, `GUID`, `HWID`, `IP`, `MachineID`, `❗️Actual Link`, `💎Buy`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [CSRussia34Stealer](../cs-russia34-stealer/)
- [CSEnchantCloudStealer](../cs-enchant-cloud-stealer/)

## Sources

- <https://heroic.com/darkhive-breaches/katana-cloud-private-tg-arhontcorp-uploaded-by-a-telegram-user/>
- <https://www.sekoia.io/blog/overview-of-the-russian-speaking-infostealer-ecosystem-the-logs/>

Machine-readable record: [family.json](family.json)
