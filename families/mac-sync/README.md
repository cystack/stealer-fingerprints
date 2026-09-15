# MacSync

## Overview / Tổng quan

### English

MacSync is a macOS-targeted infostealer first observed in
November 2025 as a rebrand of the earlier Mac.c family. Its
AppleScript payload writes an `Information.txt` file into the
victim staging directory combining a malware self-identification
banner, captured account credentials, and the verbatim output of
`system_profiler`.

### Tiếng Việt

MacSync là một họ mã độc đánh cắp thông tin nhắm vào macOS, được ghi nhận lần đầu vào tháng 11 năm 2025 dưới dạng đổi thương hiệu từ họ mã độc Mac.c trước đó. Tải trọng AppleScript của nó ghi một tệp `Information.txt` vào thư mục tập kết dữ liệu trên máy nạn nhân, kết hợp một banner tự nhận diện mã độc, thông tin xác thực tài khoản đã thu thập được, và dữ liệu đầu ra nguyên văn của `system_profiler`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Mac.c`, `MacSync Stealer`
- Variants observed: **1**
- CyStack observations represented: **75,488**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials (Chrome, Safari, Firefox) | Thông tin xác thực đã lưu trong trình duyệt (Chrome, Safari, Firefox) |
| Crypto wallet desktop clients (Electrum, Exodus, etc.) | Ứng dụng client ví tiền mã hóa trên máy tính (Electrum, Exodus, v.v.) |
| macOS Keychain entries | Các mục trong macOS Keychain |
| Telegram and Discord session data on macOS | Dữ liệu phiên đăng nhập Telegram và Discord trên macOS |
| System profile information for victim fingerprinting | Thông tin cấu hình hệ thống dùng để nhận diện nạn nhân |

## Detection notes / Ghi chú nhận diện

### English

The `Information.txt` containing both a banner and verbatim
`system_profiler` output is unambiguous. Pair with macOS-specific
field values (Apple silicon CPU strings, macOS version) to
confirm.

### Tiếng Việt

`Information.txt` chứa cả banner lẫn dữ liệu đầu ra nguyên văn của `system_profiler` là dấu hiệu nhận diện rõ ràng, không gây nhầm lẫn. Nên kết hợp với các giá trị trường đặc thù của macOS (chuỗi CPU Apple silicon, phiên bản macOS) để xác nhận.

## Observed log variants

### `v_8ded840da2979d9deb0176880e86b1e9`

- Format ID: `macsync`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: -
- Attribution confidence: **high**
- Historical records represented: **75,488**
- Representative sample: [open sample](samples/v_8ded840da2979d9deb0176880e86b1e9/sample.txt)
- Sample SHA-256: `0aca96c813ce5d994169a53f223ccb8bf66b719140d69aeaf25abc113dcafbe0`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `MacSync Stealer`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- None recorded.

## Sources

- <https://www.cisecurity.org/insights/blog/macsync-stealer-campaign-impacting-us-sltt-macos-users>
- <https://www.jamf.com/blog/macsync-stealer-evolution-code-signed-swift-malware-analysis/>
- <https://moonlock.com/new-mac-stealer-spreading>
- <https://malware.news/t/mentalpositive-s-new-macos-stealer-amos-repackaged-or-a-new-cyber-threat/96207>

Machine-readable record: [family.json](family.json)
