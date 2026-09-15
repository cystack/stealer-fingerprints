# Arcane

## Overview / Tổng quan

### English

Arcane is a Russian-targeted info-stealer first publicly
documented in March 2025. The family is a successor to the VGS
stealer, itself a Phemedrone derivative. Distribution runs
through YouTube videos and Discord servers advertising game
cheats and VPN cracks: a password-protected archive contains a
`start.bat` that downloads a second payload via PowerShell and
drops both a miner and the Arcane binary. Most observed
victims are in Russia, Belarus, and Kazakhstan. A
distinguishing on-host artifact is the embedded `xaitax.exe`
utility (also seen as `xaitx.exe`) that Arcane drops to disk
to crack Chromium DPAPI keys by reading the keys off the
utility's console output.

The operator-facing system summary is a flat `Information.txt`
opened with a triple-dash `---User Info---` section (Worker,
Date Install, ISO Key, Clipboard, External IP, Internal IP,
Gateway IP) and a triple-dash `---Full Pc Info---` section
whose body is a series of triple-equals `=== <subsection> Information ===` blocks carrying raw WMI query output for CPU,
GPU, RAM, Disk, Network Adapter, Windows Version, Motherboard,
BIOS, User Account, Time Zone, Screen, AntiVirus, and Logical
Processes. Failed WMI queries leave a Russian-language
`Произошла ошибка` ('An error occurred') line in place of the
subsection body.

### Tiếng Việt

Arcane là mã độc đánh cắp thông tin nhắm mục tiêu vào Nga, được ghi nhận công khai lần đầu vào tháng 3 năm 2025. Họ mã độc này là bản kế thừa của mã độc VGS, vốn là một biến thể của Phemedrone. Việc phát tán diễn ra qua các video YouTube và máy chủ Discord quảng cáo hack game và công cụ crack VPN: một tệp nén được bảo vệ bằng mật khẩu chứa `start.bat` tải xuống một tải trọng thứ hai qua PowerShell và thả xuống đĩa cả một trình đào tiền mã hóa lẫn tệp nhị phân Arcane. Hầu hết nạn nhân được ghi nhận ở Nga, Belarus và Kazakhstan. Một dấu vết đặc trưng trên máy là tiện ích `xaitax.exe` được nhúng (cũng thấy dưới tên `xaitx.exe`) mà Arcane ghi ra đĩa để bẻ khóa DPAPI của Chromium bằng cách đọc các khóa từ dữ liệu đầu ra trên console của tiện ích này.

Bản tóm tắt hệ thống dành cho đối tượng vận hành là một `Information.txt` phẳng, mở đầu bằng một phần `---User Info---` với dấu gạch ngang ba lần (Worker, Date Install, ISO Key, Clipboard, External IP, Internal IP, Gateway IP) và một phần `---Full Pc Info---` với dấu gạch ngang ba lần, có nội dung là một chuỗi các khối `=== <subsection> Information ===` với dấu bằng ba lần, chứa dữ liệu đầu ra thô của truy vấn WMI cho CPU, GPU, RAM, Disk, Network Adapter, Windows Version, Motherboard, BIOS, User Account, Time Zone, Screen, AntiVirus và Logical Processes. Các truy vấn WMI thất bại để lại một dòng tiếng Nga `Произошла ошибка` ('Đã xảy ra lỗi') thay cho nội dung phần con đó.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Arcane Stealer`, `VGS Stealer (predecessor)`
- Variants observed: **3**
- CyStack observations represented: **5,874**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, history (Chromium and Gecko) | Thông tin xác thực, cookie, dữ liệu tự động điền, lịch sử duyệt web được trình duyệt lưu (Chromium và Gecko) |
| Browser DPAPI keys cracked via embedded xaitax utility | Khóa DPAPI của trình duyệt được bẻ khóa thông qua tiện ích xaitax được nhúng |
| VPN client configs (OpenVPN, Mullvad, NordVPN, IPVanish, Surfshark, Proton, hide.me, PIA, CyberGhost, ExpressVPN) | Cấu hình ứng dụng VPN (OpenVPN, Mullvad, NordVPN, IPVanish, Surfshark, Proton, hide.me, PIA, CyberGhost, ExpressVPN) |
| Network utility configs (ngrok, Playit, Cyberduck, FileZilla, DynDNS) | Cấu hình tiện ích mạng (ngrok, Playit, Cyberduck, FileZilla, DynDNS) |
| Gaming client tokens (Riot Client, Epic, Steam, Ubisoft Connect, Roblox, Battle.net) | Mã thông báo ứng dụng khách chơi game (Riot Client, Epic, Steam, Ubisoft Connect, Roblox, Battle.net) |
| Cryptocurrency wallets | Ví tiền mã hóa |
| Telegram and Discord session data | Dữ liệu phiên Telegram và Discord |
| System hardware inventory and saved Wi-Fi networks | Kiểm kê phần cứng hệ thống và các mạng Wi-Fi đã lưu |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint: line-anchored `---User Info---` AND
`---Full Pc Info---`. The triple-dash section pair is
unique to Arcane's Information.txt across this catalog.
Two strong triage signals on top: a Russian
`Произошла ошибка` line where WMI subsections failed
(targets are predominantly Russian-speaking), and a
`xaitax.exe` or `xaitx.exe` process in the `=== Logical Processes Information ===` block (the embedded Chromium
DPAPI cracker is the malware-specific binary). During
incident response, check sibling files for browser-data
dumps, wallet folders, and VPN config exports - Arcane
collects each artifact class into a separate file.

### Tiếng Việt

Dấu hiệu nhận diện: `---User Info---` neo theo dòng VÀ `---Full Pc Info---`. Cặp phần với dấu gạch ngang ba lần này là đặc điểm riêng của Information.txt thuộc Arcane trong toàn bộ danh mục này. Ngoài ra còn có hai tín hiệu phân loại ban đầu mạnh: một dòng `Произошла ошибка` tiếng Nga khi các phần con WMI thất bại (mục tiêu chủ yếu nói tiếng Nga), và một tiến trình `xaitax.exe` hoặc `xaitx.exe` trong khối `=== Logical Processes Information ===` (công cụ bẻ khóa DPAPI Chromium được nhúng là tệp nhị phân đặc trưng của mã độc này). Trong quá trình ứng phó sự cố, hãy kiểm tra các tệp liên quan để tìm bản kết xuất dữ liệu trình duyệt, thư mục ví và bản xuất cấu hình VPN - Arcane thu thập từng loại dấu vết vào một tệp riêng biệt.

## Observed log variants

### `v_19485e2d3464f1a74cdca2500ccf3e84`

- Format ID: `arcane`
- Observed filenames: `Information.txt`
- Panel brand: `@BRADLOGS (BRADMAX)`
- Distribution channel: `https://t.me/+0IAf5VIrl_EzNWRi`
- Attribution confidence: **high**
- Layout: `sectioned-user-info`
- Historical records represented: **1,865**
- Representative sample: [open sample](samples/v_19485e2d3464f1a74cdca2500ccf3e84/sample.txt)
- Sample SHA-256: `24f0266761c4632f0193bb3dbe0f7dc86e8663ac46b44a15480a7beab470b03f`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `---Full Pc Info---`, `---User Info---`, `@BRADLOGS (BRADMAX)`
- Field labels: -

### `v_84d2bdd1450ee03b1b2ff559425b8999`

- Format ID: `arcane`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `headerless-user-info`
- Historical records represented: **61**
- Representative sample: [open sample](samples/v_84d2bdd1450ee03b1b2ff559425b8999/sample.txt)
- Sample SHA-256: `0fd16cf0e0aa38c2ddf07c36e415814e0f789197bf6bfb70dafbce7a57b6cc86`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `---Full Pc Info---`
- Field labels: `Date Install`, `Worker`

### `v_bfc7cdab5eb8146d9a2c2a389822e6a7`

- Format ID: `arcane`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Layout: `sectioned-user-info`
- Historical records represented: **3,948**
- Representative sample: [open sample](samples/v_bfc7cdab5eb8146d9a2c2a389822e6a7/sample.txt)
- Sample SHA-256: `1e43077bef0e93188a47aba5c2d7bb00535a4a016fe5707baa8f7f61dc211b41`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `---Full Pc Info---`, `---User Info---`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1033](https://attack.mitre.org/techniques/T1033/) | System Owner/User Discovery | Xác định chủ sở hữu/người dùng hệ thống |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |

## Related catalog profiles

- [Phemedrone](../phemedrone/)

## Related external families

- `vgs-stealer`

## Sources

- <https://securelist.com/arcane-stealer/115919/>
- <https://cyberinsider.com/new-arcane-stealer-malware-targets-vpn-accounts-via-youtube-cheats/>
- <https://www.bleepingcomputer.com/news/security/new-arcane-infostealer-infects-youtube-discord-users-via-game-cheats/>
- <https://thehackernews.com/2025/03/youtube-game-cheats-spread-arcane.html>

Machine-readable record: [family.json](family.json)
