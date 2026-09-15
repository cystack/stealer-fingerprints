# CSFlatMacBradmaxStealer

## Overview / Tổng quan

### English

CSFlatMacBradmaxStealer is a CyStack-coined identifier for an
aggressive-collapse BRADMAX-repackaged macOS `system_profiler`
`Information.txt` panel where every whitespace between
adjacent fields has been dropped, including inside multi-word
key names. Canonical macOS-stealer keys `Model Name:`,
`Chipset Model:`, `Total Number of Cores:`, `Hardware UUID:`,
`Provisioning UDID:`, `Activation Lock Status:`, `Metal Support:`, `Model Identifier:`, and `Model Number:` all appear
as space-collapsed variants (`ModelName:`, `ChipsetModel:`,
`TotalNumberofCores:`, etc.). Values are glued to keys without
whitespace (`Memory:16GB`, `ModelIdentifier:Mac14,9`),
producing a two-physical-line body that concatenates the
entire `SPHardwareDataType` and `SPDisplaysDataType` output.

Observed inside `@BRADMAX 12000 FEB-MARCH.part1.rar` at
`@BRADMAX <count> <MONTHS>/[<CC>]<IPv4>/ Information.txt`
victim folders. The observed sample is an Italian-locale macOS
victim (`Time since boot: 23 ore e 4 minuti` collapsed to
`Timesinceboot: 23oree4minuti`), Apple Silicon M2 Pro chip,
MacBook Pro model.

This layout is distinct from the sibling `CSFlatMacProfilerStealer`, where each field occupies its own line and multi-word keys retain spaces. Here, substring matches on collapsed keys plus BRADMAX archive context distinguish the aggressive-collapse variant.

Family attribution is provisional pending a published
threat-intel mapping. Multiple canonical macOS stealer
families (AMOS / Atomic, Banshee, Cthulhu, Poseidon, MacSync)
shell out to the same `system_profiler` subcommands per public
writeups. Without a family-specific banner surviving in this
aggressive-collapse panel, attribution to any single canonical
family is a guess. Rename the CyStack tracking name if a public
writeup later publishes a sample of this exact aggressive-collapse variant.

### Tiếng Việt

CSFlatMacBradmaxStealer là định danh do CyStack đặt tên cho một biến thể bố cục dạng "collapse triệt để" (aggressive-collapse) của bảng điều khiển `system_profiler` `Information.txt` macOS được đóng gói lại (repackaged) bởi BRADMAX, trong đó toàn bộ khoảng trắng giữa các trường liền kề đã bị loại bỏ, kể cả bên trong tên khóa gồm nhiều từ. Các khóa chuẩn của mã độc đánh cắp thông tin macOS gồm `Model Name:`, `Chipset Model:`, `Total Number of Cores:`, `Hardware UUID:`, `Provisioning UDID:`, `Activation Lock Status:`, `Metal Support:`, `Model Identifier:` và `Model Number:` đều xuất hiện dưới dạng biến thể bị nén khoảng trắng (`ModelName:`, `ChipsetModel:`, `TotalNumberofCores:`, v.v.). Giá trị được gắn liền vào khóa mà không có khoảng trắng (`Memory:16GB`, `ModelIdentifier:Mac14,9`), tạo ra một phần thân gồm hai dòng vật lý ghép nối toàn bộ dữ liệu đầu ra của `SPHardwareDataType` và `SPDisplaysDataType`.

Được quan sát bên trong `@BRADMAX 12000 FEB-MARCH.part1.rar` tại các thư mục nạn nhân `@BRADMAX <count> <MONTHS>/[<CC>]<IPv4>/ Information.txt`. Mẫu quan sát được là một nạn nhân macOS dùng ngôn ngữ Ý (`Time since boot: 23 ore e 4 minuti` bị nén thành `Timesinceboot: 23oree4minuti`), chip Apple Silicon M2 Pro, model MacBook Pro.

Bố cục này khác biệt so với dấu vết liên quan `CSFlatMacProfilerStealer`, trong đó mỗi trường chiếm một dòng riêng và các khóa nhiều từ vẫn giữ khoảng trắng. Ở đây, việc khớp chuỗi con trên các khóa bị nén cùng với ngữ cảnh archive BRADMAX là yếu tố phân biệt biến thể collapse triệt để này.

Việc quy kết họ mã độc hiện vẫn mang tính tạm thời, chờ một ánh xạ threat intel được công bố. Nhiều họ mã độc đánh cắp thông tin macOS chuẩn (AMOS / Atomic, Banshee, Cthulhu, Poseidon, MacSync) đều gọi ra cùng các lệnh con `system_profiler` theo các bài viết công khai. Do không còn banner đặc trưng của họ mã độc nào tồn tại trong bảng điều khiển collapse triệt để này, việc quy kết cho bất kỳ họ mã độc chuẩn cụ thể nào chỉ mang tính phỏng đoán. Định danh do CyStack đặt sẽ được đổi lại nếu sau này có bài viết công khai công bố một mẫu chính xác thuộc biến thể collapse triệt để này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `Flat macOS system_profiler panel (aggressive collapse)`, `BRADMAX macOS Information.txt with space-collapsed keys`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| macOS full user name plus short login (dscl format) | Họ tên đầy đủ người dùng macOS kèm tên đăng nhập rút gọn (định dạng dscl) |
| Apple product line and model identifier (MacBookPro, Mac Studio, iMac, etc.) plus model number | Dòng sản phẩm và mã model của Apple (MacBookPro, Mac Studio, iMac, v.v.) kèm số hiệu model |
| Apple Silicon chip name or Intel processor name | Tên chip Apple Silicon hoặc tên bộ xử lý Intel |
| Total core count with performance/efficiency split (Apple Silicon hybrid core report) | Tổng số nhân xử lý kèm phân chia nhân hiệu năng cao/tiết kiệm điện (báo cáo nhân lai của Apple Silicon) |
| Physical memory in GB | Dung lượng bộ nhớ vật lý (GB) |
| Hardware UUID (SPHardwareDataType canonical field) | Hardware UUID (trường chuẩn của SPHardwareDataType) |
| Provisioning UDID (Apple Configurator supervision identifier) | Provisioning UDID (định danh giám sát của Apple Configurator) |
| GPU chipset model, vendor, Metal support version | Model chipset GPU, nhà sản xuất, phiên bản hỗ trợ Metal |
| Display resolutions with aspect-ratio annotations (2560x1080 UW-UXGA UltraWide, etc.) | Độ phân giải màn hình kèm chú thích tỷ lệ khung hình (2560x1080 UW-UXGA UltraWide, v.v.) |
| Secure Virtual Memory / SIP status flags | Cờ trạng thái Secure Virtual Memory / SIP |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the four space-collapsed macOS
key literals: `ChipsetModel:` AND `TotalNumberofCores:`
AND (`HardwareUUID:` OR `ProvisioningUDID:`) AND the
`@BRADMAX` substring in the archive path. The BRADMAX archive-path anchor scopes the fingerprint to
the observed distribution channel; the four space-collapsed macOS-specific keys are mutually exclusive
with every Windows-panel format and with the sibling `CSFlatMacProfilerStealer` which requires
line-anchored space-preserving spellings. During
triage, the space-collapsed keys are recovered by
substring-search rather than full unflattening because
the aggressive collapse makes value boundaries
unreliable (values contain no whitespace at all).

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu bốn chuỗi khóa macOS bị nén khoảng trắng: `ChipsetModel:` VÀ `TotalNumberofCores:` VÀ (`HardwareUUID:` HOẶC `ProvisioningUDID:`) VÀ chuỗi con `@BRADMAX` trong đường dẫn archive. Điểm neo đường dẫn archive BRADMAX giới hạn phạm vi nhận diện vào kênh phân phối đã quan sát được; bốn khóa đặc thù macOS bị nén khoảng trắng loại trừ lẫn nhau với mọi định dạng bảng điều khiển Windows và với dấu vết liên quan `CSFlatMacProfilerStealer` vốn yêu cầu cách viết giữ nguyên khoảng trắng và neo theo dòng. Trong quá trình rà soát ban đầu, các khóa bị nén khoảng trắng được khôi phục bằng cách tìm kiếm chuỗi con thay vì cố khôi phục đầy đủ cấu trúc trường, vì việc nén triệt để khiến ranh giới giá trị không còn đáng tin cậy (các giá trị hoàn toàn không chứa khoảng trắng).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSFlatMacProfilerStealer](../cs-flat-mac-profiler-stealer/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)
- [MacSync](../mac-sync/)
- [Phexia](../phexia/)

## Related external families

- `banshee-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
