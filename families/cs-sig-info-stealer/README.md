# CSSigInfoStealer

## Overview / Tổng quan

### English

CSSigInfoStealer is a CyStack-coined identifier for a bare
`Key: Value` `Info.txt` panel that carries the Lumma-canonical
`(sig:UNIX.HEX)` watermark on the `Time:` line while using
Redline-style verbose field naming for the rest of the body.
Observed inside `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX`
aggregator packs in `[<CC>]<IP>/Info.txt` victim folders
(e.g. `[CA]<IPv4>/Info.txt`).

Body fields: `Build Date`, `Configuration`, `Execution Path`,
`Elevated`, `Computer Name`, `User Name`, `User Language`,
`Netbios`, `Operation System` (sic typo), `Install Date`,
`System Date`, `Time Zone`, `Antivirus`, `HWID`, `Processor`,
`Processor Threads`, `Processor Cores`, `Graphics Card`,
`Installed RAM`, `Display Resolution`, `IP Address`, `Time`,
`Country`, `User`. The body is flat (no leading-dash prefix
unlike Lumma / Deimos / BABA / DarkSide / AL Stealer), no
operator banner (unlike Redline), and not YAML (unlike
Remus). Family attribution is provisional pending a published
threat-intel mapping for this exact bare-KV layout.

### Tiếng Việt

CSSigInfoStealer là định danh do CyStack đặt cho một panel `Key: Value` `Info.txt` dạng trần, mang watermark chuẩn Lumma `(sig:UNIX.HEX)` trên dòng `Time:`, đồng thời sử dụng cách đặt tên trường đầy đủ theo phong cách Redline cho phần còn lại của nội dung.
Được quan sát bên trong các gói tổng hợp `!! 2025 NOV.part001.rar` `@BRADLOGS / BRADMAX`
trong các thư mục nạn nhân `[<CC>]<IP>/Info.txt`
(ví dụ: `[CA]<IPv4>/Info.txt`).

Các trường nội dung: `Build Date`, `Configuration`, `Execution Path`,
`Elevated`, `Computer Name`, `User Name`, `User Language`,
`Netbios`, `Operation System` (lỗi đánh máy nguyên bản), `Install Date`,
`System Date`, `Time Zone`, `Antivirus`, `HWID`, `Processor`,
`Processor Threads`, `Processor Cores`, `Graphics Card`,
`Installed RAM`, `Display Resolution`, `IP Address`, `Time`,
`Country`, `User`. Nội dung có cấu trúc dữ liệu bằng phẳng (không có tiền tố dấu gạch đầu dòng như ở Lumma / Deimos / BABA / DarkSide / AL Stealer), không có banner của đối tượng vận hành (khác với Redline), và không phải định dạng YAML (khác với Remus). Việc quy kết họ mã độc vẫn là tạm thời, chờ một bản đồ ánh xạ threat-intel đã công bố cho đúng cấu trúc dữ liệu bare-KV này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `BRADMAX Info.txt with Lumma sig watermark`, `Bare-KV Redline-style panel with Lumma sig suffix`
- Variants observed: **2**
- CyStack observations represented: **10,812**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (count flag plus harvested body in sibling files) | Thông tin xác thực đã lưu trong trình duyệt (cờ đếm số lượng kèm nội dung thu thập được trong các tệp liên quan) |
| Host metadata: hostname, NetBIOS, Windows username, language | Dữ liệu tổng hợp của máy: hostname, NetBIOS, tên người dùng Windows, ngôn ngữ |
| OS fingerprint with build number and architecture | Dấu vết nhận diện hệ điều hành gồm số hiệu build và kiến trúc |
| Hardware inventory: CPU model with cores/threads, GPU, installed RAM | Kiểm kê phần cứng: model CPU kèm số core/thread, GPU, dung lượng RAM đã lắp |
| Victim public IP plus ISO country code | Địa chỉ IP công khai của nạn nhân kèm mã quốc gia ISO |
| Wall-clock and time zone offset | Thời gian thực và độ lệch múi giờ |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `(sig:` substring (Lumma-canonical
Time-line watermark per public Lumma analyses) AND the
`Execution Path:` field name AND the `Operation System:` typo
AND `Installed RAM:` line-anchored. Lumma and CSDeimosStealer
decline because both require the `-` dash prefix on every
field; Redline declines because of the absent banner and
`FileLocation:` / `Build ID:` canonical keys. During triage,
treat the `sig:UNIX.HEX` watermark as a Lumma-family indicator
but not a Lumma confirmation: the bare-KV layout with verbose
field names does not match Lumma canonical, so the underlying
builder is most likely a Lumma fork or a stealer that adopted
the Lumma sig signature into a different panel template.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu chuỗi con `(sig:` (watermark Time-line chuẩn Lumma theo các phân tích Lumma công khai) VÀ tên trường `Execution Path:` VÀ lỗi đánh máy `Operation System:` VÀ `Installed RAM:` được gắn cố định theo dòng. Lumma và CSDeimosStealer bị loại trừ vì cả hai đều yêu cầu tiền tố dấu gạch `-` trên mọi trường; Redline bị loại trừ vì thiếu banner và các khóa chuẩn `FileLocation:` / `Build ID:`. Trong quá trình phân loại ban đầu, hãy coi watermark `sig:UNIX.HEX` là một chỉ báo thuộc họ Lumma nhưng không phải là xác nhận chắc chắn thuộc Lumma: cấu trúc dữ liệu bare-KV với tên trường đầy đủ không khớp với chuẩn Lumma, vì vậy builder nền tảng nhiều khả năng là một bản fork của Lumma hoặc một mã độc đánh cắp thông tin đã tích hợp chữ ký sig của Lumma vào một mẫu panel khác.

## Observed log variants

### `v_571b9735a207cab65f14c48899af7f62`

- Format ID: `cs-sig-info-stealer`
- Observed filenames: `Info.txt`
- Panel brand: -
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **low**
- Layout: `full-device-os`
- Historical records represented: **10,811**
- Representative sample: [open sample](samples/v_571b9735a207cab65f14c48899af7f62/sample.txt)
- Sample SHA-256: `1bbeb3f129bbe42254b047579474031831d7cbe84247a277455362e72692b982`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `(sig:`
- Field labels: `Country`, `Execution Path`, `Installed RAM`, `IP Address`

### `v_7a05ee499eb89ba2e184501cb922cd9a`

- Format ID: `cs-sig-info-stealer`
- Observed filenames: `Info.txt`
- Panel brand: -
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **low**
- Layout: `footer-stub`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_7a05ee499eb89ba2e184501cb922cd9a/Info.txt)
- Sample SHA-256: `edb8bea5f34968f3bf19405cc514388889fc113b5e6573ce3aa1a09f5bc13698`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `Antivirus`, `Computer Name`, `Country`, `Display Resolution`, `Elevated`, `Graphics Card`, `HWID`, `Install Date`, `Installed RAM`, `IP Address`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time`, `Time Zone`, `User`, `User Language`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [Lumma](../lumma/)
- [Remus Stealer](../remus-stealer/)
- [Redline](../redline/)
- [CSDeimosStealer](../cs-deimos-stealer/)
- [CSALStealer](../csal-stealer/)

## Observed distribution channels

- <https://t.me/BRADLOGS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
