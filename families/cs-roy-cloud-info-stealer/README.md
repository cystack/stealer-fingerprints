# CSRoyCloudInfoStealer

## Overview / Tổng quan

### English

CSRoyCloudInfoStealer is a CyStack-coined identifier for a
bare `Key: Value` `Info.txt` panel associated with the RoyCloud
reseller. The retained representative observation came from
`BONUS$#01(c)_NEW_ROYCLOUD_HQ_MIX_<n>_<Mon>_<YYYY>.part1.rar`
at a `<CC>_<IPv4>-<HWID>/Info.txt` victim path.

The sample starts with decorative ASCII art rendering
`ROYCLOUD` and includes the distinctive stylised watermark
`RÔýĆløud`; random alphanumeric text around that literal
changes between observations. Its flat body records `Build Date`,
`Configuration`, `Execution Path`, `Elevated`, `Computer Name`,
`User Name`, `User Language`, `Netbios`, `Operation System`,
`Install Date`, `System Date`, `Time Zone`, `Antivirus`, `HWID`,
`Processor`, `Processor Threads`, `Processor Cores`,
`Graphics Card`, `Installed RAM`, and `Display Resolution`.
The `Operation System` spelling is retained exactly as observed.

Family attribution remains provisional. No independent public
research currently maps the RoyCloud label to a canonical malware
family. The body combines Redline-style verbose field names with
Lumma-influenced vocabulary, while the same `RÔýĆløud` reseller
watermark has also been observed around a Remus-format body.

### Tiếng Việt

CSRoyCloudInfoStealer là định danh do CyStack đặt cho một panel
`Info.txt` dạng `Key: Value` phẳng gắn với bên phân phối RoyCloud.
Mẫu đại diện được lưu giữ được thu thập từ
`BONUS$#01(c)_NEW_ROYCLOUD_HQ_MIX_<n>_<Mon>_<YYYY>.part1.rar`
tại đường dẫn nạn nhân `<CC>_<IPv4>-<HWID>/Info.txt`.

Mẫu bắt đầu bằng hình vẽ ASCII thể hiện `ROYCLOUD` và chứa
watermark cách điệu đặc trưng `RÔýĆløud`; phần chữ-số ngẫu nhiên
bao quanh chuỗi này thay đổi giữa các lần quan sát. Phần thân phẳng
ghi lại `Build Date`, `Configuration`, `Execution Path`,
`Elevated`, `Computer Name`, `User Name`, `User Language`,
`Netbios`, `Operation System`, `Install Date`, `System Date`,
`Time Zone`, `Antivirus`, `HWID`, `Processor`,
`Processor Threads`, `Processor Cores`, `Graphics Card`,
`Installed RAM` và `Display Resolution`. Cách viết
`Operation System` được giữ nguyên đúng như quan sát.

Việc quy kết họ mã độc vẫn mang tính tạm thời. Chưa có nghiên cứu
công khai độc lập nào ánh xạ nhãn RoyCloud với một họ mã độc chuẩn.
Phần thân kết hợp tên trường chi tiết kiểu Redline với vốn từ chịu
ảnh hưởng của Lumma, trong khi watermark của bên phân phối
`RÔýĆløud` cũng từng được quan sát bao quanh phần thân định dạng Remus.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `RoyCloud bare-KV Info.txt panel`, `RÔýĆløud watermarked Redline-style Info.txt`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Host metadata: hostname, NetBIOS, Windows username, language | Siêu dữ liệu máy: tên máy, NetBIOS, tên người dùng Windows, ngôn ngữ |
| OS fingerprint with build number and architecture | Dấu vết nhận diện hệ điều hành kèm số hiệu build và kiến trúc |
| Hardware inventory: CPU model with cores/threads, GPU, installed RAM | Kiểm kê phần cứng: dòng CPU kèm số lõi/luồng, GPU, dung lượng RAM đã lắp đặt |
| Installed antivirus product name | Tên sản phẩm diệt virus đã cài đặt |
| Sample execution path and elevation flag | Đường dẫn thực thi mẫu và cờ nâng quyền |

## Detection notes / Ghi chú nhận diện

### English

The retained variant requires the stylised `RÔýĆløud` watermark
together with line-anchored `Execution Path:` and `Installed RAM:`
fields. A bare copy without `RÔýĆløud` is not sufficient for this
sample-only fingerprint; archive or collection context must be
assessed separately. The layout differs from canonical Redline by
omitting `FileLocation:` and `Build ID:`, from canonical Lumma by
omitting the `-` field prefix, and from `CSSigInfoStealer` by
omitting both the `(sig:UNIX.HEX)` marker and the `Time:` footer.

### Tiếng Việt

Biến thể được lưu giữ yêu cầu watermark cách điệu `RÔýĆløud`
cùng hai trường được neo đầu dòng là `Execution Path:` và
`Installed RAM:`. Một bản sao phần thân không có `RÔýĆløud`
chưa đủ cho dấu hiệu nhận diện chỉ dựa trên mẫu này; cần đánh giá
riêng ngữ cảnh kho lưu trữ hoặc nguồn thu thập. Bố cục này khác
Redline chuẩn do không có `FileLocation:` và `Build ID:`, khác
Lumma chuẩn do không có tiền tố trường `-`, và khác
`CSSigInfoStealer` do không có cả dấu `(sig:UNIX.HEX)` lẫn
phần chân trang `Time:`.

## Observed log variants

### `v_f4b3735510ac3fefebbf122c82df736e`

- Format ID: `cs-roycloud-info-stealer`
- Observed filenames: `Info.txt`
- Panel brand: `RoyCloud`
- Distribution channel: -
- Attribution confidence: **unknown**
- Layout: `bannered-bare-kv`
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_f4b3735510ac3fefebbf122c82df736e/Info.txt)
- Sample SHA-256: `806f4cf1111fb161c8825edac24d6292e833d8b4f93d488a509d05fffda38e10`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `RÔýĆløud`
- Field labels: `Antivirus`, `Build Date`, `Computer Name`, `Configuration`, `Display Resolution`, `Elevated`, `Execution Path`, `Graphics Card`, `HWID`, `Install Date`, `Installed RAM`, `Netbios`, `Operation System`, `Processor`, `Processor Cores`, `Processor Threads`, `System Date`, `Time Zone`, `User Language`, `User Name`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- [Remus Stealer](../remus-stealer/)
- [Redline](../redline/)
- [CSSigInfoStealer](../cs-sig-info-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
