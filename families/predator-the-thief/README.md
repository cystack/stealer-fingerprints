# Predator The Thief

## Overview / Tổng quan

### English

Predator The Thief is a C/C++ information stealer first
advertised in July 2018 on Russian-language forums by an
actor known as ``Alexuiop1337`` (later also
``Kongress_nlt``). Sold under a paid model through the
Telegram channel ``t.me/sett9`` (v3.x paid channel) and
``t.me/PredatorSoftwareChannel`` (update notes). Priced
around USD 30 on Russian-speaking forums, positioning it
as a low-cost commodity stealer.

Grabs browser passwords, cookies, autofill data, and
saved forms; crypto wallets; Steam, Telegram, Discord,
FileZilla, and WinFTP client credentials; the current
clipboard; and system fingerprint (HWID, OS version,
CPU / GPU / RAM / resolution). Later builds add webcam
photo capture and clipboard cryptocurrency-address
swapping. Distinguishing on-disk artifact is the
``Information.txt`` log with an ASCII-art ``PREDATOR``
banner and a dash-fenced
``| Developed by Alexuiop1337 |`` /
``| Buy Predator at t.me/sett9 |`` credit block above
the tally section.

### Tiếng Việt

Predator The Thief là một họ mã độc đánh cắp thông tin viết bằng C/C++, lần đầu được quảng cáo vào tháng 7 năm 2018 trên các diễn đàn tiếng Nga bởi một đối tượng có biệt danh ``Alexuiop1337`` (sau này còn dùng biệt danh ``Kongress_nlt``). Được bán theo mô hình trả phí thông qua kênh Telegram ``t.me/sett9`` (kênh trả phí phiên bản v3.x) và ``t.me/PredatorSoftwareChannel`` (kênh thông báo cập nhật). Giá bán khoảng 30 USD trên các diễn đàn nói tiếng Nga, định vị đây là mã độc đánh cắp thông tin thương mại giá rẻ.

Thu thập mật khẩu trình duyệt, cookie, dữ liệu tự động điền và các biểu mẫu đã lưu; ví tiền mã hóa; thông tin xác thực của các ứng dụng Steam, Telegram, Discord, FileZilla và WinFTP; nội dung clipboard hiện tại; và dấu vân tay hệ thống (HWID, phiên bản hệ điều hành, CPU / GPU / RAM / độ phân giải). Các phiên bản sau này bổ sung tính năng chụp ảnh từ webcam và hoán đổi địa chỉ ví tiền mã hóa trên clipboard. Dấu vết đặc trưng trên đĩa là tệp nhật ký ``Information.txt`` có banner ASCII-art ``PREDATOR`` và khối ghi công được đóng khung bằng dấu gạch ngang ``| Developed by Alexuiop1337 |`` / ``| Buy Predator at t.me/sett9 |`` phía trên phần tổng hợp số liệu.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Predator Stealer`, `PredatorTheThief`, `win.predator`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser credentials, cookies, autofill data, and saved form entries (Passwords / Cookies / Forms / Cards counters in the log tally section) | Thông tin xác thực trình duyệt, cookie, dữ liệu tự động điền và các mục biểu mẫu đã lưu (các bộ đếm Passwords / Cookies / Forms / Cards trong phần tổng hợp số liệu của nhật ký) |
| Cryptocurrency wallet files (Wallets tally in the log) | Tệp ví tiền mã hóa (bộ đếm Wallets trong nhật ký) |
| Steam, Telegram, Discord, FileZilla, WinFTP client credentials (dedicated tallies in the log) | Thông tin xác thực của các ứng dụng Steam, Telegram, Discord, FileZilla, WinFTP (các bộ đếm riêng trong nhật ký) |
| System fingerprint (HWID, OS version, CPU, GPU, RAM, screen resolution, machine name, keyboard layouts, system locale) | Dấu vân tay hệ thống (HWID, phiên bản hệ điều hành, CPU, GPU, RAM, độ phân giải màn hình, tên máy, bố cục bàn phím, locale hệ thống) |
| Geolocation (City, Country, Coordinates, IP, Timezone, Zip code) resolved from the harvest-time public IP | Vị trí địa lý (thành phố, quốc gia, tọa độ, IP, múi giờ, mã bưu điện) được xác định từ địa chỉ IP công cộng tại thời điểm thu thập |
| Installed applications inventory (numbered ``Installed applications:`` list) | Danh mục ứng dụng đã cài đặt (danh sách đánh số ``Installed applications:``) |
| Clipboard contents at grab time | Nội dung clipboard tại thời điểm thu thập |
| Startup / persistence path of the harvester payload | Đường dẫn khởi động / duy trì truy cập của payload thu thập dữ liệu |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint on the family-self-identifying banner literal
``Predator The Thief :`` at line start. The banner appears
in every observed sample and does not clash with any
other stealer log format. Confidence triggers include:
the ASCII-art ``PREDATOR`` header on the first non-blank
lines, the ``| Buy Predator at t.me/sett9 |`` sale-channel
watermark, the ``--- ID: <numeric>`` trailer that carries
the campaign / customer identifier, and the specific
field-label spellings (``User name`` / ``Machine name`` /
``UTC time`` / ``CPU info`` / ``GPU info`` /
``Amount of RAM``). During incident response, treat the
campaign ID as the pivot for cross-victim correlation and
the ``Startup folder:`` value as the persistence-path
artifact.

### Tiếng Việt

Dấu hiệu nhận diện dựa trên chuỗi ký tự tự nhận diện họ mã độc ``Predator The Thief :`` ở đầu dòng. Banner này xuất hiện trong mọi mẫu quan sát được và không trùng lặp với định dạng nhật ký của bất kỳ mã độc đánh cắp thông tin nào khác. Các yếu tố củng cố độ tin cậy bao gồm: tiêu đề ASCII-art ``PREDATOR`` ở những dòng không trống đầu tiên, watermark kênh bán hàng ``| Buy Predator at t.me/sett9 |``, phần cuối ``--- ID: <numeric>`` mang mã định danh chiến dịch / khách hàng, và cách viết nhãn trường đặc trưng (``User name`` / ``Machine name`` / ``UTC time`` / ``CPU info`` / ``GPU info`` / ``Amount of RAM``). Trong quá trình ứng phó sự cố, nên coi mã chiến dịch (campaign ID) là điểm mấu chốt để đối chiếu chéo giữa các nạn nhân, và giá trị ``Startup folder:`` là dấu vết đường dẫn duy trì truy cập.

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
| [T1518](https://attack.mitre.org/techniques/T1518/) | Software Discovery | Dò tìm phần mềm |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1115](https://attack.mitre.org/techniques/T1115/) | Clipboard Data | Dữ liệu bảng tạm |
| [T1125](https://attack.mitre.org/techniques/T1125/) | Video Capture | Ghi hình |

## Related catalog profiles

- None recorded.

## Related external families

- `Kongress`

## Observed distribution channels

- <https://t.me/sett9>
- <https://t.me/PredatorSoftwareChannel>

## Sources

- <https://research.checkpoint.com/2020/predator-the-thief/>
- <https://www.fortinet.com/blog/threat-research/predator-the-thief-recent-versions>
- <https://securelist.com/a-predatory-tale/89779/>
- <https://fumik0.com/2018/10/15/predator-the-thief-in-depth-analysis-v2-3-5/>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.predator>
- <https://any.run/malware-trends/predator/>

Machine-readable record: [family.json](family.json)
