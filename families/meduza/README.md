# Meduza

## Overview / Tổng quan

### English

Meduza Stealer is a Windows .NET info-stealer first publicly
documented in June 2023. It is sold as a malware-as-a-service
offering on Russian-language hacking forums and is
geo-excluded against several CIS targets (Russia, Kazakhstan,
Belarus) per public write-ups. The family is tracked under the
canonical literals `win.meduza` and `Meduza` in public malware
databases, with corroborating public analysis. CERT-UA has
referenced Meduza in UAC-0050 phishing waves against Ukraine
and Poland.

The harvested log opens with a seven-line ASCII-art banner
spelling MEDUZA using Unicode block characters inside a
`*`-bordered frame, followed by a flat `Key: Value` body. The
field set is `HWID`, `Log Date`, `Build Name`, `Country Code`,
`User Name`, `Computer Name`, `Operation System` (panel-side
typo, sic), `Time Zone` (bracket-wrapped offset joined with
the verbose name), `Screen Resolution`, `CPU` (name plus
padded comma plus logical-core count), `GPU`, `RAM`
(dot-decimal `GB` with four-decimal precision), `IP`, and
`Execute Path`. The `Log Date` value is DD-MM-YYYY HH:MM:SS
European format with a comma separating date and time.

### Tiếng Việt

Meduza Stealer là một mã độc đánh cắp thông tin .NET trên Windows, được ghi nhận công khai lần đầu vào tháng 6 năm 2023. Nó được rao bán dưới hình thức malware-as-a-service trên các diễn đàn hacker tiếng Nga và loại trừ theo địa lý đối với một số mục tiêu thuộc khối CIS (Nga, Kazakhstan, Belarus) theo các bài phân tích công khai. Họ mã độc này được theo dõi dưới các định danh chuẩn `win.meduza` và `Meduza` trong các cơ sở dữ liệu mã độc công khai, cùng với các phân tích công khai xác nhận. CERT-UA đã đề cập đến Meduza trong các đợt tấn công lừa đảo UAC-0050 nhắm vào Ukraine và Ba Lan.

Log thu thập được mở đầu bằng một banner ASCII-art bảy dòng đánh vần chữ MEDUZA bằng các ký tự khối Unicode nằm trong một khung viền `*`, tiếp theo là phần nội dung `Key: Value` dạng phẳng. Tập trường dữ liệu gồm `HWID`, `Log Date`, `Build Name`, `Country Code`, `User Name`, `Computer Name`, `Operation System` (lỗi chính tả phía panel, nguyên văn), `Time Zone` (offset đặt trong ngoặc vuông nối với tên đầy đủ), `Screen Resolution`, `CPU` (tên cộng với dấu phẩy đệm khoảng trắng cộng số lõi logic), `GPU`, `RAM` (định dạng `GB` dạng số thập phân phân tách bằng dấu chấm với độ chính xác bốn chữ số thập phân), `IP`, và `Execute Path`. Giá trị `Log Date` có định dạng châu Âu DD-MM-YYYY HH:MM:SS với dấu phẩy phân tách ngày và giờ.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Meduza Stealer`, `MeduzaStealer`
- Variants observed: **1**
- CyStack observations represented: **80**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chromium and Firefox-family) | Thông tin xác thực đã lưu trong trình duyệt (họ Chromium và Firefox) |
| Browser cookies, autofill, history, bookmarks | Cookie, dữ liệu tự động điền, lịch sử duyệt web, dấu trang của trình duyệt |
| Crypto wallet extensions and desktop clients (documented coverage: ~76 wallets) | Tiện ích mở rộng ví tiền mã hóa và ứng dụng desktop (phạm vi ghi nhận: ~76 loại ví) |
| Password managers (~19 supported per public reporting) | Trình quản lý mật khẩu (hỗ trợ ~19 loại theo báo cáo công khai) |
| Steam and Discord session data | Dữ liệu phiên đăng nhập Steam và Discord |
| Telegram session files | Tệp phiên đăng nhập Telegram |
| System hardware and locale inventory | Thông tin kiểm kê phần cứng và ngôn ngữ hệ thống |

## Detection notes / Ghi chú nhận diện

### English

The MEDUZA ASCII-art banner is the family's verbatim
self-identification; the bottom-feet row substring
`██║░╚═╝░██║` is the cleanest fingerprint anchor and
is used as the primary CyStack Threat Intelligence detection
anchor. Pair the
banner anchor with the Meduza-specific `Build Name:`
field key to avoid the residual collision risk against
Redline (which also emits `Operation System:` sic).
During triage, the `Execute Path` value typically
points at the malware's installation location and is
high-signal for sandbox replay and host clean-up.

### Tiếng Việt

Banner ASCII-art MEDUZA là dấu hiệu tự nhận diện nguyên văn của họ mã độc này; chuỗi con hàng dưới cùng `██║░╚═╝░██║` là điểm neo dấu vết rõ ràng nhất và được sử dụng làm điểm neo nhận diện chính trong CyStack Threat Intelligence. Nên kết hợp điểm neo banner với khóa trường dữ liệu đặc trưng của Meduza là `Build Name:` để tránh rủi ro trùng lặp còn sót lại với Redline (cũng tạo dữ liệu đầu ra `Operation System:`, nguyên văn). Trong quá trình phân loại ban đầu, giá trị `Execute Path` thường trỏ đến vị trí cài đặt của mã độc và có giá trị tín hiệu cao đối với việc phát lại trong sandbox cũng như dọn dẹp máy.

## Observed log variants

### `v_3c577d49d344f5721058cf29ee36de42`

- Format ID: `meduza`
- Observed filenames: `System.txt`
- Panel brand: `One-Go`
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **80**
- Representative sample: [open sample](samples/v_3c577d49d344f5721058cf29ee36de42/sample.txt)
- Sample SHA-256: `1f0c3cbded5028c2a8cb14c58fb89b7902d2049506d1e9b59ff41a0f38ebdf22`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `One-Go`
- Field labels: `Build Name`, `Execute Path`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |

## Related catalog profiles

- [Aurora Stealer](../aurora-stealer/)

## Sources

- <https://www.uptycs.com/blog/threat-research-report-team/what-is-meduza-stealer-and-how-does-it-work>
- <https://www.splunk.com/en_us/blog/security/meduza-stealer-analysis.html>
- <https://malpedia.caad.fkie.fraunhofer.de/details/win.meduza>
- <https://any.run/malware-trends/meduza/>
- <https://russianpanda.com/Meduza-Stealer-or-The-Return-of-The-Infamous-Aurora-Stealer>
- <https://www.silentpush.com/blog/meduza-stealer/>

Machine-readable record: [family.json](family.json)
