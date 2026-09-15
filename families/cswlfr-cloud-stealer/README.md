# CSWLFRCloudStealer

## Overview / Tổng quan

### English

CSWLFRCloudStealer is a CyStack-coined identifier for the WLFR
Cloud (`@WichLoveFromR`) panel layout. The format is a
banner-watermarked lowercase-terse `Info.txt`: a leading `The Best fresh logs and ULP Cloud` banner, three repeated
`t.me/WichLoveFromR` channel handle lines, a `Reserve Link: https://linktr.ee/WLFRcloud` advertising line, a `Buy: @AltairSupport` support handle line, and a flat lowercase
`key: value` block of `date / path / country / os / version / language / domain / cpu / ram / gpu` fields. All field keys
are lowercase, no leading dash, no banner header above the
block.

The panel routinely emits several fields blank (the observed
sample has empty `os` / `domain` / `cpu` / `ram` / `gpu`) and
parks the full OS string under `version:` instead of `os:`.
There is no IP address field at all, only a country code,
which is unusual across the surveyed stealer panels and is a
strong distinguishing feature on its own. The `date:` value is
a bare `dd.mm.yyyy` with no time component.

Family attribution is provisional pending a published
threat-intel mapping for this lowercase-terse layout. Public
research on stealer-log Telegram clouds documents the WLFR
Cloud / `@WichLoveFromR` channel as a stealer-log distribution
cloud, but none of those writeups attribute the specific
lowercase-terse panel layout to a known underlying builder. A
community stealer-format catalogue identifies the same
channel's XFiles-shaped redistribution branch (documented separately by the `XFiles` profile) but does not document
this distinct lowercase format. The `CSWLFRCloudStealer` tracking name preserves the discovery and can be revised if published evidence later establishes the underlying family.

### Tiếng Việt

CSWLFRCloudStealer là định danh do CyStack đặt cho bố cục panel WLFR Cloud (`@WichLoveFromR`). Định dạng này là một `Info.txt` dạng chữ thường, ngắn gọn, có watermark banner: một banner `The Best fresh logs and ULP Cloud` ở đầu, ba dòng handle kênh `t.me/WichLoveFromR` lặp lại, một dòng quảng cáo `Reserve Link: https://linktr.ee/WLFRcloud`, một dòng handle hỗ trợ `Buy: @AltairSupport`, và một khối `key: value` dạng chữ thường phẳng gồm các trường `date / path / country / os / version / language / domain / cpu / ram / gpu`. Tất cả khóa trường đều viết chữ thường, không có dấu gạch ngang ở đầu, không có tiêu đề banner phía trên khối.

Panel này thường xuyên tạo dữ liệu đầu ra với một số trường để trống (mẫu quan sát được có `os` / `domain` / `cpu` / `ram` / `gpu` trống) và đặt toàn bộ chuỗi hệ điều hành dưới `version:` thay vì `os:`. Hoàn toàn không có trường địa chỉ IP, chỉ có mã quốc gia - điều này khá bất thường so với các panel mã độc đánh cắp thông tin đã khảo sát và tự thân là một đặc điểm phân biệt mạnh. Giá trị `date:` là một `dd.mm.yyyy` trần, không có thành phần thời gian.

Việc quy kết họ mã độc vẫn còn mang tính tạm thời cho đến khi có ánh xạ threat-intel được công bố cho bố cục dạng chữ thường, ngắn gọn này. Các nghiên cứu công khai về các cloud Telegram chứa log mã độc đánh cắp thông tin có ghi nhận WLFR Cloud / kênh `@WichLoveFromR` là một cloud phân phối log mã độc đánh cắp thông tin, nhưng không bài viết nào trong số đó quy kết cụ thể bố cục panel dạng chữ thường, ngắn gọn này cho một công cụ builder cụ thể đã biết. Một danh mục định dạng mã độc đánh cắp thông tin do cộng đồng biên soạn có xác định nhánh tái phân phối có cấu trúc dạng XFiles của cùng kênh này (được ghi nhận riêng trong hồ sơ `XFiles`) nhưng không ghi nhận định dạng chữ thường riêng biệt này. Tên theo dõi `CSWLFRCloudStealer` được giữ nguyên để lưu lại quá trình phát hiện và có thể được điều chỉnh nếu sau này có bằng chứng công bố xác lập được họ mã độc gốc.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `WLFR Cloud`, `@WichLoveFromR`, `WLFRcloud`
- Variants observed: **1**
- CyStack observations represented: **17**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Victim country code and locale | Mã quốc gia và locale của nạn nhân |
| OS family and build identifier | Họ hệ điều hành và định danh phiên bản build |
| Dropper file system path | Đường dẫn hệ thống tệp của dropper |
| Hardware fingerprint fields (CPU, RAM, GPU) when present | Các trường vân tay phần cứng (CPU, RAM, GPU) khi có |

## Detection notes / Ghi chú nhận diện

### English

Confidence anchors: the `fresh logs and ULP Cloud` banner
literal AND the `t.me/WichLoveFromR` channel watermark
plus line-anchored lowercase `date:` and `language:`
keys. The banner literal is the strongest signal - no
other format in this catalog carries it. False-positive
risk is low because the four anchors together cannot
plausibly co-occur in unrelated content. The same
`@WichLoveFromR` channel resells multiple underlying
panel shapes (XFiles-derived bodies are documented in the
`XFiles` profile); triage logs from this family at
the panel-brand level rather than assuming a single
underlying stealer.

### Tiếng Việt

Điểm neo tin cậy: chuỗi banner `fresh logs and ULP Cloud` VÀ watermark kênh `t.me/WichLoveFromR` kết hợp với các khóa `date:` và `language:` dạng chữ thường neo theo dòng. Chuỗi banner là tín hiệu mạnh nhất - không định dạng nào khác trong danh mục này mang chuỗi đó. Rủi ro dương tính giả thấp vì bốn điểm neo này khó có khả năng cùng xuất hiện trong nội dung không liên quan. Cùng kênh `@WichLoveFromR` bán lại nhiều cấu trúc panel gốc khác nhau (các thân log có nguồn gốc từ XFiles được ghi nhận trong hồ sơ `XFiles`); nên phân loại log từ họ này ở cấp độ thương hiệu panel thay vì giả định chỉ có một họ mã độc đánh cắp thông tin duy nhất đứng sau.

## Observed log variants

### `v_fc94bc1c6b7f5025bc62dabd8131bdaa`

- Format ID: `cs-wlfr-cloud-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `The Best fresh logs and ULP Cloud`
- Distribution channel: `@WichLoveFromR`
- Attribution confidence: **unknown**
- Historical records represented: **17**
- Representative sample: [open sample](samples/v_fc94bc1c6b7f5025bc62dabd8131bdaa/sample.txt)
- Sample SHA-256: `053f43a583298fab0ea807084e05eb2738be4671a847641875f923522a53898b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `fresh logs and ULP Cloud`, `t.me/WichLoveFromR`, `The Best fresh logs and ULP Cloud`
- Field labels: `date`, `language`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1614.001](https://attack.mitre.org/techniques/T1614/001/) | System Language Discovery | Xác định ngôn ngữ hệ thống |

## Related catalog profiles

- [XFiles](../x-files/)

## Observed distribution channels

- <https://t.me/WichLoveFromR>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
