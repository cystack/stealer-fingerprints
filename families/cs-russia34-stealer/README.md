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
- Variants observed: **9**
- CyStack observations represented: **9**

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

### `v_0bc8a9aa5d28bf50837f905a86c946db`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `russia34.com (sig-info body)`
- Distribution channel: `russia34.com`
- Attribution confidence: **medium**
- Layout: `sig-info-body`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_0bc8a9aa5d28bf50837f905a86c946db/Info.txt)
- Sample SHA-256: `76d0302bc2bc1f6eabc016ca55f6487aaf41bc5a6358453d1688c4d374f26904`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Country`, `Display Resolution`, `Elevated`, `Graphics Card`, `HWID`, `Installed RAM`, `IP Address`, `Netbios`, `New subscribers here`, `Path`, `Processor`, `Processor Cores`, `Processor Threads`, `Time`, `User`, `User Language`, `User Name`

### `v_3f43251d3c6cfeabf85b4bef293e1fb5`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `information.txt`
- Panel brand: `russia34.com aggregator (legacy mixed-shape)`
- Distribution channel: `russia34.com`
- Attribution confidence: **unknown**
- Layout: `banner-only`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_3f43251d3c6cfeabf85b4bef293e1fb5/information.txt)
- Sample SHA-256: `9c6bdd38e832970c4df53b938caf54d771c7fcac91248a5f31136c9abf1f5206`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `[Hardware]`, `[Processes]`, `[Software]`
- Field labels: `Computer Name`, `Cores`, `Country`, `Date`, `Display Resolution`, `GUID`, `HWID`, `IP`, `Local Time`, `MachineID`, `New subscribers here`, `Path`, `Processor`, `RAM`, `Threads`, `User Name`, `VideoCard`, `Windows`, `Work Dir`

### `v_46e4e13306357952f17857cf8534a29b`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `system_info.txt`
- Panel brand: `russia34.com (StealC-headerless)`
- Distribution channel: `russia34.com`
- Attribution confidence: **medium**
- Layout: `stealc-headerless`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_46e4e13306357952f17857cf8534a29b/system_info.txt)
- Sample SHA-256: `ff284509421fe4c4f278b0622446f636025c2d4c635419974d4c1cb875715a4b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Architecture`, `Computer Name`, `Cores`, `Country`, `CPU`, `Device String`, `Display Resolution`, `GPU`, `HWID`, `IP`, `Keyboards`, `Language`, `Laptop`, `Local Time`, `New subscribers here`, `OS`, `Path`, `RAM`, `Resolution`, `Threads`, `UserName`, `UTC`

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

### `v_8315bee0df2a33746993c92954c96106`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `russia34.com (XFiles body)`
- Distribution channel: `russia34.com`
- Attribution confidence: **high**
- Layout: `xfiles-5-field`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_8315bee0df2a33746993c92954c96106/Information.txt)
- Sample SHA-256: `a02157fa806d67eecb4c0516d3578dfb5d87ca498555b58e433170e124ac99f1`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `ChromiumBrowsers`, `Computer Name`, `Country`, `CPU (Processor`, `Desktop Screenshot Taken`, `EmailClients`, `FileGrabber`, `Ftp`, `Games`, `GeckoBrowsers`, `GPU (Display Devices`, `Hardware`, `Hardware ID`, `IP`, `Jabber`, `Messengers`, `New subscribers here`, `Operating System`, `Operation ID`, `Processed parts`, `RAM (Memory`, `RemoteAdminControl`, `Screens`, `Telegram`, `Total Time to process`, `Username`, `Vnc`, `Vpn`, `Wallets`

### `v_c4c02161b64494053788c5a5008013fd`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `russia34.com (Redline-typo body)`
- Distribution channel: `russia34.com`
- Attribution confidence: **high**
- Layout: `redline`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_c4c02161b64494053788c5a5008013fd/UserInformation.txt)
- Sample SHA-256: `4bc4800f3fa259e48c55c8561f636cf41be4c200b49d4f1767b37279691d11d0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `Graphics card`, `Installed RAM`, `IP`, `Keyboard Language`, `Log date`, `MachineID`, `New subscribers here`, `Operation System`, `Processor`, `ScreenSize`, `System Language`, `TimeZone`, `User Language`, `UserName`

### `v_d71f4e9486d02f7bf5d6acaf84fda8c2`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `russia34.com (Remus stripped)`
- Distribution channel: `russia34.com`
- Attribution confidence: **medium**
- Layout: `banner-only`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d71f4e9486d02f7bf5d6acaf84fda8c2/Info.txt)
- Sample SHA-256: `29f5ca89e6da676d1013df46ca2a6b431460ef2f49f8b7add9af2bce1ba0cef0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `country`, `date`, `domain`, `gpu`, `language`, `New subscribers here`, `os`, `path`, `version`

### `v_ec50b2e15d4c11f782bda89d68944a09`

- Format ID: `cs-russia34-stealer`
- Observed filenames: `System.txt`
- Panel brand: `russia34.com (Lumma dashless)`
- Distribution channel: `russia34.com`
- Attribution confidence: **high**
- Layout: `lumma-dashless`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_ec50b2e15d4c11f782bda89d68944a09/System.txt)
- Sample SHA-256: `f9e8d955ab0144a80bc1eb07e8da939d9565a0f44bd4bd91d497d0fbafefe262`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Display resolution`, `Domain`, `GPU`, `HWID`, `New subscribers here`

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
