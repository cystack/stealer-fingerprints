# Misericorde Stealer

## Overview / Tổng quan

### English

Misericorde Stealer is a C++ Windows info-stealer advertised
on HackForums under the product listing `Misericorde Stealer (C++ stub) - USER-HOST PANEL` with v10 and v20 versions. The
malware self-declares its name through an ASCII-art banner
block spelling `Misericorde` and a `Telegram -https://t.me/misericorde_supp` operator support-channel URL
emitted at the top of every `UserInformation.txt` panel.

The panel ships a compact 10-field identity preamble
(`Username`, `Hostname`, `FileLocation`, `IP`, `Country`,
`Timezone`, `City`, `Hwid`, `Logdate`, `Buildtag`), then a
`[System]` bracket-section block (`OS Product`, `Screensize`,
`Keyboard`, `System Language`), then a `[Hardware]`
bracket-section block (`GPU`, `CPU`, `RAM`). The single-word
`Username` / `Hostname` / `Hwid` / `Logdate` / `Buildtag` key
spellings distinguish Misericorde from Redline-lineage panels
(which use two-word forms like `User Name` / `Computer Name`
/ `HWID`).

The observed sample distributes through the `@UP_DAISYCLOUD`
Telegram reseller channel with the Daisy Cloud per-line
watermark overlay (obfuscated `Daisy Private cloud` scramble
on every payload line). The underlying Misericorde body is
independent of Daisy Cloud; other resellers may ship the same
panel without the watermark.

Family attribution rests on the self-declared banner literal
plus the HackForums product listing (community catalog /
underground forum). No public research publishes a Misericorde
writeup, and the community catalogues do not document it
either. `attribution_confidence = 'low'` reflects the one-underground-forum-source provenance combined with the strong
banner self-declaration signal.

### Tiếng Việt

Misericorde Stealer là mã độc đánh cắp thông tin trên Windows viết bằng C++, được rao bán trên HackForums qua tin đăng sản phẩm `Misericorde Stealer (C++ stub) - USER-HOST PANEL` với các phiên bản v10 và v20. Mã độc tự khai báo tên của mình qua một khối banner ASCII-art đánh vần `Misericorde` cùng một URL kênh hỗ trợ đối tượng vận hành `Telegram -https://t.me/misericorde_supp` được tạo dữ liệu đầu ra ở đầu mỗi panel `UserInformation.txt`.

Panel này cung cấp một phần mở đầu nhận dạng gồm 10 trường gọn nhẹ (`Username`, `Hostname`, `FileLocation`, `IP`, `Country`, `Timezone`, `City`, `Hwid`, `Logdate`, `Buildtag`), sau đó là một khối mục trong dấu ngoặc `[System]` (`OS Product`, `Screensize`, `Keyboard`, `System Language`), rồi tiếp đến một khối mục trong dấu ngoặc `[Hardware]` (`GPU`, `CPU`, `RAM`). Cách đánh vần khóa một từ `Username` / `Hostname` / `Hwid` / `Logdate` / `Buildtag` giúp phân biệt Misericorde với các panel thuộc dòng Redline (sử dụng dạng hai từ như `User Name` / `Computer Name` / `HWID`).

Mẫu quan sát được phân phối qua kênh Telegram bán lại `@UP_DAISYCLOUD` với lớp watermark theo từng dòng của Daisy Cloud (chuỗi xáo trộn `Daisy Private cloud` bị làm rối trên mỗi dòng payload). Phần thân Misericorde cơ bản độc lập với Daisy Cloud; các đối tượng bán lại khác có thể phân phối cùng panel này mà không có watermark.

Việc quy kết họ mã độc dựa trên chuỗi ký tự tự khai báo trong banner kết hợp với tin đăng sản phẩm trên HackForums (danh mục cộng đồng / diễn đàn ngầm). Chưa có nghiên cứu công khai nào công bố báo cáo phân tích về Misericorde, và các danh mục cộng đồng cũng chưa ghi nhận nó. `attribution_confidence = 'low'` phản ánh nguồn gốc chỉ từ một diễn đàn ngầm duy nhất, kết hợp với tín hiệu tự khai báo banner có độ tin cậy cao.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **low**
- Aliases: `Misericorde`, `Misericorde C++ stub USER-HOST PANEL`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill (fields not observed in the current sample - the UserInformation.txt is the reconnaissance summary) | Thông tin xác thực đã lưu trong trình duyệt, cookie, autofill (các trường này không được quan sát trong mẫu hiện tại - UserInformation.txt là bản tóm tắt trinh sát) |
| Full identity preamble: username, hostname, HWID | Phần mở đầu nhận dạng đầy đủ: tên người dùng, tên máy, HWID |
| Public IPv4 plus city and IANA timezone from IP geolocation | Địa chỉ IPv4 công khai cùng thành phố và múi giờ IANA từ định vị địa lý theo IP |
| OS caption with edition and build number | Tên hiển thị hệ điều hành kèm phiên bản và số build |
| Display resolution and system language | Độ phân giải hiển thị và ngôn ngữ hệ thống |
| CPU, GPU, and RAM hardware inventory | Thông tin phần cứng CPU, GPU và RAM |
| Malware install path (observed shape: `C:\ProgramData\<DropperName>\<Payload>.exe`) | Đường dẫn cài đặt mã độc (cấu trúc dữ liệu quan sát được: `C:\ProgramData\<DropperName>\<Payload>.exe`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the `misericorde_supp` substring
AND at least one of the `[System]` / `[Hardware]`
bracket-section headers. The support-channel URL fragment
is the strongest single anchor: the malware writes it
into every panel as part of the banner ASCII art and it
survives the Daisy Cloud per-line watermark strip
unchanged. During triage, the `Buildtag:` value carries
the operator's build identifier (observed:
`cherry289`) and pivots to the specific reseller /
campaign. The `FileLocation:` value carries the on-victim install path; observed samples ship the payload
as `C:\ProgramData\<DropperName>\<Payload>.exe`.

### Tiếng Việt

Việc nhận diện dấu vết yêu cầu chuỗi con `misericorde_supp` VÀ ít nhất một trong các tiêu đề mục trong dấu ngoặc `[System]` / `[Hardware]`. Đoạn URL kênh hỗ trợ là điểm neo đơn lẻ mạnh nhất: mã độc ghi nó vào mọi panel như một phần của banner ASCII art và nó vẫn giữ nguyên không đổi sau khi lớp watermark theo từng dòng của Daisy Cloud bị loại bỏ. Trong quá trình xử lý ban đầu, giá trị `Buildtag:` mang mã định danh bản build của đối tượng vận hành (quan sát được: `cherry289`) và có thể dùng để xác định cụ thể đối tượng bán lại / chiến dịch. Giá trị `FileLocation:` mang đường dẫn cài đặt trên máy nạn nhân; các mẫu quan sát được phân phối payload dưới dạng `C:\ProgramData\<DropperName>\<Payload>.exe`.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1124](https://attack.mitre.org/techniques/T1124/) | System Time Discovery | Xác định thời gian hệ thống |

## Related catalog profiles

- [CSDaisyCloudStealer](../cs-daisy-cloud-stealer/)
- [Redline](../redline/)

## Observed distribution channels

- <https://t.me/misericorde_supp>
- <https://t.me/UP_DAISYCLOUD>

## Sources

- <https://hackforums.net/showthread.php?tid=6315987>
- <https://cybersecuritynews.com/daisy-cloud-hacker-group-exposed-30k-login-credentials/>
- <https://github.com/fastfire/deepdarkCTI/blob/main/telegram_infostealer.md>

Machine-readable record: [family.json](family.json)
