# CSEnchantCloudStealer

## Overview / Tổng quan

### English

CSEnchantCloudStealer is a CyStack-coined identifier for a
`@ft7links` / `EnchantCloudNew` stripped Redline-shape
`UserInformation.txt` distributed via the
`t.me/EnchantCloudNew` Telegram channel. The panel emits a
`JOIN OUR CHANNEL!` pipe-bordered banner with five
channel-promotion lines, then drops two distinct field-set
shapes: a bogon-IP variant with canonical Redline-named fields
and a non-bogon variant with extended-block fields.

### Tiếng Việt

CSEnchantCloudStealer là định danh do CyStack đặt tên cho một biến thể `@ft7links` / `EnchantCloudNew` rút gọn có cấu trúc dữ liệu giống Redline `UserInformation.txt`, được phát tán qua kênh Telegram `t.me/EnchantCloudNew`. Bảng điều khiển tạo dữ liệu đầu ra là một banner `JOIN OUR CHANNEL!` có viền dấu gạch đứng (pipe) kèm năm dòng quảng bá kênh, sau đó thả xuống hai cấu trúc tập trường (field-set) khác biệt: một biến thể với IP bogon có các trường được đặt tên theo chuẩn Redline, và một biến thể không phải bogon với các trường thuộc khối mở rộng.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Family variant / Biến thể của một họ mã độc**
- Attribution confidence: **high**
- Canonical family: [redline](../redline/)
- Aliases: `EnchantCloudNew`, `@ft7links Redline variant`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

- No target inventory published yet / Chưa công bố danh mục mục tiêu.

## Detection notes / Ghi chú nhận diện

### English

Pipe-bordered `JOIN OUR CHANNEL!` banner with five
`https://t.me/EnchantCloudNew` repetitions plus the stripped
Redline-shape field set. Two variants share the banner; the
field-set variant indicates whether the victim resolved to a
bogon IP.

### Tiếng Việt

Banner `JOIN OUR CHANNEL!` có viền dấu gạch đứng (pipe) với năm lần lặp lại `https://t.me/EnchantCloudNew`, cùng với tập trường có cấu trúc dữ liệu giống Redline đã bị rút gọn. Cả hai biến thể đều dùng chung banner; biến thể tập trường cho biết liệu nạn nhân có phân giải ra IP bogon hay không.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Redline](../redline/)
- [RedlineLike Stealer](../redline-like-stealer/)

## Observed distribution channels

- <https://t.me/EnchantCloudNew>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
