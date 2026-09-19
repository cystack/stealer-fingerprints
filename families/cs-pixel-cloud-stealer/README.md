# CSPixelCloudStealer

## Overview / Tổng quan

### English

CSPixelCloudStealer is a CyStack-coined identifier for the
``t.me/PIXELCLOUD3`` aggregator's stripped Redline-shape
``System.txt`` observed inside ``@ft7links-lumma`` aggregator
packs. The panel emits an ASCII-art banner followed by
twelve repeated ``https://t.me/PIXELCLOUD3`` subscriber
lines arranged in a 3-row by 4-column block.

### Tiếng Việt

CSPixelCloudStealer là định danh do CyStack đặt cho tệp ``System.txt`` dạng rút gọn theo cấu trúc dữ liệu Redline của bộ tổng hợp ``t.me/PIXELCLOUD3``, được ghi nhận bên trong các gói tổng hợp ``@ft7links-lumma``. Bảng điều khiển tạo dữ liệu đầu ra là một banner ASCII-art theo sau bởi mười hai dòng ``https://t.me/PIXELCLOUD3`` subscriber lặp lại, được sắp xếp thành khối 3 hàng x 4 cột.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Log aggregator / Nguồn tổng hợp log**
- Attribution confidence: **unknown**
- Aliases: `PIXELCLOUD3`, `OBSCLOUD`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

The body shape matches the first documented variants of CSRussia34Stealer and CSEnchantCloudStealer; @ft7links labels the archive 'lumma' but body is canonical Redline-derivative for variant 1. Four variants emit different underlying families.

### Tiếng Việt

Cấu trúc dữ liệu của phần thân trùng khớp với các biến thể được ghi nhận đầu tiên của CSRussia34Stealer và CSEnchantCloudStealer; @ft7links gắn nhãn kho lưu trữ là 'lumma' nhưng phần thân lại là dạng phái sinh Redline điển hình đối với biến thể 1. Bốn biến thể tạo dữ liệu đầu ra từ các họ mã độc nền tảng khác nhau.

## Families seen in this aggregator

- [lumma](../lumma/)
- [redline](../redline/)
- [redline-like-stealer](../redline-like-stealer/)
- [x-files](../x-files/)

## Observed log variants

### `v_d73679982ffbd4a944760d7d353aee79`

- Format ID: `cs-pixel-cloud-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `PIXELCLOUD3 (RedlineLike Admin/Integrity)`
- Distribution channel: `t.me/PIXELCLOUD3`
- Attribution confidence: **high**
- Layout: `redline-like`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d73679982ffbd4a944760d7d353aee79/UserInformation.txt)
- Sample SHA-256: `4c72ad178a8174718586bccfe7cbc82d9892dcd71cf1211d9c395630b2cb0a16`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `Installed RAM`, `Integrity`, `IP`, `Keyboard Language`, `Log date`, `now`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Version Build`


## MITRE ATT&CK

No ATT&CK mapping published yet / Chưa công bố ánh xạ ATT&CK.

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Observed distribution channels

- <https://t.me/PIXELCLOUD3>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
