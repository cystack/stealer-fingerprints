# CSCashFlowStealer

## Overview / Tổng quan

### English

CSCashFlowStealer is a CyStack-coined identifier for the
heavily-stripped `CashFlow Premium Cloud` `System.txt` log
observed inside `@ft7links`-distributed packs alongside the
CSArtHouseCloudStealer distribution. The body wraps the same
XFiles-derivative victim-info block as `CSArtHouseCloudStealer`
but uses a different distributor's banner. The
`@HUNTER_CLOUDS` support handle in the footer and the
`t.me/Link_CashFlow` channel reference identify the
distribution path.

### Tiếng Việt

CSCashFlowStealer là định danh do CyStack đặt cho log `CashFlow Premium Cloud` `System.txt` đã bị lược bỏ nhiều thành phần, được ghi nhận bên trong các gói phân phối bởi `@ft7links` cùng với hoạt động phân phối CSArtHouseCloudStealer. Phần thân bao bọc cùng một khối thông tin nạn nhân bắt nguồn từ XFiles giống như `CSArtHouseCloudStealer` nhưng sử dụng biểu ngữ (banner) của một đối tượng phân phối khác. Đầu mối hỗ trợ `@HUNTER_CLOUDS` trong phần chân trang và tham chiếu kênh `t.me/Link_CashFlow` giúp xác định đường phân phối.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Log aggregator / Nguồn tổng hợp log**
- Attribution confidence: **unknown**
- Aliases: `CashFlow Premium Cloud`, `C4SHFL0W PR3M1UM CL0UD`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

Header banner `t . m e / + ... = C4SHFL0W PR3M1UM CL0UD L0G5`
with the leetspeak digits and spaced URL is the cleanest
trigger. Companion footer line carries `@HUNTER_CLOUDS`
support reference and `Link_CashFlow` channel handle.

### Tiếng Việt

Biểu ngữ (banner) tiêu đề `t . m e / + ... = C4SHFL0W PR3M1UM CL0UD L0G5` kèm các chữ số kiểu leetspeak và URL có khoảng cách là dấu hiệu nhận diện rõ ràng nhất. Dòng chân trang đi kèm mang tham chiếu hỗ trợ `@HUNTER_CLOUDS` và đầu mối kênh `Link_CashFlow`.

## Families seen in this aggregator

- [redline](../redline/)
- [x-files](../x-files/)

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

No ATT&CK mapping published yet / Chưa công bố ánh xạ ATT&CK.

## Related catalog profiles

- [XFiles](../x-files/)
- [CSArtHouseCloudStealer](../cs-art-house-cloud-stealer/)
- [CSHunterCloudStealer](../cs-hunter-cloud-stealer/)

## Observed distribution channels

- <https://t.me/Link_CashFlow>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
