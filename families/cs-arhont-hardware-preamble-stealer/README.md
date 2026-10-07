# CSArhontHardwarePreambleStealer

## Overview / Tổng quan

### English

CSArhontHardwarePreambleStealer is a CyStack-coined
identifier for a stripped 3-field hardware preamble observed
inside `CryptogoL #<N> (TG @ArhontCorp).rar` aggregator packs
at `<CC>_<Prefix>_<DD.MM.YYYY> (TG @ArhontCorp)/ Information.txt` (capital-I filename) victim folder paths.
The pack ships three per-victim files, each with a different
stripped-content shape: an `Info.txt` containing a canonical
Remus Stealer YAML body (handled under the Remus profile with
the Bugatti Private Cloud panel-brand overlay), a lowercase
`information.txt` carrying a 6-field identity preamble
(handled under the CSArhontIdentityStealer profile), and this
capital-I `Information.txt` carrying only three hardware
fields.

Body fields: `CPU` (space-padded colon convention, 1-space
leading indent), `RAM` (same convention), `GPU` (same
convention). No system info, no network info, no
credentials. The @ArhontCorp Telegram channel is attested
as a Russian-speaking log-aggregator and reseller brand
(HEROIC darkhive-breaches catalogue: `Private Russia 34 TG ArhontCorp`, `KATANA CLOUD PRIVATE TG ArhontCorp`,
`Slurm Private TG ArhontCorp`, `FateTraffic TG ArhontCloud`). No published source attributes the
stripped-hardware preamble shape to a specific builder.

Family attribution is provisional pending a published
threat-intel mapping. During triage, treat this label as a
"victim hardware preamble preserved under @ArhontCorp
redistribution" marker: the CPU / RAM / GPU values still
travel through the IOC and are usable for cross-sample
pivoting even without an underlying family attribution. The
companion `Info.txt` carries the Remus YAML body with full
system / identity / anti-virus enumeration; the companion
`information.txt` carries the 6-field identity preamble
(MachineID / GUID / HWID triple).

### Tiếng Việt

CSArhontHardwarePreambleStealer là một định danh do CyStack đặt cho một phần mở đầu phần cứng (hardware preamble) đã bị cắt giảm chỉ còn 3 trường, được quan sát bên trong các gói tổng hợp (aggregator pack) `CryptogoL #<N> (TG @ArhontCorp).rar` tại các đường dẫn thư mục nạn nhân `<CC>_<Prefix>_<DD.MM.YYYY> (TG @ArhontCorp)/ Information.txt` (tên tệp chữ I hoa).

Gói này chứa ba tệp theo từng nạn nhân, mỗi tệp có cấu trúc dữ liệu nội dung bị cắt giảm khác nhau: một `Info.txt` chứa phần thân YAML chuẩn của Remus Stealer (được xử lý theo hồ sơ Remus với lớp phủ thương hiệu panel Bugatti Private Cloud), một `information.txt` chữ thường mang phần mở đầu định danh gồm 6 trường (được xử lý theo hồ sơ CSArhontIdentityStealer), và tệp `Information.txt` chữ I hoa này chỉ mang ba trường phần cứng.

Các trường trong phần thân: `CPU` (quy ước dấu hai chấm có khoảng trắng đệm, thụt đầu dòng 1 khoảng trắng), `RAM` (cùng quy ước), `GPU` (cùng quy ước). Không có thông tin hệ thống, không có thông tin mạng, không có thông tin xác thực. Kênh Telegram @ArhontCorp được xác nhận là một thương hiệu tổng hợp log (log-aggregator) và bán lại nói tiếng Nga (danh mục darkhive-breaches của HEROIC: `Private Russia 34 TG ArhontCorp`, `KATANA CLOUD PRIVATE TG ArhontCorp`, `Slurm Private TG ArhontCorp`, `FateTraffic TG ArhontCloud`). Không có nguồn công bố nào quy kết cấu trúc dữ liệu phần mở đầu phần cứng bị cắt giảm này cho một bộ công cụ builder cụ thể.

Việc quy kết họ mã độc là tạm thời, chờ một ánh xạ tình báo mối đe dọa đã được công bố. Trong quá trình phân loại ban đầu (triage), hãy coi nhãn này là dấu hiệu "phần mở đầu phần cứng của nạn nhân được giữ lại dưới hình thức phân phối lại @ArhontCorp": các giá trị CPU / RAM / GPU vẫn được truyền qua IOC và có thể dùng để đối chiếu xoay trục (pivoting) giữa các mẫu ngay cả khi không có quy kết họ mã độc nền tảng. Tệp `Info.txt` liên quan mang phần thân YAML của Remus với liệt kê đầy đủ về hệ thống / định danh / phần mềm diệt virus; tệp `information.txt` liên quan mang phần mở đầu định danh gồm 6 trường (bộ ba MachineID / GUID / HWID).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `@ArhontCorp Information.txt hardware preamble`, `Bugatti Private Cloud 3-field hardware sibling`, `CryptogoL (TG @ArhontCorp) capital-I Information.txt layout`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim hardware preamble (CPU model, RAM capacity, GPU model) | Phần mở đầu phần cứng của nạn nhân (model CPU, dung lượng RAM, model GPU) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `t.me/ArhontCorp` channel
substring plus the three hardware keys line-anchored with
the panel's exact space-padded colon convention: `CPU :`
+ `RAM :` + `GPU :` (1-space leading indent, 1-space
before and after the colon). The space-padded colon shape
is the panel-distinguishing serialisation; every other
registered parser that captures hardware fields uses
either tight `CPU:` or dash-prefixed `- CPU:` without the
space before the colon.

### Tiếng Việt

Việc nhận diện dấu hiệu đòi hỏi chuỗi con của kênh `t.me/ArhontCorp` cùng với ba khóa phần cứng được neo theo dòng với đúng quy ước dấu hai chấm có khoảng trắng đệm của panel: `CPU :` + `RAM :` + `GPU :` (thụt đầu dòng 1 khoảng trắng, 1 khoảng trắng trước và sau dấu hai chấm). Cấu trúc dữ liệu dấu hai chấm có khoảng trắng đệm này là cách tuần tự hóa (serialisation) giúp phân biệt panel: mọi bộ phân tích (parser) khác đã được đăng ký mà có thu thập các trường phần cứng đều sử dụng hoặc dạng sát `CPU:` hoặc dạng có gạch ngang ở đầu `- CPU:` mà không có khoảng trắng trước dấu hai chấm.

## Observed log variants

### `v_111837e734cd8db51e82cf8e23c976a8`

- Format ID: `cs-arhont-hardware-preamble-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `Bugatti Private Cloud (hardware preamble)`
- Distribution channel: `@ArhontCorp`
- Attribution confidence: **unknown**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_111837e734cd8db51e82cf8e23c976a8/Information.txt)
- Sample SHA-256: `b18a5f990acd0e8e80a2ef3f407543a0632877e29a95b9f42806f0432941defb`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `CPU`, `GPU`, `RAM`, `❗️Actual Link`, `💎Buy`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [CSArhontIdentityStealer](../cs-arhont-identity-stealer/)

## Sources

- <https://heroic.com/darkhive-breaches/katana-cloud-private-tg-arhontcorp-uploaded-by-a-telegram-user/>
- <https://www.sekoia.io/blog/overview-of-the-russian-speaking-infostealer-ecosystem-the-logs/>

Machine-readable record: [family.json](family.json)
