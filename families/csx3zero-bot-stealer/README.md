# CSX3zeroBotStealer

## Overview / Tổng quan

### English

CSX3zeroBotStealer is a CyStack-coined identifier for the
panel behind the `t.me/x3zeroBot` Telegram bot. The
panel writes an `Information.txt` that opens with a
three-zero ASCII banner (Unicode box-drawing rendition
of the operator's `０００` FULLWIDTH DIGIT ZERO display
name), pins the `Info: t.me/x3zeroBot` operator handle
at the top, and emits four fifteen-dash-separated
blocks: build identity (`Build ID:`), geo / device
identity (`HWID:`, `IP Address:`, `Log Date:`,
`Country:`, `City:`, `Coordinates:` lat/lng pair),
hardware (`Username:`, `OS:` composite pipe-separated
triple, `Screen:` slash-separated resolution, `CPU:`,
`GPU:`, `RAM:`), and per-category counts (`Cookies:`,
`Passwords:`, `Crypto:`).

Observed inside a @bugatti_cloud multi-family aggregator
archive (`____Bugatti____Private_Cloud 22.07 .part01.rar`)
at `[<CC>] <32-hex-HWID> [<DD-MM-YYYY HH-MM-SS>]/ Information.txt` victim folders. Family attribution is
provisional pending a published threat-intel mapping
for this panel; the surveyed CTI corpus and community
catalogues (MalBeacon what-is-this-stealer, deepdarkCTI,
Malpedia, RussianPanda) do not attest an `x3zero` /
`x3zeroBot` operator.

### Tiếng Việt

CSX3zeroBotStealer là định danh do CyStack đặt cho bảng điều khiển đứng sau bot Telegram `t.me/x3zeroBot`. Bảng điều khiển này ghi ra một `Information.txt` mở đầu bằng banner ASCII ba số không (bản dựng bằng ký tự vẽ khung Unicode của tên hiển thị `０００` FULLWIDTH DIGIT ZERO của đối tượng vận hành), ghim tên tài khoản đối tượng vận hành `Info: t.me/x3zeroBot` ở đầu, và tạo dữ liệu đầu ra gồm bốn khối được phân tách bằng mười lăm dấu gạch ngang: định danh bản dựng (`Build ID:`), định danh địa lý/thiết bị (`HWID:`, `IP Address:`, `Log Date:`, `Country:`, `City:`, cặp vĩ độ/kinh độ `Coordinates:`), phần cứng (`Username:`, cấu trúc dữ liệu ba thành phần phân tách bằng dấu gạch đứng `OS:`, độ phân giải phân tách bằng dấu gạch chéo `Screen:`, `CPU:`, `GPU:`, `RAM:`), và số lượng theo từng hạng mục (`Cookies:`, `Passwords:`, `Crypto:`).

Được ghi nhận bên trong kho lưu trữ tổng hợp đa họ mã độc @bugatti_cloud (`____Bugatti____Private_Cloud 22.07 .part01.rar`) tại các thư mục nạn nhân `[<CC>] <32-hex-HWID> [<DD-MM-YYYY HH-MM-SS>]/ Information.txt`. Việc quy kết họ mã độc hiện chỉ mang tính tạm thời do chưa có ánh xạ tình báo mối đe dọa đã công bố nào cho bảng điều khiển này; kho dữ liệu CTI được khảo sát cũng như các danh mục cộng đồng (MalBeacon what-is-this-stealer, deepdarkCTI, Malpedia, RussianPanda) đều không xác nhận đối tượng vận hành `x3zero` / `x3zeroBot`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (count surfaced as `Passwords:`) | Thông tin xác thực được trình duyệt lưu (số lượng hiển thị dưới dạng `Passwords:`) |
| Browser cookies (count surfaced as `Cookies:`) | Cookie trình duyệt (số lượng hiển thị dưới dạng `Cookies:`) |
| Cryptocurrency wallets (count surfaced as `Crypto:`) | Ví tiền điện tử (số lượng hiển thị dưới dạng `Crypto:`) |
| System hardware and geo inventory (per-victim identity block) | Danh mục phần cứng hệ thống và thông tin địa lý (khối định danh theo từng nạn nhân) |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: the `t.me/x3zeroBot` URL
literal plus line-anchored `Build ID:` plus line-anchored `Coordinates:` bare-key geo enrichment. The
three-anchor combination is unique - no other family
in this catalog emits the `x3zeroBot` handle or the
`Coordinates: <lat>, <lng>` decimal-pair enrichment.
Triage note: the `OS:` composite carries the product
name, Windows directory, and NT kernel path joined by
pipes; only the first segment is stable across builds,
and the trailing segment carries the OS build number
that would otherwise sit under a separate field.

### Tiếng Việt

Tín hiệu kích hoạt độ tin cậy cao: chuỗi URL nguyên văn `t.me/x3zeroBot` kết hợp với `Build ID:` neo theo dòng cùng với dữ liệu làm giàu địa lý dạng khóa trần `Coordinates:` neo theo dòng. Tổ hợp ba điểm neo này là duy nhất - không có họ mã độc nào khác trong danh mục này tạo dữ liệu đầu ra là tên tài khoản `x3zeroBot` hay dữ liệu làm giàu dạng cặp số thập phân `Coordinates: <lat>, <lng>`.
Lưu ý khi phân loại: cấu trúc dữ liệu tổng hợp `OS:` chứa tên sản phẩm, thư mục Windows, và đường dẫn nhân NT nối với nhau bằng dấu gạch đứng; chỉ đoạn đầu tiên là ổn định qua các bản dựng, còn đoạn cuối chứa số hiệu bản dựng hệ điều hành vốn lẽ ra nằm ở một trường riêng biệt.

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

- None recorded.

## Observed distribution channels

- <https://t.me/x3zeroBot>

## Sources

- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>
- <https://github.com/MalBeacon/what-is-this-stealer>

Machine-readable record: [family.json](family.json)
