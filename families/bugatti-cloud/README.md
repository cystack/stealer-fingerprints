# Bugatti Cloud

## Overview / Tổng quan

### English

Banner-only `information.txt` produced by the `@bugatti_cloud`
Telegram-channel distribution. Victim folders use a
config-style name pattern
(`AR_<ver>_Cty_<id>_rgn_<n>i_ll<n>i_eenable_itp_optimization0-<hwidpfx>`).
The system file content is a single line of ASCII-art banner
between pipe borders, with no field section at all; the
underlying stealer engine emits its banner without any
identity preamble.

### Tiếng Việt

`information.txt` chỉ có biểu ngữ, được tạo ra qua kênh phát tán Telegram `@bugatti_cloud`. Các thư mục nạn nhân sử dụng mẫu tên kiểu cấu hình (`AR_<ver>_Cty_<id>_rgn_<n>i_ll<n>i_eenable_itp_optimization0-<hwidpfx>`). Nội dung tệp hệ thống là một dòng duy nhất biểu ngữ ASCII-art nằm giữa các viền dạng ống, không có phần trường thông tin nào cả; mã độc đánh cắp thông tin cơ bản tạo dữ liệu đầu ra là biểu ngữ mà không có bất kỳ lời giới thiệu định danh nào.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Log aggregator / Nguồn tổng hợp log**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **2**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

Single-line `information.txt` containing only an ASCII-art
banner between pipe borders. Companion folder layout uses the
long config-style suffix style, distinct from other
channel-specific layouts.

### Tiếng Việt

`information.txt` một dòng duy nhất chỉ chứa biểu ngữ ASCII-art nằm giữa các viền dạng ống. Bố cục thư mục đi kèm sử dụng kiểu hậu tố dài dạng cấu hình, khác biệt với các bố cục theo kênh khác.

## Families seen in this aggregator

- [bracket-section-stealer](../bracket-section-stealer/)
- [category-stealer](../category-stealer/)
- [crypt-bot](../crypt-bot/)
- [cs-bugatti-cloud-pc-info-stealer](../cs-bugatti-cloud-pc-info-stealer/)
- [cs-bugatti-pc-info-stealer](../cs-bugatti-pc-info-stealer/)
- [cs-bugatti-user-info-stealer](../cs-bugatti-user-info-stealer/)
- [cs-cyrillic-cores-stealer](../cs-cyrillic-cores-stealer/)
- [cs-essential-mac-stealer](../cs-essential-mac-stealer/)
- [cs-mac-keychain-pass-stealer](../cs-mac-keychain-pass-stealer/)
- [cs-plateform-exploitation-stealer](../cs-plateform-exploitation-stealer/)
- [cs-plutus-stealer](../cs-plutus-stealer/)
- [cs-russia34-stealer](../cs-russia34-stealer/)
- [cs-sig-info-stealer](../cs-sig-info-stealer/)
- [csx3zero-bot-stealer](../csx3zero-bot-stealer/)
- [cthulhu-stealer](../cthulhu-stealer/)
- [dc-rat](../dc-rat/)
- [erbium](../erbium/)
- [pxa-stealer](../pxa-stealer/)
- [remus-stealer](../remus-stealer/)
- [rhadamanthys](../rhadamanthys/)
- [vidar](../vidar/)

## Observed log variants

### `v_c12f9b157d6a74710a1e1e9ebc1ecea7`

- Format ID: `bugatti-cloud-banner`
- Observed filenames: `information.txt`
- Panel brand: -
- Distribution channel: `@bugatti_cloud`
- Attribution confidence: **unknown**
- Historical records represented: **2**
- Representative sample: [open sample](samples/v_c12f9b157d6a74710a1e1e9ebc1ecea7/sample.txt)
- Sample SHA-256: `c0827f757e129b9667c320a2ae7552ff7172bdbf4444d32e87abc8817ecb677b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `_____  _   _ __   __  _____  _   _  _____  _____  ___   _      _      _____`
- Field labels: -


## MITRE ATT&CK

No ATT&CK mapping published yet / Chưa công bố ánh xạ ATT&CK.

## Related catalog profiles

- None recorded.

## Sources

- <https://heroic.com/darkhive-breaches/bugatti-cloud-telegram-stealer-log-july-2023-timeline/>
- <https://socradar.io/blog/top-stealer-log-telegram-channels/>

Machine-readable record: [family.json](family.json)
