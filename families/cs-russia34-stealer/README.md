# CSRussia34Stealer

## Overview / Tổng quan

### English

CSRussia34Stealer is a CyStack-coined identifier for a
`russia34.com` / `Private Russia 34` stripped Redline-shape
`UserInformation.txt` observed inside
`@ft7links-redline-<TS>-<COUNT>pcs.rar` aggregator packs in
`@ft7links_redline_<NN>_bogonip_<HWIDPFX>/` victim folders.
The panel emits an ASCII-art `REDLINE` banner with three
repeated `https://russia34.com` subscriber lines, then a
stripped Redline-shape field set.

### Tiếng Việt

CSRussia34Stealer là định danh do CyStack đặt cho một cấu trúc dữ liệu Redline `russia34.com` / `Private Russia 34` đã bị lược bớt của mã độc đánh cắp thông tin `UserInformation.txt`, được quan sát bên trong các gói tổng hợp `@ft7links-redline-<TS>-<COUNT>pcs.rar` trong thư mục nạn nhân `@ft7links_redline_<NN>_bogonip_<HWIDPFX>/`.
Bảng điều khiển tạo dữ liệu đầu ra là một banner ASCII-art `REDLINE` với ba dòng subscriber `https://russia34.com` lặp lại, tiếp theo là tập trường dữ liệu theo cấu trúc dữ liệu Redline đã bị lược bớt.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Log aggregator / Nguồn tổng hợp log**
- Attribution confidence: **unknown**
- Aliases: `russia34`, `Private Russia 34`
- Variants observed: **2**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

ASCII-art REDLINE banner inside an asterisk-bordered box
followed by `https://russia34.com` subscriber lines is the
cleanest trigger. Pair with the stripped Redline-shape field
set to confirm.

### Tiếng Việt

Banner ASCII-art REDLINE bên trong khung viền dấu hoa thị, theo sau là các dòng subscriber `https://russia34.com` là dấu hiệu nhận diện rõ ràng nhất. Kết hợp với tập trường dữ liệu theo cấu trúc dữ liệu Redline đã bị lược bớt để xác nhận.

## Families seen in this aggregator

- [lumma](../lumma/)
- [redline](../redline/)
- [redline-like-stealer](../redline-like-stealer/)
- [steal-c](../steal-c/)
- [x-files](../x-files/)

## Observed log variants

### `v_7cc94e5029f876548e864f8aa345ef3b`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `information.txt`
- Panel brand: `russia34.com (Lumma 'Russia 34' bullet)`
- Distribution channel: `russia34.com`
- Attribution confidence: **high**
- Layout: `lumma-bullet-russia34`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_7cc94e5029f876548e864f8aa345ef3b/information.txt)
- Sample SHA-256: `34b1944e98c81b9be1a4e8889a3de5be0f083a219116734748d4ae39cb74ec8b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Hardware]`, `[Processes]`, `[Software]`
- Field labels: `Antivirus`, `Computer Name`, `Cores`, `Country`, `Date`, `Dirty Business`, `Display Resolution`, `GUID`, `HWID`, `IP`, `Local Time`, `MachineID`, `MD5`, `Path`, `Processor`, `RAM`, `RISK`, `Telegram`, `Threads`, `User Name`, `Version`, `VideoCard`, `Windows`, `Work Dir`, `Подбор паролей к большинству крипто кошельков`

### `v_fed52a266d896fd69cf78baa704d14b4`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `russia34.com (RedlineLike Admin/Integrity)`
- Distribution channel: `russia34.com`
- Attribution confidence: **high**
- Layout: `redline-like`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_fed52a266d896fd69cf78baa704d14b4/UserInformation.txt)
- Sample SHA-256: `4a504b0eb89582a4e269cefe661683ba1b7a43e341ead49193ab4e809bf9c909`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Admin Group`, `Computer Name`, `Country`, `Display Resolution`, `Domain Name`, `Graphics card`, `HWID`, `Installed RAM`, `Integrity`, `IP`, `Keyboard Language`, `Log date`, `now`, `Operation System`, `Processor`, `System Language`, `TimeZone`, `User Name`, `UserLanguage`, `Version Build`


## MITRE ATT&CK

No ATT&CK mapping published yet / Chưa công bố ánh xạ ATT&CK.

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Sources

- <https://russia34.com>

Machine-readable record: [family.json](family.json)
