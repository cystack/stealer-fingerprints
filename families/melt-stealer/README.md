# MeltStealer

## Overview / Tổng quan

### English

MeltStealer is an open-source C# data-extraction tool
maintained at `github.com/Vorolski/melt-stealer`. The builder
packs a Telegram bot API token plus chat ID and exfiltrates
harvested data through the Telegram Bot API. Public sandbox
databases track the family with documented behaviours:
credential theft from web browsers, system-information
collection (Windows installation date, computer name, machine
GUID, environment values), and general data exfiltration.

The harvest scope per the project README covers passwords and
cookies, credit cards, cryptocurrency wallets and mnemonics,
browser extensions, Wi-Fi networks, gaming session tokens
(Steam, Minecraft), VPN configurations, Discord tokens,
screenshots and webcam captures, process lists, and registry
information. The panel-side `Information.txt` opens with the
verbatim `📋 MeltStealer - Report:` clipboard-emoji banner and
ships a 15-field emoji-prefixed identity block (Date / System
/ Username / CompName / CPU / RAM / IP / Location / Zip Code /
Coordinates / Timezone / ISP / Organization / AS) plus six
section blocks (Browsers / Software / Device / File Grabber /
Domains info / Installation) with U+221F right-angle-arrow
sub-items per section.

### Tiếng Việt

MeltStealer là một công cụ trích xuất dữ liệu mã nguồn mở viết bằng C#, được duy trì tại `github.com/Vorolski/melt-stealer`. Bộ builder đóng gói mã token API bot Telegram cùng chat ID và đưa dữ liệu thu thập được ra ngoài thông qua Telegram Bot API. Các cơ sở dữ liệu sandbox công khai ghi nhận họ mã độc này với các hành vi đã được xác nhận: đánh cắp thông tin xác thực từ trình duyệt web, thu thập thông tin hệ thống (ngày cài đặt Windows, tên máy tính, machine GUID, các giá trị môi trường), và hành vi đưa dữ liệu ra ngoài nói chung.

Phạm vi thu thập theo tệp README của dự án bao gồm mật khẩu và cookie, thẻ tín dụng, ví tiền điện tử và cụm từ ghi nhớ (mnemonic), tiện ích mở rộng trình duyệt, mạng Wi-Fi, token phiên chơi game (Steam, Minecraft), cấu hình VPN, token Discord, ảnh chụp màn hình và ảnh chụp từ webcam, danh sách tiến trình, và thông tin registry. Giao diện điều khiển phía `Information.txt` mở đầu bằng banner biểu tượng clipboard nguyên văn `📋 MeltStealer - Report:` và chứa một khối định danh gồm 15 trường có tiền tố biểu tượng (Date / System / Username / CompName / CPU / RAM / IP / Location / Zip Code / Coordinates / Timezone / ISP / Organization / AS) cùng sáu khối phần (Browsers / Software / Device / File Grabber / Domains info / Installation) với các mục con dùng ký tự mũi tên góc vuông U+221F cho từng phần.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `melt-stealer`, `Melt Stealer`
- Variants observed: **1**
- CyStack observations represented: **5**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chrome, Brave, Edge, Firefox, Opera variants) | Thông tin xác thực đã lưu trong trình duyệt (Chrome, Brave, Edge, Firefox, các biến thể Opera) |
| Browser cookies, autofill, history, bookmarks, downloads, extensions | Cookie, autofill, lịch sử duyệt web, bookmark, tệp tải xuống, tiện ích mở rộng của trình duyệt |
| Credit card data | Dữ liệu thẻ tín dụng |
| Cryptocurrency wallets and seed-phrase mnemonics | Ví tiền điện tử và cụm từ ghi nhớ (seed-phrase mnemonic) |
| Discord tokens | Token Discord |
| Steam and Minecraft session data | Dữ liệu phiên Steam và Minecraft |
| VPN client configurations | Cấu hình ứng dụng khách VPN |
| Wi-Fi network credentials | Thông tin xác thực mạng Wi-Fi |
| Windows product key, screenshots, webcam captures | Product key Windows, ảnh chụp màn hình, ảnh chụp từ webcam |
| Process lists and selected registry values | Danh sách tiến trình và các giá trị registry được chọn lọc |
| System fingerprint (CPU, RAM, OS version, IP, ISP, ASN) | Dấu vân tay hệ thống (CPU, RAM, phiên bản hệ điều hành, IP, ISP, ASN) |

## Detection notes / Ghi chú nhận diện

### English

The opening `📋 MeltStealer - Report:` banner is the family's
verbatim self-identification and the cleanest fingerprint
anchor. The U+1F4CB CLIPBOARD emoji prefix plus the
`MeltStealer - Report:` literal cannot collide with any other
documented family. Pairing with the `🗺️ Location:` geo field
confirms the body matches the panel template rather than a
public writeup quoting the banner. During triage, the `⚙️ Installation:` section flags `Clipper installed` and
`Keylogger installed` for modules the operator enabled on the
build; check those flags to understand the active feature set
on this specific victim.

### Tiếng Việt

Banner mở đầu `📋 MeltStealer - Report:` là dấu hiệu tự nhận diện nguyên văn của họ mã độc này và là điểm neo dấu vết rõ ràng nhất. Tiền tố biểu tượng U+1F4CB CLIPBOARD cùng với chuỗi nguyên văn `MeltStealer - Report:` không thể trùng lặp với bất kỳ họ mã độc nào khác đã được ghi nhận. Việc kết hợp với trường địa lý `🗺️ Location:` xác nhận rằng phần nội dung khớp với mẫu giao diện điều khiển (panel template) thay vì một bài viết công khai trích dẫn lại banner. Trong quá trình phân loại ban đầu, phần `⚙️ Installation:` đánh dấu `Clipper installed` và `Keylogger installed` cho các mô-đun mà đối tượng vận hành đã bật trong bản build; cần kiểm tra các cờ này để hiểu tập tính năng đang hoạt động trên nạn nhân cụ thể này.

## Observed log variants

### `v_209de6a8e4756161ea71c25d62594571`

- Format ID: `melt-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **5**
- Representative sample: [open sample](samples/v_209de6a8e4756161ea71c25d62594571/sample.txt)
- Sample SHA-256: `063e49dcad7f0ab2bfa94158a5346a9a37d17883637a6cf6f23f460349dd7390`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Location:`, `MeltStealer - Report:`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1125](https://attack.mitre.org/techniques/T1125/) | Video Capture | Ghi hình |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1057](https://attack.mitre.org/techniques/T1057/) | Process Discovery | Dò tìm tiến trình |

## Related catalog profiles

- [Phantom Stealer](../phantom-stealer/)
- [Stealerium](../stealerium/)

## Related external families

- `pupkin-stealer`

## Sources

- <https://github.com/Vorolski/melt-stealer>
- <https://any.run/report/a934dc7424ecc3d0e20848f36e44d1473b1908761cd41a4021d31f6d91c5ee34/ea0e35cd-70cc-4c19-aa20-532f49f278c7>

Machine-readable record: [family.json](family.json)
