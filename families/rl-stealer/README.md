# RL Stealer

## Overview / Tổng quan

### English

RL Stealer is a .NET infostealer derived from the open-source
`razexgod/44CALIBER` Discord-exfiltration builder. The panel
writes an `Information.txt` whose body matches 44CALIBER's
upstream `SystemInfo.cs` writer character-for-character for
the first five sections, then appends a sixth section carrying
`HDD:` / `MAC:` / `BIOS caption:` hardware identifiers that
the upstream does not emit. Each key/value line opens with a
single leading space (invariant from the upstream string
concatenation), and sections are separated by equals-sign
rules.

Family attribution: confidence is medium. A community
stealer-format catalogue documents the format under the RL
Stealer label, the upstream `razexgod/44CALIBER` GitHub source
code matches the body shape, and public write-ups describe RL
Stealer as a rebranded Ades stealer. Two independent public
sources do not jointly publish the format-to-family mapping,
so the attribution rests on community catalog plus open-source
builder-code confirmation.

### Tiếng Việt

RL Stealer là một mã độc đánh cắp thông tin viết bằng .NET, bắt nguồn từ công cụ tạo build mã nguồn mở `razexgod/44CALIBER` dùng để đưa dữ liệu ra ngoài qua Discord. Bảng điều khiển tạo ra một `Information.txt` có phần nội dung khớp từng ký tự với bộ ghi `SystemInfo.cs` gốc của 44CALIBER trong năm phần đầu tiên, sau đó bổ sung phần thứ sáu chứa các định danh phần cứng `HDD:` / `MAC:` / `BIOS caption:` mà bản gốc không tạo dữ liệu đầu ra. Mỗi dòng khóa/giá trị đều bắt đầu bằng một dấu cách ở đầu dòng (đặc điểm bất biến do phép nối chuỗi trong mã nguồn gốc), và các phần được phân tách bằng các dòng dấu bằng.

Quy kết họ mã độc: độ tin cậy ở mức trung bình. Một danh mục định dạng mã độc đánh cắp thông tin do cộng đồng biên soạn ghi nhận định dạng này dưới nhãn RL Stealer, mã nguồn GitHub gốc của `razexgod/44CALIBER` khớp với cấu trúc dữ liệu phần nội dung, và các bài viết công khai mô tả RL Stealer là phiên bản đổi thương hiệu của Ades stealer. Không có hai nguồn công khai độc lập nào cùng công bố việc ánh xạ định dạng với họ mã độc, do đó việc quy kết dựa trên danh mục cộng đồng kết hợp với xác nhận từ mã nguồn mở của công cụ tạo build.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **medium**
- Aliases: `Ades`, `44Caliber variant`, `StormKitty variant`
- Variants observed: **2**
- CyStack observations represented: **197**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, history | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu tự động điền, lịch sử duyệt web |
| Crypto wallet extensions and desktop clients | Tiện ích mở rộng ví tiền điện tử và ứng dụng desktop |
| Discord, Telegram, Steam, Minecraft session data | Dữ liệu phiên của Discord, Telegram, Steam, Minecraft |
| FTP and VPN client credentials | Thông tin xác thực của ứng dụng FTP và VPN |
| Clipboard contents | Nội dung clipboard |
| Desktop screenshot | Ảnh chụp màn hình desktop |

## Detection notes / Ghi chú nhận diện

### English

Line-anchored `PC user:`, `Launch:`, and
`IP Geolocation:` co-occurring is the cleanest trigger.
The leading-space prefix on each key line is invariant
across observed samples (the upstream's string
`"\n PC user: "` concatenation produces it). The base
44CALIBER builder emits five sections; the RL panel
extension appends a sixth carrying `HDD:` / `MAC:` /
`BIOS caption:`, but the fingerprint covers either section count.
BlackGuard Stealer is also a 44CALIBER fork; both share
the credential-collection method but emit different
log formats so they do not collide with this format's
fingerprint.

### Tiếng Việt

Sự đồng xuất hiện của các chuỗi neo theo dòng `PC user:`, `Launch:`, và `IP Geolocation:` là dấu hiệu kích hoạt rõ ràng nhất. Tiền tố dấu cách ở đầu mỗi dòng khóa là đặc điểm bất biến trên các mẫu đã quan sát (do phép nối chuỗi `"\n PC user: "` trong mã nguồn gốc tạo ra). Công cụ tạo build 44CALIBER gốc tạo dữ liệu đầu ra gồm năm phần; phần mở rộng của bảng điều khiển RL bổ sung phần thứ sáu chứa `HDD:` / `MAC:` / `BIOS caption:`, nhưng dấu vết nhận diện bao phủ cả hai trường hợp số lượng phần. BlackGuard Stealer cũng là một nhánh phân nhánh từ 44CALIBER; cả hai đều dùng chung phương pháp thu thập thông tin xác thực nhưng tạo dữ liệu đầu ra với định dạng log khác nhau nên không trùng lặp với dấu vết nhận diện của định dạng này.

## Observed log variants

### `v_1c8a415ef2a9f5b685b573ec7b10c602`

- Format ID: `cs-rl-panel-stealer`
- Observed filenames: `Information.txt`
- Panel brand: `==== RL STEALER ====`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **medium**
- Historical records represented: **36**
- Representative sample: [open sample](samples/v_1c8a415ef2a9f5b685b573ec7b10c602/sample.txt)
- Sample SHA-256: `036cf7de6574dbefbbe8241c2adce9b08567ab90410c31bbb83b83f943589314`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `==== RL STEALER ====`
- Field labels: -

### `v_48d2f4aed8930a82db85d16176d3d75f`

- Format ID: `rl-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **medium**
- Historical records represented: **161**
- Representative sample: [open sample](samples/v_48d2f4aed8930a82db85d16176d3d75f/sample.txt)
- Sample SHA-256: `75f23d19d1f2a8300b762a7cd58d72872f59669ac6e9fdf1571c5fc5b554f053`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: -
- Field labels: `IP Geolocation`, `Launch`, `PC user`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Related external families

- `44caliber`
- `stormkitty`
- `blackguard`

## Sources

- <https://github.com/MalBeacon/what-is-this-stealer>
- <https://github.com/razexgod/44CALIBER>
- <https://www.pcrisk.com/removal-guides/25759-rl-stealer-malware>

Machine-readable record: [family.json](family.json)
