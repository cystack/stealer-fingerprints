# Blank Grabber

## Overview / Tổng quan

### English

Blank Grabber is a Python-based open-source info-stealer
hosted on GitHub (Blank-c/Blank-Grabber). Low-skill actors
compile it with PyInstaller and distribute it via cracked
software lures, weaponised PyPI packages, and Discord or
Telegram dropper campaigns. Exfiltration goes through a
Discord or Telegram webhook, so no dedicated C2 panel is
needed.

The exfil archive contains a top-level `Information.txt`
whose banner reads `Blank Grabber got a new victim: <name>`,
followed by an `IP Info` block (ip-api.com data), a
`System Info` block (Computer Name, OS, RAM, UUID, CPU,
GPU, Product Key), and a `Grabbed Info` summary that counts
each data category (Discord Accounts, Passwords, Cookies,
Roblox Cookies, Telegram Sessions, Wallets, Wifi, etc.).

### Tiếng Việt

Blank Grabber là mã độc đánh cắp thông tin mã nguồn mở viết bằng Python, được lưu trữ trên GitHub (Blank-c/Blank-Grabber). Các tác nhân ít kỹ năng biên dịch nó bằng PyInstaller và phát tán qua các mồi nhử phần mềm crack, các gói PyPI được vũ khí hóa, và các chiến dịch phát tán qua Discord hoặc Telegram. Việc đưa dữ liệu ra ngoài đi qua webhook Discord hoặc Telegram, nên không cần bảng điều khiển C2 chuyên dụng.

Tệp nén chứa dữ liệu đưa ra ngoài có một `Information.txt` ở cấp cao nhất với biểu ngữ ghi `Blank Grabber got a new victim: <name>`, tiếp theo là một khối `IP Info` (dữ liệu từ ip-api.com), một khối `System Info` (Computer Name, OS, RAM, UUID, CPU, GPU, Product Key), và một bản tóm tắt `Grabbed Info` đếm số lượng của mỗi loại dữ liệu (Discord Accounts, Passwords, Cookies, Roblox Cookies, Telegram Sessions, Wallets, Wifi, v.v.).

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `BlankGrabber`, `Blank-c/Blank-Grabber`
- Variants observed: **3**
- CyStack observations represented: **12,773**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Discord and Telegram session tokens | Mã thông báo phiên Discord và Telegram |
| Browser saved credentials, cookies, history, autofill | Thông tin xác thực, cookie, lịch sử duyệt web, dữ liệu tự động điền được trình duyệt lưu |
| Crypto wallet desktop clients (Bitcoin, Ethereum, Exodus, others) | Ứng dụng ví tiền mã hóa trên máy tính (Bitcoin, Ethereum, Exodus và các loại khác) |
| Roblox cookies and Minecraft sessions | Cookie Roblox và dữ liệu phiên Minecraft |
| Wifi passwords and webcam captures | Mật khẩu Wifi và ảnh chụp webcam |
| System hardware and locale inventory | Kiểm kê phần cứng hệ thống và ngôn ngữ/vùng |
| Game launcher sessions (Epic, Steam, Uplay, Battle.net, Growtopia) | Dữ liệu phiên trình khởi chạy trò chơi (Epic, Steam, Uplay, Battle.net, Growtopia) |

## Detection notes / Ghi chú nhận diện

### English

The banner literal `Blank Grabber got a new victim:` is
unique across this catalog and absent from other retained formats, so
a single substring check is sufficient for a structural match. Forks
(notably AK-grabber) reuse the same banner verbatim, which
is a feature for triage: the fork still maps to the
Blank Grabber family. The `Grabbed Info` per-category counts
are the cleanest indicator of which artifact subfolders the
archive contains for evidence collection.

### Tiếng Việt

Chuỗi biểu ngữ `Blank Grabber got a new victim:` là đặc điểm riêng trong toàn bộ danh mục này và không xuất hiện ở các định dạng khác được lưu giữ, do đó chỉ cần kiểm tra một chuỗi con là đủ để xác định khớp cấu trúc. Các bản phân nhánh (đáng chú ý là AK-grabber) sử dụng lại nguyên văn cùng biểu ngữ, đây là một đặc điểm hữu ích cho việc phân loại ban đầu: bản phân nhánh vẫn được ánh xạ vào họ Blank Grabber. Số lượng đếm theo từng danh mục trong `Grabbed Info` là chỉ báo rõ ràng nhất về các thư mục con dấu vết nào mà tệp nén chứa để thu thập bằng chứng.

## Observed log variants

### `v_b1e576b5520c49a68172676d7c72c40a`

- Format ID: `blank-grabber`
- Observed filenames: `Information.txt`
- Panel brand: `Dead`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **65**
- Representative sample: [open sample](samples/v_b1e576b5520c49a68172676d7c72c40a/sample.txt)
- Sample SHA-256: `bc59a06e31f57a4950bb04b1ef23c863ade1d494018e47f4ad086cb56b50e0ab`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Dead`, `Grabbed Info`, `IP Info`
- Field labels: `Dead got a new victim`, `System Info`

### `v_ccdf4b8e3fbd1fec812ef139238867e6`

- Format ID: `blank-grabber`
- Observed filenames: `Information.txt`, `System.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **12,707**
- Representative sample: [open sample](samples/v_ccdf4b8e3fbd1fec812ef139238867e6/sample.txt)
- Sample SHA-256: `c72b2968115f628d1cbda5507729dc54e4445f7f3f3386be0cff7055fc999fa5`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Grabbed Info`, `IP Info`
- Field labels: `Blank Grabber got a new victim`, `System Info`

### `v_d1192221791366c31e6fcf477e55b52b`

- Format ID: `blank-grabber`
- Observed filenames: `Information.txt`
- Panel brand: `Amnesia`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **1**
- Representative sample: [open sample](samples/v_d1192221791366c31e6fcf477e55b52b/sample.txt)
- Sample SHA-256: `23cb51a4c2b4ebe3cd524606bc06c9e6498e1e41f9de8de3c4e16e475921f890`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Amnesia`, `Grabbed Info`, `IP Info`
- Field labels: `Amnesia got a new victim`, `System Info`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1119](https://attack.mitre.org/techniques/T1119/) | Automated Collection | Thu thập tự động |
| [T1567](https://attack.mitre.org/techniques/T1567/) | Exfiltration Over Web Service | Đưa dữ liệu ra ngoài qua dịch vụ web |

## Related catalog profiles

- None recorded.

## Related external families

- `akgrabber`

## Sources

- <https://any.run/malware-trends/blankgrabber/>
- <https://www.splunk.com/en_us/blog/security/blankgrabber-trojan-stealer-analysis-detection.html>
- <https://github.com/Blank-c/Blank-Grabber>

Machine-readable record: [family.json](family.json)
