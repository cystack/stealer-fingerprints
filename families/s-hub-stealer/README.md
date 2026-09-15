# SHub Stealer

## Overview / Tổng quan

### English

SHub Stealer is a macOS-targeted info-stealer first publicly
documented in March 2026 after a fake CleanMyMac landing-page
campaign delivered the payload to crypto holders. A follow-on
variant was analysed publicly under the build tag `Reaper` in
May 2026; the family also gets broad public coverage.

The payload is a Mach-O binary that runs an AppleScript helper
to harvest browser data, cryptocurrency wallets,
developer-related configuration files, macOS Keychain data,
iCloud session data, and Telegram session files. Collected
data is bundled into a ZIP archive and POSTed to a hardcoded
gate (e.g. `res2erch-sl0ut[.]com/gate`) along with a hardcoded
API key identifying the malware build. Per-victim `Build Tag`
campaign labels and a 32-character build hash support
affiliate-level tracking. Observed build tags include
`Reaper`, `PAds`, and `Crypto_Byte`.

### Tiếng Việt

SHub Stealer là mã độc đánh cắp thông tin nhắm vào macOS, lần đầu được ghi nhận công khai vào tháng 3 năm 2026 sau một chiến dịch dùng trang landing page giả mạo CleanMyMac để phát tán payload tới người nắm giữ tiền điện tử. Một biến thể tiếp theo được phân tích công khai với tag build `Reaper` vào tháng 5 năm 2026; họ mã độc này cũng nhận được sự đưa tin công khai rộng rãi.

Payload là một tệp nhị phân Mach-O chạy một trình trợ giúp AppleScript để thu thập dữ liệu trình duyệt, ví tiền điện tử, các tệp cấu hình liên quan đến nhà phát triển, dữ liệu macOS Keychain, dữ liệu phiên iCloud, và các tệp phiên Telegram. Dữ liệu thu thập được đóng gói vào một tệp lưu trữ ZIP và được gửi bằng phương thức POST tới một điểm tiếp nhận được ghi cố định (ví dụ: `res2erch-sl0ut[.]com/gate`) cùng với một khóa API được ghi cố định dùng để nhận diện build mã độc. Nhãn chiến dịch `Build Tag` theo từng nạn nhân và mã băm build gồm 32 ký tự hỗ trợ việc theo dõi ở cấp độ đối tác liên kết. Các tag build được quan sát bao gồm `Reaper`, `PAds`, và `Crypto_Byte`.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `SHub`, `SHub Reaper`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill | Thông tin xác thực, cookie, dữ liệu tự động điền được lưu trong trình duyệt |
| Cryptocurrency wallet apps and browser extensions | Ứng dụng ví tiền điện tử và tiện ích mở rộng trình duyệt |
| macOS Keychain entries | Mục dữ liệu macOS Keychain |
| iCloud session data | Dữ liệu phiên iCloud |
| Telegram session files | Các tệp phiên Telegram |
| Developer configuration files and Notes | Tệp cấu hình dành cho nhà phát triển và ứng dụng Notes |
| On-screen prompted login credentials (osascript dialog) | Thông tin xác thực đăng nhập được nhập qua hộp thoại nhắc trên màn hình (hộp thoại osascript) |

## Detection notes / Ghi chú nhận diện

### English

The strongest single signal is the verbatim `SHub Stealer`
banner literal, the family's self-identification header.
Paired with the `Build Tag:` and `External IP:` preamble
fields, attribution is high confidence. Triage rules
should anchor on the banner literal plus the
`system_profiler` body shape rather than the build tag
value, which rotates per campaign (`Reaper`, `PAds`,
`Crypto_Byte` are documented examples).

### Tiếng Việt

Dấu hiệu mạnh nhất là chuỗi ký tự văn bản nguyên văn `SHub Stealer` trong banner, chính là tiêu đề tự nhận diện của họ mã độc này. Kết hợp với các trường mở đầu `Build Tag:` và `External IP:`, việc quy kết đạt độ tin cậy cao. Các quy tắc phân loại nên dựa trên chuỗi ký tự văn bản của banner cùng với cấu trúc dữ liệu phần thân `system_profiler`, thay vì dựa vào giá trị tag build, vốn thay đổi theo từng chiến dịch (`Reaper`, `PAds`, `Crypto_Byte` là các ví dụ đã được ghi nhận).

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.001](https://attack.mitre.org/techniques/T1555/001/) | Keychain | Keychain |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1059.002](https://attack.mitre.org/techniques/T1059/002/) | AppleScript | AppleScript |
| [T1056.002](https://attack.mitre.org/techniques/T1056/002/) | GUI Input Capture | Thu thập dữ liệu nhập qua GUI |

## Related catalog profiles

- [MacSync](../mac-sync/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)

## Sources

- <https://www.sentinelone.com/blog/shub-reaper-macos-stealer-spoofs-apple-google-and-microsoft-in-a-single-attack-chain/>
- <https://www.malwarebytes.com/blog/threat-intel/2026/03/fake-cleanmymac-site-installs-shub-stealer-and-backdoors-crypto-wallets>
- <https://www.bleepingcomputer.com/news/security/shub-macos-infostealer-variant-spoofs-apple-security-updates/>
- <https://securitylabs.datadoghq.com/articles/tech-impersonators-clickfix-and-macos-infostealers/>
- <https://www.helpnetsecurity.com/2026/05/19/shub-reaper-macos-infostealer-apple-google-microsoft/>

Machine-readable record: [family.json](family.json)
