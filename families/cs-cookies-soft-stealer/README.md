# CSCookiesSoftStealer

## Overview / Tổng quan

### English

CSCookiesSoftStealer is a CyStack-coined identifier for a
Windows-victim folder layout shipping a two-directory split
(`Cookies/` and `Soft/`) inside a per-victim folder named
`[<ISO2>]<IPv4>` (country code in brackets immediately
followed by a dotted-quad IPv4, no separator). `Cookies/`
carries per-browser cookie dumps; `Soft/` carries
application-specific harvest folders for games and chat
clients, including `Steam_<APPID>_<SESSIONID>/tokens.txt`
Steam JWT auth tokens that grant the operator access to the
victim's Steam account without password or 2FA.

Observed inside `MAY 02 - 8230 LOGS2` aggregator packs that
also carry the 32-hex-MD5 victim folders represented by CSTikTokAccountStealer,
CSNetflixCookiesStealer, and CSBrowserCategoryDumpStealer, plus the
`[<IPv4>]-<HOSTNAME>` victim folders represented by CSCommonFilesCategoryStealer. The
`[<ISO2>]<IPv4>` country-coded shape is yet another
per-source-stealer naming convention the aggregator preserved
during repacking. Family attribution is provisional pending a
published mapping for this specific 2-dir + country-IP layout.

### Tiếng Việt

CSCookiesSoftStealer là định danh do CyStack đặt cho một bố cục thư mục nạn nhân trên Windows với cấu trúc chia hai thư mục con (`Cookies/` và `Soft/`) bên trong một thư mục riêng cho từng nạn nhân có tên `[<ISO2>]<IPv4>` (mã quốc gia trong ngoặc vuông theo ngay sau bởi một địa chỉ IPv4 dạng dotted-quad, không có ký tự phân tách). `Cookies/` chứa các bản dump cookie theo từng trình duyệt; `Soft/` chứa các thư mục thu thập dữ liệu riêng cho từng ứng dụng, dành cho game và ứng dụng chat, bao gồm `Steam_<APPID>_<SESSIONID>/tokens.txt` token xác thực Steam JWT cho phép đối tượng vận hành truy cập vào tài khoản Steam của nạn nhân mà không cần mật khẩu hay 2FA.

Được ghi nhận bên trong các gói tổng hợp `MAY 02 - 8230 LOGS2` mà cũng chứa các thư mục nạn nhân dạng MD5 32 ký tự hex được đại diện bởi CSTikTokAccountStealer, CSNetflixCookiesStealer và CSBrowserCategoryDumpStealer, cùng với các thư mục nạn nhân `[<IPv4>]-<HOSTNAME>` được đại diện bởi CSCommonFilesCategoryStealer. Cấu trúc dữ liệu mã quốc gia `[<ISO2>]<IPv4>` là một quy ước đặt tên khác theo từng mã độc đánh cắp thông tin nguồn mà đối tượng tổng hợp giữ nguyên trong quá trình đóng gói lại. Việc quy kết họ mã độc vẫn còn mang tính tạm thời do chưa có ánh xạ công bố cho bố cục 2 thư mục kết hợp mã quốc gia + IP cụ thể này.

## Research status / Trạng thái nghiên cứu

- Classification / Phân loại: **CyStack tracking name / Tên theo dõi do CyStack đặt**
- Attribution confidence: **unknown**
- Aliases: -
- Variants observed: **0**

## What it targets / Mục tiêu thường gặp

| English | Tiếng Việt |
|---|---|
| Browser cookies (Chromium and Gecko) | Cookie trình duyệt (Chromium và Gecko) |
| Steam JWT auth tokens (sessions that bypass password and 2FA) | Token xác thực Steam JWT (phiên đăng nhập bỏ qua mật khẩu và 2FA) |
| Discord and Telegram session data | Dữ liệu phiên Discord và Telegram |
| Other Chromium-based desktop app session data under `Soft/` | Dữ liệu phiên của các ứng dụng desktop khác dựa trên Chromium trong `Soft/` |

## Detection notes / Ghi chú nhận diện

### English

The `[<ISO2>]<IPv4>` parent folder name plus the strict
`{cookies, soft, ""}` root subset is the fingerprint.
Distinguishes from the `[<IPv4>]-<HOSTNAME>` sibling shape via the country-code
prefix and the absent hyphen-hostname suffix. Steam
token files inside `Soft/Steam_<id>_<id>/tokens.txt`
carry JWT auth tokens whose `sub` field is the
SteamID64 of the compromised account; treat each
`tokens.txt` as a session-takeover indicator during
triage.

### Tiếng Việt

Tên thư mục cha `[<ISO2>]<IPv4>` kết hợp với tập con thư mục gốc chặt chẽ `{cookies, soft, ""}` chính là dấu hiệu nhận diện. Phân biệt với cấu trúc dữ liệu liên quan `[<IPv4>]-<HOSTNAME>` nhờ tiền tố mã quốc gia và việc không có hậu tố hostname nối bằng dấu gạch nối. Các tệp token Steam bên trong `Soft/Steam_<id>_<id>/tokens.txt` chứa token xác thực JWT với trường `sub` chính là SteamID64 của tài khoản bị xâm phạm; trong quá trình phân loại xử lý, cần coi mỗi `tokens.txt` là một chỉ dấu chiếm quyền phiên đăng nhập.

## Observed log variants

No representative sample has been retained by CyStack Threat Intelligence for this profile yet. The catalog does not publish placeholder variants or synthetic samples.

## MITRE ATT&CK

| Technique | English | Tiếng Việt |
|---|---|---|
| [T1539](https://attack.mitre.org/techniques/T1539/) | Steal Web Session Cookie | Đánh cắp cookie phiên web |
| [T1528](https://attack.mitre.org/techniques/T1528/) | Steal Application Access Token | Đánh cắp token truy cập ứng dụng |
| [T1550.004](https://attack.mitre.org/techniques/T1550/004/) | Use Alternate Authentication Material: Web Session Cookie | Sử dụng dữ liệu xác thực thay thế: cookie phiên web |
| [T1555](https://attack.mitre.org/techniques/T1555/) | Credentials from Password Stores | Thông tin xác thực từ kho mật khẩu |
| [T1005](https://attack.mitre.org/techniques/T1005/) | Data from Local System | Dữ liệu từ hệ thống cục bộ |

## Related catalog profiles

- [CSCommonFilesCategoryStealer](../cs-common-files-category-stealer/)
- [CSTikTokAccountStealer](../cs-tik-tok-account-stealer/)
- [CSNetflixCookiesStealer](../cs-netflix-cookies-stealer/)
- [CSBrowserCategoryDumpStealer](../cs-browser-category-dump-stealer/)

## Sources

- CyStack-observed log structure; no external family source recorded.

Machine-readable record: [family.json](family.json)
