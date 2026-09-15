# CSTikTokAccountStealer

## Overview / Tổng quan

### English

CSTikTokAccountStealer is a CyStack-coined identifier for a
TikTok account-checker aggregator output folder. The
per-victim folder is named with a 32-hex MD5 wrapped in
brackets (`[<md5>]`) and ships one `.txt` file per TikTok
account. Each filename packs nine bracket-delimited segments
encoding the account stats: number of followers, videos,
likes, coins, account dollar value, payment cards on file,
creation year, ISO 3166 alpha-2 country code, and TikTok
handle. The file body is Netscape-format cookies for
`.tiktok.com` carrying the session-cookie set (`sessionid`,
`sid_guard`, `sid_tt`, `sid_ucp_v1`, `ssid_ucp_v1`, `uid_tt`,
`odin_tt`, `ttwid`).

The folder is the aggregator-side output of an account-checker that takes raw stealer cookie logs, validates each
TikTok session, enriches the cookie with the logged-in
account's stats from the TikTok API, then rewrites the cookie
file with the stat-encoded name. Lots can be filtered and
priced by account value before resale. The same `LOGS`
distribution pipeline carries macOS SHub Stealer victims and
Windows browser-fingerprint dumps in sibling packs. Family
attribution is provisional pending a published mapping for
this specific account-checker tool.

### Tiếng Việt

CSTikTokAccountStealer là một định danh do CyStack đặt ra cho thư mục đầu ra tổng hợp của một công cụ kiểm tra tài khoản (account-checker) TikTok. Thư mục ứng với mỗi nạn nhân được đặt tên theo mã MD5 32 ký tự hex bọc trong dấu ngoặc (`[<md5>]`) và chứa một tệp `.txt` cho mỗi tài khoản TikTok. Mỗi tên tệp gói gọn chín đoạn được phân tách bằng dấu ngoặc, mã hóa các chỉ số thống kê của tài khoản: số người theo dõi, số video, số lượt thích, số coin, giá trị tài khoản quy đổi ra đô la, số thẻ thanh toán đã lưu, năm tạo tài khoản, mã quốc gia ISO 3166 alpha-2, và tên người dùng TikTok. Nội dung tệp là cookie theo định dạng Netscape dành cho `.tiktok.com`, chứa tập hợp cookie phiên (`sessionid`, `sid_guard`, `sid_tt`, `sid_ucp_v1`, `ssid_ucp_v1`, `uid_tt`, `odin_tt`, `ttwid`).

Thư mục này là đầu ra phía công cụ tổng hợp của một account-checker: công cụ này lấy các log cookie thô do mã độc đánh cắp thông tin thu thập được, xác thực từng phiên đăng nhập TikTok, làm giàu dữ liệu cookie bằng các chỉ số thống kê của tài khoản đã đăng nhập lấy từ TikTok API, sau đó ghi lại tệp cookie với tên được mã hóa theo các chỉ số đó. Các lô dữ liệu có thể được lọc và định giá theo giá trị tài khoản trước khi đem bán lại. Cùng một kênh phân phối `LOGS` này còn mang theo các nạn nhân của SHub Stealer trên macOS và các bản dump dấu vân tay trình duyệt (browser-fingerprint) trên Windows trong các gói dữ liệu liên quan. Việc quy kết họ mã độc hiện vẫn là tạm thời, chờ có bản đồ ánh xạ được công bố cho công cụ account-checker cụ thể này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| TikTok session cookies (sessionid, sid_guard, sid_tt, sid_ucp_v1, ssid_ucp_v1, uid_tt, odin_tt, ttwid) | Cookie phiên TikTok (sessionid, sid_guard, sid_tt, sid_ucp_v1, ssid_ucp_v1, uid_tt, odin_tt, ttwid) |
| TikTok account profile metadata (follower / video / like / coin counts, payment cards, creation year) | Siêu dữ liệu hồ sơ tài khoản TikTok (số lượng người theo dõi / video / lượt thích / coin, thẻ thanh toán, năm tạo tài khoản) |
| TikTok account-handle to country mapping | Ánh xạ giữa tên người dùng TikTok và quốc gia |

## Detection notes / Ghi chú nhận diện

### English

The 32-hex MD5 folder name plus 5+ files matching the
nine-bracket-segment filename regex plus the `.tiktok.com`
and `sessionid` body anchors form the fingerprint. The
underlying victim is the user whose stealer log was the
cookie source, not the TikTok account owner: each
browser-cookie harvest can yield multiple TikTok
sessions if the victim was signed in across accounts.

### Tiếng Việt

Dấu hiệu nhận diện gồm: tên thư mục là mã MD5 32 ký tự hex, cùng với 5 tệp trở lên khớp với biểu thức chính quy tên tệp chín đoạn ngoặc, cộng thêm các mốc neo nội dung `.tiktok.com` và `sessionid`. Nạn nhân thực sự ở đây là người dùng có log của mã độc đánh cắp thông tin là nguồn cookie, chứ không phải chủ sở hữu tài khoản TikTok: mỗi lần thu thập cookie trình duyệt có thể tạo ra nhiều phiên TikTok nếu nạn nhân đã đăng nhập nhiều tài khoản khác nhau.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1550.004](https://attack.mitre.org/techniques/T1550/004/) | Use Alternate Authentication Material: Web Session Cookie | Sử dụng dữ liệu xác thực thay thế: cookie phiên web |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |
| [T1213](https://attack.mitre.org/techniques/T1213/) | Data from Information Repositories | Dữ liệu từ kho thông tin |

## Related catalog profiles

- [SHub Stealer](../s-hub-stealer/)
- [CSBrowserFingerprintStealer](../cs-browser-fingerprint-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
