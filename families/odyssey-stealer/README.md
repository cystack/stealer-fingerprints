# Odyssey Stealer

## Overview / Tổng quan

### English

Odyssey Stealer is a macOS infostealer sold as
malware-as-a-service by a Russian-speaking operator. Public
reporting tracks it as a rebrand of Poseidon Stealer, which
itself forked from the AMOS Stealer codebase. Public research
documented the ClickFix delivery chain in April 2026, and a
follow-on evolution writeup covered new obfuscation and
code-signing techniques. A separate writeup covers the same
campaign from the delivery-side view.

The stealer runs as an AppleScript compiled file (.scpt)
launched via osascript. Its info file opens with `External IP: <ipv4>`, then a bare `System Info` header, then `Username:` /
`Password:` / `Hostname:` / `OS Version:` / `Is CIS:` boolean
fields, then verbatim `system_profiler SPSoftwareDataType` /
`SPHardwareDataType` / `SPDisplaysDataType` output. The `Is CIS:` flag is set by inspecting
`~/Library/Preferences/com.apple.HIToolbox.plist` for a
Russian keyboard layout; the beacon reports the flag so the
operator can filter or drop CIS victims per campaign. The
harvested password is captured through a fake authentication
dialog rendered via osascript.

### Tiếng Việt

Odyssey Stealer là một mã độc đánh cắp thông tin trên macOS được bán dưới hình thức phần mềm độc hại dưới dạng dịch vụ (malware-as-a-service) bởi một đối tượng vận hành nói tiếng Nga. Các báo cáo công khai ghi nhận đây là bản đổi thương hiệu của Poseidon Stealer, vốn được phân nhánh từ mã nguồn của AMOS Stealer. Nghiên cứu công khai đã ghi lại chuỗi phát tán ClickFix vào tháng 4 năm 2026, và một bài viết tiếp theo về quá trình tiến hóa đã đề cập đến các kỹ thuật gây rối mã (obfuscation) và ký mã mới. Một bài viết riêng biệt khác đề cập đến cùng chiến dịch này từ góc độ phát tán.

Mã độc đánh cắp thông tin này chạy dưới dạng tệp AppleScript đã biên dịch (.scpt) được khởi chạy thông qua osascript. Tệp thông tin của nó mở đầu bằng `External IP: <ipv4>`, sau đó là tiêu đề thuần `System Info`, tiếp theo là các trường boolean `Username:` / `Password:` / `Hostname:` / `OS Version:` / `Is CIS:`, sau đó là dữ liệu đầu ra nguyên văn `system_profiler SPSoftwareDataType` / `SPHardwareDataType` / `SPDisplaysDataType`. Cờ `Is CIS:` được thiết lập bằng cách kiểm tra `~/Library/Preferences/com.apple.HIToolbox.plist` để tìm bố cục bàn phím Nga; tín hiệu beacon báo cáo cờ này để đối tượng vận hành có thể lọc hoặc loại bỏ nạn nhân thuộc khối CIS theo từng chiến dịch. Mật khẩu thu thập được được lấy thông qua một hộp thoại xác thực giả được hiển thị qua osascript.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Odyssey`, `Poseidon Stealer (predecessor)`, `ClickFix AppleScript stealer`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials and cookies (12+ browsers) | Thông tin xác thực và cookie đã lưu trong trình duyệt (12+ trình duyệt) |
| Crypto wallet browser extensions (300+ per public reporting) | Tiện ích mở rộng ví tiền điện tử trên trình duyệt (300+ loại theo báo cáo công khai) |
| Standalone macOS crypto wallets (16+ apps) | Ví tiền điện tử độc lập trên macOS (16+ ứng dụng) |
| macOS Keychain database | Cơ sở dữ liệu Keychain của macOS |
| Live web-browser session cookies | Cookie phiên trình duyệt web đang hoạt động |
| Victim login password captured via fake osascript dialog | Mật khẩu đăng nhập của nạn nhân bị lấy qua hộp thoại giả osascript |

## Detection notes / Ghi chú nhận diện

### English

The `Is CIS: true` / `Is CIS: false` boolean field is
the strongest single anchor. Combined with `External IP:`
and the macOS `Software:` + `Hardware:` +
`Graphics/Displays:` `system_profiler` section headers,
the fingerprint is unique across the cataloged format
corpus. During triage, treat any log with the `Is CIS:`
field as Odyssey; the corresponding `Password:` line
holds the victim login credential the AppleScript grabbed
through the fake auth prompt and must be treated as
compromised. Odyssey samples redistributed through the
BRADMAX Telegram aggregator strip the `SHub Stealer`
banner (present in the sibling SHub family) but preserve
the `Is CIS:` + `External IP:` + `system_profiler` triple
verbatim, so the same structural fingerprint covers both
direct-C2 and aggregator-redistributed samples.

### Tiếng Việt

Trường boolean `Is CIS: true` / `Is CIS: false` là điểm neo nhận diện mạnh nhất. Kết hợp với `External IP:` và các tiêu đề phần `Software:` + `Hardware:` + `Graphics/Displays:` `system_profiler` đặc trưng của macOS, dấu hiệu nhận diện này là duy nhất trong toàn bộ kho định dạng đã được phân loại. Trong quá trình phân loại ban đầu, hãy coi bất kỳ nhật ký nào có trường `Is CIS:` là thuộc về Odyssey; dòng `Password:` tương ứng chứa thông tin xác thực đăng nhập của nạn nhân mà AppleScript đã thu thập được thông qua hộp thoại xác thực giả và phải được coi là đã bị xâm phạm. Các mẫu Odyssey được phát tán lại qua kênh tổng hợp Telegram BRADMAX loại bỏ biểu ngữ `SHub Stealer` (vốn xuất hiện trong họ mã độc liên quan là SHub) nhưng vẫn giữ nguyên bộ ba `Is CIS:` + `External IP:` + `system_profiler`, do đó cùng một dấu hiệu nhận diện về cấu trúc dữ liệu này bao phủ được cả mẫu điều khiển C2 trực tiếp lẫn mẫu được phát tán lại qua kênh tổng hợp.

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
| [T1614](https://attack.mitre.org/techniques/T1614/) | System Location Discovery | Xác định vị trí hệ thống |
| [T1204.002](https://attack.mitre.org/techniques/T1204/002/) | User Execution: Malicious File | Người dùng thực thi: tệp độc hại |

## Related catalog profiles

- [AMOS Stealer](../amos-stealer/)
- [SHub Stealer](../s-hub-stealer/)
- [MacSync](../mac-sync/)

## Related external families

- `poseidon-stealer`

## Sources

- <https://www.cyfirma.com/research/odyssey-stealer-the-rebrand-of-poseidon-stealer/>
- <https://www.netskope.com/blog/macos-clickfix-lures-deploy-applescript-stealer-persistent-rat>
- <https://www.jamf.com/blog/signed-and-stealing-uncovering-new-insights-on-odyssey-infostealer/>
- <https://www.forcepoint.com/blog/x-labs/odyssey-stealer-attacks-macos-users>
- <https://socprime.com/active-threats/odyssey-stealer-analysis/>

Machine-readable record: [family.json](family.json)
