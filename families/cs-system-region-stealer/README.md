# CSSystemRegionStealer

## Overview / Tổng quan

### English

CSSystemRegionStealer is a CyStack-coined identifier for a
flat 12-field `info.txt` panel observed inside `10-13 SEPTEMBER - 20370 LOGS.part01.rar` Telegram aggregator packs
at `<33-CHAR-HEX-ID>/info.txt` victim folders. The
33-character uppercase-hex folder ID is one character longer
than a standard 32-char MD5, hinting at a MachineGuid-derived
or custom-hashed victim identifier.

The body layout is a flat `Key: Value` block with these fields
in fixed order: `OS Version:` (WMI Caption plus parenthesised
`(Build N)` suffix), `Local Date:` (Russian or European
DD.MM.YYYY HH:MM:SS format, no timezone), `PC name:`
(lowercase-`n` key), `User name:` (lowercase- `n`), `Screen Resolution:`, `Processor:`, `Total RAM:`, `Graphics Card:`,
`MAC Address(es):` (parenthesised `(es)` plural marker with a
comma-separated MAC list), `IP Address:`, `Country:` (full
country name from an IP geolocation API), and `System Region:`
(system locale from `GetUserDefaultLocaleName` or the WMI
MUILanguages field, distinct from the IP-based `Country:`
field above).

The body terminates with a long `-=-=-=-=-` alternating
dash-plus-equals separator followed by the Russian text `Здесь могла бы быть ваша реклама` ("Your ad could be here"). The
trailer is a well-known Russian internet meme for empty ad
placeholders; embedding it in the panel output is either a
stealer-author signature or an unfinished template feature the
operator never populated. The trailer strongly suggests a
Russian-speaking developer even though every field key is in
English.

Family attribution is provisional pending a published
threat-intel mapping for this layout. Public reporting and the
community catalogues do not attest a family emitting exactly
this 12-field layout with the `MAC Address(es):` plural
marker, the split `Country:` / `System Region:` geolocation
pair, and the Russian ad-meme trailer. Candidates ruled out
include Sharp / Hannibal / TX (different field spelling, no
split geolocation), Poulight (pure Russian key set), CGrabber,
Torg Grabber, Predator The Thief, Collector-Stealer, Marco
Stealer, and Raven Stealer.

### Tiếng Việt

CSSystemRegionStealer là một định danh do CyStack đặt ra cho một bảng điều khiển `info.txt` dạng phẳng gồm 12 trường, được quan sát bên trong các bộ gói tổng hợp Telegram `10-13 SEPTEMBER - 20370 LOGS.part01.rar` tại các thư mục nạn nhân `<33-CHAR-HEX-ID>/info.txt`. ID thư mục gồm 33 ký tự hex viết hoa, dài hơn một ký tự so với MD5 chuẩn 32 ký tự, gợi ý đây là một định danh nạn nhân bắt nguồn từ MachineGuid hoặc được băm theo cách tùy chỉnh.

Bố cục phần thân là một khối `Key: Value` dạng phẳng với các trường theo thứ tự cố định sau: `OS Version:` (Caption của WMI cộng với hậu tố `(Build N)` trong ngoặc đơn), `Local Date:` (định dạng DD.MM.YYYY HH:MM:SS theo kiểu Nga hoặc châu Âu, không có múi giờ), `PC name:` (khóa `n` viết thường), `User name:` (`n` viết thường), `Screen Resolution:`, `Processor:`, `Total RAM:`, `Graphics Card:`, `MAC Address(es):` (dấu hiệu số nhiều `(es)` trong ngoặc đơn kèm danh sách MAC phân tách bằng dấu phẩy), `IP Address:`, `Country:` (tên quốc gia đầy đủ từ một API định vị địa lý theo IP), và `System Region:` (ngôn ngữ hệ thống lấy từ `GetUserDefaultLocaleName` hoặc trường MUILanguages của WMI, khác với trường `Country:` dựa trên IP ở trên).

Phần thân kết thúc bằng một dải phân cách dài `-=-=-=-=-` xen kẽ dấu gạch ngang và dấu cộng-bằng, theo sau là đoạn văn bản tiếng Nga `Здесь могла бы быть ваша реклама` ("Quảng cáo của bạn có thể ở đây"). Phần đuôi này là một meme internet tiếng Nga nổi tiếng dùng cho các vị trí quảng cáo trống; việc nhúng nó vào dữ liệu đầu ra của bảng điều khiển có thể là chữ ký của tác giả mã độc đánh cắp thông tin hoặc là một tính năng mẫu chưa hoàn thiện mà đối tượng vận hành chưa bao giờ điền vào. Phần đuôi này gợi ý mạnh mẽ về một nhà phát triển nói tiếng Nga, mặc dù mọi khóa trường đều bằng tiếng Anh.

Việc quy kết họ mã độc vẫn còn tạm thời, chờ một bản đồ tình báo đe dọa đã công bố cho bố cục này. Các báo cáo công khai và danh mục cộng đồng không xác nhận có họ mã độc nào tạo dữ liệu đầu ra đúng theo bố cục 12 trường này với dấu hiệu số nhiều `MAC Address(es):`, cặp định vị địa lý tách biệt `Country:` / `System Region:`, và phần đuôi meme quảng cáo tiếng Nga. Các ứng viên đã bị loại trừ bao gồm Sharp / Hannibal / TX (cách đặt tên trường khác, không có định vị địa lý tách biệt), Poulight (tập khóa hoàn toàn bằng tiếng Nga), CGrabber, Torg Grabber, Predator The Thief, Collector-Stealer, Marco Stealer, và Raven Stealer.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Flat 12-field info.txt with System Region and MAC (es)`, `Russian ad-placeholder-trailer info.txt panel`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| OS caption from WMI `Win32_OperatingSystem.Caption` | Caption hệ điều hành từ WMI `Win32_OperatingSystem.Caption` |
| Windows build number from the `(Build N)` suffix | Số hiệu bản dựng Windows từ hậu tố `(Build N)` |
| Local wall-clock time (DD.MM.YYYY HH:MM:SS, no timezone) | Thời gian thực tại địa phương (DD.MM.YYYY HH:MM:SS, không có múi giờ) |
| PC name and OS user name (lowercase `name` field keys) | Tên máy và tên người dùng hệ điều hành (khóa trường `name` viết thường) |
| Screen resolution | Độ phân giải màn hình |
| Processor and Graphics Card names | Tên bộ xử lý và card đồ họa |
| Total RAM | Tổng dung lượng RAM |
| MAC addresses from every network adapter | Địa chỉ MAC từ mọi card mạng |
| Public IPv4 and country name (from IP geolocation API) | IPv4 công khai và tên quốc gia (từ API định vị địa lý theo IP) |
| System locale hint separate from IP-based country | Gợi ý ngôn ngữ hệ thống, tách biệt với quốc gia xác định qua IP |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires line-anchored `System Region:` AND
`MAC Address(es):` AND `Local Date:` AND `PC name:`
(lowercase-`n`). The `(es)` plural marker on
`MAC Address(es):` and the `System Region:` field are
both unique across the cataloged formats, and the
lowercase-`name` `PC name:` spelling rules out DCRat /
CSBuildBlock / CSDataMonk which all use `PC Name:` with
capital-N. During triage, the split `Country:` /
`System Region:` pair is useful: mismatch between the
two (public IP resolves to one country, system locale
to another) often flags a proxy or VPN user, or a
traveller whose device keeps a stale locale after a
move. The Russian ad-meme trailer is the strongest
developer-attribution signal even though every field
key is in English.

### Tiếng Việt

Việc xác định dấu hiệu nhận diện yêu cầu `System Region:` VÀ `MAC Address(es):` VÀ `Local Date:` VÀ `PC name:` (viết thường-`n`) đều neo theo dòng. Dấu hiệu số nhiều `(es)` trên `MAC Address(es):` và trường `System Region:` đều là duy nhất trong số các định dạng đã được lập danh mục, và cách viết thường-`name` của `PC name:` loại trừ DCRat / CSBuildBlock / CSDataMonk vì các họ này đều dùng `PC Name:` với chữ N viết hoa. Trong quá trình phân loại ban đầu, cặp tách biệt `Country:` / `System Region:` rất hữu ích: sự không khớp giữa hai trường này (IP công khai phân giải về một quốc gia, còn ngôn ngữ hệ thống lại về quốc gia khác) thường cho thấy người dùng proxy hoặc VPN, hoặc một người thường xuyên di chuyển mà thiết bị vẫn giữ ngôn ngữ cũ sau khi chuyển địa điểm. Phần đuôi meme quảng cáo tiếng Nga là tín hiệu quy kết nhà phát triển mạnh nhất, mặc dù mọi khóa trường đều bằng tiếng Anh.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- None recorded.

## Related external families

- `sharp-stealer`
- `hannibal-stealer`
- `poulight-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
