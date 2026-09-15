# Stealerium

## Overview / Tổng quan

### English

Stealerium is an open-source .NET info-stealer first published
on GitHub by user `kgnfth` in April 2022. The project ships as
a buildable C# solution rather than a paid MaaS, so anyone can
compile a private build and point it at their own Telegram
bot, Discord webhook, SMTP relay, or Gofile upload endpoint.
Public reporting tracked a surge in Stealerium activity
through 2025 and documents the panel-side summary report as
opening with the literal `*Stealerium - Report:` Markdown-bold
banner. The v3.5.2 panel revision tags the banner with the
build version (`*Stealerium v3.5.2 - Report:*`) and organises
output into emoji-prefixed `*Hardware:*` / `*Network:*` /
`*Domains info:*` / `*Browsers:*` / `*Software:*` /
`*Device:*` / `*Installation:*` / `*File Grabber:*` sections.

Stealerium is the upstream family for several documented
forks: Phantom Stealer (sold as MaaS), Warp Stealer, and
StealeriumPy (distributed via ClickFix). The forks rebrand the
banner while keeping the underlying data-collection layout, so
analysts triaging logs should check the banner literal first
to disambiguate.

### Tiếng Việt

Stealerium là một mã độc đánh cắp thông tin dạng .NET mã nguồn mở, được người dùng `kgnfth` đăng tải lần đầu trên GitHub vào tháng 4/2022. Dự án được cung cấp dưới dạng một solution C# có thể tự build thay vì mô hình MaaS trả phí, do đó bất kỳ ai cũng có thể biên dịch một bản build riêng và trỏ nó tới Telegram bot, Discord webhook, SMTP relay, hoặc điểm tải lên Gofile của riêng mình.

Các báo cáo công khai ghi nhận hoạt động của Stealerium tăng mạnh trong suốt năm 2025 và mô tả báo cáo tổng hợp phía bảng điều khiển mở đầu bằng banner in đậm định dạng Markdown với nội dung nguyên văn `*Stealerium - Report:`. Phiên bản panel v3.5.2 gắn thẻ banner này với phiên bản build (`*Stealerium v3.5.2 - Report:*`) và tổ chức dữ liệu đầu ra thành các mục có tiền tố emoji gồm `*Hardware:*` / `*Network:*` / `*Domains info:*` / `*Browsers:*` / `*Software:*` / `*Device:*` / `*Installation:*` / `*File Grabber:*`.

Stealerium là họ mã độc gốc cho một số nhánh phái sinh đã được ghi nhận: Phantom Stealer (bán dưới dạng MaaS), Warp Stealer, và StealeriumPy (phát tán qua ClickFix). Các nhánh phái sinh này đổi thương hiệu cho banner nhưng vẫn giữ nguyên bố cục thu thập dữ liệu gốc, vì vậy các nhà phân tích khi phân loại log cần kiểm tra nội dung banner trước tiên để phân biệt các nhánh.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **Known malware family / Họ mã độc đã được định danh**
- Attribution confidence: **high**
- Aliases: `Stealerium v3.5.2`
- Variants observed: **1**
- CyStack observations represented: **4**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser saved credentials, cookies, autofill, history | Thông tin xác thực đã lưu trong trình duyệt, cookie, dữ liệu tự động điền, lịch sử duyệt web |
| Crypto wallet desktop clients and browser extensions | Ứng dụng client ví tiền điện tử trên desktop và các tiện ích mở rộng trình duyệt |
| Discord, Telegram, Skype, Pidgin, Outlook, Element, Signal, Tox session data | Dữ liệu phiên của Discord, Telegram, Skype, Pidgin, Outlook, Element, Signal, Tox |
| Steam, Minecraft, Epic, Uplay, Growtopia session tokens | Token phiên của Steam, Minecraft, Epic, Uplay, Growtopia |
| Wi-Fi profiles and saved passwords via netsh | Cấu hình Wi-Fi và mật khẩu đã lưu thông qua netsh |
| Windows product key extraction | Trích xuất product key của Windows |
| Desktop and webcam screenshot capture | Chụp ảnh màn hình desktop và webcam |
| VPN client configurations | Cấu hình ứng dụng client VPN |
| File grabber configurable by extension and folder | Mô-đun thu thập tệp có thể tùy chỉnh theo phần mở rộng tệp và thư mục |

## Detection notes / Ghi chú nhận diện

### English

High-confidence trigger: the `*Stealerium` banner token inside
a Markdown-bold pair on the first line of `Information.txt`.
The v3.5.2 build adds the version string (`*Stealerium v3.5.2 - Report:*`); earlier builds per public reporting use the
version-less `*Stealerium - Report:*` form. Disambiguate from
Phantom (uses `*Phantom stealer v2.0`), Warp, and StealeriumPy
forks by the banner literal rather than the field set, since
all four families share the underlying section layout.

During incident response, check the trailing archive block (`🔗 [Archive download link]` plus `🔐 Archive password is:`) for
the operator-side staging URL; the URL identifies the
cloud-hosting service (commonly Gofile) the operator chose for
exfiltration but is not victim infrastructure.

### Tiếng Việt

Dấu hiệu nhận diện có độ tin cậy cao: chuỗi banner nguyên văn `*Stealerium` nằm trong cặp định dạng in đậm Markdown ở dòng đầu tiên của `Information.txt`. Bản build v3.5.2 bổ sung thêm chuỗi phiên bản (`*Stealerium v3.5.2 - Report:*`); theo các báo cáo công khai, các bản build trước đó sử dụng dạng `*Stealerium - Report:*` không kèm phiên bản. Cần phân biệt với các nhánh Phantom (sử dụng `*Phantom stealer v2.0`), Warp, và StealeriumPy dựa trên nội dung banner thay vì tập trường dữ liệu, vì cả bốn họ mã độc này đều có chung bố cục phần dữ liệu bên dưới.

Trong quá trình ứng phó sự cố, cần kiểm tra khối lưu trữ nén ở cuối (`🔗 [Archive download link]` cùng với `🔐 Archive password is:`) để tìm URL trung chuyển phía đối tượng vận hành; URL này cho biết dịch vụ lưu trữ đám mây (thường là Gofile) mà đối tượng vận hành lựa chọn để đưa dữ liệu ra ngoài, chứ không phải là hạ tầng của nạn nhân.

## Observed log variants

### `v_fea267824fe0c63f2704a2f713a8b5fc`

- Format ID: `stealerium`
- Observed filenames: `Information.txt`
- Panel brand: `Stealerium v3.5.2`
- Distribution channel: `@BRADLOGS`
- Attribution confidence: **high**
- Historical records represented: **4**
- Representative sample: [open sample](samples/v_fea267824fe0c63f2704a2f713a8b5fc/sample.txt)
- Sample SHA-256: `e3531ea1de20061e3a974888e95d7ee570781c278652e02ff783f076a1d6e504`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `*Stealerium v3.5.2 - Report:*`, `Stealerium v3.5.2`
- Field labels: -


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |
| [T1113](https://attack.mitre.org/techniques/T1113/) | Screen Capture | Chụp màn hình |
| [T1125](https://attack.mitre.org/techniques/T1125/) | Video Capture | Ghi hình |
| [T1083](https://attack.mitre.org/techniques/T1083/) | File and Directory Discovery | Dò tìm tệp và thư mục |
| [T1217](https://attack.mitre.org/techniques/T1217/) | Browser Information Discovery | Dò tìm thông tin trình duyệt |
| [T1016](https://attack.mitre.org/techniques/T1016/) | System Network Configuration Discovery | Dò tìm cấu hình mạng hệ thống |
| [T1518.001](https://attack.mitre.org/techniques/T1518/001/) | Security Software Discovery | Dò tìm phần mềm bảo mật |

## Related catalog profiles

- [Phantom Stealer](../phantom-stealer/)
- [CSBradmaxCategoryStealer](../cs-bradmax-category-stealer/)

## Sources

- <https://malpedia.caad.fkie.fraunhofer.de/details/win.stealerium>
- <https://www.proofpoint.com/us/blog/threat-insight/not-safe-work-tracking-and-investigating-stealerium-and-phantom-infostealers>
- <https://www.uptycs.com/blog/threat-research-report-team/understanding-stealerium-malware-and-its-evasion-techniques>
- <https://securityscorecard.com/wp-content/uploads/2024/01/Whitepaper-A-Detailed-Analysis-Of-A-New-Stealer-Called-Stealerium-.pdf>

Machine-readable record: [family.json](family.json)
