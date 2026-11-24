# CSArtHouseCloudStealer

## Overview / Tổng quan

### English

CSArtHouseCloudStealer is a CyStack-coined identifier for the
heavily-stripped ArtHouse Cloud `System.txt` log observed inside
`@ft7links`-distributed packs alongside canonical Lumma content
and the `CSBabaStealer` rebrand. The body wraps an
XFiles-derivative victim-info block in two ArtHouse Cloud
banners (header + footer) framed with U+2500 box-drawing
horizontal rules. The `@ft7links` operator labels the archive
`lumma` and resells multiple panels under one cover.

### Tiếng Việt

CSArtHouseCloudStealer là định danh do CyStack đặt cho log ArtHouse Cloud `System.txt` đã bị lược bỏ nhiều thành phần, được ghi nhận bên trong các gói phân phối qua `@ft7links` cùng với nội dung Lumma nguyên bản và bản đổi thương hiệu `CSBabaStealer`. Phần nội dung bao bọc một khối thông tin nạn nhân có nguồn gốc từ XFiles bằng hai biểu ngữ ArtHouse Cloud (đầu trang + chân trang) được đóng khung bằng các đường kẻ ngang ký tự vẽ khung U+2500. Đối tượng vận hành `@ft7links` gắn nhãn kho lưu trữ là `lumma` và bán lại nhiều bảng điều khiển dưới một lớp vỏ chung.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Log aggregator / Nguồn tổng hợp log**
- Attribution confidence: **unknown**
- Aliases: `ArtHouse Cloud`, `ArtHouse_Cloud_Team`
- Variants observed: **5**
- CyStack observations represented: **5**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

ArtHouse Cloud header/footer banners with `linktr.ee/ArtHouse_Cloud_Team`
reference plus the U+2500 horizontal rule framing. Two
field-set shapes have been observed (5-field and richer
variants); both share the banner.

### Tiếng Việt

Các biểu ngữ đầu trang/chân trang ArtHouse Cloud kèm tham chiếu `linktr.ee/ArtHouse_Cloud_Team` cùng khung đường kẻ ngang U+2500. Đã ghi nhận hai cấu trúc dữ liệu tập trường khác nhau (biến thể 5 trường và biến thể có nhiều trường hơn); cả hai đều dùng chung biểu ngữ.

## Families seen in this aggregator

- [lumma](../lumma/)
- [redline](../redline/)
- [x-files](../x-files/)

## Observed log variants

### `v_36757d995a0898309828908b53f3fce6`

- Format ID: `cs-arthouse-cloud-stealer`
- Observed filenames: `System.txt`
- Panel brand: `ArtHouse Cloud (Mops Stealer V2 Lumma bullet)`
- Distribution channel: `linktr.ee/ArtHouse_Cloud_Team / @arthouse_full_bot`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_36757d995a0898309828908b53f3fce6/System.txt)
- Sample SHA-256: `1da0a43829c6f529740221a8e6759edf02163679f2666520b77e0e64edbe64b0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `q@PE FBk m $ J r n K o q o 1`
- Field labels: `Anti Virus`, `Computer`, `Country`, `CPU Cores`, `CPU Name`, `CPU Threads`, `Display resolution`, `GPU`, `HWID`, `IP Address`, `Language`, `Lid`, `Local Date`, `Mops Stealer V2`, `RAM Size`, `System Installed`, `Time Zone`, `User`

### `v_6f6797ca458703a80b71bec490abb68d`

- Format ID: `cs-arthouse-cloud-stealer`
- Observed filenames: `System.txt`
- Panel brand: `ArtHouse Cloud (canonical Lumma bullet)`
- Distribution channel: `linktr.ee/ArtHouse_Cloud_Team / @arthouse_full_bot`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_6f6797ca458703a80b71bec490abb68d/System.txt)
- Sample SHA-256: `b357839e1db4bc78781c4462d2078d4357eff874a11c9c14ab8131c00163ab9d`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `BSSID`, `Country`, `CPU Cores`, `CPU Name`, `CPU Threads`, `CPU Vendor`, `Display resolution`, `Elevated`, `Email`, `GPU`, `Hostname`, `HWID`, `Install Date`, `Language`, `Local Date`, `Owner`, `Path`, `RAM Size`, `Time`, `Time Zone`, `Uptime`, `User`, `Version`, `Wallpaper SHA256`, `Window`

### `v_98ef534d916e6f477ab47647d35ba1a9`

- Format ID: `cs-arthouse-cloud-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `ArhontCloud (XFiles 5-field)`
- Distribution channel: `@ArhontCorp`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_98ef534d916e6f477ab47647d35ba1a9/Information.txt)
- Sample SHA-256: `c76af5581db15b9213e07398bdf6de56c94f35a71190fc4a79b04b285be0b3a7`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Computer Name`, `Country`, `CPU (Processor`, `IP`, `Operating System`, `Username`, `❗️Actual Link`, `💎Buy`

### `v_d429c125c8857b42f20ede100de00140`

- Format ID: `cs-arthouse-cloud-stealer`
- Observed filenames: `System.txt`
- Panel brand: `ArhontCloud (Redline dashed-HWID)`
- Distribution channel: `@ArhontCorp`
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d429c125c8857b42f20ede100de00140/System.txt)
- Sample SHA-256: `f28e7a22fa6b4fec4dc91e9dc0cda91a5b0d579279e99a5ead5f4373ce964cc0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Country`, `HWID`, `IP`, `Operation System`, `ScreenSize`, `UserName`, `❗️Actual Link`, `💎Buy`

### `v_f5a0c017ac8da24ba224a6179cdda955`

- Format ID: `cs-arthouse-cloud-stealer`
- Observed filenames: `information.txt`
- Panel brand: `ArtHouse Cloud (Lumma bullet stub, banner sabotage)`
- Distribution channel: `linktr.ee/ArtHouse_Cloud_Team / @arthouse_full_bot`
- Attribution confidence: **medium**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_f5a0c017ac8da24ba224a6179cdda955/information.txt)
- Sample SHA-256: `94369bec5b79d4f59901393849b4b54bafcbbc6a1bd326a662eba09aeef472fd`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Anti Virus`, `Computer`, `Country`, `Display resolution`, `Domain`, `Elevated`, `Hostname`, `HWID`, `Install Date`, `IP Address`, `Language`, `Local Date`, `NetBIOS`, `OS Version`, `Path`, `Time`, `Time Zone`, `User`, `❗️Actual Link`, `💎Buy`


## MITRE ATT&CK

No ATT&CK mapping published yet / Chưa công bố ánh xạ ATT&CK.

## Related catalog profiles

- [Lumma](../lumma/)
- [XFiles](../x-files/)
- [CSBabaStealer](../cs-baba-stealer/)
- [CSCashFlowStealer](../cs-cash-flow-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
