# CSEssentialMacStealer

## Overview / Tổng quan

### English

CSEssentialMacStealer is a CyStack-coined identifier for a
macOS stealer that self-identifies with the first-line banner
``Essential macOS Stealer``. The file is a
``UserInformation.txt`` with a compact preamble (``Build:``
per-build identifier plus captured ``Username:`` /
``Password:`` login credentials plus ``IP Address:``) followed
by three ``system_profiler`` section blocks: ``Software:``,
``Hardware:``, and ``Graphics/Displays:``. Each block wraps
verbatim output from the corresponding ``system_profiler``
data type with the nested 4-6 space indentation preserved.

The body shape is structurally identical to Phexia macOS
Stealer per public writeups, and a published interview with
the Phexia developer confirms that Phexia is one of multiple
forks of the shared Mac.c stealer module. ``Essential`` may be
another Mac.c fork or a rebrand of one of the documented
siblings, but public reporting does not document this specific
banner. Family attribution is provisional pending a published
threat-intel writeup for the ``Essential macOS Stealer``
banner.

### Tiếng Việt

CSEssentialMacStealer là một định danh do CyStack đặt cho một mã độc đánh cắp thông tin trên macOS tự nhận dạng bằng banner dòng đầu tiên ``Essential macOS Stealer``. Tệp này là ``UserInformation.txt`` với phần mở đầu ngắn gọn (định danh riêng cho từng bản build ``Build:`` cùng với thông tin xác thực đăng nhập ``Username:`` / ``Password:`` đã thu thập được cộng với ``IP Address:``), tiếp theo là ba khối phần ``system_profiler``: ``Software:``, ``Hardware:`` và ``Graphics/Displays:``. Mỗi khối bao bọc dữ liệu đầu ra nguyên văn từ kiểu dữ liệu ``system_profiler`` tương ứng, với định dạng thụt lề lồng nhau 4-6 khoảng trắng được giữ nguyên.

Cấu trúc dữ liệu của phần thân giống hệt về mặt cấu trúc với Phexia macOS Stealer theo các bài viết công khai, và một cuộc phỏng vấn đã công bố với nhà phát triển Phexia xác nhận rằng Phexia là một trong nhiều bản fork của mô-đun mã độc đánh cắp thông tin Mac.c dùng chung. ``Essential`` có thể là một bản fork khác của Mac.c hoặc là bản đổi tên của một trong các họ mã độc liên quan đã được ghi nhận, nhưng các báo cáo công khai không ghi nhận cụ thể banner này. Việc quy kết họ mã độc vẫn còn mang tính tạm thời cho đến khi có bài viết phân tích tình báo mối đe dọa được công bố cho banner ``Essential macOS Stealer``.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: `Essential macOS Stealer`, `Mac.c-fork-shape stealer with Essential banner`
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| macOS login credentials (captured directly in the ``Username:`` / ``Password:`` preamble pair) | Thông tin xác thực đăng nhập macOS (được thu thập trực tiếp trong cặp phần mở đầu ``Username:`` / ``Password:``) |
| Host hardware and OS fingerprint (Mac model, chip, RAM, display, Hardware UUID, Provisioning UDID, system firmware) | Dấu vết nhận dạng phần cứng và hệ điều hành của máy (dòng máy Mac, chip, RAM, màn hình, Hardware UUID, Provisioning UDID, firmware hệ thống) |
| Account identity (login name, display name, computer name) | Danh tính tài khoản (tên đăng nhập, tên hiển thị, tên máy) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires the literal ``Essential macOS Stealer`` first-line banner substring. The banner is
the family self-identification and is unique across
the registry; sibling macOS-stealer banners
(``Phexia macOS Stealer`` / ``MacSync Stealer`` /
``SHub Stealer`` / ``mac.c macOS Stealer``) are all
mutually exclusive substrings so no collision is
possible. During triage, treat the captured
``Password:`` line as high-value: the stealer records
the victim's macOS login password in cleartext,
so credential rotation on the affected account is
priority-one during incident response. Companion
files in the victim folder (keychain dumps, browser
exports, wallet artifacts) will typically be present
under standard Phexia-shape filenames.

### Tiếng Việt

Việc nhận diện dấu hiệu yêu cầu chuỗi con banner dòng đầu tiên nguyên văn ``Essential macOS Stealer``. Banner này là dấu hiệu tự nhận dạng của họ mã độc và là duy nhất trong toàn bộ registry; các banner của các họ mã độc đánh cắp thông tin macOS liên quan (``Phexia macOS Stealer`` / ``MacSync Stealer`` / ``SHub Stealer`` / ``mac.c macOS Stealer``) đều là các chuỗi con loại trừ lẫn nhau nên không thể xảy ra xung đột. Trong quá trình phân loại ban đầu, cần coi dòng ``Password:`` đã thu thập được là dữ liệu có giá trị cao: mã độc đánh cắp thông tin này ghi lại mật khẩu đăng nhập macOS của nạn nhân dưới dạng văn bản thuần túy, do đó việc thay đổi thông tin xác thực trên tài khoản bị ảnh hưởng phải là ưu tiên hàng đầu trong quá trình ứng phó sự cố. Các tệp liên quan trong thư mục nạn nhân (bản kết xuất keychain, dữ liệu xuất từ trình duyệt, dấu vết ví tiền điện tử) thường sẽ xuất hiện dưới các tên tệp theo cấu trúc dữ liệu chuẩn của Phexia.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |

## Related catalog profiles

- [Phexia](../phexia/)
- [MacSync](../mac-sync/)
- [AMOS Stealer](../amos-stealer/)
- [Cthulhu Stealer](../cthulhu-stealer/)
- [SHub Stealer](../s-hub-stealer/)

## Observed distribution channels

- <https://t.me/Bugatti_Cloud>

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
