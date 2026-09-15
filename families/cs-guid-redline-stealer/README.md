# CSGuidRedlineStealer

## Overview / Tổng quan

### English

CSGuidRedlineStealer is a CyStack-coined identifier for a
Redline-lineage `UserInformation.txt` fork whose field-key
convention swaps canonical Redline's `MachineName:` for
`ComputerName:` and `HWID:` for `GUID:` (dashed-UUID
value). The panel preserves the Redline-canonical
`Operation System:` typo but reformats several other
value shapes: `ScreenSize:` uses bare `WxH` (not the
canonical `{Width=X, Height=Y}` brace form),
`TimeZone:` carries an IANA Olson identifier (e.g.
`Europe/Belgrade`, not the canonical `(UTC+X:XX) <city list>` form), and the `Hardwares:` block uses bare
`CPU:` / `GPU:` / `RAM:` sub-keys instead of the
canonical WMI-serialized `Name: <cpu>, N Cores` /
`Name: <gpu>, N bytes` / `Name: Total of RAM, X.XX Mb or Y bytes` prefixed dual-serialization. `File Location:`
(space-separated) matches the MetaStealer-fork convention
but this variant drops the MetaStealer `Log from:`
distributor-id line.

Observed inside `MARCH 15 - 3059 LOGS2.part01.rar`
aggregator packs at `[<UUID>][<random-alnum>]/ UserInformation.txt` victim folders. The UUID inside the
folder's first bracket matches the `GUID:` body field.
Family attribution stays CS-coined pending a curated CTI
mapping - attributing to canonical Redline would poison
the canonical-Redline IOC index with a fork whose value
shapes diverge substantively.

### Tiếng Việt

CSGuidRedlineStealer là mã định danh do CyStack đặt cho một nhánh phân nhánh (fork) thuộc dòng Redline `UserInformation.txt`, có quy ước khóa trường thay thế khóa `MachineName:` chuẩn của Redline bằng `ComputerName:` và `HWID:` bằng `GUID:` (giá trị UUID dạng có dấu gạch ngang). Bảng điều khiển vẫn giữ lỗi chính tả kinh điển của Redline là `Operation System:` nhưng định dạng lại nhiều cấu trúc dữ liệu giá trị khác: `ScreenSize:` sử dụng dạng thuần `WxH` (không phải dạng dấu ngoặc nhọn chuẩn `{Width=X, Height=Y}`), `TimeZone:` mang định danh IANA Olson (ví dụ `Europe/Belgrade`, không phải dạng chuẩn `(UTC+X:XX) <city list>`), và khối `Hardwares:` sử dụng các khóa con thuần `CPU:` / `GPU:` / `RAM:` thay vì dạng song song có tiền tố WMI-serialized chuẩn `Name: <cpu>, N Cores` / `Name: <gpu>, N bytes` / `Name: Total of RAM, X.XX Mb or Y bytes`. `File Location:` (phân tách bằng khoảng trắng) khớp với quy ước của nhánh MetaStealer, nhưng biến thể này lại bỏ dòng mã định danh nhà phân phối (distributor-id) `Log from:` đặc trưng của MetaStealer.

Được ghi nhận bên trong các gói tổng hợp (aggregator pack) `MARCH 15 - 3059 LOGS2.part01.rar`, tại các thư mục nạn nhân `[<UUID>][<random-alnum>]/ UserInformation.txt`. UUID nằm trong dấu ngoặc vuông đầu tiên của tên thư mục khớp với trường thân dữ liệu `GUID:`. Việc quy kết họ mã độc tạm thời vẫn giữ theo định danh do CS đặt cho đến khi có ánh xạ CTI đã được tuyển chọn - việc quy kết vào Redline chuẩn sẽ làm nhiễm loãng chỉ mục IOC của Redline chuẩn bằng một nhánh có cấu trúc dữ liệu giá trị khác biệt đáng kể.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill (per Redline lineage) | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu tự động điền (autofill) (theo dòng Redline) |
| System hardware and locale inventory | Kiểm kê phần cứng hệ thống và thông tin vùng miền (locale) |
| Antivirus product enumeration | Liệt kê phần mềm diệt virus |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: line-anchored `Operation System:`
(Redline-canonical typo) plus line-anchored
`ComputerName:` (fork rename of `MachineName:`) plus
line-anchored `GUID:` (fork rename of `HWID:`). The
three-anchor combination is disjoint from canonical
Redline (which uses `MachineName:` + `HWID:`),
MetaStealer (which requires `Log from:` +
`File Location:` and uses `OS:` without the typo), and
RedlineLikeStealer (which uses `Processor:` /
`Installed RAM:` / `Graphics card:` / `Computer Name:`
with a space). During triage, the `GUID:` UUID matches
the first bracketed segment of the victim folder name,
so the folder path format can cross-check per-victim
identity.

### Tiếng Việt

Chỉ báo tin cậy cao: dòng chứa `Operation System:` (lỗi chính tả kinh điển của Redline) cộng với dòng chứa `ComputerName:` (tên đổi từ `MachineName:` do nhánh fork) cộng với dòng chứa `GUID:` (tên đổi từ `HWID:` do nhánh fork). Tổ hợp ba chỉ báo này tách biệt hoàn toàn với Redline chuẩn (sử dụng `MachineName:` + `HWID:`), với MetaStealer (yêu cầu `Log from:` + `File Location:` và sử dụng `OS:` không có lỗi chính tả), và với RedlineLikeStealer (sử dụng `Processor:` / `Installed RAM:` / `Graphics card:` / `Computer Name:` có khoảng trắng). Trong quá trình phân loại ban đầu (triage), UUID `GUID:` khớp với đoạn đầu tiên trong dấu ngoặc vuông của tên thư mục nạn nhân, vì vậy định dạng đường dẫn thư mục có thể được dùng để đối chiếu chéo danh tính theo từng nạn nhân.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

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
- [MetaStealer](../meta-stealer/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>
- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://securityscorecard.com/research/detailed-analysis-redline-stealer/>

Machine-readable record: [family.json](family.json)
