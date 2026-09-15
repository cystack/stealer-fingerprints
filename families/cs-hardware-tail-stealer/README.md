# CSHardwareTailStealer

## Overview / Tổng quan

### English

CSHardwareTailStealer is a CyStack-coined identifier for a
stripped hardware-only `Info.txt` shipped through the
`@STEALERBOSS` Telegram aggregator under the
`STEALERCLOUD#<N>` per-victim-folder watermark. The body
carries the canonical Remus Stealer YAML hardware-block keys
(`product:`, `core count:`, `thread count:`, `ram:`, `gpu:`,
`display:`). The `build:` and `os:` parent blocks and every
identification field (banner, IP, country, time, user,
hostname, install path, antivirus) are absent.

Two truncation variants ship in the same broker pack. Variant
A keeps the CPU block intact and adds a new `core enabled:`
field that mirrors `core count:`. Variant B strips the CPU
block down to a bare `thread count:` line and instead ships a
`motherboard:` block carrying Win32_BaseBoard `manufacturer:`
and `product:` values. Both variants share the same `ram:` /
`gpu:` / `display:` tail.

The broker likely repackages hardware fragments as a sample
preview before charging buyers for the full log. Family
attribution is provisional: the body is structurally Remus
derived but the load-bearing identification fields that would
confirm Remus are all stripped, and no public reporting or
community catalogue documents a STEALERCLOUD or STEALERBOSS
family layout. Rename this entry if a stronger attribution
surfaces.

### Tiếng Việt

CSHardwareTailStealer là định danh do CyStack đặt cho một biến thể `Info.txt` tối giản chỉ thu thập thông tin phần cứng, được phát tán qua kênh tổng hợp Telegram `@STEALERBOSS` dưới ký hiệu thư mục theo-từng-nạn-nhân `STEALERCLOUD#<N>`. Phần thân chứa các khóa khối phần cứng YAML chuẩn của Remus Stealer (`product:`, `core count:`, `thread count:`, `ram:`, `gpu:`, `display:`). Các khối cha `build:` và `os:`, cùng mọi trường định danh (banner, IP, quốc gia, thời gian, người dùng, tên máy, đường dẫn cài đặt, phần mềm diệt virus) đều không xuất hiện.

Hai biến thể bị cắt bớt được phát tán cùng một gói dữ liệu từ đối tượng môi giới. Biến thể A giữ nguyên khối CPU và bổ sung một trường mới `core enabled:` phản ánh `core count:`. Biến thể B cắt khối CPU xuống chỉ còn một dòng `thread count:` không có tiền tố, thay vào đó phát tán một khối `motherboard:` mang các giá trị Win32_BaseBoard `manufacturer:` và `product:`. Cả hai biến thể đều chia sẻ chung phần đuôi `ram:` / `gpu:` / `display:`.

Đối tượng môi giới có khả năng đóng gói lại các đoạn dữ liệu phần cứng này như một bản xem trước mẫu trước khi tính phí người mua để lấy log đầy đủ. Việc quy kết họ mã độc hiện mang tính tạm thời: phần thân có cấu trúc bắt nguồn từ Remus, nhưng các trường định danh mang tính then chốt vốn có thể xác nhận Remus đều đã bị loại bỏ, và không có báo cáo công khai hay danh mục cộng đồng nào ghi nhận bố cục họ mã độc STEALERCLOUD hoặc STEALERBOSS. Cần đổi tên mục này nếu xuất hiện bằng chứng quy kết mạnh hơn.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `STEALERCLOUD`, `STEALERBOSS hardware tail`
- Variants observed: **1**
- CyStack observations represented: **5,951**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| CPU model, core count, and thread count | Model CPU, số lõi và số luồng xử lý |
| RAM SPD product strings and per-stick capacity | Chuỗi thông tin sản phẩm SPD của RAM và dung lượng từng thanh RAM |
| GPU adapter names | Tên adapter GPU |
| Primary display resolution | Độ phân giải màn hình chính |

## Detection notes / Ghi chú nhận diện

### English

Triple-anchor fingerprint: a line-anchored `core enabled:`
key (with leading whitespace and an integer value), a
line-anchored `display:` line at 2-space indent carrying
a `<W>x<H>` scalar, and the absence of a top-level
`build:` key at column 0. The triple rules out canonical
Remus (which always opens at column 0 with `build:`) and
documents its structural distinction from Remus. The body ships no victim-identifying fields,
so the retained evidence carries only the hardware inventory.

### Tiếng Việt

Dấu hiệu nhận diện dựa trên ba mỏ neo: một khóa `core enabled:` được neo theo dòng (có khoảng trắng đầu dòng và giá trị số nguyên), một dòng `display:` được neo theo dòng với thụt lề 2 khoảng trắng mang giá trị vô hướng `<W>x<H>`, và việc thiếu khóa cấp cao nhất `build:` ở cột 0. Bộ ba mỏ neo này loại trừ khả năng đây là Remus chuẩn (vốn luôn bắt đầu ở cột 0 với `build:`) và ghi nhận sự khác biệt về cấu trúc dữ liệu so với Remus. Phần thân không phát tán bất kỳ trường định danh nạn nhân nào, do đó bằng chứng còn lại chỉ mang thông tin kiểm kê phần cứng.

## Observed log variants

### `v_e32e486c362d196da51fec0543f79f1f`

- Format ID: `cs-hardware-tail-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `STEALERCLOUD`
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Layout: `core-enabled`
- Historical records represented: **5,951**
- Representative sample: [open sample](samples/v_e32e486c362d196da51fec0543f79f1f/sample.txt)
- Sample SHA-256: `f0063db91b68b4751f0ff84af633bec21c68c23cc65f3e158834e05053b25b5b`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `core enabled`, `display`, `gpu`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)

## Observed distribution channels

- <https://t.me/STEALERBOSS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
