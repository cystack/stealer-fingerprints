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
- Variants observed: **0**

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

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

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
