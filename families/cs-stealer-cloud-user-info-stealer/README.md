# CSStealerCloudUserInfoStealer

## Overview / Tổng quan

### English

CSStealerCloudUserInfoStealer is a CyStack-coined identifier
for the STEALERCLOUD broker's `UserInformation.txt` shape:
three flush-left `Key: Value` identity lines at the top
(`Keyboard Language:`, `Display Resolution:`, an `@stealerboss - Buy daily fresh logs:` operator banner with a wallpaper-name
value), then a centered `IP GEOLOCATION DATA` ASCII section
header, then six geo fields (`IP Address:`, `Country: <Name> (<ISO2>)`, `Region:`, `City:`, `Postal Code:`, `Timezone: <IANA-tz> (<UTC-offset>)`). The `IP Address:` slot accepts
both IPv4 and IPv6.

Same broker as CSHardwareTailStealer: the STEALERCLOUD
aggregator pack splits the victim summary across two files,
with the YAML hardware tail in `Info.txt` and the locale plus
geo identity in `UserInformation.txt`. The `@STEALERBOSS`
Telegram channel handle is the distribution channel. No public
reporting attributes either file shape to a specific
source-stealer family, so attribution is provisional pending a
public writeup.

### Tiếng Việt

CSStealerCloudUserInfoStealer là định danh do CyStack đặt tên cho cấu trúc dữ liệu `UserInformation.txt` của broker STEALERCLOUD:
ba dòng thông tin định danh `Key: Value` căn lề trái ở trên cùng
(`Keyboard Language:`, `Display Resolution:`, một banner đối tượng vận hành `@stealerboss - Buy daily fresh logs:` với giá trị tên hình nền),
sau đó là tiêu đề phần ASCII `IP GEOLOCATION DATA` căn giữa, tiếp theo là sáu trường địa lý
(`IP Address:`, `Country: <Name> (<ISO2>)`, `Region:`, `City:`, `Postal Code:`, `Timezone: <IANA-tz> (<UTC-offset>)`). Vị trí `IP Address:` chấp nhận
cả IPv4 và IPv6.

Cùng broker với CSHardwareTailStealer: gói tổng hợp STEALERCLOUD
tách bản tóm tắt nạn nhân thành hai tệp, với phần đuôi YAML thông tin phần cứng
trong `Info.txt` và thông tin ngôn ngữ/vùng cùng địa lý trong `UserInformation.txt`. Tên kênh Telegram
`@STEALERBOSS` là kênh phân phối. Chưa có báo cáo công khai nào quy kết
cấu trúc dữ liệu của một trong hai tệp này cho một họ mã độc đánh cắp thông tin nguồn cụ thể, do đó việc quy kết
chỉ mang tính tạm thời, chờ có bài phân tích công khai.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: -
- Variants observed: **1**
- CyStack observations represented: **1**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (sibling files in the same victim folder; this file is identity / locale / geo only) | Thông tin xác thực và cookie đã lưu trên trình duyệt (các tệp liên quan trong cùng thư mục nạn nhân; tệp này chỉ chứa thông tin định danh / ngôn ngữ vùng / địa lý) |
| Victim locale (keyboard language, display resolution) | Thông tin ngôn ngữ vùng của nạn nhân (ngôn ngữ bàn phím, độ phân giải màn hình) |
| Victim geo (country, region, city, postal code, timezone) plus IPv4 / IPv6 address | Thông tin địa lý của nạn nhân (quốc gia, khu vực, thành phố, mã bưu chính, múi giờ) cùng địa chỉ IPv4 / IPv6 |

## Detection notes / Ghi chú nhận diện

### English

The two-anchor fingerprint `@stealerboss - Buy daily fresh logs:` operator-handle banner plus the centered
`IP GEOLOCATION DATA` section header is the cleanest
panel signal. The IPv6 capability in the `IP Address:`
slot is unusual across stealer panels (most ship IPv4
only via `ip-api.com`-shaped lookups). Pair with
CSHardwareTailStealer hardware-tail Info.txt files in
the same victim folder for the full per-victim summary.

### Tiếng Việt

Dấu hiệu nhận diện hai điểm neo gồm banner tên đối tượng vận hành `@stealerboss - Buy daily fresh logs:` cùng tiêu đề phần
`IP GEOLOCATION DATA` căn giữa là tín hiệu bảng điều khiển rõ ràng nhất. Khả năng hỗ trợ IPv6 tại vị trí
`IP Address:` là điểm bất thường so với các bảng điều khiển mã độc đánh cắp thông tin khác (phần lớn chỉ hỗ trợ IPv4
thông qua các truy vấn có cấu trúc dữ liệu `ip-api.com`). Kết hợp với các tệp Info.txt phần đuôi thông tin phần cứng
của CSHardwareTailStealer trong cùng thư mục nạn nhân để có bản tóm tắt đầy đủ theo từng nạn nhân.

## Observed log variants

### `v_8e55366401da27155e33a5b4b0980965`

- Format ID: `cs-stealer-cloud-user-info-stealer`
- Observed filenames: `UserInformation.txt`
- Panel brand: `STEALERCLOUD`
- Distribution channel: `@STEALERBOSS`
- Attribution confidence: **low**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_8e55366401da27155e33a5b4b0980965/sample.txt)
- Sample SHA-256: `2ab648084d61be75caa12336c62e8927bf2920ef5e0a93d8062466ad83832624`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `IP GEOLOCATION DATA`
- Field labels: `@stealerboss - Buy daily fresh logs`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSHardwareTailStealer](../cs-hardware-tail-stealer/)
- [CSGeoSysInfoStealer](../cs-geo-sys-info-stealer/)
- [CSOttomanPanelStealer](../cs-ottoman-panel-stealer/)

## Observed distribution channels

- <https://t.me/STEALERBOSS>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
