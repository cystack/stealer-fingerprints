# Phexia

## Overview / Tổng quan

### English

Phexia is a macOS info-stealer that has been operating in
private distribution since April 2024 per a published
developer interview. The payload is implemented in osascript
(AppleScript) and the developer states it shares roughly 85%
of its code with the Mac.c stealer module, but it is marketed
and tracked as a separate product with its own
self-identification banner and its own customer base (around
20 active operators per the developer at the time of the
interview).

The on-disk `UserInformation.txt` opens with the literal
`Phexia macOS Stealer` banner, then a flat identity block
(`Build:` / `Username:` / `Password:` / `IP Address:`), then
the verbatim `system_profiler` output under `Software:` /
`Hardware:` / `Graphics/Displays:` section headers. The
`Build:` tag is a per-customer affiliate identifier set at
build time. Captured macOS login credentials ship in the
`Username:` / `Password:` pair at the top of the file.

### Tiếng Việt

Phexia là một mã độc đánh cắp thông tin trên macOS đã hoạt động trong hình thức phân phối riêng tư kể từ tháng 4 năm 2024, theo một cuộc phỏng vấn đã công bố với nhà phát triển. Payload được triển khai bằng osascript (AppleScript) và nhà phát triển cho biết nó chia sẻ khoảng 85% mã nguồn với mô-đun mã độc đánh cắp thông tin Mac.c, nhưng được tiếp thị và theo dõi như một sản phẩm riêng biệt với biểu ngữ tự nhận diện riêng và tập khách hàng riêng (khoảng 20 đối tượng vận hành đang hoạt động theo lời nhà phát triển tại thời điểm phỏng vấn).

Tệp `UserInformation.txt` trên đĩa mở đầu bằng biểu ngữ nguyên văn `Phexia macOS Stealer`, tiếp theo là một khối định danh dạng phẳng (`Build:` / `Username:` / `Password:` / `IP Address:`), sau đó là dữ liệu đầu ra nguyên văn của `system_profiler` dưới các tiêu đề mục `Software:` / `Hardware:` / `Graphics/Displays:`. Thẻ `Build:` là một mã định danh liên kết (affiliate) riêng cho từng khách hàng, được thiết lập tại thời điểm build. Thông tin xác thực đăng nhập macOS bị đánh cắp được đóng gói trong cặp `Username:` / `Password:` ở đầu tệp.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Phexia Stealer`, `Phexia macOS Stealer`
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| macOS login credentials (captured at the panel prompt) | Thông tin xác thực đăng nhập macOS (thu thập tại màn hình yêu cầu nhập của bảng điều khiển) |
| Browser saved credentials, cookies, web data, login data, and history from Chromium-based browsers | Thông tin xác thực, cookie, dữ liệu web, dữ liệu đăng nhập và lịch sử đã lưu trên trình duyệt từ các trình duyệt nền tảng Chromium |
| Chromium browser extension data and local extension settings | Dữ liệu tiện ích mở rộng trình duyệt Chromium và các thiết lập tiện ích mở rộng cục bộ |
| macOS Keychain (`/Library/Keychains/login.keychain-db`) | Kho thông tin xác thực macOS Keychain (`/Library/Keychains/login.keychain-db`) |
| Crypto wallet desktop clients and browser extensions | Ứng dụng ví tiền mã hóa dạng desktop và tiện ích mở rộng trình duyệt |
| Notes.app passwords and small files in `~/Downloads` | Mật khẩu trong Notes.app và các tệp nhỏ trong `~/Downloads` |
| Telegram session data on macOS | Dữ liệu phiên Telegram trên macOS |

## Detection notes / Ghi chú nhận diện

### English

The first-line `Phexia macOS Stealer` banner is the family's
verbatim self-identification and is the cleanest single
fingerprint. The `Build:` bare-key affiliate tag distinguishes
this layout from the sibling MacSync `Build Tag:` form and
from Cthulhu's no-space `BuildID:` form. The shared `system_profiler` body overlaps other macOS artifacts, but the first-line family banner, bare `Build:` key, and absence of sibling banners keep the structural fingerprint distinct.
Triage logs from this family by collecting the captured
macOS login credential pair, the affiliate `Build:` tag,
and the Hardware UUID as the device identifier.

### Tiếng Việt

Biểu ngữ `Phexia macOS Stealer` ở dòng đầu tiên là dấu hiệu tự nhận diện nguyên văn của họ mã độc này và là dấu vết nhận diện đơn lẻ rõ ràng nhất. Thẻ liên kết dạng khóa trần `Build:` giúp phân biệt cấu trúc dữ liệu này với dạng `Build Tag:` của MacSync (một họ mã độc liên quan) và với dạng không có khoảng trắng `BuildID:` của Cthulhu. Phần thân `system_profiler` dùng chung có sự trùng lặp với các dấu vết macOS khác, nhưng biểu ngữ họ mã độc ở dòng đầu, khóa `Build:` dạng trần, và việc không có các biểu ngữ liên quan khác giúp giữ được dấu vết cấu trúc riêng biệt.
Khi phân loại log của họ mã độc này, cần thu thập cặp thông tin xác thực đăng nhập macOS bị đánh cắp, thẻ liên kết `Build:`, và Hardware UUID làm mã định danh thiết bị.

## Observed log variants

### `v_b2acb2241dc6354d10e66ebb270d1fe7`

- Format ID: `phexia`
- Observed filenames: `UserInformation.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_b2acb2241dc6354d10e66ebb270d1fe7/sample.txt)
- Sample SHA-256: `e0e91bf55260ae513ac6f5a4821eba27bdb9793aa06ca9c2c822f6f4d3b184c9`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Phexia macOS Stealer`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1059.002](https://attack.mitre.org/techniques/T1059/002/) | AppleScript | AppleScript |

## Related catalog profiles

- [MacSync](../mac-sync/)

## Sources

- <https://cookie.engineer/weblog/articles/malware-insights-macos-phexia-stealer.html>
- <https://www.pcrisk.com/removal-guides/34957-phexia-stealer-mac>
- <https://g0njxa.medium.com/approaching-stealers-devs-a-brief-interview-with-phexia-38ad3772dbcd>

Machine-readable record: [family.json](family.json)
