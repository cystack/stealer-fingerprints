# CSMainLootStealer

## Overview / Tổng quan

### English

CSMainLootStealer is a CyStack-coined identifier for a
Telegram-bot-notification `Information.txt` panel with a `✨ New Log Received ✨` sparkle-bracketed banner. The body ships a
`💻 User: <user>@<host>` victim-identity line, a `🌍 IP:`
placeholder, two captioned sections (`📊 Main Loot:` for
passwords / cookies / wallets, `📦 Additional Data:` for
messengers / games / servers / grabbers), each carrying
per-category emoji-prefixed count lines, and a `Support: @VerifiedThief` admin contact footer. Observed inside `!! 2025 NOV.part001.rar` BRADMAX aggregator packs at `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt` victim folders.

A single community source (March 2026) hints at Hexo Stealer
attribution for the sparkle-banner + Main Loot + Additional
Data notification shape, but the article is paywalled and
could not be fetched verbatim. A public Hexon Stealer report
documents a related (but distinct) rebrand of Stealit Stealer
without publishing the exact notification format. With one
unverifiable community source and no confirmation from public
research, family attribution stays CyStack-coined.

### Tiếng Việt

CSMainLootStealer là định danh do CyStack đặt cho một cấu trúc dữ liệu bảng điều khiển thông báo qua Telegram-bot `Information.txt` với banner viền lấp lánh `✨ New Log Received ✨`. Phần nội dung chứa dòng nhận diện nạn nhân `💻 User: <user>@<host>`, một trường giữ chỗ `🌍 IP:`, hai phần có chú thích (`📊 Main Loot:` dành cho thông tin xác thực/cookie/ví tiền điện tử, `📦 Additional Data:` dành cho ứng dụng nhắn tin/game/server/mô-đun thu thập), mỗi phần mang các dòng đếm theo từng hạng mục có tiền tố emoji, và một dòng chân trang liên hệ quản trị `Support: @VerifiedThief`. Được quan sát bên trong các gói tổng hợp BRADMAX `!! 2025 NOV.part001.rar` tại các thư mục nạn nhân `[<TAG>]@BRADLOGS (BRADMAX) (<NN>)/Information.txt`.

Một nguồn cộng đồng duy nhất (tháng 3/2026) gợi ý quy kết cho Hexo Stealer đối với cấu trúc thông báo banner-lấp-lánh + Main Loot + Additional Data, nhưng bài viết bị chặn sau tường phí và không thể lấy được nguyên văn. Một báo cáo công khai về Hexon Stealer ghi nhận một biến thể đổi tên liên quan (nhưng khác biệt) của Stealit Stealer mà không công bố định dạng thông báo chính xác. Với một nguồn cộng đồng chưa được xác minh và không có xác nhận từ nghiên cứu công khai, việc quy kết họ mã độc vẫn giữ nguyên là định danh do CyStack đặt.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **low**
- Aliases: `BRADMAX sparkle-banner notification panel`, `@VerifiedThief Telegram-bot Main Loot / Additional Data log`
- Variants observed: **1**
- CyStack observations represented: **37**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser-saved credentials (count flag on `🔑 Passwords:`) | Thông tin xác thực lưu trong trình duyệt (cờ đếm tại `🔑 Passwords:`) |
| Browser cookies (count flag on `🍪 Cookies:`) | Cookie trình duyệt (cờ đếm tại `🍪 Cookies:`) |
| Cryptocurrency wallets (count flag on `💰 Wallets:`) | Ví tiền điện tử (cờ đếm tại `💰 Wallets:`) |
| Messenger sessions (count flag on `💬 Messengers:`) | Phiên đăng nhập ứng dụng nhắn tin (cờ đếm tại `💬 Messengers:`) |
| Game launcher credentials (count flag on `🎮 Games:`) | Thông tin xác thực launcher game (cờ đếm tại `🎮 Games:`) |
| Server / FTP / SSH credentials (count flag on `🗄️ Servers:`) | Thông tin xác thực server/FTP/SSH (cờ đếm tại `🗄️ Servers:`) |
| Grabbed files (count flag on `🎣 Grabbers:`) | Tệp bị thu thập (cờ đếm tại `🎣 Grabbers:`) |
| Combined OS username + hostname (user@host on the `💻 User:` line) | Tên người dùng hệ điều hành kết hợp tên máy (user@host trên dòng `💻 User:`) |

## Detection notes / Ghi chú nhận diện

### English

Fingerprint requires `New Log Received` substring AND `Main Loot:` substring AND `Additional Data:` substring AND
`@VerifiedThief` substring. The four-anchor combo is unique
across this catalog: the `Main Loot:` and `Additional Data:`
section-caption pair is the panel-side developer quirk, and
the `@VerifiedThief` admin handle is unique to this
distribution. During triage, treat this label as a panel-side
notification view (counts only): the actual harvested
credentials live in sibling files the operator's archive
(browser-data folders, cookie dumps, etc.) rather than in this
notification body. The underlying stealer family is unknown;
the Hexo Stealer attribution from that community source is
provisional pending published confirmation.

### Tiếng Việt

Việc lấy dấu vết yêu cầu chuỗi con `New Log Received` VÀ chuỗi con `Main Loot:` VÀ chuỗi con `Additional Data:` VÀ chuỗi con `@VerifiedThief`. Tổ hợp bốn điểm neo này là duy nhất trong toàn bộ danh mục này: cặp chú thích phần `Main Loot:` và `Additional Data:` là đặc điểm riêng của nhà phát triển bảng điều khiển, và tài khoản quản trị `@VerifiedThief` là duy nhất đối với đợt phân phối này. Trong quá trình phân loại, hãy coi nhãn này là một giao diện thông báo phía bảng điều khiển (chỉ mang tính đếm số): thông tin xác thực thực tế bị đánh cắp nằm trong các tệp/dấu vết liên quan trong bộ lưu trữ của đối tượng vận hành (thư mục dữ liệu trình duyệt, tệp dump cookie, v.v.) chứ không phải trong nội dung thông báo này. Họ mã độc đánh cắp thông tin bên dưới hiện chưa xác định; việc quy kết cho Hexo Stealer từ nguồn cộng đồng đó vẫn là tạm thời, chờ xác nhận từ nguồn công khai đã công bố.

## Observed log variants

### `v_1be296dc8abcec6846b3e0b96b67534c`

- Format ID: `cs-main-loot-stealer`
- Observed filenames: `Information.txt`
- Panel brand: -
- Distribution channel: `@VerifiedThief`
- Attribution confidence: **low**
- Historical records represented: **37**
- Representative sample: [open sample](samples/v_1be296dc8abcec6846b3e0b96b67534c/sample.txt)
- Sample SHA-256: `a110f0ef469c7621668043862d47db755c9fde386ef646394f081861d2ea3e23`
- Sample provenance: CyStack Threat Intelligence collection, scrubbed for public research

Recognition anchors:

- Stable markers: `Additional Data:`, `Main Loot:`, `New Log Received`
- Field labels: `Support`


## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1555.003](https://attack.mitre.org/techniques/T1555/003/) | Credentials from Web Browsers | Thông tin xác thực từ trình duyệt web |
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1082](https://attack.mitre.org/techniques/T1082/) | System Information Discovery | Dò tìm thông tin hệ thống |

## Related catalog profiles

- [CSNewLogStealer](../cs-new-log-stealer/)

## Related external families

- `hexon-stealer`
- `stealit-stealer`

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
